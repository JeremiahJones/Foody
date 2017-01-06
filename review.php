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
	


$sql2 = "SELECT id,name,address,city, zip, phone,price, picture, rating FROM `resturants` WHERE id='$id'";

$results = mysqli_query($link,$sql2);

echo (!$results?die($sql2."<br>".mysqli_error($link)):"");
$count = mysqli_num_rows($results);
for($i=0;$i<$count;$i++){
	$array2 = mysqli_fetch_array($results);
	$id = $array2[0];
	$name2 = $array2[1];
	$address = $array2[2];
	$city = $array2[3];
	$zip = $array2[4];
	$phone = $array2[5];
	$price = $array2[6];
	$image = $array2[7];
	$stars = $array2[8];
}
echo "$name2<br><br>
Address: $address, $city, $zip, $phone <br>Average Price per Person: $$price <br>Quality: $stars-Star<br><br>
<img src='$image'><br><br>";

echo "Here's what other users said about $name2:<br><br>";

$sql= "SELECT users.userName, resturants.name, reviews.review FROM users INNER JOIN reviews ON users.userid = reviews.userid JOIN resturants ON resturants.id = reviews.id WHERE reviews.id = '$id' and reviews.pending='0'";

$results = mysqli_query($link,$sql);
echo (!$results?die($sql."<br>".mysqli_error($link)):"");
$count = mysqli_num_rows($results);
for($i=0;$i<$count;$i++){
	$array = mysqli_fetch_array($results);
	$userName = $array[0];
	$name = $array[1];
	$review = $array[2];
	echo "$userName says: $review<br><br>";
}


echo "<a href='leaveReview.php?id=$id'>Leave a review!</a>";
?>
