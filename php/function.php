<?php 
require 'config.php';
function registrasi($data){
	global $koneksi;
	$username = strtolower(stripcslashes($data["username"]));
	$nama	= $data["nama"];
	$email = $data["email"];
	$password = mysqli_real_escape_string($koneksi,$data["password"]);
	$password2 = mysqli_real_escape_string($koneksi,$data["password"]);


	// cek username
	$result = mysqli_query($koneksi, "SELECT username FROM users WHERE username = '$username'");

	if( mysqli_fetch_assoc($result)){
		echo "<script>
			alert('User Name Sudah Terdaftar!');
			</script>";
		return false;
	}

	// cek confirmasi password

	if($password !== $password2){
		echo "<script>
			alert('Konfirmasi Password Tidak Sesuai')
			</script>";

		return false;

	}

	//enkripsi password

	$password = password_hash($password, PASSWORD_DEFAULT);

	//tambahkan user baru ke database

	mysqli_query($koneksi, "INSERT INTO users VALUES('$username','$password','$nama','$email','','')");

	return mysqli_affected_rows($koneksi);
}



?>