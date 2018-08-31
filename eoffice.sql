-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 31, 2018 at 03:51 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eoffice`
--

-- --------------------------------------------------------

--
-- Table structure for table `nama_unit`
--

CREATE TABLE `nama_unit` (
  `kd_unit` int(10) NOT NULL,
  `nama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nama_unit`
--

INSERT INTO `nama_unit` (`kd_unit`, `nama`) VALUES
(1, 'PUT'),
(2, 'PNC'),
(3, 'UMC'),
(4, 'PMC FUNDING'),
(5, 'PMC CR'),
(6, 'PMC BB'),
(7, 'PMC KUR TANI'),
(8, 'PMC ABB'),
(9, 'ADC'),
(10, 'KCP CIKAJANG'),
(11, 'KCP PAMEUNGPEK'),
(12, 'KCP LIMBANGAN'),
(13, 'KK KADUNGORA'),
(14, 'KK CILEDUG'),
(15, 'OUTSOURCE');

-- --------------------------------------------------------

--
-- Table structure for table `surat_keluar`
--

CREATE TABLE `surat_keluar` (
  `no` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `kd_unit` int(10) NOT NULL,
  `tujuan` varchar(255) NOT NULL,
  `hal` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `surat_keluar`
--

INSERT INTO `surat_keluar` (`no`, `tanggal`, `kd_unit`, `tujuan`, `hal`) VALUES
(20, '2018-08-31', 6, 'DISTAN', 'NGANJUK');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `nama_unit`
--
ALTER TABLE `nama_unit`
  ADD PRIMARY KEY (`kd_unit`);

--
-- Indexes for table `surat_keluar`
--
ALTER TABLE `surat_keluar`
  ADD PRIMARY KEY (`no`),
  ADD KEY `unit` (`kd_unit`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `nama_unit`
--
ALTER TABLE `nama_unit`
  MODIFY `kd_unit` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `surat_keluar`
--
ALTER TABLE `surat_keluar`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `surat_keluar`
--
ALTER TABLE `surat_keluar`
  ADD CONSTRAINT `surat_keluar_ibfk_1` FOREIGN KEY (`kd_unit`) REFERENCES `nama_unit` (`kd_unit`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
