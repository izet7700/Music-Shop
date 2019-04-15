<?php
include 'connectdb.php';

include 'session.php';

$id = $_GET['id'];

$sql = "DELETE FROM kosarice WHERE instrument_id = $id ;";

$result = mysqli_query($link,$sql); 
?>
