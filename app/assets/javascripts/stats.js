document.addEventListener ('DOMContentLoaded', function(){
	var rate_elems = $('td.rate');
	for(var i = 0; i < rate_elems.length; i++){
		if        ( rate_elems[i].textContent == 100 ) {
			rate_elems[i].bgColor = "blue" ;
		} else if ( rate_elems[i].textContent > 90 ) {
			rate_elems[i].bgColor = "#FFFFFF" ;
		} else if ( rate_elems[i].textContent > 80 ) {
			rate_elems[i].bgColor = "#EEEEEE" ;
		} else if ( rate_elems[i].textContent > 70 ) {
			rate_elems[i].bgColor = "#DDDDDD" ;
		} else if ( rate_elems[i].textContent > 60 ) {
			rate_elems[i].bgColor = "#CCCCCC" ;
		} else if ( rate_elems[i].textContent > 50 ) {
			rate_elems[i].bgColor = "#BBBBBB" ;
		} else if ( rate_elems[i].textContent > 40 ) {
			rate_elems[i].bgColor = "#AAAAAA" ;
		} else if ( rate_elems[i].textContent > 30 ) {
			rate_elems[i].bgColor = "#999999" ;
		} else if ( rate_elems[i].textContent > 20 ) {
			rate_elems[i].bgColor = "#888888" ;
		} else if ( rate_elems[i].textContent > 10 ) {
			rate_elems[i].bgColor = "#777777" ;
		} else if ( rate_elems[i].textContent > 0 ) {
			rate_elems[i].bgColor = "#666666" ;
		} else {
			rate_elems[i].bgColor = "red" ;
		}
	}
},false);