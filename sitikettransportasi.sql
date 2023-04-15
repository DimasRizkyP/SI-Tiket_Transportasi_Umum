-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2023 at 09:36 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sitikettransportasi`
--

-- --------------------------------------------------------

--
-- Table structure for table `bandara`
--

CREATE TABLE `bandara` (
  `id_bandara` int(55) NOT NULL,
  `nama_bandara` varchar(255) NOT NULL,
  `kota` varchar(255) NOT NULL,
  `negara` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bus`
--

CREATE TABLE `bus` (
  `id_bus` int(55) NOT NULL,
  `nama_bus` varchar(255) NOT NULL,
  `kelas` varchar(255) NOT NULL,
  `kuota` varchar(255) NOT NULL,
  `perusahaan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jadwal_bus`
--

CREATE TABLE `jadwal_bus` (
  `id_jadwal_bus` int(55) NOT NULL,
  `id_bus` int(55) NOT NULL,
  `id_rute_bus` int(55) NOT NULL,
  `tanggal_berangkat` date NOT NULL,
  `tanggal_sampai` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jadwal_kereta`
--

CREATE TABLE `jadwal_kereta` (
  `id_jadwal_kereta` int(55) NOT NULL,
  `id_kereta` int(55) NOT NULL,
  `id_rute_kereta` int(55) NOT NULL,
  `tanggal_berangkat` date NOT NULL,
  `tanggal_sampai` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jadwal_pesawat`
--

CREATE TABLE `jadwal_pesawat` (
  `id_jadwal_pesawat` int(55) NOT NULL,
  `id_pesawat` int(55) NOT NULL,
  `id_rute_pesawat` int(55) NOT NULL,
  `tanggal_berangkat` date NOT NULL,
  `tanggal_sampai` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kereta-api`
--

CREATE TABLE `kereta-api` (
  `id_kereta` int(55) NOT NULL,
  `nama_kereta` varchar(255) NOT NULL,
  `kelas` varchar(255) NOT NULL,
  `kuota_kereta` varchar(255) NOT NULL,
  `perusahaan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pemesan`
--

CREATE TABLE `pemesan` (
  `id_pemesan` int(55) NOT NULL,
  `id_pengguna_nama` int(55) NOT NULL,
  `tanggal` date NOT NULL,
  `id_tiket_kereta` int(55) NOT NULL,
  `id_tiket_bus` int(55) NOT NULL,
  `id_tiket_pesawat` int(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `id_pengguna` int(55) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `no_ktp` int(55) NOT NULL,
  `email` varchar(255) NOT NULL,
  `no_telepon` int(255) NOT NULL,
  `warga_negara` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pesawat`
--

CREATE TABLE `pesawat` (
  `id_pesawat` int(55) NOT NULL,
  `nama_pesawat` varchar(255) NOT NULL,
  `kelas` varchar(255) NOT NULL,
  `kuota` varchar(255) NOT NULL,
  `perusahaan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rute_bus`
--

CREATE TABLE `rute_bus` (
  `id_rute_bus` int(55) NOT NULL,
  `id_terminal_asal` int(55) NOT NULL,
  `id_terminal_tujuan` int(55) NOT NULL,
  `detail_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rute_kereta`
--

CREATE TABLE `rute_kereta` (
  `id_rute_kereta` int(55) NOT NULL,
  `id_stasiun_asal` int(55) NOT NULL,
  `id_stasiun_tujuan` int(55) NOT NULL,
  `detail_status` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rute_pesawat`
--

CREATE TABLE `rute_pesawat` (
  `id_rute_pesawat` int(55) NOT NULL,
  `id_bandara_asal` int(55) NOT NULL,
  `id_bandara_tujuan` int(55) NOT NULL,
  `detail_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stasiun`
--

CREATE TABLE `stasiun` (
  `id_stasiun` int(55) NOT NULL,
  `nama_stasiun` varchar(255) NOT NULL,
  `kota` varchar(255) NOT NULL,
  `negara` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `terminal`
--

CREATE TABLE `terminal` (
  `id_terminal` int(55) NOT NULL,
  `nama_terminal` varchar(255) NOT NULL,
  `kota` varchar(255) NOT NULL,
  `negara` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tiket_bus`
--

CREATE TABLE `tiket_bus` (
  `id_tiket_bus` int(55) NOT NULL,
  `id_jadwal_bus` int(55) NOT NULL,
  `harga` int(55) NOT NULL,
  `tanggal_booking` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tiket_kereta`
--

CREATE TABLE `tiket_kereta` (
  `id_tiket_kereta` int(55) NOT NULL,
  `id_jadwal_kereta` int(55) NOT NULL,
  `harga` int(55) NOT NULL,
  `tanggal_booking` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tiket_pesawat`
--

CREATE TABLE `tiket_pesawat` (
  `id_tiket_pesawat` int(55) NOT NULL,
  `id_jadwal_pesawat` int(55) NOT NULL,
  `harga` int(55) NOT NULL,
  `tanggal_booking` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_akun`
--

CREATE TABLE `user_akun` (
  `id_user` int(55) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bandara`
--
ALTER TABLE `bandara`
  ADD PRIMARY KEY (`id_bandara`);

--
-- Indexes for table `bus`
--
ALTER TABLE `bus`
  ADD PRIMARY KEY (`id_bus`);

--
-- Indexes for table `jadwal_bus`
--
ALTER TABLE `jadwal_bus`
  ADD PRIMARY KEY (`id_jadwal_bus`),
  ADD KEY `id_bus` (`id_bus`),
  ADD KEY `id_rute` (`id_rute_bus`);

--
-- Indexes for table `jadwal_kereta`
--
ALTER TABLE `jadwal_kereta`
  ADD PRIMARY KEY (`id_jadwal_kereta`),
  ADD KEY `id_kereta` (`id_kereta`),
  ADD KEY `id_rute_kereta` (`id_rute_kereta`);

--
-- Indexes for table `jadwal_pesawat`
--
ALTER TABLE `jadwal_pesawat`
  ADD PRIMARY KEY (`id_jadwal_pesawat`),
  ADD KEY `id_pesawat` (`id_pesawat`),
  ADD KEY `id_rute_kereta_pesawat` (`id_rute_pesawat`);

--
-- Indexes for table `kereta-api`
--
ALTER TABLE `kereta-api`
  ADD PRIMARY KEY (`id_kereta`);

--
-- Indexes for table `pemesan`
--
ALTER TABLE `pemesan`
  ADD PRIMARY KEY (`id_pemesan`),
  ADD KEY `id_pengguna_nama` (`id_pengguna_nama`),
  ADD KEY `id_tiket_kereta` (`id_tiket_kereta`),
  ADD KEY `id_tiket_bus` (`id_tiket_bus`),
  ADD KEY `id_tiket_pesawat` (`id_tiket_pesawat`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id_pengguna`),
  ADD UNIQUE KEY `no_ktp` (`no_ktp`);

--
-- Indexes for table `pesawat`
--
ALTER TABLE `pesawat`
  ADD PRIMARY KEY (`id_pesawat`);

--
-- Indexes for table `rute_bus`
--
ALTER TABLE `rute_bus`
  ADD PRIMARY KEY (`id_rute_bus`),
  ADD KEY `id_stasiun_asal` (`id_terminal_asal`),
  ADD KEY `id_stasiun_tujuan` (`id_terminal_tujuan`);

--
-- Indexes for table `rute_kereta`
--
ALTER TABLE `rute_kereta`
  ADD PRIMARY KEY (`id_rute_kereta`),
  ADD KEY `id_stasiun_asal` (`id_stasiun_asal`),
  ADD KEY `id_stasiun_tujuan` (`id_stasiun_tujuan`);

--
-- Indexes for table `rute_pesawat`
--
ALTER TABLE `rute_pesawat`
  ADD PRIMARY KEY (`id_rute_pesawat`),
  ADD KEY `id_bandara_asal` (`id_bandara_asal`),
  ADD KEY `id_bandara_tujuan` (`id_bandara_tujuan`);

--
-- Indexes for table `stasiun`
--
ALTER TABLE `stasiun`
  ADD PRIMARY KEY (`id_stasiun`);

--
-- Indexes for table `terminal`
--
ALTER TABLE `terminal`
  ADD PRIMARY KEY (`id_terminal`);

--
-- Indexes for table `tiket_bus`
--
ALTER TABLE `tiket_bus`
  ADD PRIMARY KEY (`id_tiket_bus`),
  ADD KEY `id_jadwal_bus` (`id_jadwal_bus`);

--
-- Indexes for table `tiket_kereta`
--
ALTER TABLE `tiket_kereta`
  ADD PRIMARY KEY (`id_tiket_kereta`),
  ADD KEY `id_jadwal_kereta` (`id_jadwal_kereta`);

--
-- Indexes for table `tiket_pesawat`
--
ALTER TABLE `tiket_pesawat`
  ADD PRIMARY KEY (`id_tiket_pesawat`),
  ADD KEY `id_jadwal_pesawat` (`id_jadwal_pesawat`),
  ADD KEY `harga` (`harga`);

--
-- Indexes for table `user_akun`
--
ALTER TABLE `user_akun`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `jadwal_bus`
--
ALTER TABLE `jadwal_bus`
  ADD CONSTRAINT `jadwal_bus_ibfk_1` FOREIGN KEY (`id_bus`) REFERENCES `bus` (`id_bus`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jadwal_bus_ibfk_2` FOREIGN KEY (`id_rute_bus`) REFERENCES `rute_bus` (`id_rute_bus`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `jadwal_kereta`
--
ALTER TABLE `jadwal_kereta`
  ADD CONSTRAINT `jadwal_kereta_ibfk_1` FOREIGN KEY (`id_kereta`) REFERENCES `kereta-api` (`id_kereta`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jadwal_kereta_ibfk_2` FOREIGN KEY (`id_rute_kereta`) REFERENCES `rute_kereta` (`id_rute_kereta`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `jadwal_pesawat`
--
ALTER TABLE `jadwal_pesawat`
  ADD CONSTRAINT `jadwal_pesawat_ibfk_1` FOREIGN KEY (`id_pesawat`) REFERENCES `pesawat` (`id_pesawat`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jadwal_pesawat_ibfk_2` FOREIGN KEY (`id_rute_pesawat`) REFERENCES `rute_pesawat` (`id_rute_pesawat`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pemesan`
--
ALTER TABLE `pemesan`
  ADD CONSTRAINT `pemesan_ibfk_1` FOREIGN KEY (`id_pengguna_nama`) REFERENCES `pengguna` (`id_pengguna`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pemesan_ibfk_2` FOREIGN KEY (`id_tiket_bus`) REFERENCES `tiket_bus` (`id_tiket_bus`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pemesan_ibfk_3` FOREIGN KEY (`id_tiket_kereta`) REFERENCES `tiket_kereta` (`id_tiket_kereta`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pemesan_ibfk_4` FOREIGN KEY (`id_tiket_pesawat`) REFERENCES `tiket_pesawat` (`id_tiket_pesawat`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rute_bus`
--
ALTER TABLE `rute_bus`
  ADD CONSTRAINT `rute_bus_ibfk_1` FOREIGN KEY (`id_terminal_asal`) REFERENCES `terminal` (`id_terminal`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rute_bus_ibfk_2` FOREIGN KEY (`id_terminal_tujuan`) REFERENCES `terminal` (`id_terminal`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rute_kereta`
--
ALTER TABLE `rute_kereta`
  ADD CONSTRAINT `rute_kereta_ibfk_1` FOREIGN KEY (`id_stasiun_asal`) REFERENCES `stasiun` (`id_stasiun`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rute_kereta_ibfk_2` FOREIGN KEY (`id_stasiun_tujuan`) REFERENCES `stasiun` (`id_stasiun`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rute_pesawat`
--
ALTER TABLE `rute_pesawat`
  ADD CONSTRAINT `rute_pesawat_ibfk_1` FOREIGN KEY (`id_bandara_asal`) REFERENCES `bandara` (`id_bandara`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rute_pesawat_ibfk_2` FOREIGN KEY (`id_bandara_tujuan`) REFERENCES `bandara` (`id_bandara`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tiket_bus`
--
ALTER TABLE `tiket_bus`
  ADD CONSTRAINT `tiket_bus_ibfk_1` FOREIGN KEY (`id_jadwal_bus`) REFERENCES `jadwal_bus` (`id_jadwal_bus`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tiket_kereta`
--
ALTER TABLE `tiket_kereta`
  ADD CONSTRAINT `tiket_kereta_ibfk_1` FOREIGN KEY (`id_jadwal_kereta`) REFERENCES `jadwal_kereta` (`id_jadwal_kereta`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tiket_pesawat`
--
ALTER TABLE `tiket_pesawat`
  ADD CONSTRAINT `tiket_pesawat_ibfk_1` FOREIGN KEY (`id_jadwal_pesawat`) REFERENCES `jadwal_pesawat` (`id_jadwal_pesawat`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
