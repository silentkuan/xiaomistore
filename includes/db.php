<?php
$db_host="localhost";
$db_user="root";
$db_pass="";
$db_name="DB="xiaomi";

$con = new mysqli($db_host,$db_user,$db_pass,$db_name);

// Check connection
if ($con -> connect_errno) {
    echo "Failed to connect to MySQL: " . $con -> connect_error;
    exit();
}

$con -> set_charset("utf8");
?>
