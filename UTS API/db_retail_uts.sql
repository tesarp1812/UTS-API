-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2022 at 06:25 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_retail_uts`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbarang`
--

CREATE TABLE `tbarang` (
  `kdBarang` varchar(20) NOT NULL,
  `namabarang` varchar(100) DEFAULT NULL,
  `stok` tinyint(3) UNSIGNED DEFAULT 0,
  `hargabeli` int(11) DEFAULT 0,
  `hargajual` int(11) DEFAULT 0,
  `jenis` varchar(100) DEFAULT NULL,
  `SUPLIER` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbarang`
--

INSERT INTO `tbarang` (`kdBarang`, `namabarang`, `stok`, `hargabeli`, `hargajual`, `jenis`, `SUPLIER`) VALUES
('234234', 'MATEMATIKA', 23, 12000, 15000, 'BP', 'S001'),
('234723', 'DONAL BEBEK', 12, 15000, 20000, 'BC', 'S001'),
('2348329', 'FISIKA 3', 14, 90000, 100000, 'BP', 'S001'),
('34589348', 'KIMIA 1', 14, 10000, 15000, 'BP', 'S001'),
('56456', 'BIOLOGI', 17, 25000, 30000, 'BP', 'S002'),
('657567', 'DESIGN RUMAH DENGAN 3DMAX', 45, 50000, 60000, 'BP', 'S002'),
('6756756', 'MATEMATIKA 1', 15, 11111, 11111, 'BP', 'S002'),
('7674547', 'BUKU PRAMUKA', 10, 52000, 60000, 'BP', 'S002'),
('7879879', 'PEMROGRAMAN VISUAL BASIC 2008', 14, 45000, 55000, 'BP', 'S003'),
('84359', 'FISIKA 2', 8, 15000, 20000, 'BP', 'S003'),
('84543', 'FISIKA 1', 6, 25000, 35000, 'BP', 'S003'),
('896787', 'DONGENG KURA-KURA', 10, 10000, 15000, 'BC', 'S004'),
('989856', 'DONGENG SI KANCIL', 14, 12000, 13000, 'BC', 'S004'),
('A043', 'ASTERIX AND OBELIX', 25, 45000, 55000, 'DVD', 'S004'),
('A092', 'ASTERIX IN CORSICA', 5, 50000, 60000, 'DVD', 'S005'),
('CD001', 'DESIGN ANIMASI 3D', 10, 10000, 15000, 'CD', 'S005'),
('CD002', 'AUTOCAD', 10, 12000, 16000, 'CD', 'S005'),
('SDF', 'THE TRUE LOVE', 13, 1111, 11111, 'BN', 'S005');

-- --------------------------------------------------------

--
-- Table structure for table `tbeli`
--

CREATE TABLE `tbeli` (
  `notrans` int(11) NOT NULL DEFAULT 0,
  `tanggal` date DEFAULT NULL,
  `kdSuplier` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbeli`
--

INSERT INTO `tbeli` (`notrans`, `tanggal`, `kdSuplier`) VALUES
(1, '2009-06-24', 'S001'),
(2, '2009-06-24', 'S003'),
(3, '2009-06-27', 'S003'),
(4, '2009-06-29', 'S002'),
(5, '2009-07-02', 'S001'),
(6, '2009-07-02', 'S002'),
(7, '2009-07-04', 'S003'),
(8, '2009-07-05', 'S003'),
(9, '2009-07-08', 'S002'),
(10, '2009-07-10', 'S001'),
(11, '2009-12-11', 'S003'),
(12, '2009-12-11', 'S001'),
(13, '2009-12-11', 'S002'),
(14, '2009-12-11', 'S001'),
(15, '2010-03-19', 'S001'),
(16, '2010-06-07', 'S002'),
(17, '2010-06-07', 'S003'),
(18, '2010-06-08', 'S003'),
(19, '2010-07-12', NULL),
(20, '2010-07-12', 'S003'),
(21, '2010-07-12', NULL),
(22, '2010-07-12', NULL),
(23, '2010-07-12', 'S001');

-- --------------------------------------------------------

--
-- Table structure for table `tdetilbeli`
--

CREATE TABLE `tdetilbeli` (
  `notrans` int(11) DEFAULT 0,
  `kdBarang` varchar(100) DEFAULT NULL,
  `jumlahbeli` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tdetilbeli`
--

INSERT INTO `tdetilbeli` (`notrans`, `kdBarang`, `jumlahbeli`) VALUES
(1, '234234', 10),
(2, 'AD', 5),
(3, 'B002', 8),
(4, 'B002', 5),
(5, 'A092', 4),
(6, 'B001', 3),
(7, 'A092', 1),
(8, 'B002', 2),
(9, 'B00VV', 4),
(10, 'A092', 5),
(1, '234723', 10),
(11, 'A043', 5),
(13, 'B001', 1),
(1, '234723', 10),
(14, 'A043', 2),
(12, 'CD001', 2),
(11, 'SDF', 5),
(15, 'A043', 10),
(1, '234723', 10),
(1, '234723', 10),
(1, '989856', 5),
(1, '2348329', 10),
(1, 'CD001', 5),
(16, '896787', 2),
(16, '34589348', 5),
(16, '56456', 5),
(17, 'CD002', 7),
(17, 'SDF', 1),
(18, '234234', 2),
(2, 'B001', 10),
(20, 'B002', 2),
(20, 'B001', 2),
(20, 'B003', 2),
(2, '234234', 5),
(21, '2348329', 2),
(22, '234234', 2),
(22, 'A043', 2),
(22, 'b002', 0),
(23, 'b001', 2),
(2, '56456', 2),
(4, '2348329', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tdetiljual`
--

CREATE TABLE `tdetiljual` (
  `notrans` int(11) DEFAULT 0,
  `kdBarang` varchar(100) DEFAULT NULL,
  `jumlahjual` smallint(6) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tdetiljual`
--

INSERT INTO `tdetiljual` (`notrans`, `kdBarang`, `jumlahjual`) VALUES
(1, '657567', 2),
(1, '7879879', 1),
(1, '989856', 1),
(2, '657567', 1),
(2, '7879879', 2),
(3, '657567', 1),
(4, '989856', 2),
(4, '7879879', 1),
(4, '7879879', 1),
(3, '7879879', 1),
(5, '657567', 1),
(6, '989856', 1),
(6, '7879879', 1),
(7, '657567', 2),
(7, '7879879', 1),
(5, 'CD002', 2),
(8, 'CD002', 2),
(8, '989856', 1),
(5, 'A092', 1),
(10, 'CD001', 2),
(10, '7879879', 1),
(11, '7879879', 1),
(11, 'CD001', 1),
(11, 'CD002', 1),
(12, '989856', 1),
(1, 'A092', 1),
(1, 'A092', 1),
(9, 'CD001', 2),
(13, '657567', 1),
(14, 'CD001', 2),
(15, 'A043', 1),
(15, '657567', 1),
(16, '234234', 1),
(16, '2348329', 1),
(16, '34589348', 1),
(17, '6756756', 1),
(17, '7674547', 2),
(18, 'A043', 1),
(18, 'A092', 1),
(19, '234234', 6),
(20, '84543', 2),
(21, '234234', 2),
(21, '84543', 2),
(22, '657567', 1),
(22, '7879879', 1),
(23, 'A092', 5),
(23, '896787', 2),
(24, '84359', 2),
(26, '234234', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tjenisbarang`
--

CREATE TABLE `tjenisbarang` (
  `kdJenisBarang` varchar(100) NOT NULL,
  `Jenis` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tjenisbarang`
--

INSERT INTO `tjenisbarang` (`kdJenisBarang`, `Jenis`) VALUES
('BC', 'BUKU CERITA'),
('BN', 'BUKU NOVEL'),
('BP', 'BUKU PELAJARAN'),
('CD', 'COMPACT DISC'),
('DVD', 'DVD');

-- --------------------------------------------------------

--
-- Table structure for table `tjual`
--

CREATE TABLE `tjual` (
  `notrans` int(11) NOT NULL DEFAULT 0,
  `tanggal` date DEFAULT NULL,
  `kdPelanggan` varchar(100) DEFAULT NULL,
  `Dibayar` int(11) DEFAULT 0,
  `Kasir` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tjual`
--

INSERT INTO `tjual` (`notrans`, `tanggal`, `kdPelanggan`, `Dibayar`, `Kasir`) VALUES
(1, '2009-10-01', 'P001', 280000, 'P001'),
(2, '2009-11-24', 'P001', 500000, 'P001'),
(3, '2009-11-24', 'P001', 500000, 'P001'),
(4, '2009-11-24', 'P004', 500000, 'P001'),
(5, '2009-11-25', 'P005', 500000, 'P001'),
(6, '2009-11-25', 'P005', 100000, 'P002'),
(7, '2009-11-26', 'P002', 500000, 'P002'),
(8, '2009-12-02', 'P001', 50000, 'P002'),
(9, '2009-12-04', 'P005', 30000, 'P002'),
(10, '2009-12-04', 'P004', 90000, 'P002'),
(11, '2009-12-07', 'P002', 500000, 'P003'),
(12, '2009-12-07', 'P004', 500000, 'P003'),
(13, '2009-12-10', 'P002', 500000, 'P003'),
(14, '2009-12-11', 'P002', 500000, 'P003'),
(15, '2010-03-19', 'P002', 500000, 'P003'),
(16, '2010-06-07', 'P002', 500000, 'P003'),
(17, '2010-06-07', 'P004', 500000, 'P003'),
(18, '2010-06-07', 'P001', 500000, 'P004'),
(19, '2010-06-08', 'P003', 500000, 'P004'),
(20, '2010-06-17', 'P003', 70000, 'P004'),
(21, '2010-06-21', 'P001', 100000, 'P004'),
(22, '2010-07-13', 'P002', 110000, 'P004'),
(23, '2011-01-27', 'P001', 300000, NULL),
(24, '2011-05-31', 'P002', 50000, NULL),
(25, '2011-05-31', 'P001', 0, NULL),
(26, '2012-02-15', 'P002', 30000, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tpegawai`
--

CREATE TABLE `tpegawai` (
  `kdPegawai` varchar(100) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `jk` varchar(100) DEFAULT NULL,
  `TTL` date DEFAULT NULL,
  `Kota` varchar(100) DEFAULT NULL,
  `Pendidikan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tpegawai`
--

INSERT INTO `tpegawai` (`kdPegawai`, `nama`, `jk`, `TTL`, `Kota`, `Pendidikan`) VALUES
('P001', 'BUDI SANTOSO', 'PRIA', '1970-12-12', 'MALANG', 'S2'),
('P002', 'SANDI HANDOYO', 'PRIA', '1980-02-01', 'MALANG', 'S1'),
('P003', 'PUTRI HANDOYO', 'PRIA', '1978-03-03', 'SURABAYA', 'D4'),
('P004', 'SHINTA', 'WANITA', '1985-04-05', 'SURABAYA', 'S1'),
('P005', 'ANI MULIA', 'WANITA', '1989-06-04', 'SURABAYA', 'S1'),
('P006', 'ALDI', 'PRIA', '1990-09-08', 'JEMBER', 'D3'),
('P007', 'ALI SANTOSO', 'WANITA', '1987-10-03', 'BANYUWANGI', 'D1'),
('P008', 'BUDI RAHARJO', 'PRIA', '1981-01-22', 'SIDOARJO', 'SMA');

-- --------------------------------------------------------

--
-- Table structure for table `tpelanggan`
--

CREATE TABLE `tpelanggan` (
  `kdPelanggan` varchar(20) NOT NULL,
  `Nama` varchar(100) DEFAULT NULL,
  `Kota` varchar(60) DEFAULT NULL,
  `Telp` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tpelanggan`
--

INSERT INTO `tpelanggan` (`kdPelanggan`, `Nama`, `Kota`, `Telp`) VALUES
('P001', 'SUSI', 'BANDUNG', '815456845'),
('P002', 'UD. SUBUR', 'MALANG', '08526584555'),
('P003', 'TB. SEJAHTERA', 'MALANG', '565852'),
('P004', 'TB. ADONIA', 'MALANG', '8894545'),
('P005', 'TB. MAKMUR', 'SURABAYA', '9944885');

-- --------------------------------------------------------

--
-- Table structure for table `tsuplier`
--

CREATE TABLE `tsuplier` (
  `kdSuplier` varchar(20) NOT NULL,
  `Nama` varchar(100) DEFAULT NULL,
  `Kota` varchar(100) DEFAULT NULL,
  `Telp` varchar(510) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tsuplier`
--

INSERT INTO `tsuplier` (`kdSuplier`, `Nama`, `Kota`, `Telp`) VALUES
('S001', 'CV Subur', 'Malang', '33402'),
('S002', 'CV Sri', 'Malang', '515220'),
('S003', 'UD Sari', 'Malang', '654222'),
('S004', 'CV. ANUGERAHMU', 'SURABAYA', '-'),
('S005', 'CV. KARUNIAMU', 'BANYUWANGI', '-');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbarang`
--
ALTER TABLE `tbarang`
  ADD PRIMARY KEY (`kdBarang`),
  ADD KEY `TJenisBarangTBarang` (`jenis`);

--
-- Indexes for table `tbeli`
--
ALTER TABLE `tbeli`
  ADD PRIMARY KEY (`notrans`),
  ADD KEY `TSuplierTBeli` (`kdSuplier`);

--
-- Indexes for table `tdetilbeli`
--
ALTER TABLE `tdetilbeli`
  ADD KEY `TBeliTDetilBeli` (`notrans`),
  ADD KEY `TDetilBelikdBarang` (`kdBarang`),
  ADD KEY `TDetilBelinotrans` (`notrans`);

--
-- Indexes for table `tdetiljual`
--
ALTER TABLE `tdetiljual`
  ADD KEY `TBarangTDetilJual` (`kdBarang`),
  ADD KEY `TJualTDetilJual` (`notrans`);

--
-- Indexes for table `tjenisbarang`
--
ALTER TABLE `tjenisbarang`
  ADD PRIMARY KEY (`kdJenisBarang`),
  ADD KEY `TJenisBarangjenis` (`Jenis`);

--
-- Indexes for table `tjual`
--
ALTER TABLE `tjual`
  ADD PRIMARY KEY (`notrans`),
  ADD KEY `TPelangganTJual` (`kdPelanggan`),
  ADD KEY `TJual_Kasir_TPegawai_kdPegawai` (`Kasir`);

--
-- Indexes for table `tpegawai`
--
ALTER TABLE `tpegawai`
  ADD PRIMARY KEY (`kdPegawai`);

--
-- Indexes for table `tpelanggan`
--
ALTER TABLE `tpelanggan`
  ADD PRIMARY KEY (`kdPelanggan`);

--
-- Indexes for table `tsuplier`
--
ALTER TABLE `tsuplier`
  ADD PRIMARY KEY (`kdSuplier`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbarang`
--
ALTER TABLE `tbarang`
  ADD CONSTRAINT `TBarang_jenis_TJenisBarang_kdJenisBarang` FOREIGN KEY (`jenis`) REFERENCES `tjenisbarang` (`kdJenisBarang`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbeli`
--
ALTER TABLE `tbeli`
  ADD CONSTRAINT `TBeli_kdSuplier_TSuplier_kdSuplier` FOREIGN KEY (`kdSuplier`) REFERENCES `tsuplier` (`kdSuplier`);

--
-- Constraints for table `tdetilbeli`
--
ALTER TABLE `tdetilbeli`
  ADD CONSTRAINT `TDetilBeli_kdBarang_TBarang_kdBarang` FOREIGN KEY (`kdBarang`) REFERENCES `tbarang` (`kdBarang`),
  ADD CONSTRAINT `TDetilBeli_notrans_TBeli_notrans` FOREIGN KEY (`notrans`) REFERENCES `tbeli` (`notrans`);

--
-- Constraints for table `tdetiljual`
--
ALTER TABLE `tdetiljual`
  ADD CONSTRAINT `TDetilJual_kdBarang_TBarang_kdBarang` FOREIGN KEY (`kdBarang`) REFERENCES `tbarang` (`kdBarang`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `TDetilJual_notrans_TJual_notrans` FOREIGN KEY (`notrans`) REFERENCES `tjual` (`notrans`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tjual`
--
ALTER TABLE `tjual`
  ADD CONSTRAINT `TJual_Kasir_TPegawai_kdPegawai` FOREIGN KEY (`Kasir`) REFERENCES `tpegawai` (`kdPegawai`),
  ADD CONSTRAINT `TJual_kdPelanggan_TPelanggan_kdPelanggan` FOREIGN KEY (`kdPelanggan`) REFERENCES `tpelanggan` (`kdPelanggan`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
