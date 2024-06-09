-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Jun 2024 pada 10.30
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpustakaan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggota`
--

CREATE TABLE `anggota` (
  `id_anggota` int(11) NOT NULL,
  `nama_anggota` varchar(100) NOT NULL,
  `alamat_anggota` text NOT NULL,
  `no_telepon_anggota` varchar(20) NOT NULL,
  `tanggal_gabung` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `anggota`
--

INSERT INTO `anggota` (`id_anggota`, `nama_anggota`, `alamat_anggota`, `no_telepon_anggota`, `tanggal_gabung`) VALUES
(3, 'Andri Firman Saputra', 'Jl. AMD Babakan Pocis', '087808675313', '2024-06-09 10:51:41'),
(5, 'John Doe', 'Jl. Merdeka No.1, Jakarta', '081234567890', '2024-06-09 12:58:58'),
(6, 'Jane Smith', 'Jl. Diponegoro No.2, Bandung', '081234567891', '2024-06-09 12:58:58'),
(7, 'Michael Johnson', 'Jl. Sudirman No.3, Surabaya', '081234567892', '2024-06-09 12:58:58'),
(8, 'Emily Davis', 'Jl. Gatot Subroto No.4, Medan', '081234567893', '2024-06-09 12:58:58'),
(9, 'David Brown', 'Jl. Ahmad Yani No.5, Makassar', '081234567894', '2024-06-09 12:58:58'),
(10, 'Linda Wilson', 'Jl. Hasanuddin No.6, Palembang', '081234567895', '2024-06-09 12:58:58'),
(11, 'James Miller', 'Jl. RA Kartini No.7, Semarang', '081234567896', '2024-06-09 12:58:58'),
(12, 'Mary Anderson', 'Jl. Jend. Sudirman No.8, Yogyakarta', '081234567897', '2024-06-09 12:58:58'),
(13, 'Robert Martinez', 'Jl. Pangeran Antasari No.9, Denpasar', '081234567898', '2024-06-09 12:58:58'),
(14, 'Patricia Taylor', 'Jl. Panglima Polim No.10, Manado', '081234567899', '2024-06-09 12:58:58'),
(15, 'Thomas Jackson', 'Jl. M.H. Thamrin No.11, Pontianak', '081234567900', '2024-06-09 12:58:58'),
(16, 'Jennifer White', 'Jl. Kebayoran Lama No.12, Banjarmasin', '081234567901', '2024-06-09 12:58:58'),
(17, 'Charles Harris', 'Jl. Kyai Haji Wahid Hasyim No.13, Padang', '081234567902', '2024-06-09 12:58:58'),
(18, 'Barbara Clark', 'Jl. Letjen S. Parman No.14, Samarinda', '081234567903', '2024-06-09 12:58:58'),
(19, 'Daniel Lewis', 'Jl. Pasar Minggu No.15, Malang', '081234567904', '2024-06-09 12:58:58'),
(20, 'Susan Robinson', 'Jl. Kebon Jeruk No.16, Tasikmalaya', '081234567905', '2024-06-09 12:58:58'),
(21, 'Paul Walker', 'Jl. Medan Merdeka No.17, Balikpapan', '081234567906', '2024-06-09 12:58:58'),
(22, 'Jessica Hall', 'Jl. Fatmawati No.18, Pekanbaru', '081234567907', '2024-06-09 12:58:58'),
(23, 'Christopher Young', 'Jl. Pasar Baru No.19, Banda Aceh', '081234567908', '2024-06-09 12:58:58'),
(24, 'Karen Allen', 'Jl. Prof. Dr. Satrio No.20, Batam', '081234567909', '2024-06-09 12:58:58'),
(25, 'Mark King', 'Jl. Pejompongan No.21, Cirebon', '081234567910', '2024-06-09 12:58:58'),
(26, 'Nancy Wright', 'Jl. Dr. Saharjo No.22, Solo', '081234567911', '2024-06-09 12:58:58'),
(27, 'George Lopez', 'Jl. Setiabudi No.23, Jambi', '081234567912', '2024-06-09 12:58:58'),
(28, 'Karen Hill', 'Jl. Veteran No.24, Serang', '081234567913', '2024-06-09 12:58:58'),
(29, 'Brian Scott', 'Jl. Margonda Raya No.25, Depok', '081234567914', '2024-06-09 12:58:58');

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `id_buku` int(11) NOT NULL,
  `judul_buku` varchar(100) NOT NULL,
  `tahun_buku` int(11) NOT NULL,
  `penerbit_buku` varchar(100) NOT NULL,
  `penulis_buku` varchar(100) NOT NULL,
  `stok_buku` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`id_buku`, `judul_buku`, `tahun_buku`, `penerbit_buku`, `penulis_buku`, `stok_buku`) VALUES
(4, 'To Kill a Mockingbird', 1960, 'J.B. Lippincott & Co.', 'Harper Lee', 5),
(5, '1984', 1949, 'Secker &amp; Warburg', 'George Orwell', 4),
(6, 'Pride and Prejudice', 1813, 'T. Egerton', 'Jane Austen', 5),
(7, 'The Great Gatsby', 1925, 'Charles Scribner\'s Sons', 'F. Scott Fitzgerald', 4),
(8, 'Moby-Dick', 1851, 'Harper & Brothers', 'Herman Melville', 5),
(9, 'War and Peace', 1869, 'The Russian Messenger', 'Leo Tolstoy', 5),
(10, 'The Catcher in the Rye', 1951, 'Little, Brown and Company', 'J.D. Salinger', 5),
(11, 'The Hobbit', 1937, 'George Allen & Unwin', 'J.R.R. Tolkien', 6),
(12, 'One Hundred Years of Solitude', 1967, 'Harper & Row', 'Gabriel Garcia Marquez', 5),
(13, 'Crime and Punishment', 1866, 'The Russian Messenger', 'Fyodor Dostoevsky', 5),
(14, 'The Brothers Karamazov', 1880, 'The Russian Messenger', 'Fyodor Dostoevsky', 5),
(15, 'Brave New World', 1932, 'Chatto & Windus', 'Aldous Huxley', 5),
(16, 'Ulysses', 1922, 'Shakespeare and Company', 'James Joyce', 5),
(17, 'The Odyssey', -800, 'Ancient Greece', 'Homer', 4),
(18, 'Madame Bovary', 1856, 'Revue de Paris', 'Gustave Flaubert', 5),
(19, 'The Divine Comedy', 1320, 'Italy', 'Dante Alighieri', 5),
(20, 'In Search of Lost Time', 1913, 'Grasset', 'Marcel Proust', 5),
(21, 'The Iliad', -750, 'Ancient Greece', 'Homer', 5),
(22, 'Don Quixote', 1605, 'Francisco de Robles', 'Miguel de Cervantes', 7),
(23, 'The Stranger', 1942, 'Gallimard', 'Albert Camus', 5),
(24, 'Lolita', 1955, 'Olympia Press', 'Vladimir Nabokov', 5),
(25, 'The Sound and the Fury', 1929, 'Jonathan Cape and Harrison Smith', 'William Faulkner', 5),
(26, 'The Grapes of Wrath', 1939, 'The Viking Press-James Lloyd', 'John Steinbeck', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `log`
--

CREATE TABLE `log` (
  `id_log` int(11) NOT NULL,
  `isi_log` text NOT NULL,
  `tgl_log` datetime NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `log`
--

INSERT INTO `log` (`id_log`, `isi_log`, `tgl_log`, `id_user`) VALUES
(1, 'Profil berhasil diubah', '2024-06-09 05:29:03', 1),
(2, 'Profil berhasil diubah', '2024-06-09 05:29:07', 1),
(3, 'Password berhasil diubah', '2024-06-09 05:29:13', 1),
(4, 'Password berhasil diubah', '2024-06-09 05:29:34', 1),
(5, 'Anggota Andri berhasil ditambahkan', '2024-06-09 05:49:00', 1),
(6, 'Anggota Andri berhasil dihapus', '2024-06-09 05:49:21', 1),
(7, 'Anggota Andri berhasil ditambahkan', '2024-06-09 05:49:31', 1),
(8, 'Anggota Andri berhasil diubah menjadi Andri1', '2024-06-09 05:51:12', 1),
(9, 'Anggota Andri1 berhasil dihapus', '2024-06-09 05:51:23', 1),
(10, 'Anggota Andri Firman Saputra berhasil ditambahkan', '2024-06-09 05:51:41', 1),
(11, 'Buku Al Quran berhasil ditambahkan', '2024-06-09 06:04:48', 1),
(12, 'Buku Al Quran berhasil dihapus', '2024-06-09 06:05:00', 1),
(13, 'Buku Baca 123 berhasil ditambahkan', '2024-06-09 06:05:31', 1),
(14, 'Buku Baca 123 berhasil diubah menjadi Baca 1231', '2024-06-09 06:07:02', 1),
(15, 'Buku Baca 1231 berhasil dihapus', '2024-06-09 06:07:06', 1),
(16, 'Buku Abc berhasil ditambahkan', '2024-06-09 07:41:09', 1),
(17, 'Transaksi Andri Firman Saputra berhasil ditambahkan', '2024-06-09 07:42:13', 1),
(18, 'Transaksi Andri Firman Saputra berhasil dihapus', '2024-06-09 07:43:36', 1),
(19, 'Transaksi Andri Firman Saputra berhasil ditambahkan', '2024-06-09 07:43:45', 1),
(20, 'Anggota Andre berhasil ditambahkan', '2024-06-09 07:54:33', 1),
(21, 'Anggota Andre berhasil dihapus', '2024-06-09 07:59:12', 1),
(22, 'Transaksi Andri Firman Saputra berhasil ditambahkan', '2024-06-09 08:04:31', 1),
(23, 'Transaksi Andri Firman Saputra berhasil dihapus', '2024-06-09 08:24:16', 1),
(24, 'Transaksi Andri Firman Saputra berhasil ditambahkan', '2024-06-09 08:24:21', 1),
(25, 'Transaksi Barbara Clark berhasil ditambahkan', '2024-06-09 13:25:29', 1),
(26, 'Transaksi Andri Firman Saputra berhasil dihapus', '2024-06-09 13:25:34', 1),
(27, 'Transaksi Pengembalian Buku Barbara Clark berhasil', '2024-06-09 13:49:22', 1),
(28, 'Transaksi Andri Firman Saputra berhasil ditambahkan', '2024-06-09 13:55:31', 1),
(29, 'Transaksi Pengembalian Buku Andri Firman Saputra berhasil', '2024-06-09 13:55:59', 1),
(30, 'Buku Asd berhasil ditambahkan', '2024-06-09 14:08:52', 1),
(31, 'Buku Asd berhasil diubah menjadi Asd123', '2024-06-09 14:09:35', 1),
(32, 'Buku Asd123 berhasil dihapus', '2024-06-09 14:09:41', 1),
(33, 'Transaksi Peminjaman Buku Andri Firman Saputra berhasil ditambahkan', '2024-06-09 14:11:44', 1),
(34, 'Buku Asd berhasil ditambahkan', '2024-06-09 14:11:57', 1),
(35, 'Buku Asd berhasil dihapus', '2024-06-09 14:13:49', 1),
(36, 'Transaksi Peminjaman Buku Barbara Clark berhasil ditambahkan', '2024-06-09 14:13:56', 1),
(37, 'Buku 1984 berhasil diubah menjadi 1984', '2024-06-09 14:15:59', 1),
(38, 'Transaksi Peminjaman Buku Christopher Young berhasil ditambahkan', '2024-06-09 14:16:07', 1),
(39, 'Transaksi Pengembalian Buku Christopher Young berhasil', '2024-06-09 14:16:33', 1),
(40, 'Transaksi Pengembalian Buku Barbara Clark berhasil', '2024-06-09 14:16:47', 1),
(41, 'Transaksi Pengembalian Buku Andri Firman Saputra berhasil', '2024-06-09 14:17:25', 1),
(42, 'Transaksi Christopher Young berhasil dihapus', '2024-06-09 14:19:02', 1),
(43, 'Transaksi Peminjaman Buku Andri Firman Saputra berhasil ditambahkan', '2024-06-09 14:19:11', 1),
(44, 'Transaksi Andri Firman Saputra berhasil dihapus', '2024-06-09 14:19:19', 1),
(45, 'Transaksi Peminjaman Buku Andri Firman Saputra berhasil ditambahkan', '2024-06-09 14:19:25', 1),
(46, 'Transaksi Pengembalian Buku Andri Firman Saputra berhasil', '2024-06-09 14:19:28', 1),
(47, 'Transaksi Andri Firman Saputra berhasil dihapus', '2024-06-09 14:19:53', 1),
(48, 'Transaksi Barbara Clark berhasil dihapus', '2024-06-09 14:19:55', 1),
(49, 'Transaksi Andri Firman Saputra berhasil dihapus', '2024-06-09 14:19:58', 1),
(50, 'Transaksi Andri Firman Saputra berhasil dihapus', '2024-06-09 14:20:07', 1),
(51, 'Transaksi Barbara Clark berhasil dihapus', '2024-06-09 14:20:11', 1),
(52, 'Transaksi Peminjaman Buku Andri Firman Saputra berhasil ditambahkan', '2024-06-09 14:20:40', 1),
(53, 'Transaksi Pengembalian Buku Andri Firman Saputra berhasil', '2024-06-09 14:31:44', 1),
(54, 'Transaksi Peminjaman Buku Charles Harris berhasil ditambahkan', '2024-06-09 14:36:37', 1),
(55, 'Transaksi Pengembalian Buku Charles Harris berhasil', '2024-06-09 14:45:02', 1),
(56, 'Transaksi Andri Firman Saputra berhasil dihapus', '2024-06-09 14:45:12', 1),
(57, 'Transaksi Peminjaman Buku Andri Firman Saputra berhasil ditambahkan', '2024-06-09 15:14:08', 1),
(58, 'Transaksi Peminjaman Buku Karen Allen berhasil ditambahkan', '2024-06-09 15:14:16', 1),
(59, 'Transaksi Peminjaman Buku Michael Johnson berhasil ditambahkan', '2024-06-09 15:14:23', 1),
(60, 'Transaksi Pengembalian Buku Karen Allen berhasil', '2024-06-09 15:14:30', 1),
(61, 'Transaksi Pengembalian Buku Brian Scott berhasil', '2024-06-09 15:27:11', 1),
(62, 'Transaksi Pengembalian Buku Brian Scott berhasil', '2024-06-09 15:30:09', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_anggota` int(11) NOT NULL,
  `id_buku` int(11) NOT NULL,
  `tanggal_pinjam` datetime NOT NULL DEFAULT current_timestamp(),
  `tanggal_wajib_kembali` datetime NOT NULL,
  `tanggal_kembali` datetime DEFAULT NULL,
  `denda` int(11) NOT NULL,
  `status` enum('dipinjam','dikembalikan') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_anggota`, `id_buku`, `tanggal_pinjam`, `tanggal_wajib_kembali`, `tanggal_kembali`, `denda`, `status`) VALUES
(13, 29, 22, '2024-06-01 14:36:37', '2024-06-04 14:36:37', '2024-06-09 15:30:09', 2500, 'dikembalikan'),
(14, 17, 6, '2024-06-09 14:36:37', '2024-06-12 14:36:37', '2024-06-09 14:45:02', 0, 'dikembalikan'),
(15, 3, 17, '2024-06-09 15:14:08', '2024-06-12 15:14:08', NULL, 0, 'dipinjam'),
(16, 24, 4, '2024-06-09 15:14:16', '2024-06-12 15:14:16', '2024-06-09 15:14:30', 0, 'dikembalikan'),
(17, 7, 7, '2024-06-09 15:14:23', '2024-06-12 15:14:23', NULL, 0, 'dipinjam');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `nama_lengkap`) VALUES
(1, 'admin', '$2y$10$2iAysNjVDIPbtjLPNIc4eua/s3k3tAWFBG07nFGKs03wlsFj4QT5e', 'Andri Firman Saputra');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indeks untuk tabel `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id_log`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_anggota` (`id_anggota`),
  ADD KEY `id_buku` (`id_buku`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id_anggota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `buku`
--
ALTER TABLE `buku`
  MODIFY `id_buku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `log`
--
ALTER TABLE `log`
  MODIFY `id_log` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `log`
--
ALTER TABLE `log`
  ADD CONSTRAINT `log_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id_buku`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`id_anggota`) REFERENCES `anggota` (`id_anggota`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
