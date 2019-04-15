<?php
include 'connectdb.php';

include 'session.php';

$id = $_GET['id'];

$sql = "DELETE FROM kosarice WHERE oprema_id = $id ;";

$result = mysqli_query($link,$sql); 
?>
