<?php
//koneksi ke database
$conn = mysqli_connect("localhost","root","","login");

function query ($query){
	global $conn;
	$result= mysqli_query($conn, $query);
	$rows= [];
	while ($row = mysqli_fetch_assoc($result)){
		$rows[]= $row;
	}
	return $rows;
}

function registrasi ($data) {
	global $conn;

	$username = strtolower(stripcslashes ($data["username"]));
	$password = mysqli_real_escape_string($conn, $data["password"]);
	$password2 = mysqli_real_escape_string($conn, $data["password2"]);

	//cek konfirmasi password
	if ( $password ! == $password2) {
		echo "<script>
		alert ('konfirmasi password tidak sesuai !');
		<script>";
		return false;
	}
}
