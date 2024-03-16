-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Mar 2024 pada 09.48
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sianak`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `ad1`
--

CREATE TABLE `ad1` (
  `ID` int(11) NOT NULL,
  `beratb` decimal(10,1) NOT NULL,
  `pbadan` decimal(10,1) NOT NULL,
  `tinggi` decimal(10,1) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `ad1`
--

INSERT INTO `ad1` (`ID`, `beratb`, `pbadan`, `tinggi`, `tanggal`) VALUES
(1, 0.0, 0.0, 0.0, '2024-03-16 04:22:31'),
(2, 12.0, 0.0, 0.0, '2024-03-16 04:24:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `adi2`
--

CREATE TABLE `adi2` (
  `ID` int(11) NOT NULL,
  `beratb` decimal(10,1) NOT NULL,
  `pbadan` decimal(10,1) NOT NULL,
  `tinggi` decimal(10,1) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `adi2`
--

INSERT INTO `adi2` (`ID`, `beratb`, `pbadan`, `tinggi`, `tanggal`) VALUES
(1, 4.0, 0.0, 0.0, '2024-03-16 03:22:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `asd1`
--

CREATE TABLE `asd1` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `bblaki24`
--

CREATE TABLE `bblaki24` (
  `Umur` int(11) NOT NULL,
  `N3SD` decimal(10,1) NOT NULL,
  `N2SD` decimal(10,1) NOT NULL,
  `N1SD` decimal(10,1) NOT NULL,
  `MEDIAN` decimal(10,1) NOT NULL,
  `P1SD` decimal(10,1) NOT NULL,
  `P2SD` decimal(10,1) NOT NULL,
  `P3SD` decimal(10,1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `bblaki24`
--

INSERT INTO `bblaki24` (`Umur`, `N3SD`, `N2SD`, `N1SD`, `MEDIAN`, `P1SD`, `P2SD`, `P3SD`) VALUES
(0, 2.1, 2.5, 2.9, 3.3, 3.9, 4.4, 5.0),
(1, 2.9, 3.4, 3.9, 4.5, 5.1, 5.8, 6.6),
(2, 3.8, 4.3, 4.9, 5.6, 6.3, 7.1, 8.0),
(3, 4.4, 5.0, 5.7, 6.4, 7.2, 8.0, 9.0),
(4, 4.9, 5.6, 6.2, 7.0, 7.8, 8.7, 9.7),
(5, 5.3, 6.0, 6.7, 7.5, 8.4, 9.3, 10.4),
(6, 5.7, 6.4, 7.1, 7.9, 8.8, 9.8, 10.9),
(7, 5.9, 6.7, 7.4, 8.3, 9.2, 10.3, 11.4),
(8, 6.2, 6.9, 7.7, 8.6, 9.6, 10.7, 11.9),
(9, 6.4, 7.1, 8.0, 8.9, 9.9, 11.0, 12.3),
(10, 6.6, 7.4, 8.2, 9.2, 10.2, 11.4, 12.7),
(11, 6.8, 7.6, 8.4, 9.4, 10.5, 11.7, 13.0),
(12, 6.9, 7.7, 8.6, 9.6, 10.8, 12.0, 13.3),
(13, 7.1, 7.9, 8.8, 9.9, 11.0, 12.3, 13.7),
(14, 7.2, 8.1, 9.0, 10.1, 11.3, 12.6, 14.0),
(15, 7.4, 8.3, 9.2, 10.3, 11.5, 12.8, 14.3),
(16, 7.5, 8.4, 9.4, 10.5, 11.7, 13.1, 14.6),
(17, 7.7, 8.6, 9.6, 10.7, 12.0, 13.4, 14.9),
(18, 7.8, 8.8, 9.8, 10.9, 12.2, 13.7, 15.3),
(19, 8.0, 8.9, 10.0, 11.1, 12.5, 13.9, 15.6),
(20, 8.1, 9.1, 10.1, 11.3, 12.7, 14.2, 15.9),
(21, 8.2, 9.2, 10.3, 11.5, 12.9, 14.5, 16.2),
(22, 8.4, 9.4, 10.5, 11.8, 13.2, 14.7, 16.5),
(23, 8.5, 9.5, 10.7, 12.0, 13.4, 15.0, 16.8),
(24, 8.6, 9.7, 10.8, 12.2, 13.6, 15.3, 17.1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `bblaki60`
--

CREATE TABLE `bblaki60` (
  `Umur` int(11) NOT NULL,
  `N3SD` decimal(10,1) NOT NULL,
  `N2SD` decimal(10,1) NOT NULL,
  `N1SD` decimal(10,1) NOT NULL,
  `MEDIAN` decimal(10,1) NOT NULL,
  `P1SD` decimal(10,1) NOT NULL,
  `P2SD` decimal(10,1) NOT NULL,
  `P3SD` decimal(10,1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `bblaki60`
--

INSERT INTO `bblaki60` (`Umur`, `N3SD`, `N2SD`, `N1SD`, `MEDIAN`, `P1SD`, `P2SD`, `P3SD`) VALUES
(25, 8.8, 9.8, 11.0, 12.4, 13.9, 15.5, 17.5),
(26, 8.9, 10.0, 11.2, 12.5, 14.1, 15.8, 17.8),
(27, 9.0, 10.1, 11.3, 12.7, 14.3, 16.1, 18.1),
(28, 9.1, 10.2, 11.5, 12.9, 14.5, 16.3, 18.4),
(29, 9.2, 10.4, 11.7, 13.1, 14.8, 16.6, 18.7),
(30, 9.4, 10.5, 11.8, 13.3, 15.0, 16.9, 19.0),
(31, 9.5, 10.7, 12.0, 13.5, 15.2, 17.1, 19.3),
(32, 9.6, 10.8, 12.1, 13.7, 15.4, 17.4, 19.6),
(33, 9.7, 10.9, 12.3, 13.8, 15.6, 17.6, 19.9),
(34, 9.8, 11.0, 12.4, 14.0, 15.8, 17.8, 20.2),
(35, 9.9, 11.2, 12.6, 14.2, 16.0, 18.1, 20.4),
(36, 10.0, 11.3, 12.7, 14.3, 16.2, 18.3, 20.7),
(37, 10.1, 11.4, 12.9, 14.5, 16.4, 18.6, 21.0),
(38, 10.2, 11.5, 13.0, 14.7, 16.6, 18.8, 21.3),
(39, 10.3, 11.6, 13.1, 14.8, 16.8, 19.0, 21.6),
(40, 10.4, 11.8, 13.3, 15.0, 17.0, 19.3, 21.9),
(41, 10.5, 11.9, 13.4, 15.2, 17.2, 19.5, 22.1),
(42, 10.6, 12.0, 13.6, 15.3, 17.4, 19.7, 22.4),
(43, 10.7, 12.1, 13.7, 15.5, 17.6, 20.0, 22.7),
(44, 10.8, 12.2, 13.8, 15.7, 17.8, 20.2, 23.0),
(45, 10.9, 12.4, 14.0, 15.8, 18.0, 20.5, 23.3),
(46, 11.0, 12.5, 14.1, 16.0, 18.2, 20.7, 23.6),
(47, 11.1, 12.6, 14.3, 16.2, 18.4, 20.9, 23.9),
(48, 11.2, 12.7, 14.4, 16.3, 18.6, 21.2, 24.2),
(49, 11.3, 12.8, 14.5, 16.5, 18.8, 21.4, 24.5),
(50, 11.4, 12.9, 14.7, 16.7, 19.0, 21.7, 24.8),
(51, 11.5, 13.1, 14.8, 16.8, 19.2, 21.9, 25.1),
(52, 11.6, 13.2, 15.0, 17.0, 19.4, 22.2, 25.4),
(53, 11.7, 13.3, 15.1, 17.2, 19.6, 22.4, 25.7),
(54, 11.8, 13.4, 15.2, 17.3, 19.8, 22.7, 26.0),
(55, 11.9, 13.5, 15.4, 17.5, 20.0, 22.9, 26.3),
(56, 12.0, 13.6, 15.5, 17.7, 20.2, 23.2, 26.6),
(57, 12.1, 13.7, 15.6, 17.8, 20.4, 23.4, 26.9),
(58, 12.2, 13.8, 15.8, 18.0, 20.6, 23.7, 27.2),
(59, 12.3, 14.0, 15.9, 18.2, 20.8, 23.9, 27.6),
(60, 12.4, 14.1, 16.0, 18.3, 21.0, 24.2, 27.9);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengukuransensor`
--

