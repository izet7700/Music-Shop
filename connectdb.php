<html>
    <head>
        <meta charset="UTF-8">
        <title></title>
    </head>
    <body>
        <?php
        //povezava na strežnik
        $host="localhost";
        $user="root";
        $password="";
        $link= mysqli_connect($host, $user, $password)
                or die("Ne morem do strežnika.");
        $db_name="glasbil2";
        mysqli_select_db($link, $db_name)
                or die("Ne morem do baze.");
        mysqli_set_charset($link, "utf8");
        ?>
    </body>
</html>
