-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 13, 2022 at 02:57 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jopi_uas`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `idcart` int(11) NOT NULL,
  `orderid` varchar(100) NOT NULL,
  `userid` int(11) NOT NULL,
  `tglorder` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(10) NOT NULL DEFAULT 'Cart'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`idcart`, `orderid`, `userid`, `tglorder`, `status`) VALUES
(10, '15wKVT0nej25Y', 2, '2020-03-16 12:10:42', 'Selesai'),
(11, '15Swf8Ye0Fm.M', 2, '2020-03-16 12:17:34', 'Cart'),
(12, '15PzF03ejd8W2', 1, '2020-05-13 02:40:48', 'Selesai'),
(13, '16EbbkjHY.//E', 1, '2022-01-11 12:36:55', 'Pengiriman'),
(14, '16L04pOZR.p/c', 4, '2022-01-12 13:41:15', 'Selesai'),
(15, '165kswrsDYU/s', 4, '2022-01-12 13:49:26', 'Confirmed'),
(16, '16ZlNynzSGU2w', 1, '2022-01-12 13:51:48', 'Confirmed'),
(17, '16xvzy7Qa2aqo', 4, '2022-01-13 11:26:00', 'Confirmed'),
(18, '166i43W5rziBI', 4, '2022-01-13 11:48:46', 'Pengiriman');

-- --------------------------------------------------------

--
-- Table structure for table `detailorder`
--

CREATE TABLE `detailorder` (
  `detailid` int(11) NOT NULL,
  `orderid` varchar(100) NOT NULL,
  `idproduk` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detailorder`
--

INSERT INTO `detailorder` (`detailid`, `orderid`, `idproduk`, `qty`) VALUES
(13, '15wKVT0nej25Y', 1, 100),
(14, '15PzF03ejd8W2', 2, 1),
(15, '16EbbkjHY.//E', 1, 2),
(17, '16L04pOZR.p/c', 3, 7),
(20, '165kswrsDYU/s', 3, 7),
(21, '16ZlNynzSGU2w', 1, 80),
(22, '16xvzy7Qa2aqo', 45, 9),
(23, '16xvzy7Qa2aqo', 2, 6),
(24, '166i43W5rziBI', 45, 1000),
(25, '166i43W5rziBI', 8, 8),
(26, '166i43W5rziBI', 6, 7);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `idkategori` int(11) NOT NULL,
  `namakategori` varchar(20) NOT NULL,
  `tgldibuat` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`idkategori`, `namakategori`, `tgldibuat`) VALUES
(1, 'Bunga Tangkai', '2019-12-20 07:28:34'),
(2, 'Bunga Papan', '2019-12-20 07:34:17'),
(3, 'Bunga Hidup', '2020-03-16 12:15:40'),
(4, 'Bunga Bangkai', '2022-01-12 06:18:30');

-- --------------------------------------------------------

--
-- Table structure for table `konfirmasi`
--

CREATE TABLE `konfirmasi` (
  `idkonfirmasi` int(11) NOT NULL,
  `orderid` varchar(100) NOT NULL,
  `userid` int(11) NOT NULL,
  `payment` varchar(10) NOT NULL,
  `namarekening` varchar(25) NOT NULL,
  `tglbayar` date NOT NULL,
  `tglsubmit` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `konfirmasi`
--

INSERT INTO `konfirmasi` (`idkonfirmasi`, `orderid`, `userid`, `payment`, `namarekening`, `tglbayar`, `tglsubmit`) VALUES
(3, '165kswrsDYU/s', 4, 'Bank Mandi', 'capucino', '2022-01-12', '2022-01-12 13:50:44'),
(4, '16ZlNynzSGU2w', 1, 'Bank Mandi', 'Bujang', '2022-01-20', '2022-01-12 13:53:34'),
(5, '16xvzy7Qa2aqo', 4, 'Bank Mandi', 'Bujang', '2022-01-13', '2022-01-13 11:27:57');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `userid` int(11) NOT NULL,
  `namalengkap` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(150) NOT NULL,
  `notelp` varchar(15) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `tgljoin` timestamp NOT NULL DEFAULT current_timestamp(),
  `role` varchar(7) NOT NULL DEFAULT 'Member',
  `lastlogin` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`userid`, `namalengkap`, `email`, `password`, `notelp`, `alamat`, `tgljoin`, `role`, `lastlogin`) VALUES
(1, 'Admin', 'admin', '$2y$10$GJVGd4ji3QE8ikTBzNyA0uLQhiGd6MirZeSJV1O6nUpjSVp1eaKzS', '01234567890', 'Indonesia', '2020-03-16 11:31:17', 'Admin', NULL),
(2, 'Bujang', 'bujang', '$2y$10$xXEMgj5pMT9EE0QAx3QW8uEn155Je.FHH5SuIATxVheOt0Z4rhK6K', '01234567890', 'Indonesia', '2020-03-16 11:30:40', 'Pembeli', NULL),
(3, 'Parno', 'parno', '$2y$10$GJVGd4ji3QE8ikTBzNyA0uLQhiGd6MirZeSJV1O6nUpjSVp1eaKzS', '012312567890', 'Indonesia', '2020-03-16 11:31:17', 'Penjual', NULL),
(4, 'Bujang', 'asus@gmail.com', '$2y$10$HNfDzfR3SDCl7WRPTdGVnOPew4dfi9hT6qOvgn4HEwn58D5PW3vD6', '3243423', 'dfseffasfeef', '2022-01-12 13:33:43', 'Member', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `no` int(11) NOT NULL,
  `metode` varchar(25) NOT NULL,
  `norek` varchar(25) NOT NULL,
  `logo` text DEFAULT NULL,
  `an` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`no`, `metode`, `norek`, `logo`, `an`) VALUES
