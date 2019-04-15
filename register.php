<?php
include 'header.html';
include 'connectdb.php';
$sqlkraj="SELECT ime FROM kraji;";
$kraji= mysqli_query($link, $sqlkraj);
?>
<div>
  	<h2>Register</h2>
</div>
        <form action="insertragister.php" method="post">
  	  <label>Nickname</label>
  	  <input type="text" name="nick" id="nick">
  	  <label>Kraj</label>
          <select name="kraj">
              <?php
              while($row= mysqli_fetch_array($kraji)){
                echo '<option name="" value="'.$row['ime'].'">'.$row[ime].'</option>';
              }
              ?>
          </select>
  	  <label>Ime</label>
  	  <input type="text" name="ime" id="ime">
  	  <label>Priimek</label>
  	  <input type="text" name="priimek" id="priimek">
  	  <label>Naslov</label>
  	  <input type="text" name="naslov" id="naslov">
  	  <label>Password</label>
  	  <input type="password" name="password" id="password">
            <input type="submit" name="Register" value="Register">
  	<p>
  		Ste že registrirani? <a href="login.php">Prijavite se</a>
  	</p>
  </form>
<?php
include 'footer.html';
?>