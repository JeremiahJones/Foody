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
      </ul>
  </nav><br><br>
</html>

<?php
include('connect.php');
if(empty($_GET['stars'])){
header:('stars.html');}


$stars = $_GET['stars'];

$sql = "SELECT id,name,address,city, zip, phone,price, rating FROM `resturants` WHERE rating=$stars order by rating desc";

$results = mysqli_query($link,$sql);
echo (!$results?die($sql."<br>".mysqli_error($link)):"");
$count = mysqli_num_rows($results);
echo "Check out these $stars-Star restaurants:<br><br>";
$rows = array();
for($i=0;$i<$count;$i++){
	$array = mysqli_fetch_array($results);
	$id = $array[0];
	$name = $array[1];
	$address = $array[2];
	$city = $array[3];
	$zip = $array[4];
	$phone = $array[5];
	$price = $array[6];
	$stars = $array[7];
	
	echo "Name: <a href='review.php?id=$id'>$name</a> <br>Address: $address, $city, $zip, $phone <br>Average Price per Person: $$price <br>Quality: $stars-Star<br><br>";
}
?>