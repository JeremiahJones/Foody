<?php
include("connect.php");
if(empty($_GET['id']) || empty($_GET['userName'])){
header("location:home.html");}


$id = trim($_GET['id']);
$userName = trim($_GET['userName']);

$sql = "SELECT userName,userId,admin FROM users WHERE userName='$userName'";

$results = mysqli_query($link,$sql);
echo (!$results? die("query failed <br>$sql <br>".mysqli_error($link)):"");


$count = mysqli_num_rows($results);


if($count>0){
	$array = mysqli_fetch_array($results);
	$username = $array[0];
	$id = $array[1];
	$admin = $array[2];
	$time = time();
	$expirationTime = strtotime('+10 years');	
	$hash = sha1($username.$id.$admin.$time);
	setcookie("username", $username, $expirationTime);
	setcookie("id", $id, $expirationTime);
	setcookie("admin", $admin, $expirationTime);
	setcookie("time", $time, $expirationTime);
	setcookie("hash", $hash, $expirationTime);
	
	header ("location:main_page.html");
	
}else{
	header("location:home.html");
}

?>