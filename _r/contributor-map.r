# ----------------------
# add correct libraries
library(ggalt) # devtools::install_github("hrbrmstr/ggalt")
library(hrbrthemes) # devtools::install_github("hrbrmstr/hrbrthemes")
library(nominatim) # devtools::install_github("hrbrmstr/nominatim")
library(tidyverse)
library(mapproj)

# basis !!!! as of 2023-02-21
# https://wilkelab.org/practicalgg/articles/Winkel_tripel.html


# ----------------------
# implement my own functions to fix osm api endpoint
osm_search_kor <- function(query,
                           country_codes=NULL,
                           viewbox=NULL,
                           bounded=FALSE,
                           address_details=TRUE,
                           exclude_place_ids=NULL,
                           limit=1,
                           email=getOption("OSM_API_EMAIL", "nominatimrpackage@example.com"),
                           accept_language=getOption("LANG", "en-US,en;q=0.8"),
                           key = getOption("OSM_API_KEY", "")) {
  
  if (nchar(key) == 0) {
    stop('Please provide a openstreet API key')
  }
  
  bind_rows(pblapply(1:length(query), function(i) {
    
    param_base <- "format=json&dedupe=0&debug=0&polygon=0"
    if (!is.null(country_codes)) param_base <- sprintf("%s&country_codes=%s", param_base, country_codes)
    if (!is.null(viewbox)) param_base <- sprintf("%s&viewbox=%s", param_base, viewbox)
    if (!is.null(bounded)) param_base <- sprintf("%s&bounded=%d", param_base, as.numeric(bounded))
    if (!is.null(exclude_place_ids)) param_base <- sprintf("%s&exclude_place_ids=%s", param_base, exclude_place_ids)
    if (!is.null(email)) param_base <- sprintf("%s&email=%s", param_base, curl::curl_escape(email))
    if (!is.null(accept_language)) param_base <- sprintf("%s&accept-language=%s", param_base, curl::curl_escape(accept_language))
    param_base <- sprintf("%s&key=%s", param_base, key)
    param_base <- sprintf("%s&address_details=%d", param_base, as.numeric(address_details))
    param_base <- sprintf("%s&limit=%d", param_base, as.numeric(limit))
    param_base <- sprintf("%s&q=%s", param_base, gsub(" ", "+", query[i]))
    
    if (length(query) > 1 & length(query) != i) Sys.sleep(getOption("NOMINATIM.DELAY"))
    message(param_base)
    .search("https://nominatim.openstreetmap.org/search", param_base)
    
  }))
  
}

.search <- function(search_base, params) {
  
  tryCatch({
    
    res <- GET(search_base, query=params, timeout(getOption("NOMINATIM.TIMEOUT")))
    stop_for_status(res)
    
    ret <- content(res)
    
    if (length(ret) == 0) return(NULL)
    
    return(bind_rows(lapply(1:length(ret), function(i) {
      
      ret_names <- intersect(names(ret[[i]]),
                             c("lat", "lon", "display_name"))
      tmp_df <- data.frame(t(sapply(ret_names, function(x) { ret[[i]][[x]] })), stringsAsFactors=FALSE)
      
      
      tmp_df$lat <- as.numeric(tmp_df$lat)
      tmp_df$lon <- as.numeric(tmp_df$lon)
      
      tmp_df
      
    })))
    
  }, error=function(e) { message("Error connecting to geocode service", e)})
  
  return(NULL)
  
}


# ----------------------
# read the contributors table
setwd("/Users/kylerove/Desktop/pediatricurologybook")
contributors <- read.csv("_data/contributors.csv") %>% mutate(a_contributor = ifelse(contributor == "yes",1,0)) %>% mutate(an_editor = ifelse(editor == "yes" | emeritus.editor == "yes" | liaison.editor == "yes",1,0)) %>%
                                                            select(city,state,zip,country,continent,an_editor,a_contributor) %>%
                                                            group_by(city,state,zip,country,continent) %>%
                                                            summarize(editors=any(an_editor == 1), contributors=any(a_contributor==1))

# had to get locations into a friendly string (used numbers to shortcut)
locations <- read.csv("_data/locations.csv") %>% mutate(contributor = ifelse(editor == "",ifelse(emeritus.editor == "","yes",""),"")) %>%
  select(location,editor,emeritus.editor,contributor) %>%
  group_by(location) %>%
  summarize(editors=any(editor == "yes"),emeritus.editors = any(emeritus.editor == "yes"), contributors=any(contributor=="yes"))
