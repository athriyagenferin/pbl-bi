-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 09, 2024 at 04:56 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pbl`
--

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE DATABASE IF NOT EXISTS `pbl`;
USE `pbl`;


CREATE TABLE `report` (
  `nomor_laporan` varchar(10) NOT NULL,
  `nik` bigint DEFAULT NULL,
  `nama_pelapor` varchar(100) NOT NULL,
  `judul_laporan` varchar(100) NOT NULL,
  `jenis_laporan` varchar(50) NOT NULL,
  `tanggal_laporan` date NOT NULL,
  `status` enum('Selesai','Menunggu','Diarsipkan') NOT NULL
);

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`nomor_laporan`, `nik`, `nama_pelapor`, `judul_laporan`, `jenis_laporan`, `tanggal_laporan`, `status`) VALUES
('LAP001', 357305863386802429, 'Gita Sari', 'Laporan Pencurian', 'Kejahatan', '2023-10-01', 'Selesai'),
('LAP002', 357305423975581147, 'Putri Setiawan', 'Lampu Jalan Mati', 'Fasilitas', '2023-09-05', 'Menunggu'),
('LAP003', 357305191193607721, 'Dewi Mahardika', 'Sampah Berserakan', 'Fasilitas', '2023-03-02', 'Diarsipkan'),
('LAP004', 357305237363538569, 'Ahmad Pratama', 'Laporan Pencurian', 'Kejahatan', '2023-06-06', 'Selesai'),
('LAP005', 357305788460459963, 'Yuli Sari', 'Sampah Berserakan', 'Fasilitas', '2023-04-03', 'Menunggu'),
('LAP006', 357305280565109879, 'Putri Wijaya', 'Lampu Jalan Mati', 'Fasilitas', '2023-06-03', 'Diarsipkan'),
('LAP007', 357305647941571370, 'Joko Mahardika', 'Sampah Berserakan', 'Fasilitas', '2023-06-04', 'Selesai'),
('LAP008', 357305762215925657, 'Ahmad Wijaya', 'Lampu Jalan Mati', 'Fasilitas', '2023-02-04', 'Menunggu'),
('LAP009', 357305208365190936, 'Kurnia Santoso', 'Lampu Jalan Mati', 'Fasilitas', '2023-12-05', 'Diarsipkan'),
('LAP010', 357305418440274056, 'Fajar Sari', 'Lampu Jalan Mati', 'Fasilitas', '2023-06-05', 'Selesai');

-- --------------------------------------------------------

--
-- Table structure for table `warga`
--

CREATE TABLE `warga` (
  `no_rt` int DEFAULT NULL,
  `no_kk` bigint DEFAULT NULL,
  `nik` bigint NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `alamat_domisili` varchar(100) NOT NULL,
  `alamat_ktp` varchar(100) NOT NULL,
  `no_telepon` varchar(15) NOT NULL,
  `agama` enum('Islam','Kristen','Katolik','Hindu','Buddha','Konghucu') NOT NULL,
  `pekerjaan` varchar(50) NOT NULL
);

--
-- Dumping data for table `warga`
--

INSERT INTO `warga` (`no_rt`, `no_kk`, `nik`, `nama_lengkap`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat_domisili`, `alamat_ktp`, `no_telepon`, `agama`, `pekerjaan`) VALUES
(2, 357305725776420646, 357305163689761019, 'Budi Suharto', 'Laki-laki', 'Malang', '1997-01-28', 'Jl. Pisang Kipas No 5, Malang', 'Jl. Pisang Kipas No 25, Jakarta', '087028050814', 'Islam', 'Nelayan'),
(3, 357305520048155215, 357305191193607721, 'Dewi Mahardika', 'Perempuan', 'Malang', '1956-02-29', 'Jl. Pisang Kipas No 15, Malang', 'Jl. Pisang Kipas No 44, Malang', '081285439735', 'Katolik', 'Petani'),
(5, 357305670582628413, 357305197949218197, 'Sari Mahardika', 'Laki-laki', 'Malang', '1987-06-13', 'Jl. Pisang Kipas No 13, Malang', 'Jl. Pisang Kipas No 13, Malang', '083400829806', 'Konghucu', 'PNS'),
(5, 357305385544792300, 357305201976288121, 'Oki Pratama', 'Perempuan', 'Malang', '1980-07-10', 'Jl. Pisang Kipas No 6, Malang', 'Jl. Pisang Kipas No 3, Surabaya', '086141154220', 'Hindu', 'Mahasiswa'),
(1, 357305432530966548, 357305206117200111, 'Mira Saputra', 'Laki-laki', 'Malang', '1992-04-27', 'Jl. Pisang Kipas No 37, Malang', 'Jl. Pisang Kipas No 22, Jakarta', '082228557079', 'Buddha', 'Pengusaha'),
(1, 357305802700504365, 357305208365190936, 'Kurnia Santoso', 'Laki-laki', 'Jakarta', '1997-09-25', 'Jl. Pisang Kipas No 21, Malang', 'Jl. Pisang Kipas No 25, Malang', '085498740825', 'Buddha', 'Petani'),
(1, 357305280961592138, 357305237363538569, 'Ahmad Pratama', 'Perempuan', 'Malang', '1974-05-08', 'Jl. Pisang Kipas No 45, Malang', 'Jl. Pisang Kipas No 30, Jakarta', '081307939121', 'Buddha', 'Mahasiswa'),
(1, 357305656565049710, 357305242401639383, 'Kurnia Saputra', 'Laki-laki', 'Malang', '1953-12-30', 'Jl. Pisang Kipas No 43, Malang', 'Jl. Pisang Kipas No 19, Malang', '084163756821', 'Buddha', 'Petani'),
(5, 357305146463948241, 357305250502656031, 'Fajar Wijaya', 'Laki-laki', 'Malang', '1973-09-26', 'Jl. Pisang Kipas No 43, Malang', 'Jl. Pisang Kipas No 5, Surabaya', '084555560792', 'Buddha', 'Swasta'),
(4, 357305716221718017, 357305280565109879, 'Putri Wijaya', 'Perempuan', 'Malang', '1977-01-06', 'Jl. Pisang Kipas No 13, Malang', 'Jl. Pisang Kipas No 43, Jakarta', '087224812167', 'Hindu', 'PNS'),
(3, 357305385989642993, 357305282479694647, 'Fajar Mahardika', 'Laki-laki', 'Surabaya', '1966-02-18', 'Jl. Pisang Kipas No 10, Malang', 'Jl. Pisang Kipas No 41, Jakarta', '085816028439', 'Buddha', 'Mahasiswa'),
(1, 357305737390750616, 357305328730833631, 'Budi Mahardika', 'Perempuan', 'Bandung', '1996-12-12', 'Jl. Pisang Kipas No 22, Malang', 'Jl. Pisang Kipas No 23, Surabaya', '081324395212', 'Islam', 'Nelayan'),
(1, 357305389445418335, 357305330833648045, 'Oki Wulandari', 'Perempuan', 'Malang', '1946-07-27', 'Jl. Pisang Kipas No 5, Malang', 'Jl. Pisang Kipas No 5, Malang', '082881404385', 'Kristen', 'Pelajar'),
(4, 357305931154720015, 357305418440274056, 'Fajar Sari', 'Perempuan', 'Surabaya', '1957-08-01', 'Jl. Pisang Kipas No 13, Malang', 'Jl. Pisang Kipas No 15, Semarang', '085404813231', 'Islam', 'Petani'),
(2, 357305717724353589, 357305423975581147, 'Putri Setiawan', 'Laki-laki', 'Malang', '1969-11-23', 'Jl. Pisang Kipas No 8, Malang', 'Jl. Pisang Kipas No 6, Malang', '086973916231', 'Buddha', 'PNS'),
(4, 357305371943359060, 357305495332574751, 'Utami Santoso', 'Laki-laki', 'Bandung', '2010-11-30', 'Jl. Pisang Kipas No 31, Malang', 'Jl. Pisang Kipas No 1, Semarang', '083485236069', 'Islam', 'Petani'),
(1, 357305939374308079, 357305533858894377, 'Citra Mahardika', 'Perempuan', 'Bandung', '1940-09-06', 'Jl. Pisang Kipas No 50, Malang', 'Jl. Pisang Kipas No 34, Bandung', '085922007223', 'Katolik', 'Mahasiswa'),
(1, 357305106967483455, 357305557388913245, 'Oki Pratama', 'Perempuan', 'Malang', '1942-08-14', 'Jl. Pisang Kipas No 38, Malang', 'Jl. Pisang Kipas No 16, Jakarta', '089205888681', 'Katolik', 'Mahasiswa'),
(1, 357305329173314102, 357305562539115231, 'Fajar Permadi', 'Laki-laki', 'Malang', '1987-01-26', 'Jl. Pisang Kipas No 35, Malang', 'Jl. Pisang Kipas No 35, Malang', '081475401007', 'Buddha', 'PNS'),
(4, 357305211987094831, 357305623201692886, 'Budi Wijaya', 'Perempuan', 'Jakarta', '1969-01-01', 'Jl. Pisang Kipas No 47, Malang', 'Jl. Pisang Kipas No 8, Semarang', '087109387301', 'Hindu', 'Mahasiswa'),
(1, 357305945171382474, 357305647941571370, 'Joko Mahardika', 'Perempuan', 'Surabaya', '1948-06-14', 'Jl. Pisang Kipas No 25, Malang', 'Jl. Pisang Kipas No 38, Bandung', '081173999934', 'Kristen', 'Pengusaha'),
(5, 357305260960182935, 357305702256515966, 'Gita Mahardika', 'Laki-laki', 'Jakarta', '2019-07-10', 'Jl. Pisang Kipas No 38, Malang', 'Jl. Pisang Kipas No 32, Jakarta', '088036474182', 'Buddha', 'Pengusaha'),
(3, 357305160457671325, 357305762215925657, 'Ahmad Wijaya', 'Laki-laki', 'Jakarta', '1978-02-01', 'Jl. Pisang Kipas No 20, Malang', 'Jl. Pisang Kipas No 32, Jakarta', '089407562689', 'Kristen', 'Mahasiswa'),
(1, 357305177685993757, 357305788460459963, 'Yuli Sari', 'Perempuan', 'Jakarta', '2006-05-13', 'Jl. Pisang Kipas No 29, Malang', 'Jl. Pisang Kipas No 3, Malang', '087307374817', 'Buddha', 'Mahasiswa'),
(3, 357305262184675786, 357305810236521844, 'Ahmad Mahardika', 'Perempuan', 'Surabaya', '1958-12-17', 'Jl. Pisang Kipas No 36, Malang', 'Jl. Pisang Kipas No 36, Malang', '087699569105', 'Konghucu', 'Nelayan'),
(3, 357305649066277277, 357305841288971136, 'Joko Permadi', 'Perempuan', 'Malang', '2013-09-01', 'Jl. Pisang Kipas No 38, Malang', 'Jl. Pisang Kipas No 46, Malang', '087986420718', 'Islam', 'Mahasiswa'),
(1, 357305824446043296, 357305857382217540, 'Lestari Saputra', 'Perempuan', 'Jakarta', '1975-06-29', 'Jl. Pisang Kipas No 50, Malang', 'Jl. Pisang Kipas No 37, Jakarta', '086396172635', 'Islam', 'Pelajar'),
(4, 357305478038196839, 357305863386802429, 'Gita Sari', 'Laki-laki', 'Malang', '1996-04-13', 'Jl. Pisang Kipas No 3, Malang', 'Jl. Pisang Kipas No 27, Surabaya', '085079586404', 'Kristen', 'Pelajar'),
(3, 357305326242989953, 357305959601876518, 'Budi Firmansyah', 'Perempuan', 'Malang', '1941-02-14', 'Jl. Pisang Kipas No 17, Malang', 'Jl. Pisang Kipas No 33, Bandung', '088061727292', 'Katolik', 'PNS'),
(4, 357305515464510078, 357305964047499019, 'Hana Setiawan', 'Laki-laki', 'Malang', '1980-02-06', 'Jl. Pisang Kipas No 26, Malang', 'Jl. Pisang Kipas No 16, Bandung', '081498249247', 'Hindu', 'Mahasiswa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`nomor_laporan`),
  ADD KEY `nik` (`nik`);

--
-- Indexes for table `warga`
--
ALTER TABLE `warga`
  ADD PRIMARY KEY (`nik`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `report`
--
ALTER TABLE `report`
  ADD CONSTRAINT `report_ibfk_1` FOREIGN KEY (`nik`) REFERENCES `warga` (`nik`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
