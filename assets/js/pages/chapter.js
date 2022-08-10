

var Chapter = function() {

	var figureCaptions = function(){
		$( "p:has(strong.figure-number)" ).addClass( "p-figure-number" );
	};
	
	var tableCaptions = function(){
		$( "p:has(strong.table-number)" ).addClass( "p-table-number" );
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