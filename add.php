  <?php
session_start();
include('connection.php');

if(isset($_POST['submit'])){
    if(!isset($_SESSION['cart'])){
        $_SESSION['cart']=time();
    }
    $a=$_POST['item'];
    $b=$_POST['price'];
    $c=$_SESSION['cart'];
    $q="insert into cart(customer_id,product_name,price) values('$c','$a','$b')";
    $res=mysqli_query($con,$q);
    if($res){
        header('location:index.php');
    }
}
?>