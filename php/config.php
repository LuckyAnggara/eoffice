<?php
$local = "localhost";
$user	= "root";
$pass	= "";
$db		= "eoffice";

$koneksi = mysqli_connect($local,$user,$pass,$db);
if (mysqli_connect_errno()){
	echo "Koneksi database gagal : " . mysqli_connect_error();
}

?>