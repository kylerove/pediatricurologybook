# ----------------------
# add correct libraries
library(ggalt) # devtools::install_github("hrbrmstr/ggalt")
library(hrbrthemes) # devtools::install_github("hrbrmstr/hrbrthemes")
library(nominatim) # devtools::install_github("hrbrmstr/nominatim")
library(tidyverse)
library(mapproj)

# ----------------------
# read the contributors table
setwd("/Users/kylerove/Desktop/pediatricurologybook")
contributors <- read.csv("_data/contributors.csv") %>% mutate(contributor = ifelse(editor == "",ifelse(emeritus.editor == "","yes",""),"")) %>%
                                                            select(city.state.country,editor,emeritus.editor,contributor) %>%
                                                            group_by(city.state.country) %>%
                                                            summarize(editors=any(editor == "yes"),emeritus.editors = any(emeritus.editor == "yes"), contributors=any(contributor=="yes"))

# ----------------------
# define colors
colors <- c("#00DAFF","#FE423D","#FFC300","#54D3AB","#FE8F18","#B832C5","#77F27B","#587CFF","#FF3671","#AAAAAA","#666666","#00DAFF","#FE423D","#FFC300","#54D3AB","#FE8F18","#B832C5","#77F27B","#587CFF","#FF3671","#AAAAAA","#666666","#00DAFF","#FE423D","#FFC300","#54D3AB","#77F27B","#587CFF")

# ----------------------
# narrow contributors table to name/place/editor/emeritus/contributor
geocoded_locations <- osm_search(contributors$city.state.country, limit=1, key = getOption("OSM_API_KEY", "jDa4F8WgeWFaSqu4QaAtbHbS0GWMsfjp")) %>% select(display_name,lat,lon)
contributors <- contributors %>% bind_cols(geocoded_locations)

# ----------------------
# get the map ready
world <- map_data("world")
world <- world[world$region != "Antarctica", ]

# ----------------------
# plot
theMap <- ggplot() +
  geom_map(
    data = world, map = world,
    aes(x = long, y = lat, map_id = region),
    color = "#888888", fill="#f6f6f6", size = 0.125
  ) + 
  geom_point( data = contributors, aes(lon, lat, color=city.state.country), fill="#ffffff", shape = 21, alpha = 0.8, size=2.75, stroke = 1) +
  scale_colour_manual(values=colors, aesthetics = c("colour")) +
  coord_equal() + 
  labs(
    x = NULL, y = NULL,
    title = "",
    subtitle = "",
    caption = "Figure 1. Geographic representation of editors and contributors to Pediatric Urology Book v2.0"
  ) +
  theme(plot.title = element_text(color = "#000000", hjust = 0.5)) +
  theme(axis.text = element_blank()) +
  theme(legend.position = "none") + 
  theme(panel.border = element_blank()) +
  # set transparency
  theme(
    panel.grid.major = element_blank(), 
    panel.grid.minor = element_blank(),
    panel.background = element_rect(fill = "transparent",colour = NA),
    plot.background = element_rect(fill = "transparent",colour = NA)
  )

ggsave(filename=paste0(getwd(),"/assets/site-img/contributor-map-raw.svg"),plot=theMap,device="svg",dpi = 300, width=17.7, height=6.67,units="in")
