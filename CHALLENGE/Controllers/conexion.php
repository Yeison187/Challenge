<?php 

$mysqli= new mysqli('localhost','root','','challenge');

if ($mysqli->connect_error){
die ('error'.$mysqli->connect_error);
} 



 ?>