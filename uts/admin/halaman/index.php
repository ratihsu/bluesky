<?php 
include '../config.php';

// mengaktifkan session
session_start();

// cek apakah user telah login, jika belum login maka di alihkan ke halaman login
if($_SESSION['status'] !="login"){
	header("location:../admin/index.php");
}

// menampilkan pesan selamat datang
echo "Hai, selamat datang ". $_SESSION['username'];
?>

<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title> Home </title>

    <link rel="stylesheet" href="dist/css/bootstrap.min.css" >

    
    <script src="../admin/halaman/dist/js/jquery-1.9.1.min.js"></script>
    <script src="../admin/halaman/dist/js/bootstrap.min.js" ></script>
</head>

<body>

<!-- Membuat Navigasi Baris -->
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  
  <!-- Links -->
  <ul class="navbar-nav">
    <li class="nav-item">
      <a class="nav-link" href="#">Home</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#">Galery</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#">Pembayaran</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#">Transaksi</a>
    </li>
  </ul>
  
</nav>
</body>
</html>

