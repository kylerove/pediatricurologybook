

var Chapter = function() {

	var figureCaptions = function(){
		$( "p:has(strong.figure-number)" ).addClass( "p-figure-number" );
		
		var figureBoxWidth = 0;
		var imageWidth = 0;
		$("p.p-figure-number").
		 each(function() {
		   // get widths
		   let figureBox = $(this);
		   figureBoxWidth = $(figureBox).width();
		   let figureImage = $(this).children("img");
		   imageWidth = $(figureImage).width();
		   
		   // match caption and table width
		   //console.log("figureBoxWidth="+figureBoxWidth);
		   //console.log("imageWidth="+imageWidth);
		   if (figureBoxWidth > imageWidth && imageWidth != 0 && figureImage.complete && figureImage.naturalWidth != 0) {
			 figureBox.width(imageWidth);
			 console.log("figureBoxWidth[corrected to match image]="+imageWidth);
		   }
		 });
	};
	
	var tableCaptions = function(){
		$( "p:has(strong.table-number)" ).addClass( "p-table-number" );
		
		var tableCaptionWidth = 0;
		var tableWidth = 0;
		$(':not(p.p-table-number) + p.p-table-number, * > p.p-table-number:first-of-type').
		 each(function() {
		   let tableCaption = $(this);
		   tableCaptionWidth = $(tableCaption).width();
		   let table = $(this).nextUntil(':not(table)');
		   tableWidth = $(table).width();
		   $(this).
			   nextUntil(':not(table)').
			   addBack().
			   wrapAll('<div class="d-flex table-box" />').
			   wrapAll('<div class="table-wrapper" />');
		   // match caption and table width
		   if (tableCaptionWidth > tableWidth) {
		     tableCaption.width(tableWidth);
              console.log("tableCaption[corrected to match table]="+tableWidth);
		   }
		 });
	};
	
	return {
			init: function () {
				// Init functions
				figureCaptions();
				tableCaptions();
			}
		};
	}();

jQuery(function(){ Chapter.init(); });