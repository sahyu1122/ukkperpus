-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2025 at 11:31 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sahyuu`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `kode_buku` varchar(90) NOT NULL,
  `no_buku` int(11) NOT NULL,
  `judul_buku` varchar(90) NOT NULL,
  `tahun_terbit` int(11) NOT NULL,
  `penulis` varchar(90) NOT NULL,
  `penerbit` varchar(90) NOT NULL,
  `jumlah_halaman` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `gambar_buku` varchar(656) NOT NULL,
  `stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`kode_buku`, `no_buku`, `judul_buku`, `tahun_terbit`, `penulis`, `penerbit`, `jumlah_halaman`, `harga`, `gambar_buku`, `stok`) VALUES
('123', 1, 'seni rupa', 2000, 'saya', 'SMK TELKOM LAMPUNG', 34, 80000, 'uploads/682ee60b72772_1.jpg', 12),
('12321', 6, 'seni rupa', 2000, 'sahyu', 'SMK TELKOM LAMPUNG', 12, 12, 'uploads/682ee80b04e97_WhatsApp Image 2024-08-13 at 08.26.58_4c8c77ac.jpg', 12),
('456', 2, 'Atomic Habits', 2000, 'sahyu', 'SMK TELKOM LAMPUNG', 8, 7, 'uploads/682ee71eed5ed_2.jpg', 1),
('654', 5, 'bahasa indonesia', 0, 'sahyu', 'SMK TELKOM LAMPUNG', 13, 12, 'uploads/682ee79f51cf0_5.jpg', 11),
('789', 3, 'Atomic Hariono', 0, 'sahyu', 'SMK TELKOM LAMPUNG', 9, 11, 'uploads/682ee746c0c27_3.jpg', 12),
('987', 4, 'Atomic Hariono', 0, 'saya', 'SMK TELKOM LAMPUNG', 12, 12, 'uploads/682ee76ae6a9a_4.jpg', 12);

-- --------------------------------------------------------

--
-- Table structure for table `pinjam`
--

CREATE TABLE `pinjam` (
  `id` int(11) NOT NULL,
  `nama_peminjam` varchar(90) NOT NULL,
  `no_buku` int(11) NOT NULL,
  `tanggal_pinjam` date NOT NULL,
  `tanggal_kembali` date NOT NULL,
  `stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pinjam`
--

INSERT INTO `pinjam` (`id`, `nama_peminjam`, `no_buku`, `tanggal_pinjam`, `tanggal_kembali`, `stok`) VALUES
(1, 'Dino', 12333, '2025-05-22', '2025-05-22', 0),
(2, 'sahyu', 2, '2025-05-22', '2025-05-22', 0),
(3, 'sahyu', 5, '2025-05-22', '2025-05-22', 0),
(4, 'aAWQ', 5, '2025-05-22', '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(90) NOT NULL,
  `password` varchar(90) NOT NULL,
  `role` enum('user','admin','superadmin','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `role`) VALUES
(1, 'user', 'user', 'user'),
(2, 'admin', 'admin', 'admin'),
(3, 'superadmin', 'superadmin', 'superadmin'),
(4, 'farhan kebab', '12', 'user'),
(5, 'rijik kopling', '12', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`kode_buku`);

--
-- Indexes for table `pinjam`
--
ALTER TABLE `pinjam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pinjam`
--
ALTER TABLE `pinjam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
