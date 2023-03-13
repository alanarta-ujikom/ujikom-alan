-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 11 Mar 2023 pada 04.50
-- Versi Server: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ujikom`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `masyarakat`
--

CREATE TABLE `masyarakat` (
  `nik` varchar(255) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `telp` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `masyarakat`
--

INSERT INTO `masyarakat` (`nik`, `nama`, `username`, `password`, `telp`) VALUES
('121217', 'dyh', 'gus', '1212', 1234567),
('12345678910', 'alan arta', 'alan', '123', 2147483647),
('1234567898', 'aldi', 'aldi muharam', '1', 2147483647),
('2147483647', 'ele', 'ele', '12345', 987898),
('22', 'b', 'b', 'b', 22),
('3217263276476528', 'alan arta', 'alan', '123', 2147483647),
('335', 'alll', 'alll', '123', 2147483647),
('4', 'b', 'b', 'b', 4321),
('8979234', 'ana', 'ana', '123', 62262),
('8979237', '', 'petugas', 'petugas', 0),
('8979238', 'a', 'a', 'a', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengaduan`
--

CREATE TABLE `pengaduan` (
  `id_pengaduan` int(16) NOT NULL,
  `tgl_pengaduan` date NOT NULL,
  `nik` int(16) NOT NULL,
  `isi_laporan` text NOT NULL,
  `foto` varchar(255) NOT NULL,
  `status` enum('0','proses','selesi') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `pengaduan`
--

INSERT INTO `pengaduan` (`id_pengaduan`, `tgl_pengaduan`, `nik`, `isi_laporan`, `foto`, `status`) VALUES
(1, '0000-00-00', 12121, 'percobaan tulis pengaduan\r\n\n', '1.png', ''),
(2, '0000-00-00', 123, 'JEMBATA ROBOH DI DAERAH CIMAHI\n', '', ''),
(3, '0000-00-00', 123, '\n', '1.png', ''),
(4, '2023-02-14', 123, 'HAGGHDU\n', '1.png', ''),
(5, '2023-02-14', 123, 'aku adalah manusia\n', 'RIPAL_SAKUCI-removebg-preview.png', ''),
(6, '2023-02-14', 123, 'eka menghancurkan sekolah\n', 'ikan.png', ''),
(7, '2023-02-14', 1933, 'fhgrese\n', 'ikan.png', ''),
(8, '2023-02-21', 12121, 'gyuggihoijo\n', 'logounnur.png', ''),
(9, '2023-02-22', 8979238, 'fde;pkepojrdkvsdv[lvkejopr;e si maung\n', 'ikan.png', ''),
(10, '2023-02-22', 8979238, 'wejihruhrguuh\n', 'RIPAL_SAKUCI-removebg-preview.png', ''),
(11, '2023-02-22', 8979238, 'ssdvvdfvdfvdfvfd\n', 'ikan.png', ''),
(12, '2023-02-23', 4, 'oiii\n', 'logounnur.png', ''),
(13, '2023-02-23', 4, 'c  dsdcwcwce\n', 'ikan.png', ''),
(14, '2023-02-23', 8979238, 'anjayyyyyy\n', 'RIPAL_SAKUCI-removebg-preview.png', ''),
(15, '2023-02-23', 8979238, 'knj\n', 'ikan.png', '0'),
(16, '2023-02-23', 8979238, 'mok\n', '', '0'),
(17, '2023-02-25', 8979238, 'Y7T6R6R6\n', '', ''),
(18, '2023-02-25', 8979238, 'sgsdjksdcoiv\n', 'ikan.png', ''),
(19, '2023-02-25', 8979238, 'ada pencurian buah\n', 'logounnur.png', ''),
(20, '2023-02-25', 8979238, 'jalan berlubang\n', 'ikan.png', '0'),
(21, '2023-02-25', 8979238, 'buah di paling\n', 'ikan.png', ''),
(22, '2023-02-25', 8979238, 'Cucucnguk\n', 'logounnur.png', ''),
(23, '2023-02-25', 8979238, 'hjhfjgfhrg\n', 'ikan.png', '0'),
(24, '2023-02-25', 8979238, 'oiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii\n', '', ''),
(25, '2023-02-27', 2147483647, 'adanya banjir di jalan membuat kemacetan\n', 'ikan.png', 'proses'),
(26, '2023-02-27', 2147483647, 'adanya longsor\n', '', '0'),
(27, '2023-02-27', 2147483647, '\n', '', '0'),
(28, '2023-02-27', 2147483647, '\n', '', 'proses'),
(29, '2023-02-27', 2147483647, 'hiui3333i\n', '', 'proses'),
(30, '2023-02-27', 8979238, 'ada banjir\n', '', ''),
(31, '2023-02-27', 0, 'SHHFJSKJFH\n', '', '0'),
(32, '2023-02-27', 8979238, '\n', '', '0'),
(33, '2023-03-10', 121217, 'naonn\n', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(11) NOT NULL,
  `nama_petugas` varchar(35) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(32) NOT NULL,
  `telp` int(13) NOT NULL,
  `level` enum('admin','petugas','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `nama_petugas`, `username`, `password`, `telp`, `level`) VALUES
(2, 'petugas', 'petugas', 'petugas', 123, 'petugas'),
(7, 'Anz', 'anz', '111', 123456, 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tanggapan`
--

CREATE TABLE `tanggapan` (
  `id_tanggapan` int(11) NOT NULL,
  `id_pengaduan` int(11) NOT NULL,
  `tgl_tanggapan` date NOT NULL,
  `tanggapan` text NOT NULL,
  `id_petugas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tanggapan`
--

INSERT INTO `tanggapan` (`id_tanggapan`, `id_pengaduan`, `tgl_tanggapan`, `tanggapan`, `id_petugas`) VALUES
(31, 7, '2023-02-23', '                         OK    ', 7),
(32, 12, '2023-02-23', ' \r\n                \r\n        terimakasih', 7),
(33, 13, '2023-02-23', ' ok\r\n                \r\n        ', 7),
(34, 7, '2023-02-23', ' \r\n                \r\n        y', 7),
(35, 4, '2023-02-25', ' \r\n                \r\n        OKK', 7),
(36, 17, '2023-02-25', ' \r\n                \r\n        okkk', 7),
(37, 1, '2023-02-25', ' \r\n                \r\n        ', 7),
(38, 1, '2023-02-25', ' \r\n                \r\n        ', 7),
(39, 1, '2023-02-25', ' \r\n                \r\n        siapppp', 7),
(41, 2, '2023-02-25', ' \r\n                siapppp\r\n        ', 7),
(42, 1, '2023-02-25', ' \r\n                \r\n        sipppp', 7),
(43, 2, '2023-02-25', ' \r\n                otwe keun\r\n        ', 7),
(44, 17, '2023-02-25', ' \r\n                hayu\r\n        ', 7),
(45, 21, '2023-02-25', ' \r\n                \r\n        otwe', 7),
(46, 3, '2023-02-25', ' \r\n                \r\n        ooko', 7),
(47, 22, '2023-02-25', ' \r\n                \r\n        ', 7),
(48, 24, '2023-02-25', ' \r\n                \r\n        ', 7),
(49, 13, '2023-02-27', '                  ukih', 7),
(50, 30, '2023-02-27', ' \r\n                \r\n        okeee', 7),
(51, 14, '2023-03-08', ' \r\n                \r\n        naon', 7),
(52, 33, '2023-03-10', ' \r\n                \r\n        euy', 7),
(53, 18, '2023-03-10', ' \r\n                \r\n        ', 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `masyarakat`
--
ALTER TABLE `masyarakat`
  ADD PRIMARY KEY (`nik`);

--
-- Indexes for table `pengaduan`
--
ALTER TABLE `pengaduan`
  ADD PRIMARY KEY (`id_pengaduan`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indexes for table `tanggapan`
--
ALTER TABLE `tanggapan`
  ADD PRIMARY KEY (`id_tanggapan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pengaduan`
--
ALTER TABLE `pengaduan`
  MODIFY `id_pengaduan` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id_petugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tanggapan`
--
ALTER TABLE `tanggapan`
  MODIFY `id_tanggapan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
