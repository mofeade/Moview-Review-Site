<?php
	
	ini_set('display_errors',1);
error_reporting(E_ALL ^ E_NOTICE);
	
	// Setup connections and gain access to all of functions
	require_once('admin/includes/init.php');
	// Define globals and call in info from db
	if(isset($_GET['filter'])) {

		$tbl1 = "tbl_films";
		$tbl2 = "tbl_cat";
		$tbl3 = "tbl_L_fc";
		$col1 = "film_id";
		$col2 = "cat_id";
		$col3 = "cat_name";
		$col5 = "film_id";
		$col6 = "comment";
		$filter = $_GET['filter'];
		$getProducts = filterType($tbl1,$tbl2,$tbl3,$col1,$col2,$col3,$filter);
	}else{
		$tbl = "tbl_films";
		$getProducts = getAll($tbl);
	}


	if(isset($_POST['submit'])) {
		//echo "works";
		
		$poster_name = trim($_POST['poster_name']);
		$poster_email = trim($_POST['poster_email']);
		$comment = trim($_POST['comment']);
		$movies_id = trim($_POST['film_id']);
		$movie_titles = trim($_POST['film_title']);
	
		$uploadProduct = addMovie($film_id, $poster_name, $poster_email, $comment);
		$message = $uploadProduct;
	}
	
?>

<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Dapper Movies</title>
<link href="css/main.css" type="text/css" rel="stylesheet">

 <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/1.18.0/TweenMax.min.js"></script>
<link href='https://fonts.googleapis.com/css?family=Oswald:400,700,300|Pacifico|Josefin+Slab:400,400italic,600,600italic,700,700italic' rel='stylesheet' type='text/css'>
</head>
<body>
<div class="bar"></div>


<h5 style="font-size: 30px; font-family: 'Oswald'; opacity: 0.85; margin-top: 30px;">DAPPER MOVIES</h5>
<img style="text-align: center; margin: 0 auto; height: 30%; width: 30%;" src="images/dapper.png">
<div id="livesearch">

	<h2 style="font-weight: 400; color: #000;">SEARCH A MOVIE</h2>
<form>
<input id="srch" type="text" size="30" placeholder="  enter movie"></input><br>
<div id="livesrch"></div>
</form>
</div>

<div id="contentHome">

<br>
<hr>
<div id="welcome">
<p>VIEW OUR COLLECTION<br>
SORT BY</p>
<?php include('includes/nav.html');  ?>
</div>


	<?php if(!empty($message)){echo $message;} ?>
	
<div id="productContainer">
<?php

	
	
	if(!is_string($getProducts)){
		while($row = mysqli_fetch_array($getProducts))
			{
			echo "
				  <h2 style='color: #000;'>{$row['film_title']}</h2>
				  <p style='color: #000;'>{$row['film_storyline']}</p>
				
				  <div class='vidSection'><video  class='videoClass' src=\"videos/{$row['film_trailer']}\"></video></div>
				  <div class='vidControls'>
	<button id='playButton' type='button' class='pPause' value='Play/Pause'>
	<button id='volDownButton' class='volDown'></button>
	<button id='volUpButton' class='volUp'></button>
	<button id='muteButton' class='volMute'></button>
</div>";

	
		
		
	
		
	
		}
	}else{
		echo "<p>{$getProducts}</p>";
	}
	
	
?>	
<div>
<form action="index.php" method="post" enctype="multipart/form-data"></form>
		
		<br><br>
		<label>Select movie to review</label>
		<select style="margin-bottom: 30px;" name="movies_id">
			<option value="1">Rogue One: A Star Wars Story</option>
			<option value="2">Batman v Superman: Dawn of Justice</option>
			<option value="3">X-Men: Apocalypse</option>
			<option value="4">Hidden Figures</option>
			<option value="5">Black Mass</option>
			<option value="6">Straight Outta Compton</option>
			<option value="7">Dawn of the Planet of the Apes</option>
			<option value="8">Need for Speed</option>
			<option value="9">Now You See Me</option>
			<option value="10">White House Down</option>
			<option value="11">Get Out</option>
			<option value="12">Logan</option>
		
		</select>
</div>
	<hr>
		<div>
		<label>Enter your name:</label>
		<input type="text" name="poster_name" value=""><br>		

		<label>Enter your comment:</label><br>
		<textarea name="comment"></textarea><br>
		<br><br><br>
		<input type="submit" name="submit" value="Add Review">
		</div>
		<section class="content-section">
		<hr>
		
			
			</section>

</div>
</div>

<p style="opacity: 0.4; font-family: 'Helvetica'; font-size: 15px;">COPYRIGHT 2017 DAPPER MOVIES - ALL RIGHTS RESERVED</p>
<div class="bar"></div>
<script src="js/videos.js"></script>
<script src="js/utility.js"></script>
		<script src="js/jQuery.js"></script>
</body>
</html>