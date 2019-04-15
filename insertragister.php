<?php include 'header.html'; ?>
<?php
include 'connectdb.php';
if(isset($_POST['Register'])){
$nick= $_POST['nick'];
$kraj= $_POST['kraj'];
$ime= $_POST['ime'];
$priimek= $_POST['priimek'];
$naslov= $_POST['naslov'];
$password=$_POST['password'];
$sql="INSERT INTO uporabniki (nickname,first_name,last_name,password,naslov,kraj_id)
        VALUES ('".$nick."','".$ime."','".$priimek."','".$password."','".$naslov."',(SELECT id FROM kraji WHERE ime='".$kraj."'));";
}
if(mysqli_query($link, $sql)){
    header('location:login.php');
}
else{echo 'Not inserted';}
include 'footer.html';
?>