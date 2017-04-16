// JavaScript Document
(function() {
	"use strict";
	var request, url, movieLinks, path, build, filterLinks = document.querySelectorAll(".filterNav a"), srchInput = document.querySelector("#srch"), live = document.querySelector("#livesrch");
	

	function init() {
		url="admin/includes/getMovies.php";
		build='init';
		path = "init";
		reqInfo(path);
	}
	

	function reqInfo(path) {
		// Purpose of this function is passed data from the client to the server(https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest).
		if(window.XMLHttpRequest) {
			request = new XMLHttpRequest();
		}else{
			request = new ActiveXObject("Microsoft.XMLHTTP");
		}
		request.open("GET", url, true);
		request.send();
		if(path==="liveSearch") {
			request.onreadystatechange = searchItems;
		}else{
			request.onreadystatechange = addItems;
		}
	}

function addItems() {
	//populate the full list on the page
	var con = document.querySelector(".films");
	con.innerHTML = "";
	build = "";
	
	if((request.readyState===4) || (request.status===200)) {
		var items = JSON.parse(request.responseText);
		//console.log(items);
		
		if(items.length!==0) {
			//console.log(items.length);
			for(var i=0;i<items.length; i++) {
				build = '<img src="img/'+items[i].products_thumb+'" alt="'+items[i].products_title +'">';
				build += '<h2>'+items[i].products_title+'</h2>';
				build += items[i].products_location+'<br>';
				build += items[i].products_price+'<br>';
				build += '<a href="details.php?id='+items[i].products_id+'">more...</a><br><br>';
				con.innerHTML += build;
			}
			filmLinks = document.querySelectorAll(".films a");
			
			
			
		}else{
			//error, no content
			con.innerHTML = "sorry, there was a server error, please try later.";
			for(var j=0; j<filmLinks.length; j++) {
				filmLinks[j].addEventListener("click", itemDetails, false);
			}
		live.innerHTML = build;

			build = '';
		}
	}
}
 function searchItems() {
		// Purpose of this function is write the content passed from PHP into the div located below the input field.
		//did ALL the data come back, is it finihsed?
		
		if((request.readyState===4) || (request.status===200)) {
			var srchItems = JSON.parse(request.responseText);

			for(var i=0;i<srchItems.length; i++) {
				build += '<a href="details.php?id='+ srchItems[i].film_id +'"><div class="searchItems"><ul>' //Grabs the Search Letters
				build += '<img src="images/'+srchItems[i].film_thumb+'">'; //Puts in the movie thumbnail depending on the search
				build += '<h2>'+ srchItems[i].film_title +'</h2>'; //Puts in the movie title for the movie search results
				build += '<h4>'+ srchItems[i].film_year+'</h4>';  //Puts in the movie year for the movie search results
				build += '</ul></div></a><br><br>'
			}

			live.innerHTML = build;

			build = '';

		}
		
	}

	function liveSearch() {
		// Purpose of this function is to rewrite the URL to be passed the search query on the PHP side.
		live.innerHTML = ""; //Grabs the search input but if the search is backspaced makes the results disappear
		//console.log("livesearch");
		var capture = srchInput.value; 
		if(capture===""){
			build = "";
		}else{
		url="admin/includes/getMovies.php?srch="+capture;
		path = "liveSearch";
		reqInfo(path);
		}
		
	}
	
	function filterItems(evt) {
		evt.preventDefault();
		var str = evt.target.href;
		var arr = str.split("=");
		str = arr[1];
		if(str) {
			url = "admin/includes/getMovies.php?filter="+str;
		}else{
			url = "admin/includes/getMovies.php";
		}
		path = "filterItems";
		reqInfo(path);
	}
	
	function itemDetails(evt) {
		evt.preventDefault();
		console.log("Item Details");	
		var str = evt.target.href;
		console.log(str);
		var arr = str.split("=");
		console.log(arr[1]);
		url = "admin/includes/getMovies.php?id="+arr[1];
		console.log(url);
		path = "itemDetails";
		reqInfo(path);
	}
	
	
	// Listeners
	for(var i=0; i<filterLinks.length; i++){
		filterLinks[i].addEventListener("click", filterItems, false);
	}
	window.addEventListener("load", init, false);
	srchInput.addEventListener("keyup",liveSearch,false);
	
})();