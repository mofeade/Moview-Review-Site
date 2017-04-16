<?php 
	//ini_set('display_errors',1);
    //error_reporting(E_ALL);
	include('connect.php');

	
	if(isset($_GET['srch'])) {
		$srch = $_GET['srch'];
		$movieQuery = "SELECT film_title,film_thumb,film_price,film_id FROM tbl_films WHERE film_title LIKE '$srch%' ORDER BY film_title ASC";
		$getProducts = mysqli_query($link, $movieQuery);
	}else if(isset($_GET['filter'])) {
		$filter = $_GET['filter'];
        $filterQuery = "SELECT tbl_films.film_id, tbl_films.film_thumb, tbl_films.film_title, tbl_films.film_year FROM tbl_films, tbl_cat, tbl_L_fc WHERE tbl_films.film_id = tbl_L_fc.film_id AND tbl_cat.cat_id = tbl_L_fc.cat_id AND tbl_cat.cat_name = '{$filter}'";
        $getProducts = mysqli_query($link, $filterQuery);
		
	}else if(isset($_GET['id'])) {
	$querySingle = "SELECT film_title, film_fimg, film_year FROM tbl_films WHERE film_id={$id}";
	$getProducts = mysqli_query($link, $querySingle);

	}else{
		$movieQuery = "SELECT film_id, film_title, film_thumb, film_desc FROM tbl_films ORDER BY film_title ASC";
		$getProducts = mysqli_query($link, $movieQuery);
	}
	






	$jsonResult="[";
	while($movResult = mysqli_fetch_assoc($getProducts)){
		$jsonResult .= json_encode($movResult).",";
	}
	$jsonResult .= "]";
	$jsonResult = substr_replace($jsonResult,'', -2, 1);
	echo $jsonResult;
?>
