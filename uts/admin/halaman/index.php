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
<nav class="navbar navbar-expand-sm bg-primary navbar-dark">
  <ul class="navbar-nav">
    <li class="nav-item active">
      <a  href class="nav-link" href="#">Home</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#">About Us</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#">Galery</a>
    </li>
    <li class="nav-item">
      <a class="nav-link disabled" href="#">News</a>
    </li>
    <li class="nav-item">
      <a class="nav-link disabled" href="#">Contact</a>
   
  </ul>
</nav>

<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="img/header-about.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="img/header-index" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="img/header-news" class="d-block w-100" alt="...">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

<div class="footer_bar">
      <div class="container">
        <div class="row">
          <div class="col">
            <div class="footer_bar_content d-flex flex-row align-items-center justify-content-start">
              <div class="cr"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Bluesky</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
</div>
            
    </div>
  </footer>
</div>
</div>
  </div>
  
</footer>
</body>
</html>

