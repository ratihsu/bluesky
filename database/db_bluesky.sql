/*
SQLyog Enterprise - MySQL GUI v7.14 
MySQL - 5.6.16 : Database - db_bluesky
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_bluesky` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `db_bluesky`;

/*Table structure for table `tbl_baju` */

DROP TABLE IF EXISTS `tbl_baju`;

CREATE TABLE `tbl_baju` (
  `kd_baju` char(5) NOT NULL,
  `nama_baju` varchar(50) DEFAULT NULL,
  `stok` int(11) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `kd_ukuran` varchar(5) DEFAULT NULL,
  `kd_warna` char(5) DEFAULT NULL,
  `foto_produk` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`kd_baju`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_baju` */

/*Table structure for table `tbl_detail_transaksi` */

DROP TABLE IF EXISTS `tbl_detail_transaksi`;

CREATE TABLE `tbl_detail_transaksi` (
  `jumlah` int(11) DEFAULT NULL,
  `kd_transaksi` char(5) DEFAULT NULL,
  `kd_baju` char(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_detail_transaksi` */

/*Table structure for table `tbl_pembayaran` */

DROP TABLE IF EXISTS `tbl_pembayaran`;

CREATE TABLE `tbl_pembayaran` (
  `kd_pembayaran` char(5) NOT NULL,
  `metode_pembayaran` varchar(20) DEFAULT NULL,
  `biaya_admin` int(11) DEFAULT NULL,
  `kd_transaksi` char(5) DEFAULT NULL,
  PRIMARY KEY (`kd_pembayaran`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_pembayaran` */

/*Table structure for table `tbl_pengiriman` */

DROP TABLE IF EXISTS `tbl_pengiriman`;

CREATE TABLE `tbl_pengiriman` (
  `kd_pengiriman` char(5) NOT NULL,
  `metode_pengiriman` varchar(50) DEFAULT NULL,
  `ongkos_kirim` int(11) DEFAULT NULL,
  PRIMARY KEY (`kd_pengiriman`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_pengiriman` */

/*Table structure for table `tbl_status_pembayaran` */

DROP TABLE IF EXISTS `tbl_status_pembayaran`;

CREATE TABLE `tbl_status_pembayaran` (
  `kd_pembayaran` char(5) DEFAULT NULL,
  `status_pembayaran` varchar(10) DEFAULT NULL,
  `tgl_bayar` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_status_pembayaran` */

/*Table structure for table `tbl_transaksi` */

DROP TABLE IF EXISTS `tbl_transaksi`;

CREATE TABLE `tbl_transaksi` (
  `kd_transaksi` char(5) NOT NULL,
  `tgl_transaksi` date DEFAULT NULL,
  `kd_pengiriman` char(5) DEFAULT NULL,
  `nama_penerima` varchar(30) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `no_Hp` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`kd_transaksi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_transaksi` */

/*Table structure for table `tbl_ukuran` */

DROP TABLE IF EXISTS `tbl_ukuran`;

CREATE TABLE `tbl_ukuran` (
  `kd_ukuran` varchar(5) NOT NULL,
  `ket_ukuran` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`kd_ukuran`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_ukuran` */

/*Table structure for table `tbl_warna` */

DROP TABLE IF EXISTS `tbl_warna`;

CREATE TABLE `tbl_warna` (
  `kd_warna` char(5) NOT NULL,
  `ket_warna` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`kd_warna`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_warna` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `username` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`id`,`nama`,`username`,`password`) values (1,'Anggia Rumiris','anggiarumiris','123456'),(2,'Ratih Suryani','ratihsu','123456'),(3,'Olvi Lorensky','olvilorensky','123456');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