CREATE TABLE `pengukuransensor` (
  `ID` int(11) NOT NULL,
  `beratb` decimal(10,1) NOT NULL,
  `pbadan` decimal(10,1) NOT NULL,
  `tinggi` decimal(10,1) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pengukuransensor`
--

INSERT INTO `pengukuransensor` (`ID`, `beratb`, `pbadan`, `tinggi`, `tanggal`) VALUES
(1, 0.1, 5.7, 0.0, '2024-03-06 03:30:36'),
(2, 0.0, 9.6, 0.0, '2024-03-06 03:31:17'),
(3, 0.1, 12.7, 0.0, '2024-03-06 03:31:26'),
(4, 3.0, 4.0, 5.0, '2024-03-14 15:33:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_adl_barthel`
--

CREATE TABLE `tb_adl_barthel` (
  `no1_barthel` varchar(150) NOT NULL,
  `no2_barthel` varchar(150) NOT NULL,
  `no3_barthel` varchar(150) NOT NULL,
  `no4_barthel` varchar(150) NOT NULL,
  `no5_barthel` varchar(150) NOT NULL,
  `no6_barthel` varchar(150) NOT NULL,
  `no7_barthel` varchar(150) NOT NULL,
  `no8_barthel` varchar(150) NOT NULL,
  `no9_barthel` varchar(150) NOT NULL,
  `no10_barthel` varchar(150) NOT NULL,
  `id_pasien` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_adl_barthel`
--

INSERT INTO `tb_adl_barthel` (`no1_barthel`, `no2_barthel`, `no3_barthel`, `no4_barthel`, `no5_barthel`, `no6_barthel`, `no7_barthel`, `no8_barthel`, `no9_barthel`, `no10_barthel`, `id_pasien`) VALUES
('', '', '', '', '', '', '', '', '', '', 5),
('', '', '', '', '', '', '', '', '', '', 6),
('', '', '', '', '', '', '', '', '', '', 7),
('', '', '', '', '', '', '', '', '', '', 8),
('', '', '', '', '', '', '', '', '', '', 9),
('', '', '', '', '', '', '', '', '', '', 10),
('', '', '', '', '', '', '', '', '', '', 11),
('', '', '', '', '', '', '', '', '', '', 12),
('', '', '', '', '', '', '', '', '', '', 13),
('', '', '', '', '', '', '', '', '', '', 14);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_anggota`
--

CREATE TABLE `tb_anggota` (
  `id_anggota` int(255) NOT NULL,
  `id_kk` int(11) NOT NULL,
  `id_pasien` int(255) NOT NULL,
  `hubungan` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_iadl_lawton`
--

CREATE TABLE `tb_iadl_lawton` (
  `no1_lawton` varchar(150) NOT NULL,
  `no2_lawton` varchar(150) NOT NULL,
  `no3_lawton` varchar(150) NOT NULL,
  `no4_lawton` varchar(150) NOT NULL,
  `no5_lawton` varchar(150) NOT NULL,
  `no6_lawton` varchar(150) NOT NULL,
  `no7_lawton` varchar(150) NOT NULL,
  `no8_lawton` varchar(150) NOT NULL,
  `id_pasien` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_iadl_lawton`
--

INSERT INTO `tb_iadl_lawton` (`no1_lawton`, `no2_lawton`, `no3_lawton`, `no4_lawton`, `no5_lawton`, `no6_lawton`, `no7_lawton`, `no8_lawton`, `id_pasien`) VALUES
('', '', '', '', '', '', '', '', 5),
('', '', '', '', '', '', '', '', 6),
('', '', '', '', '', '', '', '', 7),
('', '', '', '', '', '', '', '', 8),
('', '', '', '', '', '', '', '', 9),
('', '', '', '', '', '', '', '', 10),
('', '', '', '', '', '', '', '', 11),
('', '', '', '', '', '', '', '', 12),
('', '', '', '', '', '', '', '', 13),
('', '', '', '', '', '', '', '', 14);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kk`
--

CREATE TABLE `tb_kk` (
  `id_kk` int(11) NOT NULL,
  `no_kk` varchar(30) NOT NULL,
  `kepala` varchar(20) NOT NULL,
  `desa` varchar(20) NOT NULL,
  `rt` varchar(5) NOT NULL,
  `rw` varchar(5) NOT NULL,
  `kec` varchar(20) NOT NULL,
  `kab` varchar(20) NOT NULL,
  `prov` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pasien`
--

CREATE TABLE `tb_pasien` (
  `id_pasien` int(255) NOT NULL,
  `nama_anak` varchar(40) NOT NULL,
  `nama_ibu` varchar(20) NOT NULL,
  `jekel` enum('Laki-laki','Perempuan','-') DEFAULT '-',
  `tempat_lh` varchar(35) NOT NULL,
  `tgl_lh` varchar(150) NOT NULL,
  `nik_anak` varchar(50) NOT NULL,
  `nik_ibu` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `rt` varchar(10) NOT NULL,
  `rw` varchar(10) NOT NULL,
  `kode_pos` varchar(20) NOT NULL,
  `no_telepon` varchar(20) NOT NULL,
  `tempat_tinggal` enum('Rumah sendiri','Panti sosial','Rumah anak','Tidak tetap','Lain-lain') DEFAULT 'Lain-lain',
  `agama` varchar(20) NOT NULL,
  `suku` varchar(20) NOT NULL,
  `didik_akhir` enum('Tidak sekolah','SD','SMP/MTS','SMA/SMK','D3','S1','S2','S3') DEFAULT 'Tidak sekolah',
  `nik` varchar(30) DEFAULT NULL,
  `gol_d` enum('A','B','O','AB','-') DEFAULT '-',
  `hobi` varchar(30) NOT NULL,
  `bpjs` varchar(30) NOT NULL,
  `asuransi_lain` varchar(50) NOT NULL,
  `sumber_dn` varchar(30) NOT NULL,
  `status` enum('Sehat','Kurang Sehat','Sakit','Meninggal') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `tb_pasien`
--

INSERT INTO `tb_pasien` (`id_pasien`, `nama_anak`, `nama_ibu`, `jekel`, `tempat_lh`, `tgl_lh`, `nik_anak`, `nik_ibu`, `alamat`, `rt`, `rw`, `kode_pos`, `no_telepon`, `tempat_tinggal`, `agama`, `suku`, `didik_akhir`, `nik`, `gol_d`, `hobi`, `bpjs`, `asuransi_lain`, `sumber_dn`, `status`) VALUES
(1, 'aga', '321', 'Laki-laki', 'wewe', '2023-11-09', '', '', 'wewe RT45', '', '', '', '088143913123', 'Rumah sendiri', '', '', 'Tidak sekolah', '', 'A', '', '', '', '', ''),
(6, 'baru2', 'ibu2', 'Laki-laki', 'bukttingi', '2024-03-09', '22222222222', '21212121', 'odono', '', '', '', '123', 'Rumah sendiri', 'islam', '', 'S3', '', '', '', '', '', '', ''),
(7, 'ana3', 'ibu3', 'Laki-laki', 'buki', '2024-03-12', '31', '3', 'odon', '', '', '', '08814391', '', '', '', '', '', '', '', '', '', '', 'Sehat'),
(8, 'pre1', 'ibupre1', 'Perempuan', 'buk', '2024-03-12', '1', '12', 'odono', '', '', '', '08814391316', '', '', '', '', '', '', '', '', '', '', ''),
(9, 'pre2', 'ibu4', 'Perempuan', 'won', '2024-03-10', '222', '43', 'odono', '', '', '', '123', '', '', '', '', '', '', '', '', '', '', 'Kurang Sehat'),
(10, 'asd1', 'asb1', 'Perempuan', 'ge', '2024-03-12', '1111', '111', 'odono', '', '', '', '12', '', '', '', '', '', '', '', '', '', '', ''),
(11, 'adi1', 'adib1', 'Laki-laki', 'won', '2024-03-12', '11', '11', 'goo', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(12, 'adi2', 'adib22', 'Laki-laki', 'buk', '2024-03-27', '22', '22', 'wewe RT45', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(13, 'ad1', 'as1', 'Laki-laki', 'buki', '', '123123', '123321', 'goo', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(14, 'z1', 'x1', 'Laki-laki', 'won', '2024-03-19', '12', '11', 'odon', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_penanggung`
--

CREATE TABLE `tb_penanggung` (
  `id_penanggung` int(255) NOT NULL,
  `nama_penanggung` varchar(50) NOT NULL,
  `hub_lansia` varchar(50) NOT NULL,
  `alamat_p` varchar(255) DEFAULT NULL,
  `kode_pos_p` varchar(20) DEFAULT NULL,
  `no_telepon_p` varchar(20) DEFAULT NULL,
  `id_pasien` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `tb_penanggung`
--

INSERT INTO `tb_penanggung` (`id_penanggung`, `nama_penanggung`, `hub_lansia`, `alamat_p`, `kode_pos_p`, `no_telepon_p`, `id_pasien`) VALUES
(5, '', '', '', '', '', 5),
(6, '', '', '', '', '', 6),
(7, '', '', '', '', '', 7),
(8, '', '', '', '', '', 8),
(9, '', '', '', '', '', 9),
(10, '', '', '', '', '', 10),
(11, '', '', '', '', '', 11),
(12, '', '', '', '', '', 12),
(13, '', '', '', '', '', 13),
(14, '', '', '', '', '', 14);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pengguna`
--

CREATE TABLE `tb_pengguna` (
  `id_pengguna` int(255) NOT NULL,
  `nama_pengguna` varchar(30) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` enum('Administrator','User') NOT NULL DEFAULT 'User'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `tb_pengguna`
--

INSERT INTO `tb_pengguna` (`id_pengguna`, `nama_pengguna`, `username`, `password`, `level`) VALUES
(1, 'ADMIN e-KMS Lansia', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Administrator'),
(2, 'Pengguna e-KMS Lansia', 'user', '12dea96fec20593566ab75692c9949596833adc9', 'User'),
(3, 'as1', 'ibu1', '88e1f924153f511808fb2466274d34485bec3ef1', 'User');

-- --------------------------------------------------------

--
-- Struktur dari tabel `z1`
--

CREATE TABLE `z1` (
  `ID` int(11) NOT NULL,
  `beratb` decimal(10,1) NOT NULL,
  `pbadan` decimal(10,1) NOT NULL,
  `tinggi` decimal(10,1) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `z1`
--

INSERT INTO `z1` (`ID`, `beratb`, `pbadan`, `tinggi`, `tanggal`) VALUES
(1, 12.0, 0.0, 0.0, '2024-03-16 04:29:40'),
(2, 12.0, 0.0, 0.0, '2024-03-16 04:32:18'),
(3, 50.0, 0.0, 0.0, '2024-03-16 04:32:18');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `ad1`
--
ALTER TABLE `ad1`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks untuk tabel `adi2`
--
ALTER TABLE `adi2`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks untuk tabel `asd1`
--
ALTER TABLE `asd1`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `bblaki24`
--
ALTER TABLE `bblaki24`
  ADD PRIMARY KEY (`Umur`);

--
-- Indeks untuk tabel `bblaki60`
--
ALTER TABLE `bblaki60`
  ADD PRIMARY KEY (`Umur`);

--
-- Indeks untuk tabel `pengukuransensor`
--
ALTER TABLE `pengukuransensor`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks untuk tabel `tb_adl_barthel`
--
ALTER TABLE `tb_adl_barthel`
  ADD PRIMARY KEY (`id_pasien`),
  ADD KEY `id_pasien` (`id_pasien`);

--
-- Indeks untuk tabel `tb_anggota`
--
ALTER TABLE `tb_anggota`
  ADD PRIMARY KEY (`id_anggota`),
  ADD KEY `tb_anggota_ibfk_1` (`id_pasien`),
  ADD KEY `id_kk` (`id_kk`);

--
-- Indeks untuk tabel `tb_iadl_lawton`
--
ALTER TABLE `tb_iadl_lawton`
  ADD PRIMARY KEY (`id_pasien`),
  ADD KEY `id_pasien` (`id_pasien`),
  ADD KEY `id_pasien_2` (`id_pasien`);

--
-- Indeks untuk tabel `tb_kk`
--
ALTER TABLE `tb_kk`
  ADD PRIMARY KEY (`id_kk`);

--
-- Indeks untuk tabel `tb_pasien`
--
ALTER TABLE `tb_pasien`
  ADD PRIMARY KEY (`id_pasien`);

--
-- Indeks untuk tabel `tb_penanggung`
--
ALTER TABLE `tb_penanggung`
  ADD PRIMARY KEY (`id_penanggung`),
  ADD KEY `id_pasien` (`id_pasien`);

--
-- Indeks untuk tabel `tb_pengguna`
--
ALTER TABLE `tb_pengguna`
  ADD PRIMARY KEY (`id_pengguna`);

--
-- Indeks untuk tabel `z1`
--
ALTER TABLE `z1`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `ad1`
--
ALTER TABLE `ad1`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `adi2`
--
ALTER TABLE `adi2`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `asd1`
--
ALTER TABLE `asd1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pengukuransensor`
--
ALTER TABLE `pengukuransensor`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tb_anggota`
--
ALTER TABLE `tb_anggota`
  MODIFY `id_anggota` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tb_pasien`
--
ALTER TABLE `tb_pasien`
  MODIFY `id_pasien` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `tb_penanggung`
--
ALTER TABLE `tb_penanggung`
  MODIFY `id_penanggung` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `tb_pengguna`
--
ALTER TABLE `tb_pengguna`
  MODIFY `id_pengguna` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `z1`
--
ALTER TABLE `z1`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
