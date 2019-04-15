<?php
session_start();
if(!isset($_SESSION['nname'])&&(!isset($_SESSION['passw']))){ 
    header("location:login.php");
    exit(); 
}

