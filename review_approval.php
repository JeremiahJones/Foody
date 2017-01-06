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
  </nav>
  <br><br>
  </html>

<?php
include('connect.php');
if($_COOKIE['admin']!=1){
	header("location:home.html");
}

$sql="SELECT id,userid,review FROM reviews WHERE pending=1";
$results = mysqli_query($link,$sql);
echo (!$results? die("query failed <br>$sql <br>".mysqli_error($link)):"");
echo "<table>";
$count = mysqli_num_rows($results);
for($i=0;$i<$count;$i++){
	$array = mysqli_fetch_array($results);
	$restid = $array[0];
	$userid = $array[1];
	$review = $array[2];
	echo "<tr><td>$review</td><td><a href='review_approval_process.php?rId=$userid&pending=0'>Approve</a></td><td><a href='review_approval_process.php?rId=$userid&pending=2'>Disapprove</a></td></tr>";
}
echo "</table>";
?>