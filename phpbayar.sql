-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2021 at 08:10 AM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `phpbayar`
--

-- --------------------------------------------------------

--
-- Table structure for table `jenis_bayar`
--

CREATE TABLE IF NOT EXISTS `jenis_bayar` (
  `th_pelajaran` char(9) NOT NULL,
  `tingkat` varchar(3) NOT NULL,
  `jumlah` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jenis_bayar`
--

INSERT INTO `jenis_bayar` (`th_pelajaran`, `tingkat`, `jumlah`) VALUES
('2020/2021', 'XI', 85000),
('2018/2019', 'X', 100000),
('2019/2020', 'XII', 150000),
('2020/2021', 'XII', 200000);

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE IF NOT EXISTS `kelas` (
  `kelas` varchar(8) NOT NULL DEFAULT '',
  `th_pelajaran` char(9) NOT NULL DEFAULT '',
  `nis` char(10) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`kelas`, `th_pelajaran`, `nis`) VALUES
('XII', '2015/2016', '2014201507'),
('XII', '2020/2021', '2014201505'),
('XII', '2020/2021', '2014201506'),
('XII', '2021/2022', '2014201501'),
('XII', '2021/2022', '2014201504');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE IF NOT EXISTS `pembayaran` (
  `kelas` varchar(8) NOT NULL,
  `nis` char(10) NOT NULL,
  `bulan` varchar(45) NOT NULL,
  `tgl_bayar` date DEFAULT NULL,
  `jumlah` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`kelas`, `nis`, `bulan`, `tgl_bayar`, `jumlah`) VALUES
('X-AKP', '2014201535', 'December', '2021-01-28', 90000),
('X-AKP', '2014201536', 'December', '2021-01-27', 90000),
('X-MIF', '2014201504', 'December', '2020-12-09', 90000),
('X-MIF', '2014201508', 'December', '2021-01-29', 90000),
('XI-AKP', '2014201501', 'January', '2020-03-10', 40000),
('XI-MIF', '2014201501', 'December', '2021-01-30', 85000),
('XI-MIF', '2014201502', 'January', '2020-03-10', 90000),
('XII', '2014201500', 'January', '2021-02-11', 0),
('XII', '2014201500', 'March', '2021-02-11', 40000),
('XII', '2014201506', 'February', '2021-02-11', 20000),
('XII', '2014201506', 'January', '2021-02-11', 40000),
('XII-RPL', '2014201507', 'December', '2021-02-02', 90000),
('XII-RPL', '2014201534', 'February', '2021-02-11', 20000),
('XII-TKR', '2014201515', 'January', '2021-02-11', 20000);

-- --------------------------------------------------------

--
-- Table structure for table `prodi`
--

CREATE TABLE IF NOT EXISTS `prodi` (
  `idprodi` varchar(4) NOT NULL,
  `prodi` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `prodi`
--

INSERT INTO `prodi` (`idprodi`, `prodi`) VALUES
('AKP', 'Akomodasi Perhotelan'),
('Pert', 'Pertanian'),
('RPL', 'Rekayasa Perangkat Lunak'),
('TKR', 'Teknik Kendaraan Ringan');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE IF NOT EXISTS `siswa` (
  `nis` char(10) NOT NULL,
  `nama` varchar(45) DEFAULT NULL,
  `idprodi` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`nis`, `nama`, `idprodi`) VALUES
('2014201500', 'AI NURROHMAH', 'RPL'),
('2014201501', 'AHMAD', 'AKP'),
('2014201502', 'M. ALFIAN', 'Pert'),
('2014201503', 'DEDE SILVIANA', 'RPL'),
('2014201504', 'DEWI ANGGRAENI', 'AKP'),
('2014201505', 'NITA TALIA', 'AKP'),
('2014201506', 'NOVINTAN NURDELIS', 'AKP'),
('2014201507', 'PUTRI INDRIANI', 'AKP'),
('2014201508', 'RISKA ARYANTI', 'RPL'),
('2014201509', 'RISQIYA AYU LESTARI', 'RPL'),
('2014201510', 'TETI SUMYATI', 'RPL'),
('2014201511', 'RAHMADYAN AZHAR', 'Pert'),
('2014201512', 'VINDRA ABBI BUANA', 'TKR'),
('2014201513', 'CAHYA PRASETYA', 'TKR'),
('2014201514', 'HANIF AROSY AULIYA', 'RPL'),
('2014201515', 'RENDRA ALFATHRIDHO', 'TKR'),
('2014201516', 'AHMAD BADARRUDDIN', 'Pert'),
('2014201517', 'DHIMAS SUNAR MULYONO', 'TKR'),
('2014201518', 'MOH. RIDWAN', 'TKR'),
('2014201519', 'RISTANTO ARYAN PRATAMA', 'TKR');

-- --------------------------------------------------------

--
-- Table structure for table `tapel`
--

CREATE TABLE IF NOT EXISTS `tapel` (
  `id` int(11) NOT NULL,
  `tapel` char(9) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tapel`
--

INSERT INTO `tapel` (`id`, `tapel`) VALUES
(5, '2017/2018'),
(7, '2020/2021'),
(8, '2018/2019'),
(9, '2019/2020');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `iduser` int(11) NOT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `admin` tinyint(1) DEFAULT NULL,
  `fullname` varchar(45) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`iduser`, `username`, `password`, `admin`, `fullname`) VALUES
(1, 'Ai', '21232f297a57a5a743894a0e4a801fc3', 1, 'Ai Nurrohmah'),
(4, 'Dinda', '594280c6ddc94399a392934cac9d80d5', 0, 'Dinda');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jenis_bayar`
--
ALTER TABLE `jenis_bayar`
  ADD PRIMARY KEY (`jumlah`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`kelas`,`th_pelajaran`,`nis`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`kelas`,`nis`,`bulan`);

--
-- Indexes for table `prodi`
--
ALTER TABLE `prodi`
  ADD PRIMARY KEY (`idprodi`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nis`);

--
-- Indexes for table `tapel`
--
ALTER TABLE `tapel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`iduser`), ADD UNIQUE KEY `username_UNIQUE` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tapel`
--
ALTER TABLE `tapel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `iduser` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `kelas`
--
ALTER TABLE `kelas`
ADD CONSTRAINT `kelas_ibfk_1` FOREIGN KEY (`kelas`) REFERENCES `pembayaran` (`kelas`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
