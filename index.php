
<?php
include 'connectdb.php';

include 'session.php';

include 'header.html';
?>
<style>
    table.blueTable {
    font-family: Georgia, serif;
    outline: 8px ridge #1DC7DB;
    outline-offset: 0px;
    background-color: #EEEEEE;
    width: 100%;
    text-align: center;
    .trancap{
        font-family: Georgia,serif;
        font-weight: bold;
        text-decoration: underline;
    }
}</style>
<div>
    <div class="tabeldiv">
        <h2 align="center" class="trancap">Košarica</h2><br>
       <?php
       $sql = "SELECT k.datum_trans,k.skupna_cena,k.id FROM kosarice k INNER JOIN uporabniki u ON u.id = k.uporabnik_id  "
               . "WHERE (k.uporabnik_id = (SELECT id FROM uporabniki WHERE (nickname = '".$_SESSION['nname']."') "
               . "AND (password = '".$_SESSION['passw']."')));";
       $result = mysqli_query($link, $sql);
       echo '<table id="transactionTable" class="blueTable">';
       echo '<tr><th>ID transakcije</th><th>Datum transakcije</th><th>Cena</th></tr>';
       while($row = mysqli_fetch_array($result)){
           echo '<tr>';
           echo "<td>".$row['id']."</td>";
           echo "<td>".$row['datum_trans']."</td>";        
           echo "<td>".$row['skupna_cena']." €</td>";
           echo '<tr>';
       }
       $sql2 = "SELECT SUM(skupna_cena) AS skupna, COUNT(id) AS id FROM kosarice WHERE(uporabnik_id = "
               . "(SELECT id FROM uporabniki WHERE nickname = '".$_SESSION['nname']."'));";
       $result2 = mysqli_query($link, $sql2);
       while($row2 = mysqli_fetch_array($result2)){
           echo "<tr><td><p>Število artiklov&nbsp;".$row2['id']."</p></td><td colspan='2'><p>Cena vseh izdelkov&nbsp;".$row2['skupna']."€</p></td></tr>";
       }     
       echo "</table>";
       ?>
    </div><br>
 
<?php 
if(!empty($_SESSION['nname'])&&!empty($_SESSION['passw'])){
    echo    "<script>".
            "document.getElementById('loginEvent').style.display = 'none';".  
            "</script>"; 
}
?>
<?php
include 'footer.html';
?>