(1, 'Bank BCA', '13131231231', 'images/bca.jpg', 'Bobashop'),
(2, 'Bank Mandiri', '943248844843', 'images/mandiri.jpg', 'Bobashop'),
(3, 'DANA', '0882313132123', 'images/dana.png', 'Bobashop');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `idproduk` int(11) NOT NULL,
  `idkategori` int(11) NOT NULL,
  `namaproduk` varchar(30) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `deskripsi` varchar(200) NOT NULL,
  `rate` int(11) NOT NULL,
  `hargabefore` int(11) NOT NULL,
  `hargaafter` int(11) NOT NULL,
  `tgldibuat` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`idproduk`, `idkategori`, `namaproduk`, `gambar`, `deskripsi`, `rate`, `hargabefore`, `hargaafter`, `tgldibuat`) VALUES
(1, 1, 'Mawar Merah', 'produk/7443a12318c5f4f29059d243fd14f447.png', 'Setangkai mawar merah', 5, 23000, 19000, '2019-12-20 09:10:26'),
(2, 1, 'Mawar Putih', 'produk/15kwuDMbYtraw.png', 'Setangkai mawar putih', 4, 24000, 19500, '2019-12-20 09:24:13'),
(3, 3, 'Bunga Hidup', 'produk/15Ak7lFMfvuJc.jpg', 'Bunga Hidup', 5, 25000, 15000, '2020-03-16 12:16:53'),
(4, 3, 'Anthurium Medium Putih', 'produk/tanaman-anthurium-medium-putih.jpg', '', 3, 30000, 20000, '2022-01-13 10:51:48'),
(5, 1, 'Kaktus Mammillaria Duri', 'produk/Tanaman-Kaktus-Mammillaria-Duri-Coklat-1.jpg', 'Kaktus mammillaria duri coklat adalah salah satu varietas tanaman kaktus dari genus Mammilaria sp. Berbeda dari jenis mammillaria pada umumnya yang memiliki kepala berbentuk bulat, mammillaria duri co', 3, 30000, 10000, '2022-01-13 10:56:22'),
(6, 3, 'Tanaman Anting India Pink Puti', 'produk/Tanaman-Anting-India-Pink-Putih.jpg', 'Tanaman Anting India Pink Putih atau bunga Fuschia (Fuchsia magellanica) merupakan tanaman hias unik dari keluarga Onargaceae dan menjadi salah salah satu favorite dalam dunia holtikultura. Disebut bu', 3, 30000, 20000, '2022-01-13 11:08:27'),
(7, 1, 'Kaktus Own Root Hijau', 'produk/kaktus-ownroot-hijau.jpg', 'Kaktus own root hijau merupakan jenis tanaman kaktus yang mudah tumbuh juga mudah dirawat. Jenis kaktus ini juga toleran terhadap panas dan kekeringan. Kebutuhan airnya pun sedikit. Dikenal dengan nam', 5, 102000, 20000, '2022-01-13 10:56:22'),
(8, 2, 'Krisan Aster Merah', 'produk/Tanaman-krisan-merah.jpg', 'Krisan aster merah merupakan tanaman hias dengan nama ilmiah Chrysanthemum sp dengan corak warna yang memikat dan baunya yang semerbak. Perpaduan warna bunga krisan ini juga sangat indah dengan warna ', 3, 30000, 1000, '2022-01-13 11:13:07'),
(9, 4, 'Anting India', 'produk/Tanaman-Lipstik-Koi.jpg', 'hmmmmmm', 3, 30000, 10000, '2022-01-13 11:10:09'),
(45, 1, 'Mawar Telur Pink', 'produk/16ajzvPnjuRjs.jpg', 'Setangkai Bunga Mawar', 2, 100000, 20000, '2022-01-13 10:37:09'),
(46, 3, 'Tibouchina', 'produk/Tanaman-Tibouchina-Import-1-247x296.jpg', 'Tibouchina', 5, 5000000, 400000, '2022-01-13 10:38:52'),
(48, 4, 'Keladi Wayang', 'produk/16ajzvPnjuRjs.jpg', 'Keladi Wayang', 1, 100000, 10000, '2022-01-13 10:43:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`idcart`),
  ADD UNIQUE KEY `orderid` (`orderid`),
  ADD KEY `orderid_2` (`orderid`);

--
-- Indexes for table `detailorder`
--
ALTER TABLE `detailorder`
  ADD PRIMARY KEY (`detailid`),
  ADD KEY `orderid` (`orderid`),
  ADD KEY `idproduk` (`idproduk`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`idkategori`);

--
-- Indexes for table `konfirmasi`
--
ALTER TABLE `konfirmasi`
  ADD PRIMARY KEY (`idkonfirmasi`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`idproduk`),
  ADD KEY `idkategori` (`idkategori`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `idcart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `detailorder`
--
ALTER TABLE `detailorder`
  MODIFY `detailid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `idkategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `konfirmasi`
--
ALTER TABLE `konfirmasi`
  MODIFY `idkonfirmasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `idproduk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detailorder`
--
ALTER TABLE `detailorder`
  ADD CONSTRAINT `idproduk` FOREIGN KEY (`idproduk`) REFERENCES `produk` (`idproduk`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orderid` FOREIGN KEY (`orderid`) REFERENCES `cart` (`orderid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `konfirmasi`
--
ALTER TABLE `konfirmasi`
  ADD CONSTRAINT `userid` FOREIGN KEY (`userid`) REFERENCES `login` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `idkategori` FOREIGN KEY (`idkategori`) REFERENCES `kategori` (`idkategori`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
