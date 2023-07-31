-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Jul 2023 pada 04.17
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
-- Database: `penjualan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `idBarang` int(11) NOT NULL,
  `NamaBarang` varchar(100) NOT NULL,
  `Keterangan` varchar(255) NOT NULL,
  `Satuan` varchar(100) NOT NULL,
  `idPengguna` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`idBarang`, `NamaBarang`, `Keterangan`, `Satuan`, `idPengguna`) VALUES
(1, 'Barang 1', 'Keterangan Barang 1', 'Satuan 1', 1),
(2, 'Barang 2', 'Keterangan Barang 2', 'Satuan 2', 2),
(3, 'Barang 3', 'Keterangan Barang 3', 'Satuan 3', 3),
(4, 'Barang 4', 'Keterangan Barang 4', 'Satuan 4', 4),
(5, 'Barang 5', 'Keterangan Barang 5', 'Satuan 5', 5),
(6, 'Barang 6', 'Keterangan Barang 6', 'Satuan 6', 6),
(7, 'Barang 7', 'Keterangan Barang 7', 'Satuan 7', 7),
(8, 'Barang 8', 'Keterangan Barang 8', 'Satuan 8', 8),
(9, 'Barang 9', 'Keterangan Barang 9', 'Satuan 9', 9),
(10, 'Barang 10', 'Keterangan Barang 10', 'Satuan 10', 10),
(11, 'Barang 11', 'Keterangan Barang 11', 'Satuan 11', 1),
(12, 'Barang 12', 'Keterangan Barang 12', 'Satuan 12', 2),
(13, 'Barang 13', 'Keterangan Barang 13', 'Satuan 13', 3),
(14, 'Barang 14', 'Keterangan Barang 14', 'Satuan 14', 4),
(15, 'Barang 15', 'Keterangan Barang 15', 'Satuan 15', 5),
(16, 'Barang 16', 'Keterangan Barang 16', 'Satuan 16', 6),
(17, 'Barang 17', 'Keterangan Barang 17', 'Satuan 17', 7),
(18, 'Barang 18', 'Keterangan Barang 18', 'Satuan 18', 8),
(19, 'Barang 19', 'Keterangan Barang 19', 'Satuan 19', 9),
(20, 'Barang 20', 'Keterangan Barang 20', 'Satuan 20', 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `hakakses`
--

CREATE TABLE `hakakses` (
  `idAkses` int(11) NOT NULL,
  `NamaAkses` varchar(50) NOT NULL,
  `Keterangan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `hakakses`
--

INSERT INTO `hakakses` (`idAkses`, `NamaAkses`, `Keterangan`) VALUES
(1, 'John_Doe', 'Aktive'),
(2, 'Jane_Smith', 'Aktive'),
(3, 'Michael_Johnson', 'Aktive'),
(4, 'Sarah_Thompson', 'Aktive'),
(5, 'Robert_Williams', 'Aktive'),
(6, 'Emily_Davis', 'Aktive'),
(7, 'David_Anderson', 'Aktive'),
(8, 'Olivia_Martinez', 'Aktive'),
(9, 'Daniel_Taylor', 'Aktive'),
(10, 'Sophia_Brown', 'Aktive'),
(11, 'Joseph_Wilson', 'Aktive'),
(12, 'Mia_Miller', 'Aktive'),
(13, 'William_Davis', 'Aktive'),
(14, 'Ava_Anderson', 'Aktive'),
(15, 'James_Moore', 'Aktive'),
(16, 'Charlotte_Wilson', 'Aktive'),
(17, 'Benjamin_Clark', 'Aktive'),
(18, 'Amelia_Taylor', 'Aktive'),
(19, 'Henry_Thompson', 'Aktive'),
(20, 'Elizabeth_Anderson', 'Aktive');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `pelanggan_id` int(11) NOT NULL,
  `pelanggan_name` varchar(100) DEFAULT NULL,
  `contact_name` varchar(100) DEFAULT NULL,
  `contact_email` varchar(100) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembelian`
--

CREATE TABLE `pembelian` (
  `idPembelian` int(11) NOT NULL,
  `JumlahPembelian` int(11) NOT NULL,
  `HargaBeli` int(11) NOT NULL,
  `idPengguna` int(11) DEFAULT NULL,
  `idBarang` int(11) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pembelian`
