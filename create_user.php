<?php
include('connect.php');

if(empty($_POST['userName']) || empty($_POST['passwordName'])|| empty($_POST['ageName']) || empty($_POST['emailName']) || empty($_POST['location1'])){
	header ("location:create_user.html");
	
}

$username = $_POST['userName'];
$password = $_POST['passwordName'];
$email = $_POST['emailName'];
$age = $_POST['ageName'];
$address = $_POST['location1'];

$sql = "INSERT INTO users(userName, email, password, address, ag) values ('$username', '$email', '$password', '$address', '$age')";
$results = mysqli_query($link,$sql);

if(!$results){
	header ("location:user_already_exists.html");
}



$sql2 = "select userId,userName from users where userName='$username' and password='$password'";
$results2 = mysqli_query($link,$sql2);

echo (!$results2?die($sql2."<br>".mysqli_error($link)):"");
$count = mysqli_num_rows($results2);
for($i=0;$i<$count;$i++){
	$array2 = mysqli_fetch_array($results2);
	$id = $array2[0];
	$name2 = $array2[1];
	

header("location:create_user_process.php?id=$id&userName=$name2");
}
?>