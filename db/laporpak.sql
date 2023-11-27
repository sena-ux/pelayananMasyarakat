-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2023 at 01:50 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laporpak`
--

-- --------------------------------------------------------

--
-- Table structure for table `kecamatan`
--

CREATE TABLE `kecamatan` (
  `id_kecamatan` int(11) NOT NULL,
  `kecamatan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kecamatan`
--

INSERT INTO `kecamatan` (`id_kecamatan`, `kecamatan`) VALUES
(1, 'BONDOWOSO'),
(2, 'IJEN'),
(3, 'SUKOSARI'),
(4, 'SUMBER WRINGIN'),
(5, 'TAPEN'),
(6, 'PRAJEKAN'),
(7, 'TLOGOSARI'),
(8, 'BINAKAL'),
(9, 'BOTOLINGGO'),
(10, 'Cermee');

-- --------------------------------------------------------

--
-- Table structure for table `kelurahan`
--

CREATE TABLE `kelurahan` (
  `id_kelurahan` int(11) NOT NULL,
  `kelurahan` varchar(100) NOT NULL,
  `id_kecamatan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kelurahan`
--

INSERT INTO `kelurahan` (`id_kelurahan`, `kelurahan`, `id_kecamatan`) VALUES
(1, 'Kembang', 1),
(2, 'Pancoran', 1),
(3, 'Pejaten', 1),
(4, 'Sukowiryo', 1),
(5, 'Badean', 1),
(6, 'Blindungan', 1),
(7, 'Dabasah', 1),
(8, 'Jampit', 2),
(9, 'Kali Gedang', 2),
(10, 'Kalianyar', 2),
(11, 'Kalisat', 2),
(12, 'Sempol', 2),
(13, 'Sumber Rejo', 2),
(14, 'Rejo Agung', 4),
(15, 'Sukosari Kidul', 4),
(16, 'Sukorejo', 4),
(17, 'Kerang', 3),
(18, 'Nogosari', 3),
(19, 'Sukosari Lor', 3),
(20, 'Pecalongan', 3),
(21, 'Sumber Gading', 4),
(22, 'Sumberwringin', 4),
(23, 'Tegaljati', 4),
(24, 'Cindogo', 5),
(25, 'Gunung Anyar', 5),
(26, 'Jurang Sapi', 5),
(27, 'Kalitapen', 5),
(28, 'Mangli Wetan', 5),
(29, 'Mrawan', 5),
(30, 'Taal', 5),
(31, 'Tapen', 5),
(32, 'Wonokusumo', 5),
(42, 'Bandilan', 6),
(43, 'Cangkring', 6),
(44, 'Walidono', 6),
(45, 'Prajekan Kidul', 6),
(46, 'Prajekan Lor', 6),
(47, 'Sempol', 6),
(48, 'Tarum', 6),
(49, 'Brambangdarussolah', 7),
(50, 'Gunosari', 7),
(51, 'Jebung Selatan', 7),
(52, 'Jebung Utara', 7),
(53, 'Tlogosari', 7),
(54, 'Trotosari', 7),
(55, 'Cermee Barat', 10);

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `id_log` int(11) NOT NULL,
  `isi_log` text NOT NULL,
  `tgl_log` datetime NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`id_log`, `isi_log`, `tgl_log`, `id_user`) VALUES
(16, 'Profil berhasil diubah!', '2023-05-13 09:52:13', 1),
(17, 'Tanggapan sudah dalam pengerjaan berhasil ditambahkan', '2023-05-13 09:54:10', 1),
(18, 'Tanggapan Terima kasih.Info anda valid,Akan kita proses. berhasil ditambahkan', '2023-05-13 20:06:18', 1),
(19, 'Tanggapan sudah dalam proses pengerjaan berhasil ditambahkan', '2023-05-13 20:09:10', 1),
(20, 'Tanggapan proses pengerjaan berhasil ditambahkan', '2023-05-13 20:09:34', 1),
(21, 'Tanggapan terima kasih,info anda valid.akan kami teruskan ke pihak terkait. berhasil ditambahkan', '2023-06-04 18:42:49', 1),
(22, 'Tanggapan proses pengerjaan oleh Dinas PUPR dan BNPB berhasil ditambahkan', '2023-06-04 18:43:29', 1),
(23, 'Tanggapan proses pengerjaan masih dilakukan berhasil ditambahkan', '2023-06-04 18:44:38', 1),
(24, 'Tanggapan jalan sudah bisa dilalui kendaraan.terima kasih atas laporan anda berhasil ditambahkan', '2023-06-04 18:45:16', 1),
(25, 'Kecamatan Cermee berhasil ditambahkan', '2023-06-04 18:47:08', 1),
(26, 'Kelurahan Cermee Barat berhasil ditambahkan', '2023-06-04 18:47:25', 1);

-- --------------------------------------------------------

--
-- Table structure for table `masyarakat`
--

CREATE TABLE `masyarakat` (
  `id_masyarakat` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `no_telepon` varchar(20) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `masyarakat`
--

INSERT INTO `masyarakat` (`id_masyarakat`, `nama`, `username`, `password`, `no_telepon`, `alamat`) VALUES
(1, 'Andre Farhan Saputra', 'andre123', '$2y$10$np0VReX.hpfpyfGZMB61keaDNoe14ZSzZ9mAP0Zql6mSQuCYfWOla', '087733932416', 'Jl. AMD Babakan Pocis No. 100 RT02/02'),
(2, 'Muhammad Irgi Al Ghithraf', 'irgi5', '$2y$10$51l3fVtvtoUTkuv8NajfjOaWxP7Y/T8Re2LMjmvciuQ0y2a5jgE3e', '085773094859', 'Perum Puri Serpong 1 Blok D5 No. 7 RT 08/02 Setu, Setu, Tangerang Selatan, Banten'),
(3, 'Ableza Melani Putri', 'ableza24', '$2y$10$xiVl2xqkEMAUvj3h2fnUeeuMnt.dxrHIO0m5jgEREujFQAYH1c1zG', '089677646147', 'JL. AMD Babakan Pocis No. 7 RT 02/01 Bakti Jaya Setu Kota Tangerang Selatan'),
(4, 'Annisa Ulazijah Faqih', 'annisa98', '$2y$10$K287REWLi5fn/pCmi90HTumNG2DiwAPjxsGWvx5oDTbhK3aolTBqC', '087808564812', 'Kp. Jaletreng No. 41 RT 03/03 Serpong, Serpong'),
(5, 'Azzaura', 'azzaura56', '$2y$10$5AZT/bsxiJQ/YcrCou.U2.Hun0o3s9aH6do73f01Tm8IZwH/udx/W', '085212984453', 'Perum Griya Cendekia No. 17 RT 05/06, Curug, Gunung Sindur'),
(6, 'Putri', 'putri77', '$2y$10$3ZPUwLjSErGxeyaKoRk9g.mzQJRy8IGnCU9pD9fb0YcUisNGGg8l6', '098789789789', 'BONDOWOSO'),
(7, 'Rizal Anwar Sanusi', 'rizal88', '$2y$10$v./WieT/FIMFzWH9lWEGQelp/ECd/QUlR1mX4I/Ro3pIMysZqOklS', '089566665656', 'tapen bondowoso');

-- --------------------------------------------------------

--
-- Table structure for table `pengaduan`
--

CREATE TABLE `pengaduan` (
  `id_pengaduan` int(11) NOT NULL,
  `isi_laporan` text NOT NULL,
  `tgl_pengaduan` datetime NOT NULL,
  `foto` varchar(500) DEFAULT 'default.png',
  `status_pengaduan` enum('belum_ditanggapi','proses','valid','pengerjaan','selesai','tidak_valid') NOT NULL DEFAULT 'belum_ditanggapi',
  `id_masyarakat` int(11) NOT NULL,
  `id_kelurahan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengaduan`
--

INSERT INTO `pengaduan` (`id_pengaduan`, `isi_laporan`, `tgl_pengaduan`, `foto`, `status_pengaduan`, `id_masyarakat`, `id_kelurahan`) VALUES
(1, 'Telepon Umum rusak di daerah Bakti Jaya', '2021-07-04 11:57:52', '1604499518_image.png', 'selesai', 1, 53),
(2, 'Jembatan antar desa rusak, di daerah Rawa buntu', '2021-07-04 13:06:00', 'jembatan_rusak.jpg', 'selesai', 2, 39),
(3, 'Jalan di daerah pocis, bakti jaya, rusak parah. \r\nTerimakasih.', '2021-07-06 10:01:05', 'jalan-rusak.jpg', 'selesai', 3, 53),
(4, 'Tanah longsor, daerah Serpong dekat Pesantren Hidayatullah Yayasan Al- Firdaus', '2021-07-07 08:22:12', 'IMG-20190808-WA0074.jpg', 'pengerjaan', 4, 41),
(5, 'Jl.Sudirman longsor pak,belum ada petugas datang', '2023-05-13 20:04:54', 'longsor-rwanda_169.jpeg', 'pengerjaan', 6, 16),
(6, 'pak ada tanah longsor di jalan santawi no 88 (depan pengairan)', '2023-06-04 18:40:49', 'longsor-rwanda_1691.jpeg', 'selesai', 7, 2);

-- --------------------------------------------------------

--
-- Table structure for table `saran`
--

CREATE TABLE `saran` (
  `id_saran` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `no_telepon` varchar(20) NOT NULL,
  `alamat` text NOT NULL,
  `saran` text NOT NULL,
  `tgl_saran` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `saran`
--

INSERT INTO `saran` (`id_saran`, `nama`, `no_telepon`, `alamat`, `saran`, `tgl_saran`) VALUES
(1, 'Rizal Anwar Sanusi', '0897497897', 'TAPEN', 'CONTOH SARAN', '2023-06-04 18:46:31');

-- --------------------------------------------------------

--
-- Table structure for table `tanggapan`
--

CREATE TABLE `tanggapan` (
  `id_tanggapan` int(11) NOT NULL,
  `isi_tanggapan` text NOT NULL,
  `tgl_tanggapan` datetime NOT NULL,
  `status_tanggapan` enum('proses','valid','pengerjaan','selesai','tidak_valid') NOT NULL,
  `foto_tanggapan` varchar(500) NOT NULL DEFAULT 'default.png',
  `id_pengaduan` int(11) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tanggapan`
