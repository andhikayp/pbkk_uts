-- --------------------------------------------------------
-- Host:                         178.128.80.206
-- Server version:               5.7.29-0ubuntu0.16.04.1 - (Ubuntu)
-- Server OS:                    Linux
-- HeidiSQL Version:             10.3.0.5771
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for kasir
CREATE DATABASE IF NOT EXISTS `kasir` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `kasir`;

-- Dumping structure for table kasir.barang
CREATE TABLE IF NOT EXISTS `barang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `deskripsi` varchar(255) DEFAULT NULL,
  `kategori` varchar(255) DEFAULT NULL,
  `harga_beli` int(11) DEFAULT NULL,
  `harga_jual` int(11) DEFAULT NULL,
  `stok` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- Dumping data for table kasir.barang: ~5 rows (approximately)
/*!40000 ALTER TABLE `barang` DISABLE KEYS */;
INSERT INTO `barang` (`id`, `nama`, `foto`, `deskripsi`, `kategori`, `harga_beli`, `harga_jual`, `stok`) VALUES
	(2, 'sarimie', '', '', 'makanan', 2000, 4000, 53);
INSERT INTO `barang` (`id`, `nama`, `foto`, `deskripsi`, `kategori`, `harga_beli`, `harga_jual`, `stok`) VALUES
	(3, 'energen', 'batu_marjanred_coral_marjan_1521487673_facd1ec0.jpg', 'joss', 'minuman', 5000, 6000, 1965);
INSERT INTO `barang` (`id`, `nama`, `foto`, `deskripsi`, `kategori`, `harga_beli`, `harga_jual`, `stok`) VALUES
	(8, 'tes', 'tes.JPG', 'tes', 'tes', 4000, 5000, 141);
INSERT INTO `barang` (`id`, `nama`, `foto`, `deskripsi`, `kategori`, `harga_beli`, `harga_jual`, `stok`) VALUES
	(11, 'testtttt', 'default.jpg', 'Pelatihan Spiritual dan Kebangsaan Mahasiswa Baru ITS Tahun Akademik 2017/2018', 'buah', 5000, 70000, 2);
/*!40000 ALTER TABLE `barang` ENABLE KEYS */;

-- Dumping structure for table kasir.jumlah_transaksi
CREATE TABLE IF NOT EXISTS `jumlah_transaksi` (
  `id_transaksi` int(11) DEFAULT NULL,
  `id_barang` int(11) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `harga_satuan` int(11) DEFAULT NULL,
  `harga_beli_satuan` int(11) DEFAULT NULL,
  `harga_total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table kasir.jumlah_transaksi: ~27 rows (approximately)
/*!40000 ALTER TABLE `jumlah_transaksi` DISABLE KEYS */;
INSERT INTO `jumlah_transaksi` (`id_transaksi`, `id_barang`, `jumlah`, `harga_satuan`, `harga_beli_satuan`, `harga_total`) VALUES
	(327124836, 3, 3, 6000, 4000, 18000);
INSERT INTO `jumlah_transaksi` (`id_transaksi`, `id_barang`, `jumlah`, `harga_satuan`, `harga_beli_satuan`, `harga_total`) VALUES
	(327124836, 2, 7, 7000, 4000, 49000);
INSERT INTO `jumlah_transaksi` (`id_transaksi`, `id_barang`, `jumlah`, `harga_satuan`, `harga_beli_satuan`, `harga_total`) VALUES
	(327124836, 8, 1, 5000, 4000, 5000);
INSERT INTO `jumlah_transaksi` (`id_transaksi`, `id_barang`, `jumlah`, `harga_satuan`, `harga_beli_satuan`, `harga_total`) VALUES
	(327124929, 3, 12, 6000, 4000, 72000);
INSERT INTO `jumlah_transaksi` (`id_transaksi`, `id_barang`, `jumlah`, `harga_satuan`, `harga_beli_satuan`, `harga_total`) VALUES
	(327124943, 2, 35, 7000, 4000, 245000);
INSERT INTO `jumlah_transaksi` (`id_transaksi`, `id_barang`, `jumlah`, `harga_satuan`, `harga_beli_satuan`, `harga_total`) VALUES
	(327125000, 8, 12, 5000, 4000, 60000);
INSERT INTO `jumlah_transaksi` (`id_transaksi`, `id_barang`, `jumlah`, `harga_satuan`, `harga_beli_satuan`, `harga_total`) VALUES
	(327125000, 3, 2, 6000, 4000, 12000);
INSERT INTO `jumlah_transaksi` (`id_transaksi`, `id_barang`, `jumlah`, `harga_satuan`, `harga_beli_satuan`, `harga_total`) VALUES
	(327135952, 2, 12, 7000, 4000, 84000);
INSERT INTO `jumlah_transaksi` (`id_transaksi`, `id_barang`, `jumlah`, `harga_satuan`, `harga_beli_satuan`, `harga_total`) VALUES
	(327135952, 3, 5, 6000, 4000, 30000);
INSERT INTO `jumlah_transaksi` (`id_transaksi`, `id_barang`, `jumlah`, `harga_satuan`, `harga_beli_satuan`, `harga_total`) VALUES
	(327193655, 3, 3, 6000, 4000, 0);
