-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 02, 2018 at 10:08 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_roti`
--

-- --------------------------------------------------------

--
-- Table structure for table `belanja`
--

CREATE TABLE `belanja` (
  `id_belanja` int(11) NOT NULL,
  `belanja_1` varchar(250) DEFAULT 'Kosong',
  `belanja_2` varchar(250) DEFAULT 'Kosong',
  `belanja_3` varchar(250) DEFAULT 'Kosong',
  `belanja_4` varchar(250) DEFAULT 'Kosong',
  `belanja_5` varchar(250) DEFAULT 'Kosong',
  `belanja_6` varchar(250) DEFAULT 'Kosong',
  `belanja_7` varchar(250) DEFAULT 'Kosong',
  `Tanggal` date DEFAULT NULL,
  `total_pengeluaran` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `belanja`
--

INSERT INTO `belanja` (`id_belanja`, `belanja_1`, `belanja_2`, `belanja_3`, `belanja_4`, `belanja_5`, `belanja_6`, `belanja_7`, `Tanggal`, `total_pengeluaran`) VALUES
(1, 'ada', 'ada', 'dada', 'dad', 'ada', 'da', 'daa', '2018-09-09', 10000),
(2, 'dad', 'awda', 'dwad', 'dawd', 'wdaw', 'dwa', 'dwad', '2018-09-09', 10000),
(3, 'dwad', 'awda', 'da', 'ddwa', 'dada', 'daw', 'ddad', '2019-09-08', 1000),
(4, 'dad', 'adwa', 'dwa', 'daw', 'dwad', 'dada', 'dwada', '2018-01-13', 10000);

-- --------------------------------------------------------

--
-- Table structure for table `pejualan`
--

CREATE TABLE `pejualan` (
  `kode_penjualan` int(11) NOT NULL,
  `nama_roti` int(250) NOT NULL,
  `tgl_pembuatan` date NOT NULL,
  `tgl_kadaluarsa` date NOT NULL,
  `harga` bigint(20) NOT NULL,
  `status` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `produksi`
--

CREATE TABLE `produksi` (
  `kode_roti` int(11) NOT NULL,
  `nama_roti` varchar(250) NOT NULL,
  `tgl_pembuatan` date NOT NULL,
  `tgl_kadaluarsa` date NOT NULL,
  `harga` int(20) NOT NULL,
  `status` varchar(250) NOT NULL DEFAULT 'Produksi',
  `suplier_kode` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produksi`
--

INSERT INTO `produksi` (`kode_roti`, `nama_roti`, `tgl_pembuatan`, `tgl_kadaluarsa`, `harga`, `status`, `suplier_kode`) VALUES
(1, 'Roti Manis', '2018-01-18', '2018-04-18', 10000, 'ReadyToSell', 'SP001'),
(2, 'Roti Manis', '2018-01-18', '2018-04-18', 10000, 'ReadyToSell', 'SP001'),
(3, 'Roti Manis', '2018-01-18', '2018-04-18', 10000, 'ReadyToSell', 'SP001'),
(4, 'Roti Manis', '2018-01-18', '2018-04-18', 10000, 'Terjual', 'SP001'),
(5, 'Roti Manis', '2018-01-18', '2018-04-18', 10000, 'Supplier', 'SP001'),
(6, 'Roti Manis', '2018-01-18', '2018-04-18', 10000, 'Cacad', 'SP001'),
(7, 'Roti Manis', '2018-01-18', '2018-04-18', 10000, 'Terjual', 'SP001'),
(8, 'Roti Manis', '2018-01-18', '2018-04-18', 10000, 'Cacad', NULL),
(9, 'Roti Manis', '2018-01-18', '2018-04-18', 10000, 'Terjual', 'SP001'),
(10, 'Roti Manis', '2018-01-18', '2018-04-18', 10000, 'Cacad', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `resep`
--

CREATE TABLE `resep` (
  `id_resep` int(11) NOT NULL,
  `resep_1` varchar(55) NOT NULL,
  `resep_2` varchar(55) NOT NULL,
  `resep_3` varchar(55) NOT NULL,
  `resep_4` varchar(55) NOT NULL,
  `resep_5` varchar(55) NOT NULL,
  `resep_6` varchar(55) NOT NULL,
  `resep_7` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `resep`
--

INSERT INTO `resep` (`id_resep`, `resep_1`, `resep_2`, `resep_3`, `resep_4`, `resep_5`, `resep_6`, `resep_7`) VALUES
(1, '1500Gram', '3Telur', '225Gram', '33Gram', '300Gram', '900ml', '6Gram');

-- --------------------------------------------------------

--
-- Table structure for table `suplier`
--

CREATE TABLE `suplier` (
  `kode_supleir` varchar(250) NOT NULL,
  `nama_suplier` varchar(250) NOT NULL,
  `alamat` text NOT NULL,
  `telepon` bigint(20) NOT NULL,
  `status` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suplier`
--

INSERT INTO `suplier` (`kode_supleir`, `nama_suplier`, `alamat`, `telepon`, `status`) VALUES
('SP001', 'David Kurniawan', 'jakarta ababasvas', 89638674738, 'Aktif'),
('SP002', 'dada', 'adwadada', 89218321931, 'Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `status` varchar(250) NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `status`) VALUES
(1, 'admin', 'admin', 'Active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `belanja`
--
ALTER TABLE `belanja`
  ADD PRIMARY KEY (`id_belanja`);

--
-- Indexes for table `produksi`
--
ALTER TABLE `produksi`
  ADD PRIMARY KEY (`kode_roti`);

--
-- Indexes for table `resep`
--
ALTER TABLE `resep`
  ADD PRIMARY KEY (`id_resep`);

--
-- Indexes for table `suplier`
--
ALTER TABLE `suplier`
  ADD PRIMARY KEY (`kode_supleir`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `belanja`
--
ALTER TABLE `belanja`
  MODIFY `id_belanja` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `produksi`
--
ALTER TABLE `produksi`
  MODIFY `kode_roti` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `resep`
--
ALTER TABLE `resep`
  MODIFY `id_resep` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
