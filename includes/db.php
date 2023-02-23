<?php
$db_host=$_ENV["HOST"] ;
$db_user=$_ENV["USERNAME"];
$db_pass=$_ENV["PASSWORD"];
$db_name=$_ENV["DB"];

$con = new mysqli($db_host,$db_user,$db_pass,$db_name);

// Check connection
if ($con -> connect_errno) {
    echo "Failed to connect to MySQL: " . $con -> connect_error;
    exit();
}

$con -> set_charset("utf8");
?>
