<?php

$con=mysqli_connect('localhost','root','');
$db=mysqli_select_db($con,'supermarket') or die('some error');
//echo "connection success";
?>