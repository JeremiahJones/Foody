<html>
<head>
<link rel="stylesheet" type="text/css" href="home.css">
</head>

<body>
  <nav class="header">
   <a href="main_page.html"><img src="http://i64.tinypic.com/2qaift1.jpg" width="539" height="293" align="middle" alt="main logo"></a>
    <ul class="navtab">
        <li><a href="genreSelect.html">Genre</a></li>
        <li><a href="price.html">Price</a></li>
        <li><a href="stars.html">Stars</a></li>
       <li><a href="location.html">Location</a></li>
	   <li><a href="logout.php">Logout</a></li>
      </ul>
  </nav>
  </body>
  </html>
<br>
<?php
include('connect.php');

$id = $_GET['id'];
$user = $_COOKIE['id'];

if(empty($_GET['id']) || empty($_COOKIE['id'])){
header ("location:home.html");}

if(!empty($_POST['review'])){
	$review = mysqli_real_escape_string($link,$_POST['review']);
	$sql = "INSERT INTO reviews(review,id,userid,pending) VALUES('$review',$id,$user,1)";
	$results = mysqli_query($link,$sql);
	if (!$results){
		header("Location:duplicate_review.html");
	}
	echo (!$results? die("query failed <br>$sql <br>".mysqli_error($link)):"");
	header("Location:review.php?id=$id");
}

	
	
?>
<form method="post" action="">
Leave a review:<br>
<textarea rows="6" cols="33" name='review' placeholder="Leave your review here!"></textarea><br>
<input type='submit' value='Go'>
</form>