--

INSERT INTO `tanggapan` (`id_tanggapan`, `isi_tanggapan`, `tgl_tanggapan`, `status_tanggapan`, `foto_tanggapan`, `id_pengaduan`, `id_user`) VALUES
(1, 'Baik laporan Anda kami proses', '2021-07-05 08:58:34', 'proses', 'default.png', 1, 1),
(2, 'Laporan Anda valid, segera kami perbaiki', '2021-07-05 14:17:35', 'valid', '16044995182.png', 1, 1),
(3, 'Dalam pengerjaan', '2021-07-05 15:05:58', 'pengerjaan', 'default.png', 1, 1),
(4, 'Sudah selesai kami perbaiki.', '2021-07-06 08:01:14', 'selesai', 'telepon-umum-koin.jpg', 1, 1),
(5, 'Baik kami segera mengecek ke TKP.', '2021-07-05 08:12:00', 'proses', 'default.png', 2, 2),
(6, 'Laporan Anda valid, segera kami perbaiki.', '2021-07-05 11:16:22', 'valid', 'default.png', 2, 2),
(7, 'dalam pengerjaan', '2021-07-06 09:03:00', 'pengerjaan', 'default.png', 2, 2),
(8, 'Jembatan sudah selesai diperbaiki.', '2021-07-08 10:18:06', 'selesai', '015117800_1608202742-20201217_153411.jpg', 2, 2),
(9, 'Baik segera kami proses.', '2021-07-06 12:01:49', 'proses', 'default.png', 3, 2),
(10, 'Laporan Anda valid.', '2021-07-07 08:03:14', 'valid', '8-Tips-Saat-Menemui-Jalan-Yang-Rusak.jpg', 3, 2),
(11, 'Jalan sedang dalam pengerjaan untuk diperbaiki.', '2021-07-07 12:04:08', 'pengerjaan', 'perbaikan-jalan-bergelomban.jpg', 3, 2),
(12, 'Jalanan selesai diperbaiki.', '2021-07-07 16:23:06', 'selesai', 'proyek-pengaspalan-jalan-ciater-tangsel-jadi-sorotan-begini-proses-tendernya-cmh.jpg', 3, 2),
(13, 'Baik, laporan Anda segera kami proses.', '2021-07-07 15:50:00', 'proses', 'default.png', 4, 1),
(14, 'Laporan Anda valid, segera kami tangani.', '2021-07-08 09:10:13', 'valid', '5dfb1d22217f0.jpg', 4, 1),
(15, 'sudah dalam pengerjaan', '2023-05-13 09:54:10', 'pengerjaan', 'download.jpg', 4, 1),
(16, 'Terima kasih.Info anda valid,Akan kita proses.', '2023-05-13 20:06:18', 'proses', 'default.png', 5, 1),
(17, 'sudah dalam proses pengerjaan', '2023-05-13 20:09:10', 'valid', 'longsor-15.jpeg', 5, 1),
(18, 'proses pengerjaan', '2023-05-13 20:09:34', 'pengerjaan', 'longsor-151.jpeg', 5, 1),
(19, 'terima kasih,info anda valid.akan kami teruskan ke pihak terkait.', '2023-06-04 18:42:49', 'proses', 'default.png', 6, 1),
(20, 'proses pengerjaan oleh Dinas PUPR dan BNPB', '2023-06-04 18:43:29', 'valid', 'evakuasi-material-longsor-yang-menutup-Jalan-Rahtawu-Raya.jpg', 6, 1),
(21, 'proses pengerjaan masih dilakukan', '2023-06-04 18:44:38', 'pengerjaan', 'IMG-20220512-WA0015.jpg', 6, 1),
(22, 'jalan sudah bisa dilalui kendaraan.terima kasih atas laporan anda', '2023-06-04 18:45:16', 'selesai', 'f-Longsor-Dawuhan-Sengon.jpg', 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `no_telepon` varchar(20) NOT NULL,
  `jabatan` enum('administrator','operator') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama`, `username`, `password`, `no_telepon`, `jabatan`) VALUES
(1, 'Administrator', 'admin', '$2y$10$L201Eud0B8zkRfT9wOctFeK1LSJWFxwDV8He41JDk4ggRLUb9aIC6', '08956434564', 'administrator'),
(2, 'Andri Firman Saputra', 'andri123', '$2y$10$NbEgBbEr.Di9DwIo/OoXZOefgH7v/zQNxdLPleaJWZTQ7kKQbOCEa', '087808675313', 'operator');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD PRIMARY KEY (`id_kecamatan`);

--
-- Indexes for table `kelurahan`
--
ALTER TABLE `kelurahan`
  ADD PRIMARY KEY (`id_kelurahan`),
  ADD KEY `id_kecamatan` (`id_kecamatan`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id_log`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `masyarakat`
--
ALTER TABLE `masyarakat`
  ADD PRIMARY KEY (`id_masyarakat`);

--
-- Indexes for table `pengaduan`
--
ALTER TABLE `pengaduan`
  ADD PRIMARY KEY (`id_pengaduan`),
  ADD KEY `id_masyarakat` (`id_masyarakat`),
  ADD KEY `id_kelurahan` (`id_kelurahan`);

--
-- Indexes for table `saran`
--
ALTER TABLE `saran`
  ADD PRIMARY KEY (`id_saran`);

--
-- Indexes for table `tanggapan`
--
ALTER TABLE `tanggapan`
  ADD PRIMARY KEY (`id_tanggapan`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_pengaduan` (`id_pengaduan`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kecamatan`
--
ALTER TABLE `kecamatan`
  MODIFY `id_kecamatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `kelurahan`
--
ALTER TABLE `kelurahan`
  MODIFY `id_kelurahan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `id_log` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `masyarakat`
--
ALTER TABLE `masyarakat`
  MODIFY `id_masyarakat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pengaduan`
--
ALTER TABLE `pengaduan`
  MODIFY `id_pengaduan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `saran`
--
ALTER TABLE `saran`
  MODIFY `id_saran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tanggapan`
--
ALTER TABLE `tanggapan`
  MODIFY `id_tanggapan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
