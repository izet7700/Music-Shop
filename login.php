<?php include 'header.html';
?>
<h2>Login</h2>
<form action="logining.php" method="POST">
    <label for="uname"><b>Nickname</b></label>
    <input type="text" placeholder="Enter Nickname" name="nname" required>
    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="passw" required>
    <input type="submit" name="login" value="Submit">
</form>
<p>Še vedno nimate računa?<a href='register.php'> Registriraj se</a></p>
<?php include 'footer.html';?>