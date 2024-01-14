-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Jan 2024 pada 13.01
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravelbus`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bis`
--

CREATE TABLE `bis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor_polisi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah_unit` int(11) NOT NULL,
  `jurusan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipe_bis_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `bis`
--

INSERT INTO `bis` (`id`, `nama`, `kode`, `nomor_polisi`, `jumlah_unit`, `jurusan`, `tipe_bis_id`, `created_at`, `updated_at`) VALUES
(1, 'Bus ALS', '6754', '4444', 1, 'Jakarta', 1, '2024-01-14 04:11:59', '2024-01-14 04:11:59'),
(2, 'Bus NPM', '6754', '4677', 2, 'Padang', 2, '2024-01-14 04:12:34', '2024-01-14 04:12:34'),
(3, 'Bus City', '1212', '4555', 3, 'Surabaya', 3, '2024-01-14 04:13:27', '2024-01-14 04:13:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_12_25_035435_create_Supir_table', 1),
(6, '2023_12_25_035453_create_Bis_table', 1),
(7, '2023_12_25_035514_create_Paketbis_table', 1),
(8, '2023_12_25_035619_create_Pembelian_table', 1),
(9, '2023_12_25_035651_create_Tipebis_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `paketbis`
--

CREATE TABLE `paketbis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bis_id` bigint(20) UNSIGNED NOT NULL,
  `harga_tiket` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `paketbis`
--

INSERT INTO `paketbis` (`id`, `bis_id`, `harga_tiket`, `created_at`, `updated_at`) VALUES
(1, 2, 170000, '2024-01-14 04:16:31', '2024-01-14 04:16:31'),
(2, 3, 400000, '2024-01-14 04:16:59', '2024-01-14 04:16:59'),
(3, 1, 680000, '2024-01-14 04:17:19', '2024-01-14 04:17:19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembelian`
--

CREATE TABLE `pembelian` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_penumpang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `domisili` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_pembelian` date NOT NULL,
  `tanggal_keberangkatan` date NOT NULL,
  `domisili_tujuan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paket_bis_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pembelian`
--

INSERT INTO `pembelian` (`id`, `nama_penumpang`, `domisili`, `tanggal_pembelian`, `tanggal_keberangkatan`, `domisili_tujuan`, `paket_bis_id`, `created_at`, `updated_at`) VALUES
(4, 'Melida Sari', 'Padang', '2024-01-16', '2024-01-17', 'Jakarta', 2, '2024-01-14 04:18:13', '2024-01-14 04:31:10'),
(5, 'Ardito Basri', 'Medan', '2024-01-20', '2024-01-21', 'Surabaya', 2, '2024-01-14 04:19:09', '2024-01-14 04:19:09'),
(6, 'Arrasya', 'Aceh', '2024-01-25', '2024-01-31', 'Padang', 1, '2024-01-14 04:20:44', '2024-01-14 04:20:44');

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `supir`
--

CREATE TABLE `supir` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_supir` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_supir` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kontak_1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kontak_2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bis_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `supir`
--

INSERT INTO `supir` (`id`, `nama_supir`, `kode_supir`, `kontak_1`, `kontak_2`, `bis_id`, `created_at`, `updated_at`) VALUES
(1, 'Randito', '220603', '0822-3456-7898', '0822-3456-9998', 1, '2024-01-14 04:22:51', '2024-01-14 04:22:51'),
(33, 'JOHN', '220667', '0822-3456-1111', '0822-3456-7854', 3, '2024-01-14 04:33:32', '2024-01-14 04:33:32'),
(34, 'Leon Jardi', '220600', '0822-3456-7876', '0822-3456-7889', 2, '2024-01-14 04:34:09', '2024-01-14 04:34:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tipebis`
--

CREATE TABLE `tipebis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tipe` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tipebis`
--

INSERT INTO `tipebis` (`id`, `tipe`, `created_at`, `updated_at`) VALUES
(1, 'Ekonomis', '2024-01-14 04:10:32', '2024-01-14 04:10:32'),
(2, 'Bussines', '2024-01-14 04:10:38', '2024-01-14 04:10:38'),
(3, 'VVIP', '2024-01-14 04:10:45', '2024-01-14 04:10:45');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$YC73xTmL6hmPDL6xgF0fDOEiyK2oCFHk992s0A4maxrnKGV/mZ4xO', NULL, '2024-01-14 04:07:42', '2024-01-14 04:07:42');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `bis`
--
ALTER TABLE `bis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `relasi_bis` (`tipe_bis_id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `paketbis`
--
ALTER TABLE `paketbis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `relasi_paketbis` (`bis_id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `relasi_daripembelian` (`paket_bis_id`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `supir`
--
ALTER TABLE `supir`
  ADD PRIMARY KEY (`id`),
  ADD KEY `relasi_darisupirkebis` (`bis_id`);

--
-- Indeks untuk tabel `tipebis`
--
ALTER TABLE `tipebis`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT untuk tabel `bis`
--
ALTER TABLE `bis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `paketbis`
--
ALTER TABLE `paketbis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `supir`
--
ALTER TABLE `supir`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `tipebis`
--
ALTER TABLE `tipebis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `bis`
--
ALTER TABLE `bis`
  ADD CONSTRAINT `relasi_bis` FOREIGN KEY (`tipe_bis_id`) REFERENCES `tipebis` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `paketbis`
--
ALTER TABLE `paketbis`
  ADD CONSTRAINT `relasi_paketbis` FOREIGN KEY (`bis_id`) REFERENCES `bis` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pembelian`
--
ALTER TABLE `pembelian`
  ADD CONSTRAINT `relasi_daripembelian` FOREIGN KEY (`paket_bis_id`) REFERENCES `paketbis` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `supir`
--
ALTER TABLE `supir`
  ADD CONSTRAINT `relasi_darisupirkebis` FOREIGN KEY (`bis_id`) REFERENCES `bis` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
