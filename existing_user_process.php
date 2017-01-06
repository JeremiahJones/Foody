<?php
include("connect.php");
if (empty($_POST['username']) || empty($_POST['password'])){
header("location:home.html");}


$username = $_POST['username'];
$password = trim($_POST['password']);

$sql = "SELECT userName,userId, admin FROM users WHERE userName='$username' and password='$password'";
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
	$hash = sha1($username.$id.$time);
	setcookie("username", $username, $expirationTime);
	setcookie("id", $id, $expirationTime);
	setcookie("time", $time, $expirationTime);
	setcookie("hash", $hash, $expirationTime);
	setcookie("admin", $admin, $expirationTime);
	header ("location:main_page.html");
	
}else{
	header("location:incorrect.html");
}

?>