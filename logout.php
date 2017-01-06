<?php
setcookie("username","",strtotime('-1 day'));
setcookie("id","",strtotime('-1 day'));
setcookie("time","",strtotime('-1 day'));
setcookie("hash","",strtotime('-1 day'));
setcookie("admin","",strtotime('-1 day'));

header("location:home.html");
?>