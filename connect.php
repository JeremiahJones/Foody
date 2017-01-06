<?php
$link = mysqli_connect("localhost", "root","","foodyData");
echo (!$link? die("connection failed <br>".mysqli_error($link)):"");







?>