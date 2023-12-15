-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Jun 2023 pada 09.21
-- Versi server: 10.3.16-MariaDB
-- Versi PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sms_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(127) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fname` varchar(127) NOT NULL,
  `lname` varchar(127) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`, `fname`, `lname`) VALUES
(1, 'syafira', '$2y$10$H7obJEdmLzqqcPy7wQWhsOLUvrgzC8f1Y1or2Gxaza5z1PT0tvLy6', 'Syafira', 'Mutiara');

-- --------------------------------------------------------

--
-- Struktur dari tabel `class`
--

CREATE TABLE `class` (
  `class_id` int(17) NOT NULL,
  `grade` int(100) NOT NULL,
  `section` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `class`
--

INSERT INTO `class` (`class_id`, `grade`, `section`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(9, 5, 1),
(10, 6, 2),
(11, 7, 1),
(12, 8, 1),
(13, 9, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `grades`
--

CREATE TABLE `grades` (
  `grade_id` int(11) NOT NULL,
  `grade` varchar(31) NOT NULL,
  `grade_code` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `grades`
--

INSERT INTO `grades` (`grade_id`, `grade`, `grade_code`) VALUES
(1, '1', 'X-RPL'),
(2, '2', 'X-RPL'),
(3, '3', 'X-RPL'),
(4, '1', 'X-MM'),
(5, '1', 'XI-RPL'),
(6, '2', 'XI-RPL'),
(7, '1', 'XI-MM'),
(8, '1', 'XII-RPL'),
(9, '1', 'XII-MM');

-- --------------------------------------------------------

--
-- Struktur dari tabel `message`
--

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL,
  `sender_full_name` varchar(100) NOT NULL,
  `sender_email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `date_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `message`
--

INSERT INTO `message` (`message_id`, `sender_full_name`, `sender_email`, `message`, `date_time`) VALUES
(1, 'Neneng', 'neneng@gmail.com', 'Hello, world', '2023-02-17 23:39:15'),
(2, 'Fatmawati', 'fatmawati@gmail.com', 'Hi', '2023-02-17 23:49:19'),
(3, 'Nanang', 'nanang@gmail.com', 'Hey, ', '2023-02-17 23:49:36');

-- --------------------------------------------------------

--
-- Struktur dari tabel `registrar_office`
--

CREATE TABLE `registrar_office` (
  `r_user_id` int(11) NOT NULL,
  `username` varchar(127) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fname` varchar(31) NOT NULL,
  `lname` varchar(31) NOT NULL,
  `address` varchar(31) NOT NULL,
  `employee_number` int(11) NOT NULL,
  `date_of_birth` date NOT NULL,
  `phone_number` varchar(31) NOT NULL,
  `qualification` varchar(31) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email_address` varchar(255) NOT NULL,
  `date_of_joined` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `registrar_office`
--

INSERT INTO `registrar_office` (`r_user_id`, `username`, `password`, `fname`, `lname`, `address`, `employee_number`, `date_of_birth`, `phone_number`, `qualification`, `gender`, `email_address`, `date_of_joined`) VALUES
(4, 'samrin', '$2y$10$KlTNlOIhz13hVlsC5TEN9.vRBNZtvay203g4R.BCAzm169rStf/J6', 'Samrin', 'Yusuf', 'Ende', 9021, '0000-00-00', '094828468385', 'Scv', 'Laki-laki', 'samrin@gmail.com', '2023-05-29 10:11:19'),
(5, 'aris', '$2y$10$ka9xrHj9qzmnLFPyqQCKAuMAgUhpCNRjT2KMX30w3sS7I5UF5o2/W', 'Muhammad', 'Aris', 'Ende,Anaraja', 387, '1990-03-22', '089722503447', 'crt', 'Laki-laki', 'aris@gmail.com', '2023-06-09 15:18:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `section`
--

CREATE TABLE `section` (
  `section_id` int(11) NOT NULL,
  `section` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `section`
--

INSERT INTO `section` (`section_id`, `section`) VALUES
(1, 'A'),
(2, 'B'),
(3, 'C'),
(6, 'D');

-- --------------------------------------------------------

--
-- Struktur dari tabel `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `current_year` int(11) NOT NULL,
  `current_semester` varchar(11) NOT NULL,
  `school_name` varchar(100) NOT NULL,
  `slogan` varchar(300) NOT NULL,
  `about` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `setting`
--

INSERT INTO `setting` (`id`, `current_year`, `current_semester`, `school_name`, `slogan`, `about`) VALUES
(1, 2023, 'II', 'MAKN Ende School', 'Madrasah Mandiri & Berprestasi', 'MAKN Ende adalah sekolah yang kejuruan berbasisi IT dengan sistem bording school.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `students`
--

CREATE TABLE `students` (
  `student_id` int(11) NOT NULL,
  `username` varchar(127) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fname` varchar(127) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `grade` int(11) NOT NULL,
  `section` int(11) NOT NULL,
  `address` varchar(31) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email_address` varchar(255) NOT NULL,
  `date_of_birth` date NOT NULL,
  `date_of_joined` timestamp NULL DEFAULT current_timestamp(),
  `parent_fname` varchar(127) NOT NULL,
  `parent_lname` varchar(127) NOT NULL,
  `parent_phone_number` varchar(31) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `students`
--

INSERT INTO `students` (`student_id`, `username`, `password`, `fname`, `lname`, `grade`, `section`, `address`, `gender`, `email_address`, `date_of_birth`, `date_of_joined`, `parent_fname`, `parent_lname`, `parent_phone_number`) VALUES
(6, 'arif', '$2y$10$BdeU9e2mqowUyp./7dnmGeyidn0XtMgR8KLEzCKbCOyZAtOJRfcJa', 'Muhammad', 'Arif', 5, 1, 'Pulau Ende', 'Laki-Laki', 'arief@ab.com', '2006-06-22', '2023-05-29 01:48:37', 'Muhammad', 'Sulaiman', '084567833621'),
(7, 'nur', '$2y$10$jbGkAtSU3zDW48zjgeQU1.rwHWMpR6PIZ6Vm9fqqqR.28FOGdRDBW', 'Nur', 'Baiti', 5, 1, 'Ende, Penggajawa', 'Perempuan', 'nurbaiti55@ab.com', '2006-05-23', '2023-05-29 01:50:38', 'Ahmad ', 'Yani', '0987654213'),
(8, 'merlin', '$2y$10$twh/12DFuxjeu9C0LUbiQORBb4fFZ9XTZsexj9hUuf.jFIBr4yyDy', 'Nur', 'Merlianti', 6, 1, 'Ende, Penggajawa', 'Perempuan', 'nurm74851@gmail.com', '2006-08-14', '2023-05-29 01:52:55', 'Abdul', 'Gani', '084567832941'),
(9, 'ijlal', '$2y$10$.Bd49o0/P7pQTVcR2s04yOAviRD5xz4khcxmFN/OFcaQrrfm8h4bW', 'Ijlal ', 'Muchtaram', 7, 1, 'Ende, Basa', 'Laki-Laki', 'ijlalmtr@gmail.com', '2007-02-07', '2023-05-29 01:56:53', 'Abas', 'Yunus', '08932117644'),
(10, 'serin', '$2y$10$D9SMJYF4sM63GANPeip8Z.ydlb3puvsXeTydZXUvXCbo6OpYTIAA2', 'Serina', 'Aszaidah', 1, 1, 'Alor', 'Perempuan', 'serin@gmail.com', '2007-03-27', '2023-05-29 01:59:05', 'Suwardin', 'Umar', '099123876554'),
(11, 'sausan', '$2y$10$qa6Nk6UQ8NsS3qV9iVltXeUfi9rCiRDfMpjz71AlI8dLwUZoiVVqq', 'Sausan', 'Syafiqah', 2, 2, 'Adonara', 'Perempuan', 'sausan@gmail.com', '2007-11-01', '2023-05-29 02:01:33', 'Ahmad', 'Ali', '023457823119'),
(12, 'wahyu', '$2y$10$j.9I1MsxF8nPU1m9UG7W2.s8k13JMwkFyfYBEsWQ6fX9Je3I./VhO', 'Muhammad', 'Wahyuddin', 4, 1, 'Wolowaru', 'Laki-Laki', 'wahyu@gmail.com', '2007-08-03', '2023-05-29 02:05:42', 'Sarifudin', 'Bakar', '038489381032'),
(13, 'neneng', '$2y$10$f6lLTANtd9zGXfySlspWHePUPAhncZ3vquGIyYBPevnzgX48pHu8S', 'Neneng', 'Fajriyati', 5, 1, 'Alor,Kalabahi', 'Perempuan', 'nengfajr@gmail.com', '2006-12-14', '2023-06-09 06:59:16', 'Nanang', 'Mukolang', '084567321866');

-- --------------------------------------------------------

--
-- Struktur dari tabel `student_score`
--

CREATE TABLE `student_score` (
  `id` int(11) NOT NULL,
  `semester` varchar(100) NOT NULL,
  `year` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `results` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `student_score`
--

INSERT INTO `student_score` (`id`, `semester`, `year`, `student_id`, `teacher_id`, `subject_id`, `results`) VALUES
(1, 'II', 2021, 1, 1, 1, '10 15,15 20,10 10,10 20,30 35'),
(2, 'II', 2023, 1, 1, 4, '15 20,4 5'),
(3, 'I', 2022, 1, 1, 5, '10 20,50 50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `subjects`
--

CREATE TABLE `subjects` (
  `subject_id` int(11) NOT NULL,
  `subject` varchar(31) NOT NULL,
  `subject_code` varchar(31) NOT NULL,
  `grade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `subjects`
--

INSERT INTO `subjects` (`subject_id`, `subject`, `subject_code`, `grade`) VALUES
(1, 'English', 'En', 1),
(2, 'Physics', 'Phy', 2),
(3, 'Islamic education', 'Is-ed', 1),
(4, 'Math', 'Math', 1),
(5, 'Arabic', 'Ar', 1),
(6, 'Programming', 'pro', 1),
(7, 'Java', 'java', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `teachers`
--

CREATE TABLE `teachers` (
  `teacher_id` int(11) NOT NULL,
  `username` varchar(127) NOT NULL,
  `password` varchar(255) NOT NULL,
  `class` varchar(100) NOT NULL,
  `fname` varchar(127) NOT NULL,
  `lname` varchar(127) NOT NULL,
  `subjects` varchar(31) NOT NULL,
  `address` varchar(31) NOT NULL,
  `employee_number` int(11) NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `phone_number` varchar(31) NOT NULL,
  `qualification` varchar(127) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email_address` varchar(255) NOT NULL,
  `date_of_joined` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `teachers`
--

INSERT INTO `teachers` (`teacher_id`, `username`, `password`, `class`, `fname`, `lname`, `subjects`, `address`, `employee_number`, `date_of_birth`, `phone_number`, `qualification`, `gender`, `email_address`, `date_of_joined`) VALUES
(10, 'ismi', '$2y$10$IuHE0pZKZRTilAlHMHoWgu1JdYQ32TjxCuK2.RpN2PPlkS7diSHlK', '12', 'Ismi', 'Kamelia', '67', 'Ende, Nangapanda', 2113, '1997-05-12', '081236509523', 'BSc', 'Perempuan', 'ismiputri@gmail.com', '2023-05-29 09:33:28'),
(11, 'khotib', '$2y$10$5zKLIytgN1c96aVBFghgN.5W.NuTlJYs8d2UpKbR6HM13XDmeB6XG', '9', 'Khotib', 'Munawar', '3', 'Maumere', 5678, '1990-12-02', '0843528647', 'Sdc', 'Laki-laki', 'khotib@gmail.com', '2023-05-29 09:40:33'),
(12, 'astrid', '$2y$10$s8eDb/gtpkYC3SC3JIlR.ONkHXama27aXQWjzszMmauVK/wA.SBcO', '91011', 'Astrid', 'Yunitanasa', '4', 'Kupang', 7689, '1992-10-19', '094828468385', 'Asn', 'Perempuan', 'astrid@gmail.com', '2023-05-29 10:08:59'),
(13, 'junaidin', '$2y$10$XNkSVJfVWTlhaOOQijy6/.YJQZaXh9YVIs3ubBr9kBx6L.oBx3JrG', '123', 'Junaidin', 'Ronda', '2', 'Kupang', 456, '1989-10-09', '089722503447', 'dsa', 'Laki-laki', 'junaidin@gmail.com', '2023-06-09 15:07:18'),
(14, 'nanda', '$2y$10$zhVj7nl8YRE5Oba.nkQiLehj6V6mXXV5tVVsqGo8oVc2AlFF.vTO6', '12', 'Nanda', 'Mutiara', '15', 'Ende,Nangapanda', 212, '1998-04-14', '089722503447', 'bfg', 'Perempuan', 'nanda@gmail.com', '2023-06-09 15:13:18');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indeks untuk tabel `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`class_id`);

--
-- Indeks untuk tabel `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`grade_id`);

--
-- Indeks untuk tabel `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- Indeks untuk tabel `registrar_office`
--
ALTER TABLE `registrar_office`
  ADD PRIMARY KEY (`r_user_id`);

--
-- Indeks untuk tabel `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`section_id`);

--
-- Indeks untuk tabel `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`student_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indeks untuk tabel `student_score`
--
ALTER TABLE `student_score`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indeks untuk tabel `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`teacher_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `class`
--
ALTER TABLE `class`
  MODIFY `class_id` int(17) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `grades`
--
ALTER TABLE `grades`
  MODIFY `grade_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `registrar_office`
--
ALTER TABLE `registrar_office`
  MODIFY `r_user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `section`
--
ALTER TABLE `section`
  MODIFY `section_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `students`
--
ALTER TABLE `students`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `student_score`
--
ALTER TABLE `student_score`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `subjects`
--
ALTER TABLE `subjects`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `teachers`
--
ALTER TABLE `teachers`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
