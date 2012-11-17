document.addEventListener ('DOMContentLoaded', function(){
	var rate_elems = $('td.rate');
	for(var i = 0; i < rate_elems.length; i++){
		if       ( "100" >= rate_elems[i].textContent && rate_elems[i].textContent > "90" ) {
			rate_elems[i].bgColor = "#FFFFFF" ;
		} else if ( "90" >= rate_elems[i].textContent && rate_elems[i].textContent > "80" ) {
			rate_elems[i].bgColor = "#EEEEEE" ;
		} else if ( "80" >= rate_elems[i].textContent && rate_elems[i].textContent > "70" ) {
			rate_elems[i].bgColor = "#DDDDDD" ;
		} else if ( "70" >= rate_elems[i].textContent && rate_elems[i].textContent > "60" ) {
			rate_elems[i].bgColor = "#CCCCCC" ;
		} else if ( "60" >= rate_elems[i].textContent && rate_elems[i].textContent > "50" ) {
			rate_elems[i].bgColor = "#BBBBBB" ;
		} else if ( "50" >= rate_elems[i].textContent && rate_elems[i].textContent > "40" ) {
			rate_elems[i].bgColor = "#AAAAAA" ;
		} else if ( "40" >= rate_elems[i].textContent && rate_elems[i].textContent > "30" ) {
			rate_elems[i].bgColor = "#999999" ;
		} else if ( "30" >= rate_elems[i].textContent && rate_elems[i].textContent > "20" ) {
			rate_elems[i].bgColor = "#888888" ;
		} else if ( "20" >= rate_elems[i].textContent && rate_elems[i].textContent > "10" ) {
			rate_elems[i].bgColor = "#777777" ;
		} else {
			rate_elems[i].bgColor = "#666666" ;
		}
	}
},false)