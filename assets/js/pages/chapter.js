

var Chapter = function() {

	var figureCaptions = function(){
		$( "p:has(strong.figure-number)" ).addClass( "p-figure-number" );
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
		   console.log(tableCaptionWidth);
		   console.log(tableWidth);
		   if (tableCaptionWidth > tableWidth) {
		     tableCaption.width(tableWidth);
		   }
		 });
		

		 
		/*$('p.p-table-number,table').wrap('<div class="table"></div>');*/
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