INSERT INTO `jumlah_transaksi` (`id_transaksi`, `id_barang`, `jumlah`, `harga_satuan`, `harga_beli_satuan`, `harga_total`) VALUES
	(327193655, 2, 7, 7000, 4000, 0);
INSERT INTO `jumlah_transaksi` (`id_transaksi`, `id_barang`, `jumlah`, `harga_satuan`, `harga_beli_satuan`, `harga_total`) VALUES
	(327193655, 8, 1, 5000, 4000, 0);
INSERT INTO `jumlah_transaksi` (`id_transaksi`, `id_barang`, `jumlah`, `harga_satuan`, `harga_beli_satuan`, `harga_total`) VALUES
	(327180910, 2, 3, 7000, 5000, 21000);
INSERT INTO `jumlah_transaksi` (`id_transaksi`, `id_barang`, `jumlah`, `harga_satuan`, `harga_beli_satuan`, `harga_total`) VALUES
	(327180910, 3, 5, 6000, 5000, 30000);
INSERT INTO `jumlah_transaksi` (`id_transaksi`, `id_barang`, `jumlah`, `harga_satuan`, `harga_beli_satuan`, `harga_total`) VALUES
	(328044950, 3, 5, 6000, NULL, 30000);
INSERT INTO `jumlah_transaksi` (`id_transaksi`, `id_barang`, `jumlah`, `harga_satuan`, `harga_beli_satuan`, `harga_total`) VALUES
	(328044950, 2, 4, 4000, NULL, 16000);
INSERT INTO `jumlah_transaksi` (`id_transaksi`, `id_barang`, `jumlah`, `harga_satuan`, `harga_beli_satuan`, `harga_total`) VALUES
	(328045035, 2, 4, 4000, NULL, 16000);
INSERT INTO `jumlah_transaksi` (`id_transaksi`, `id_barang`, `jumlah`, `harga_satuan`, `harga_beli_satuan`, `harga_total`) VALUES
	(328045243, 2, 5, 4000, NULL, 20000);
INSERT INTO `jumlah_transaksi` (`id_transaksi`, `id_barang`, `jumlah`, `harga_satuan`, `harga_beli_satuan`, `harga_total`) VALUES
	(328045646, 2, 5, 4000, NULL, 20000);
INSERT INTO `jumlah_transaksi` (`id_transaksi`, `id_barang`, `jumlah`, `harga_satuan`, `harga_beli_satuan`, `harga_total`) VALUES
	(328045902, 3, 1, 6000, NULL, 6000);
INSERT INTO `jumlah_transaksi` (`id_transaksi`, `id_barang`, `jumlah`, `harga_satuan`, `harga_beli_satuan`, `harga_total`) VALUES
	(328050147, 2, 3, 4000, NULL, 12000);
INSERT INTO `jumlah_transaksi` (`id_transaksi`, `id_barang`, `jumlah`, `harga_satuan`, `harga_beli_satuan`, `harga_total`) VALUES
	(328062134, 3, 2, 6000, 5000, 12000);
INSERT INTO `jumlah_transaksi` (`id_transaksi`, `id_barang`, `jumlah`, `harga_satuan`, `harga_beli_satuan`, `harga_total`) VALUES
	(328062134, 10, 2, 70000, 5000, 140000);
INSERT INTO `jumlah_transaksi` (`id_transaksi`, `id_barang`, `jumlah`, `harga_satuan`, `harga_beli_satuan`, `harga_total`) VALUES
	(328062223, 2, 2, 4000, 2000, 8000);
INSERT INTO `jumlah_transaksi` (`id_transaksi`, `id_barang`, `jumlah`, `harga_satuan`, `harga_beli_satuan`, `harga_total`) VALUES
	(328062223, 8, 56, 5000, 4000, 280000);
INSERT INTO `jumlah_transaksi` (`id_transaksi`, `id_barang`, `jumlah`, `harga_satuan`, `harga_beli_satuan`, `harga_total`) VALUES
	(328062430, 2, 5, 4000, 2000, 20000);
INSERT INTO `jumlah_transaksi` (`id_transaksi`, `id_barang`, `jumlah`, `harga_satuan`, `harga_beli_satuan`, `harga_total`) VALUES
	(328101849, 2, 3, 4000, NULL, 12000);
INSERT INTO `jumlah_transaksi` (`id_transaksi`, `id_barang`, `jumlah`, `harga_satuan`, `harga_beli_satuan`, `harga_total`) VALUES
	(328145536, 2, 5, 4000, 2000, 20000);
INSERT INTO `jumlah_transaksi` (`id_transaksi`, `id_barang`, `jumlah`, `harga_satuan`, `harga_beli_satuan`, `harga_total`) VALUES
	(328145536, 3, 6, 6000, 5000, 36000);
/*!40000 ALTER TABLE `jumlah_transaksi` ENABLE KEYS */;