# ----------------------
# define colors
colors <- c("#FE423D","#54D3AB","#FE8F18","#B832C5","#77F27B","#587CFF","#FF3671","#AAAAAA","#666666","#00DAFF","#FE423D","#FFC300","#54D3AB","#FE8F18","#B832C5","#77F27B","#587CFF","#FF3671","#AAAAAA","#666666","#00DAFF","#FE423D","#FFC300","#54D3AB","#77F27B","#587CFF","#FE423D","#54D3AB","#FE8F18","#B832C5","#77F27B","#587CFF","#FF3671","#AAAAAA","#666666","#00DAFF","#FE423D","#FFC300","#54D3AB","#FE8F18","#B832C5","#77F27B","#587CFF","#FF3671","#AAAAAA","#666666","#00DAFF","#FE423D","#FFC300","#54D3AB","#77F27B","#587CFF","#FFC300","#54D3AB","#FE8F18","#B832C5","#77F27B","#587CFF")

# ----------------------
# narrow contributors table to name/place/editor/emeritus/contributor
geocoded_locations <- osm_search_kor(locations$location, limit=1, key = getOption("OSM_API_KEY", "jDa4F8WgeWFaSqu4QaAtbHbS0GWMsfjp")) %>% select(display_name,lat,lon)
contributors <- contributors %>% bind_cols(geocoded_locations)

# ----------------------
# get the map ready
world <- map_data("world")
world <- world[world$region != "Antarctica", ]
world_sf <- st_as_sf(getMap(resolution = "low"))

# ----------------------
# make various layers
crs_wintri <- "+proj=wintri +datum=WGS84 +no_defs +over"
world_wintri <- st_transform_proj(world_sf, crs = crs_wintri)
grat_wintri <- 
  st_graticule(lat = c(-89.9, seq(-80, 80, 20), 89.9)) %>%
  st_transform_proj(crs = crs_wintri)
wintri_outline <- 
  list(cbind(longs, lats)) %>%
  st_polygon() %>%
  st_sfc( # create sf geometry list column
    crs = "+proj=longlat +ellps=WGS84 +datum=WGS84 +no_defs"
  ) %>% 
  st_sf() %>%
  st_transform_proj(crs = crs_wintri) # transform to Winkel tripel

# ----------------------
# convert the lat/long to correct projection sf
contributors_sf <- geocoded_locations %>% st_as_sf(coords = c("lon", "lat"), crs=4326)
contributors_sf_t <- st_transform(contributors_sf, crs=crs_wintri)

# ----------------------
# put it all together
p <- ggplot() + 
  geom_sf(data = wintri_outline, fill = "#00daff90", color = NA) +
  geom_sf(data = grat_wintri, color = "#4C4C4C75", size = 0.25/.pt) + 
  geom_sf(data = world_wintri, fill = "#ffc300", color = "black", size = 0.5/.pt) +
  geom_sf(data = contributors_sf_t, fill="#ffffffcc", color="#fe5b56", shape = 21, size=2.75, stroke = 1) +
  scale_colour_manual(values=colors, aesthetics = c("colour")) +
  geom_sf(data = wintri_outline, fill = NA, color = "grey30", size = 0.5/.pt) +
  #geom_point( data = geocoded_locations, aes(lon, lat, color=display_name), fill="#ffffff", shape = 21, alpha = 0.8, size=2.75, stroke = 1) +
  coord_sf(datum = NULL) +
  theme_map()

# ----------------------
# plot
#theMap <- ggplot() +
#  geom_map(
#    data = world, map = world,
#    aes(x = long, y = lat, map_id = region),
#    color = "#888888", fill="#f6f6f6", size = 0.125
#  ) + 
#  geom_point( data = geocoded_locations, aes(lon, lat, color=display_name), fill="#ffffff", shape = 21, alpha = 0.8, size=2.75, stroke = 1) +
#  scale_colour_manual(values=colors, aesthetics = c("colour")) +
#  coord_equal() + 
#  labs(
#    x = NULL, y = NULL,
#    title = "",
#    subtitle = "",
#    caption = "Figure 1. Geographic representation of editors and contributors to Pediatric Urology Book v2.0"
#  ) +
#  theme(plot.title = element_text(color = "#000000", hjust = 0.5)) +
#  theme(axis.text = element_blank()) +
#  theme(legend.position = "none") + 
#  theme(panel.border = element_blank()) +
#  # set transparency
#  theme(
#    panel.grid.major = element_blank(), 
#    panel.grid.minor = element_blank(),
#    panel.background = element_rect(fill = "transparent",colour = NA),
#    plot.background = element_rect(fill = "transparent",colour = NA)
#  )

ggsave(filename=paste0(getwd(),"/assets/site-img/contributor-map-raw.svg"),plot=p,device="svg",dpi = 300, width=8, height=4,units="in")
