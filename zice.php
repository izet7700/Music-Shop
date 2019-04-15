<?php
include 'header.html';
include 'connectdb.php';
?>
<style>
    table.instrument {
    font-family: Georgia, serif;
    outline: 8px ridge #1DC7DB;
    outline-offset: 0px;
    background-color: #EEEEEE;
    width: 100%;
    text-align: center;
    
}
table.instrument td{
    background-color:56a2b7;
}
    .kosarabutton {
	-moz-box-shadow: 4px 5px 0px 0px #899599;
	-webkit-box-shadow: 4px 5px 0px 0px #899599;
	box-shadow: 4px 5px 0px 0px #899599;
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #ededed), color-stop(1, #bab1ba));
	background:-moz-linear-gradient(top, #ededed 5%, #bab1ba 100%);
	background:-webkit-linear-gradient(top, #ededed 5%, #bab1ba 100%);
	background:-o-linear-gradient(top, #ededed 5%, #bab1ba 100%);
	background:-ms-linear-gradient(top, #ededed 5%, #bab1ba 100%);
	background:linear-gradient(to bottom, #ededed 5%, #bab1ba 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#ededed', endColorstr='#bab1ba',GradientType=0);
	background-color:#ededed;
	-moz-border-radius:15px;
	-webkit-border-radius:15px;
	border-radius:15px;
	border:1px solid #d6bcd6;
	display:inline-block;
	cursor:pointer;
	color:#3a8a9e;
	font-family:Arial;
	font-size:16px;
	font-weight:bold;
	padding:10px 17px;
	text-decoration:none;
	text-shadow:0px 1px 0px #e1e2ed;
}
.kosarabutton:hover {
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #bab1ba), color-stop(1, #ededed));
	background:-moz-linear-gradient(top, #bab1ba 5%, #ededed 100%);
	background:-webkit-linear-gradient(top, #bab1ba 5%, #ededed 100%);
	background:-o-linear-gradient(top, #bab1ba 5%, #ededed 100%);
	background:-ms-linear-gradient(top, #bab1ba 5%, #ededed 100%);
	background:linear-gradient(to bottom, #bab1ba 5%, #ededed 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#bab1ba', endColorstr='#ededed',GradientType=0);
	background-color:#bab1ba;
}
.kosarabutton:active {
	position:relative;
	top:1px;
}
.cenaText{
    color: red;
    font-size: 24px;
}
</style>
<?php
$sql="SELECT s.url AS surl, t.ime AS tip, p.ime AS pime,o.opis,o.cena,o.id AS oid FROM proizvajaleci p INNER JOIN opreme o ON o.proizvajalec_id=p.id "
        . "INNER JOIN tip_opreme t ON o.vrsta_op_id=t.id INNER JOIN slike s ON s.oprema_id=o.id WHERE (t.ime='žice');";
$zice= mysqli_query($link, $sql);
echo "<table class='instrument'>";
$counter=0;
while($row= mysqli_fetch_array($zice)){
    if($counter == 0){
        echo "<tr>";
    }
    $counter++;
    echo "<td align='center'><img style='height:200px;width:200px;background-size:cover;' src='".$row['surl']."'>"
            . "<br>".$row['pime']." ".$row['tip']." ".$row['opis']." <br>"
            . "<span class='cenaText'>Cena: ".$row['cena']." €</span><br>"
            . "<button id='".$row['oid']."' class='kosarabutton' type='button'>Dodaj v košarico</button>"
            . "</td>";
    if($counter==5){
        echo '</tr>';
        $counter=0;
    }
    
}
echo '</table>';
include 'footer.html';
?>