-- Dumping structure for table kasir.kategori
CREATE TABLE IF NOT EXISTS `kategori` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Dumping data for table kasir.kategori: ~5 rows (approximately)
/*!40000 ALTER TABLE `kategori` DISABLE KEYS */;
INSERT INTO `kategori` (`id`, `nama`) VALUES
	(1, 'makanan');
INSERT INTO `kategori` (`id`, `nama`) VALUES
	(2, 'kosmetik');
INSERT INTO `kategori` (`id`, `nama`) VALUES
	(3, 'minuman');
INSERT INTO `kategori` (`id`, `nama`) VALUES
	(4, 'alat rumah tangga');
INSERT INTO `kategori` (`id`, `nama`) VALUES
	(5, 'barang elektronik');
/*!40000 ALTER TABLE `kategori` ENABLE KEYS */;

-- Dumping structure for table kasir.transaksi
CREATE TABLE IF NOT EXISTS `transaksi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_kasir` int(11) DEFAULT '0',
  `tanggal` datetime DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=328145537 DEFAULT CHARSET=latin1;

-- Dumping data for table kasir.transaksi: ~14 rows (approximately)
/*!40000 ALTER TABLE `transaksi` DISABLE KEYS */;
INSERT INTO `transaksi` (`id`, `id_kasir`, `tanggal`, `total`) VALUES
	(327124836, 20, '2020-03-27 12:48:36', 72000);
INSERT INTO `transaksi` (`id`, `id_kasir`, `tanggal`, `total`) VALUES
	(327124929, 20, '2020-03-27 12:49:29', 72000);
INSERT INTO `transaksi` (`id`, `id_kasir`, `tanggal`, `total`) VALUES
	(327124943, 20, '2020-03-27 12:49:43', 245000);
INSERT INTO `transaksi` (`id`, `id_kasir`, `tanggal`, `total`) VALUES
	(327135952, 19, '2020-03-27 13:59:52', 114000);
INSERT INTO `transaksi` (`id`, `id_kasir`, `tanggal`, `total`) VALUES
	(327180910, 1, '2020-03-27 18:09:10', 51000);
INSERT INTO `transaksi` (`id`, `id_kasir`, `tanggal`, `total`) VALUES
	(328044950, NULL, '2020-03-28 04:49:50', 46000);
INSERT INTO `transaksi` (`id`, `id_kasir`, `tanggal`, `total`) VALUES
	(328045035, NULL, '2020-03-28 04:50:35', 16000);
INSERT INTO `transaksi` (`id`, `id_kasir`, `tanggal`, `total`) VALUES
	(328045243, NULL, '2020-03-28 04:52:43', 20000);
INSERT INTO `transaksi` (`id`, `id_kasir`, `tanggal`, `total`) VALUES
	(328045646, 20, '2020-03-28 04:56:46', 20000);
INSERT INTO `transaksi` (`id`, `id_kasir`, `tanggal`, `total`) VALUES
	(328045902, 20, '2020-03-28 04:59:02', 6000);
INSERT INTO `transaksi` (`id`, `id_kasir`, `tanggal`, `total`) VALUES
	(328050147, 20, '2020-03-28 05:01:47', 12000);
INSERT INTO `transaksi` (`id`, `id_kasir`, `tanggal`, `total`) VALUES
	(328062134, 20, '2020-03-28 06:21:34', 152000);
INSERT INTO `transaksi` (`id`, `id_kasir`, `tanggal`, `total`) VALUES
	(328062223, 20, '2020-03-28 06:22:23', 288000);
INSERT INTO `transaksi` (`id`, `id_kasir`, `tanggal`, `total`) VALUES
	(328062430, 20, '2020-03-28 06:24:30', 20000);
INSERT INTO `transaksi` (`id`, `id_kasir`, `tanggal`, `total`) VALUES
	(328145536, 20, '2020-03-28 14:55:36', 56000);
/*!40000 ALTER TABLE `transaksi` ENABLE KEYS */;

-- Dumping structure for table kasir.user
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role` int(11) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `foto` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `telp` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

-- Dumping data for table kasir.user: ~4 rows (approximately)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`, `role`, `nama`, `foto`, `email`, `password`, `alamat`, `telp`) VALUES
	(1, 1, 'Andhika', 'Andhika.jpg', 'andhikay24@gmail.com', 'fhira', 'surabaya2', '0818324999');
INSERT INTO `user` (`id`, `role`, `nama`, `foto`, `email`, `password`, `alamat`, `telp`) VALUES
	(3, 2, 'andhira', 'andhira.png', 'sman1babadan@yahoo.com', '', 'sby2', NULL);
INSERT INTO `user` (`id`, `role`, `nama`, `foto`, `email`, `password`, `alamat`, `telp`) VALUES
	(19, 2, 'safhira maharani', 'safhira_maharani.jpg', 'dony@if.its.ac.id', 'dony@if.its.ac.id', 'lsapp@gmail.com', '0823223742835');
INSERT INTO `user` (`id`, `role`, `nama`, `foto`, `email`, `password`, `alamat`, `telp`) VALUES
	(20, 2, 'Andhika Yoga', 'Andhika_Yoga.jpg', 'edo@its.ac.id', 'fhira', 'surabaya', '082236733712');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
