<?php

$ServerName ="localhost";
$UserName ="root";
$Password ="";
$Database ="db_chic&co";


$Conn=mysqli_connect($ServerName,$UserName,$Password,$Database);

if(!$Conn)
{
	die("Connection Failed:".mysqli_connect_error());
}

?>