<?php
$db_host=$_ENV["HOST"] ;
$db_user=$_ENV["USERNAME"];
$db_pass=$_ENV["PASSWORD"];
$db_name=$_ENV["DB"];


$con = mysqli($db_host,$db_user,$db_pass,$db_name);
?>
