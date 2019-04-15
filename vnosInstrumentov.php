<?php
include 'connectdb.php';

include 'session.php';

$id = $_GET['id'];

$sql = "INSERT INTO kosarice(instrument_id,uporabnik_id,skupna_cena) VALUES($id,"
        . "(SELECT id FROM uporabniki WHERE nickname = '".$_SESSION['nname']."'),"
        . "(SELECT cena_eur FROM instrumenti WHERE id = $id));";

$result = mysqli_query($link,$sql); 