--

INSERT INTO `pembelian` (`idPembelian`, `JumlahPembelian`, `HargaBeli`, `idPengguna`, `idBarang`, `supplier_id`) VALUES
(22, 10, 100000, 1, 1, NULL),
(23, 5, 50000, 2, 2, NULL),
(24, 8, 80000, 3, 3, NULL),
(25, 12, 150000, 4, 4, NULL),
(26, 6, 60000, 5, 5, NULL),
(27, 7, 70000, 6, 6, NULL),
(28, 9, 90000, 7, 7, NULL),
(29, 3, 30000, 8, 8, NULL),
(30, 15, 200000, 9, 9, NULL),
(31, 4, 40000, 10, 10, NULL),
(32, 11, 110000, 1, 11, NULL),
(33, 13, 130000, 2, 12, NULL),
(34, 2, 20000, 3, 13, NULL),
(35, 18, 180000, 4, 14, NULL),
(36, 16, 160000, 5, 15, NULL),
(37, 20, 100000, 6, 16, NULL),
(38, 17, 170000, 7, 17, NULL),
(39, 1, 10000, 8, 18, NULL),
(40, 14, 140000, 9, 19, NULL),
(41, 19, 190000, 10, 20, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `idPengguna` int(11) NOT NULL,
  `NamaPengguna` varchar(200) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `NamaDepan` varchar(100) NOT NULL,
  `NamaBelakang` varchar(100) NOT NULL,
  `NoHp` varchar(15) NOT NULL,
  `Alamat` varchar(15) NOT NULL,
  `idAkses` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`idPengguna`, `NamaPengguna`, `Password`, `NamaDepan`, `NamaBelakang`, `NoHp`, `Alamat`, `idAkses`) VALUES
(1, 'user1', 'password1', 'John', 'Doe', '1234567890', 'Alamat 1', 1),
(2, 'user2', 'password2', 'Jane', 'Smith', '9876543210', 'Alamat 2', 2),
(3, 'user3', 'password3', 'Michael', 'Johnson', '5555555555', 'Alamat 3', 3),
(4, 'user4', 'password4', 'Sarah', 'Thompson', '1111111111', 'Alamat 4', 4),
(5, 'user5', 'password5', 'Robert', 'Williams', '2222222222', 'Alamat 5', 5),
(6, 'user6', 'password6', 'Emily', 'Davis', '3333333333', 'Alamat 6', 6),
(7, 'user7', 'password7', 'David', 'Anderson', '4444444444', 'Alamat 7', 7),
(8, 'user8', 'password8', 'Olivia', 'Martinez', '5555555555', 'Alamat 8', 8),
(9, 'user9', 'password9', 'Daniel', 'Taylor', '6666666666', 'Alamat 9', 9),
(10, 'user10', 'password10', 'Sophia', 'Brown', '7777777777', 'Alamat 10', 10),
(11, 'user11', 'password11', 'Joseph', 'Wilson', '8888888888', 'Alamat 11', 11),
(12, 'user12', 'password12', 'Mia', 'Miller', '9999999999', 'Alamat 12', 12),
(13, 'user13', 'password13', 'William', 'Davis', '1231231231', 'Alamat 13', 13),
(14, 'user14', 'password14', 'Ava', 'Anderson', '4564564564', 'Alamat 14', 14),
(15, 'user15', 'password15', 'James', 'Moore', '7897897897', 'Alamat 15', 15),
(16, 'user16', 'password16', 'Charlotte', 'Wilson', '1591591591', 'Alamat 16', 16),
(17, 'user17', 'password17', 'Benjamin', 'Clark', '3573573573', 'Alamat 17', 17),
(18, 'user18', 'password18', 'Amelia', 'Taylor', '2462462462', 'Alamat 18', 18),
(19, 'user19', 'password19', 'Henry', 'Thompson', '1351351351', 'Alamat 19', 19),
(20, 'user20', 'password20', 'Elizabeth', 'Anderson', '6426426426', 'Alamat 20', 20);

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan`
--

CREATE TABLE `penjualan` (
  `idPenjualan` int(11) NOT NULL,
  `JumlahPenjualan` int(11) NOT NULL,
  `HargaJual` int(11) NOT NULL,
  `idPengguna` int(11) DEFAULT NULL,
  `idBarang` int(11) DEFAULT NULL,
  `pelanggan_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `penjualan`
