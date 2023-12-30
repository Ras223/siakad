-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Des 2023 pada 09.56
-- Versi server: 8.2.0
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sia`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `groups`
--

CREATE TABLE `groups` (
  `id` mediumint UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data untuk tabel `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'PKA', 'Staff Pusat Kemahasiswaan dan Alumni'),
(3, 'mahasiswa', 'Mahasiswa Institut Teknologi Indonesia');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis`
--

CREATE TABLE `jenis` (
  `id_jenis` int NOT NULL,
  `jenis` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data untuk tabel `jenis`
--

INSERT INTO `jenis` (`id_jenis`, `jenis`) VALUES
(1, 'Pengurus Organisasi Mahasiswa'),
(2, 'Kepanitiaan'),
(3, 'Kegiatan Ilmiah Mahasiswa (Seminar, Karya Ilmiah)'),
(4, 'Lomba Akademik'),
(5, 'Pengabdian Kepada Masyarakat'),
(6, 'Magang'),
(7, 'Lomba Non-Akademik'),
(8, 'Program Kreativitas Mahasiswa'),
(9, 'Tes Toefl'),
(10, 'Non-Lomba');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan`
--

CREATE TABLE `jurusan` (
  `id` int NOT NULL,
  `nama_jurusan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data untuk tabel `jurusan`
--

INSERT INTO `jurusan` (`id`, `nama_jurusan`) VALUES
(1, 'Teknik'),
(2, 'Non-Teknik');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `id` int NOT NULL,
  `kelas` char(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`id`, `kelas`) VALUES
(1, 'RG'),
(2, 'KR');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int UNSIGNED NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengumuman`
--

CREATE TABLE `pengumuman` (
  `id` int NOT NULL,
  `judul` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `isi_pengumuman` text NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_user` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data untuk tabel `pengumuman`
--

INSERT INTO `pengumuman` (`id`, `judul`, `slug`, `isi_pengumuman`, `tanggal`, `id_user`) VALUES
(1, 'Hello Wordl', 'hello-wordl', '<p>How are you guys? I hpope youre fine</p>', '2016-09-03 10:32:31', 1),
(2, 'I hope you fine', 'i-hope-you-fine', '<p>I hope you fine,</p>', '2016-09-03 10:31:25', 1),
(3, 'Hello Wordls', 'hello-wordls', '<p>How are you guys? I hope you fine</p>', '2016-09-03 10:32:35', 1),
(4, 'lvan', 'lvan', '<p>kvnalvnd</p>', '2016-09-07 08:13:19', 1),
(5, 'vavknslna', 'vavknslna', '<p>vklvnaslkvn</p>', '2016-09-07 08:13:27', 1),
(6, 'wioivan;vnas;nv', 'wioivanvnasnv', '<p>avlnasvsa</p>', '2016-09-07 08:13:33', 1),
(7, 'vanivowaniewa\'', 'vanivowaniewa', '<p>vanvaos;vnawieron</p>', '2016-09-07 08:13:40', 1),
(8, 'vaoivnawionwi', 'vaoivnawionwi', '<p>vawvnaskldnvlkan</p>', '2016-09-07 08:13:49', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `prestasi`
--

CREATE TABLE `prestasi` (
  `id_prestasi` int NOT NULL,
  `id_tingkat_fk` int NOT NULL,
  `prestasi` varchar(255) NOT NULL,
  `bobot` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data untuk tabel `prestasi`
--

INSERT INTO `prestasi` (`id_prestasi`, `id_tingkat_fk`, `prestasi`, `bobot`) VALUES
(1, 1, 'Ketua', 5),
(2, 1, 'BPH Lainnya', 4),
(3, 1, 'Anggota', 1),
(4, 2, 'Ketua', 5),
(5, 2, 'BPH Lainnya', 4),
(6, 2, 'Anggota', 3),
(7, 3, 'Ketua', 6),
(8, 3, 'BPH Lainnya', 5),
(9, 3, 'Anggota', 4),
(10, 4, 'Ketua', 6),
(11, 4, 'BPH Lainnya', 5),
(12, 4, 'Anggota', 4),
(13, 5, 'Ketua', 8),
(14, 5, 'BPH Lainnya', 6),
(15, 5, 'Anggota', 5),
(16, 6, 'Ketua', 10),
(17, 6, 'BPH Lainnya', 8),
(18, 6, 'Anggota', 6),
(19, 12, 'Ketua/Penanggung Jawab/SC', 6),
(20, 12, 'BPH Lainnya', 5),
(21, 12, 'Anggota', 3),
(22, 11, 'Ketua/Penanggung Jawab/SC', 5),
(23, 11, 'BPH Lainnya', 4),
(24, 11, 'Anggota', 2),
(25, 10, 'Ketua/Penanggung Jawab/SC', 5),
(26, 10, 'BPH Lainnya', 4),
(27, 10, 'Anggota', 2),
(28, 9, 'Ketua/Penanggung Jawab/SC', 4),
(29, 9, 'BPH Lainnya', 3),
(30, 9, 'Anggota', 2),
(31, 8, 'Ketua/Penanggung Jawab/SC', 4),
(32, 8, 'BPH Lainnya', 3),
(33, 8, 'Anggota', 2),
(34, 13, 'Ketua/Penanggung Jawab/SC', 8),
(35, 13, 'BPH Lainnya', 6),
(36, 13, 'Anggota', 5),
(37, 15, 'Ketua/Penyaji', 8),
(38, 15, 'Anggota', 4),
(39, 15, 'Peserta', 3),
(40, 14, 'Ketua/Penyaji', 6),
(41, 14, 'Anggota', 3),
(42, 14, 'Peserta', 2),
(43, 7, 'Ketua/Penyaji', 4),
(44, 7, 'Anggota', 2),
(45, 7, 'Peserta', 1),
(46, 16, 'Juara I', 5),
(47, 16, 'Juara II', 4),
(48, 16, 'Juara III', 3),
(49, 16, 'Juara Harapan', 2),
(50, 16, 'Peserta', 1),
(51, 17, 'Juara I', 6),
(52, 17, 'Juara II', 5),
(53, 17, 'Juara III', 4),
(54, 17, 'Juara Harapan', 3),
(55, 17, 'Peserta', 2),
(56, 18, 'Juara I', 8),
(57, 18, 'Juara II', 6),
(58, 18, 'Juara III', 5),
(59, 18, 'Juara Harapan', 4),
(60, 18, 'Peserta', 3),
(61, 19, 'Ketua', 4),
(62, 19, 'BPH Lainnya', 3),
(63, 19, 'Anggota', 2),
(64, 19, 'Peserta', 1),
(65, 20, 'Ketua', 6),
(66, 20, 'BPH Lainnya', 4),
(67, 20, 'Anggota', 3),
(68, 20, 'Peserta', 2),
(69, 21, 'Ketua', 8),
(70, 21, 'BPH Lainnya', 6),
(71, 21, 'Anggota', 5),
(72, 21, 'Peserta', 4),
(73, 24, 'Peserta', 3),
(74, 23, 'Peserta', 2),
(75, 22, 'Peserta', 1),
(76, 25, 'Juara I', 5),
(77, 25, 'Juara II', 4),
(78, 25, 'Juara III', 3),
(79, 25, 'Juara Harapan', 2),
(80, 25, 'Peserta', 1),
(81, 26, 'Juara I', 6),
(82, 26, 'Juara II', 5),
(83, 26, 'Juara III', 4),
(84, 26, 'Juara Harapan', 3),
(85, 26, 'Peserta', 2),
(86, 27, 'Juara I', 8),
(87, 27, 'Juara II', 6),
(88, 27, 'Juara III', 5),
(89, 27, 'Juara Harapan', 4),
(90, 27, 'Peserta', 3),
(91, 28, 'Peserta', 5),
(92, 35, 'Peserta', 5),
(93, 36, 'Peserta', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `prodi`
--

CREATE TABLE `prodi` (
  `id` int NOT NULL,
  `nama_prodi` varchar(255) NOT NULL,
  `jenjang` char(2) NOT NULL,
  `id_jurusan` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data untuk tabel `prodi`
--

INSERT INTO `prodi` (`id`, `nama_prodi`, `jenjang`, `id_jurusan`) VALUES
(101, 'Teknik elektro', 'S1', 1),
(110, 'Teknik Sipil', 'S1', 1),
(112, 'Arsitektur', 'S1', 2),
(115, 'Teknik Informatika', 'S1', 1),
(120, 'Teknik Mesin', 'S1', 1),
(121, 'Manajemen', 'S1', 2),
(123, 'Teknologi Industri Pertanian', 'S1', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `semester`
--

CREATE TABLE `semester` (
  `id` int NOT NULL,
  `semester` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data untuk tabel `semester`
--

INSERT INTO `semester` (`id`, `semester`) VALUES
(1, 'I'),
(2, 'II'),
(3, 'III'),
(4, 'IV'),
(5, 'V'),
(6, 'VI'),
(7, 'VII'),
(8, 'VIII');

-- --------------------------------------------------------

--
-- Struktur dari tabel `skkm`
--

CREATE TABLE `skkm` (
  `id_user` int NOT NULL,
  `id` int NOT NULL,
  `nama_kegiatan` varchar(255) NOT NULL,
  `filefoto` text NOT NULL,
  `id_jenis` int NOT NULL,
  `id_tingkat` int NOT NULL,
  `id_prestasi` int NOT NULL,
  `nilai` int NOT NULL,
  `status` tinyint(1) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktur dari tabel `standar`
--

CREATE TABLE `standar` (
  `id` int NOT NULL,
  `jenjang` char(2) NOT NULL,
  `standar` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data untuk tabel `standar`
--

INSERT INTO `standar` (`id`, `jenjang`, `standar`) VALUES
(1, 'D3', 24),
(2, 'S1', 28);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tingkat`
--

CREATE TABLE `tingkat` (
  `id_tingkat` int NOT NULL,
  `id_jenis_fk` int NOT NULL,
  `tingkat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data untuk tabel `tingkat`
--

INSERT INTO `tingkat` (`id_tingkat`, `id_jenis_fk`, `tingkat`) VALUES
(1, 1, 'Pengurus Organisasi UKM'),
(2, 1, 'Pengurus Himpunan Jurusan'),
(3, 1, 'Pengurus Organisasi BEM'),
(4, 1, 'Asisten Lab'),
(5, 1, 'Pengurus Organisasi Nasional'),
(6, 1, 'Pengurus Organisasi Internasional'),
(7, 3, 'Kegiatan Karya Ilmiah'),
(8, 2, 'Divisi UKM'),
(9, 2, 'Divisi Himpunan'),
(10, 2, 'Divisi BEM'),
(12, 2, 'Kepanitiaan Nasional'),
(13, 2, 'Kepanitiaan Internasional'),
(14, 3, 'Kegiatan Ilmiah Nasional'),
(15, 3, 'Kegiatan Ilmiah Internasional'),
(16, 4, 'Prestasi Penalaran Institut'),
(17, 4, 'Prestasi Penalaran Nasional'),
(18, 4, 'Prestasi Penalaran Internasional'),
(19, 5, 'Pengabdian Masyarakat'),
(20, 5, 'Pengabdian Nasional'),
(21, 5, 'Pengabdian Internasional'),
(22, 6, 'Pelatihan Jurusan'),
(23, 6, 'Pelatihan Nasional'),
(24, 6, 'Pelatihan Internasional'),
(25, 7, 'Prestasi Minat Bakat'),
(26, 7, 'Prestasi Minat Bakat Nasional'),
(27, 7, 'Prestasi Minat Bakat Internasional'),
(28, 8, 'Lankka Politeknik'),
(35, 9, 'Baksosma Politeknik'),
(36, 10, 'Aksosma Politeknik');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int UNSIGNED DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int UNSIGNED NOT NULL,
  `last_login` int UNSIGNED DEFAULT NULL,
  `active` tinyint UNSIGNED DEFAULT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `nim` varchar(10) DEFAULT NULL,
  `nip` varchar(18) DEFAULT NULL,
  `id_jurusan` int DEFAULT NULL,
  `id_prodi` int DEFAULT NULL,
  `id_kelas` int DEFAULT NULL,
  `id_semester` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `nama_lengkap`, `nim`, `nip`, `id_jurusan`, `id_prodi`, `id_kelas`, `id_semester`) VALUES
(1, '127.0.0.1', 'administrator', '$2a$08$ccvzIVdqAW3hs4RgId3nVeNya17rnG9EbgDx3ORfhUQ9Jz.SrOat.', '', 'admin@admin.com', '', NULL, NULL, NULL, 1268889823, 1474442465, 1, 'Administrator', NULL, '123456789012345', NULL, NULL, NULL, NULL),
(5, '::1', NULL, '$2y$08$g2Mkg1FgEYnh.Tk5j/VlNeE7I6qTQwjdGLs7/AYe45vcNPLFQLpj.', NULL, 'mahasiswa@iti.ac.id', NULL, NULL, NULL, NULL, 1474434127, NULL, 1, 'Mahasiswa ITI', '1315323022', NULL, 1, 32, 5, 6),
(6, '::1', NULL, '$2y$08$y3p.Wt3TybUcdKcUUxzNXeFg5bQqGu1DL9k7ZtP73BpCoS8JHUZWu', NULL, 'pkaiti@iti.ac.id', NULL, NULL, NULL, NULL, 1474434293, NULL, 1, 'Admin Pusat Kemahasiswaan dan Alumni', NULL, '111111111111', 1, NULL, NULL, NULL),
(1152200001, '::1', '1152200001', '81dc9bdb52d04dc20036dbd8313ed055', NULL, '1152200001@iti.ac.id', NULL, NULL, NULL, NULL, 1474434127, NULL, NULL, 'Daffa Nur Fakhri', '1152200001', NULL, 1, 115, 1, 3),
(1152200003, '::1', '1152200003', '81dc9bdb52d04dc20036dbd8313ed055', NULL, '1152200003@iti.ac.id', NULL, NULL, NULL, NULL, 1474434127, NULL, NULL, 'Raj Alam', '1152200003', NULL, 1, 115, 1, 3),
(1152200013, '::1', '1152200013', '81dc9bdb52d04dc20036dbd8313ed055', NULL, '1152200013@iti.ac.id', NULL, NULL, NULL, NULL, 1474434127, NULL, NULL, 'Yusuf Aditya', '1152200013', NULL, 1, 115, 1, 3),
(1152200025, '::1', '1152200025', '81dc9bdb52d04dc20036dbd8313ed055', NULL, '1152200025@iti.ac.id', NULL, NULL, NULL, NULL, 1474434127, NULL, NULL, 'Ridwan Rangga Kusuma', '1152200025', NULL, 1, 115, 1, 3),
(1152200030, '::1', '1152200030', '81dc9bdb52d04dc20036dbd8313ed055', NULL, '1152200030@iti.ac.id', NULL, NULL, NULL, NULL, 1474434127, NULL, NULL, 'Cahya Rahma Ningtyas', '1152200030', NULL, 1, 115, 1, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `group_id` mediumint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data untuk tabel `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(16, 5, 3),
(20, 6, 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jenis`
--
ALTER TABLE `jenis`
  ADD PRIMARY KEY (`id_jenis`);

--
-- Indeks untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slug` (`slug`);

--
-- Indeks untuk tabel `prestasi`
--
ALTER TABLE `prestasi`
  ADD PRIMARY KEY (`id_prestasi`),
  ADD KEY `id_tingkat` (`id_tingkat_fk`);

--
-- Indeks untuk tabel `prodi`
--
ALTER TABLE `prodi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_prodi_jurusan` (`id_jurusan`);

--
-- Indeks untuk tabel `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `skkm`
--
ALTER TABLE `skkm`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `standar`
--
ALTER TABLE `standar`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tingkat`
--
ALTER TABLE `tingkat`
  ADD PRIMARY KEY (`id_tingkat`),
  ADD KEY `id_jenis` (`id_jenis_fk`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `jenis`
--
ALTER TABLE `jenis`
  MODIFY `id_jenis` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pengumuman`
--
ALTER TABLE `pengumuman`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `prestasi`
--
ALTER TABLE `prestasi`
  MODIFY `id_prestasi` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT untuk tabel `semester`
--
ALTER TABLE `semester`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `skkm`
--
ALTER TABLE `skkm`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `standar`
--
ALTER TABLE `standar`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tingkat`
--
ALTER TABLE `tingkat`
  MODIFY `id_tingkat` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1152200031;

--
-- AUTO_INCREMENT untuk tabel `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
