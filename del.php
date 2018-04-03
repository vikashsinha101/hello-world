<?php
session_start();
include('connection.php');
$s=$_SESSION['cart'];
$d=$_REQUEST['id'];
$q="delete from cart where id='$d'";
$r=mysqli_query($con,$q);
header('location:checkout.php');