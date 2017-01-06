<?php

if(empty($_COOKIE['username']) || empty($_COOKIE['id']) ||empty($_COOKIE['time']) ||empty($_COOKIE['hash']) ){
	header ("location:home.html");
}

$username=$_COOKIE['username'];
$id=$_COOKIE['id'];
$admin = $_COOKIE['admin'];
$time=$_COOKIE['time'];
$hashFromCookie=$_COOKIE['hash'];

$hashCalculated = sha1($username.$id.$admin.$time);

if($hashCalculated != $hashFromCookie){
	$pageWhereUserWas = $_SERVER['REQUEST_URI'];
	setcookie('prevLocation',$pageWhereUserWas);
	header ("location:home.html");
	
}



?>