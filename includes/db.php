<?php
$db_host="us-cdbr-east-06.cleardb.net";
$db_user="b5363ef00b2bfd";
$db_pass="5a71b740";
$db_name="heroku_ffe3f4d0c66bdc3";

$con = new mysqli($db_host,$db_user,$db_pass,$db_name);

// Check connection
if ($con -> connect_errno) {
    echo "Failed to connect to MySQL: " . $con -> connect_error;
    exit();
}

$con -> set_charset("utf8");
?>
