<?php

include('connect.php');
if($_COOKIE['admin']!=0){
header("location:home.html");
}

if(empty($_GET['rId']) || empty($_GET['pending'])){
	header ("location:admin_approval.php");
}

$userid = $_GET['rId'];
$pending = $_GET['pending'];

echo "$userid  $pending";


$sql = "UPDATE reviews SET pending=$pending WHERE userId=$userid";
$results = mysqli_query($link,$sql);
echo (!$results? die("query failed <br>$sql <br>".mysqli_error($link)):"");
if(!$results){
	header ("location:main.html");
}else{
header("location:review_approval.php");
}
?>