--

INSERT INTO `penjualan` (`idPenjualan`, `JumlahPenjualan`, `HargaJual`, `idPengguna`, `idBarang`, `pelanggan_id`) VALUES
(41, 8, 101000, 1, 1, NULL),
(42, 4, 51000, 2, 2, NULL),
(43, 7, 81000, 3, 3, NULL),
(44, 10, 151000, 4, 4, NULL),
(45, 5, 61000, 5, 5, NULL),
(46, 5, 71000, 6, 6, NULL),
(47, 7, 91000, 7, 7, NULL),
(48, 3, 31000, 8, 8, NULL),
(49, 10, 201000, 9, 9, NULL),
(50, 4, 41000, 10, 10, NULL),
(51, 11, 111000, 1, 11, NULL),
(52, 13, 131000, 2, 12, NULL),
(53, 2, 21000, 3, 13, NULL),
(54, 15, 181000, 4, 14, NULL),
(55, 15, 161000, 5, 15, NULL),
(56, 17, 101000, 6, 16, NULL),
(57, 17, 171000, 7, 17, NULL),
(58, 1, 11000, 8, 18, NULL),
(59, 14, 141000, 9, 19, NULL),
(60, 15, 191000, 10, 20, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `supplier`
--

CREATE TABLE `supplier` (
  `supplier_id` int(11) NOT NULL,
  `supplier_name` varchar(100) DEFAULT NULL,
  `contact_name` varchar(100) DEFAULT NULL,
  `contact_email` varchar(100) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`idBarang`),
  ADD KEY `idPengguna` (`idPengguna`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `hakakses`
--
ALTER TABLE `hakakses`
  ADD PRIMARY KEY (`idAkses`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`pelanggan_id`);

--
-- Indeks untuk tabel `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`idPembelian`),
  ADD KEY `idPengguna` (`idPengguna`),
  ADD KEY `idBarang` (`idBarang`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indeks untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`idPengguna`),
  ADD KEY `idAkses` (`idAkses`);

--
-- Indeks untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`idPenjualan`),
  ADD KEY `idPengguna` (`idPengguna`),
  ADD KEY `idBarang` (`idBarang`),
  ADD KEY `pelanggan_id` (`pelanggan_id`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supplier_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `idBarang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `hakakses`
--
ALTER TABLE `hakakses`
  MODIFY `idAkses` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `idPembelian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `idPengguna` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `idPenjualan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `barang_ibfk_1` FOREIGN KEY (`idPengguna`) REFERENCES `pengguna` (`idPengguna`);

--
-- Ketidakleluasaan untuk tabel `pembelian`
--
ALTER TABLE `pembelian`
  ADD CONSTRAINT `pembelian_ibfk_1` FOREIGN KEY (`idPengguna`) REFERENCES `pengguna` (`idPengguna`),
  ADD CONSTRAINT `pembelian_ibfk_2` FOREIGN KEY (`idBarang`) REFERENCES `barang` (`idBarang`),
  ADD CONSTRAINT `pembelian_ibfk_3` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`supplier_id`);

--
-- Ketidakleluasaan untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD CONSTRAINT `pengguna_ibfk_1` FOREIGN KEY (`idAkses`) REFERENCES `hakakses` (`idAkses`);

--
-- Ketidakleluasaan untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD CONSTRAINT `penjualan_ibfk_1` FOREIGN KEY (`idPengguna`) REFERENCES `pengguna` (`idPengguna`),
  ADD CONSTRAINT `penjualan_ibfk_2` FOREIGN KEY (`idBarang`) REFERENCES `barang` (`idBarang`),
  ADD CONSTRAINT `penjualan_ibfk_3` FOREIGN KEY (`pelanggan_id`) REFERENCES `pelanggan` (`pelanggan_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
