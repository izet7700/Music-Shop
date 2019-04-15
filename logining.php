<?php 
include 'connectdb.php';
session_start();
if(isset($_POST['login'])){
$nname= $_POST['nname'];
$passw= $_POST['passw'];
$auth="SELECT * FROM uporabniki WHERE nickname='$nname' AND password='$passw' ;";
$result = mysqli_query($link, $auth);
$rows = mysqli_num_rows($result);
if($rows === 1){
$_SESSION['nname'] = $nname; 
$_SESSION['passw'] = $passw;
header("location:index.php");
}
else{
    header("location:login.php");
}
}
?>