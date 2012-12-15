document.addEventListener ('DOMContentLoaded', function(){
	var rate_elems = $('td.rate');
	for(var i = 0; i < rate_elems.length; i++){
		if        ( rate_elems[i].textContent == 100 ) {
			rate_elems[i].bgColor = "99ff00" ;
		} else if ( rate_elems[i].textContent > 90 ) {
			rate_elems[i].bgColor = "#ccff33" ;
		} else if ( rate_elems[i].textContent > 80 ) {
			rate_elems[i].bgColor = "#ccff99" ;
		} else if ( rate_elems[i].textContent > 60 ) {
			rate_elems[i].bgColor = "#ffcc00" ;
		} else if ( rate_elems[i].textContent > 40 ) {
			rate_elems[i].bgColor = "#ff6600" ;
		} else if ( rate_elems[i].textContent > 20 ) {
			rate_elems[i].bgColor = "#ff3300" ;
		} else if ( rate_elems[i].textContent > 0 ) {
			rate_elems[i].bgColor = "#ff3300" ;
		} else {
			rate_elems[i].bgColor = "ff0000" ;
		}
	}
},false);
