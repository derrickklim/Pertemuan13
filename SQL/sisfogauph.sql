-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Nov 2022 pada 10.16
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sisfogauph`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `attendances`
--

CREATE TABLE `attendances` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `room_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `attandence_collect_at` datetime DEFAULT NULL,
  `attandence_return_at` datetime DEFAULT NULL,
  `marker_return_at` datetime DEFAULT NULL,
  `marker_collect_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `attendances`
--

INSERT INTO `attendances` (`id`, `created_at`, `updated_at`, `user_id`, `class`, `room_id`, `location_id`, `attandence_collect_at`, `attandence_return_at`, `marker_return_at`, `marker_collect_at`) VALUES
(1, '2022-11-26 16:32:13', '2022-11-26 16:32:13', 1, 'VIP Room', 707, 1, '2022-11-26 12:00:00', '2022-11-30 12:00:00', '2022-11-30 12:00:00', '2022-11-30 12:00:00'),
(2, '2022-11-26 16:36:53', '2022-11-26 16:36:53', 2, 'Regular Room', 205, 1, '2022-11-27 12:00:00', '2022-11-29 12:00:00', '2022-11-29 12:00:00', '2022-11-29 12:00:00'),
(3, '2022-11-26 17:02:08', '2022-11-26 17:02:08', 3, 'Regular Room', 303, 1, '2022-11-28 12:00:00', '2022-11-30 12:00:00', '2022-11-30 12:00:00', '2022-11-28 12:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `created_at`, `updated_at`, `name`) VALUES
(5, '2022-11-26 16:27:59', '2022-11-26 16:27:59', 'VIP Room'),
(6, '2022-11-26 16:28:07', '2022-11-26 16:28:07', 'Deluxe Room'),
(7, '2022-11-26 16:28:15', '2022-11-26 16:28:15', 'Regular Room');

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
-- Struktur dari tabel `locations`
--

CREATE TABLE `locations` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `location_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `locations`
--

INSERT INTO `locations` (`id`, `created_at`, `updated_at`, `location_id`, `name`) VALUES
(1, '2022-11-26 16:42:32', '2022-11-26 16:42:32', '1', 'Jakarta'),
(2, '2022-11-26 16:42:38', '2022-11-26 16:42:38', '2', 'Medan'),
(3, '2022-11-26 16:42:46', '2022-11-26 16:42:46', '3', 'Bandung');

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_11_12_080400_create_categories_table', 1),
(6, '2022_11_19_064236_create_user_roles_table', 2),
(7, '2022_11_19_064652_create_reservation_statuses_table', 2),
(8, '2022_11_19_064803_create_missing_item_statuses_table', 2),
(9, '2022_11_19_163607_create_attendances_table', 3),
(10, '2022_11_19_163731_create_reservations_table', 3),
(11, '2022_11_19_163815_create_schedules_table', 3),
(12, '2022_11_21_071256_create_replacement-classes_table', 4),
(13, '2022_11_26_065509_create_rooms_table', 5),
(14, '2022_11_26_070407_create_locations_table', 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `missing_item_statuses`
--

CREATE TABLE `missing_item_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `missing_item_statuses`
--

INSERT INTO `missing_item_statuses` (`id`, `created_at`, `updated_at`, `name`) VALUES
(5, '2022-11-26 16:29:32', '2022-11-26 16:29:32', 'Pillow'),
(6, '2022-11-26 16:29:38', '2022-11-26 16:29:38', 'Towel'),
(7, '2022-11-26 16:29:44', '2022-11-26 16:29:44', 'Blanket');

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `replacement-classes`
--

CREATE TABLE `replacement-classes` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nama_lengkap` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mata_kuliah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kelas` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jadwal_kuliah` date DEFAULT NULL,
  `jam_kuliah` time DEFAULT NULL,
  `tanggal_replacement` date DEFAULT NULL,
  `jam_replacement` time DEFAULT NULL,
  `alasan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `replacement-classes`
--

INSERT INTO `replacement-classes` (`id`, `created_at`, `updated_at`, `nama_lengkap`, `mata_kuliah`, `kelas`, `jadwal_kuliah`, `jam_kuliah`, `tanggal_replacement`, `jam_replacement`, `alasan`) VALUES
(4, '2022-11-22 13:06:06', '2022-11-22 13:06:06', 'Ade Maulana', 'Audit dan Kontrol Sistem Informasi', '20SI1 & 20SI2', '2022-10-27', '17:30:00', '2022-11-12', '09:00:00', 'Sakit');

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `reservasi`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `reservasi` (
`id` int(10) unsigned
,`created_at` timestamp
,`updated_at` timestamp
,`user_id` int(11)
,`reservation_code` varchar(255)
,`room_id` int(11)
,`start` date
,`end` date
,`description` varchar(255)
,`reservation_status_id` int(11)
,`room_number` varchar(255)
,`name` varchar(255)
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `reservations`
--

CREATE TABLE `reservations` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `reservation_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `room_id` int(11) DEFAULT NULL,
  `start` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reservation_status_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `reservations`
--

INSERT INTO `reservations` (`id`, `created_at`, `updated_at`, `user_id`, `reservation_code`, `room_id`, `start`, `end`, `description`, `reservation_status_id`) VALUES
(1, '2022-11-26 16:34:22', '2022-11-26 16:34:22', 1, '1', 707, '2022-11-26', '2022-11-30', 'VIP Room', 1),
(2, '2022-11-26 17:00:51', '2022-11-26 17:02:46', 2, '2', 205, '2022-11-27', '2022-11-29', 'Regular Room', 2),
(3, '2022-11-26 17:02:38', '2022-11-26 17:02:53', 3, '3', 303, '2022-11-28', '2022-11-30', 'Regular Room', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `reservation_statuses`
--

CREATE TABLE `reservation_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `reservation_statuses`
--

INSERT INTO `reservation_statuses` (`id`, `created_at`, `updated_at`, `name`) VALUES
(7, '2022-11-26 16:28:48', '2022-11-26 16:28:48', 'Pending'),
(8, '2022-11-26 16:28:54', '2022-11-26 16:29:04', 'Accepted');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rooms`
--

CREATE TABLE `rooms` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `room_id` int(11) DEFAULT NULL,
  `location_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `room_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `rooms`
--

INSERT INTO `rooms` (`id`, `created_at`, `updated_at`, `room_id`, `location_id`, `room_number`) VALUES
(1, '2022-11-26 16:43:21', '2022-11-26 16:54:33', 707, '1', '707'),
(2, '2022-11-26 16:43:34', '2022-11-26 16:55:25', 205, '1', '205'),
(3, '2022-11-26 17:03:11', '2022-11-26 17:03:11', 303, '1', '303');

-- --------------------------------------------------------

--
-- Struktur dari tabel `schedules`
--

CREATE TABLE `schedules` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `room_id` int(11) DEFAULT NULL,
  `leason_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `start` date DEFAULT NULL,
  `end` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `schedules`
--

INSERT INTO `schedules` (`id`, `created_at`, `updated_at`, `room_id`, `leason_id`, `location_id`, `start`, `end`) VALUES
(1, '2022-11-26 16:33:10', '2022-11-26 16:33:45', 707, 1, 1, '2022-11-26', '2022-11-30'),
(2, '2022-11-26 17:00:07', '2022-11-26 17:00:07', 205, 2, 1, '2022-11-27', '2022-11-29'),
(3, '2022-11-26 17:05:21', '2022-11-26 17:05:21', 303, 3, 1, '2022-11-28', '2022-11-30');

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

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_roles`
--

CREATE TABLE `user_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `user_roles`
--

INSERT INTO `user_roles` (`id`, `created_at`, `updated_at`, `name`) VALUES
(4, '2022-11-26 17:08:37', '2022-11-26 17:08:37', 'Employee'),
(5, '2022-11-26 17:08:43', '2022-11-26 17:08:43', 'Manager');

-- --------------------------------------------------------

--
-- Struktur untuk view `reservasi`
--
DROP TABLE IF EXISTS `reservasi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `reservasi`  AS SELECT `rsv`.`id` AS `id`, `rsv`.`created_at` AS `created_at`, `rsv`.`updated_at` AS `updated_at`, `rsv`.`user_id` AS `user_id`, `rsv`.`reservation_code` AS `reservation_code`, `rsv`.`room_id` AS `room_id`, `rsv`.`start` AS `start`, `rsv`.`end` AS `end`, `rsv`.`description` AS `description`, `rsv`.`reservation_status_id` AS `reservation_status_id`, `rom`.`room_number` AS `room_number`, `loc`.`name` AS `name` FROM ((`reservations` `rsv` join `rooms` `rom` on(`rsv`.`room_id` = `rom`.`room_id`)) join `locations` `loc` on(`loc`.`location_id` = `rom`.`location_id`)) ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `missing_item_statuses`
--
ALTER TABLE `missing_item_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `replacement-classes`
--
ALTER TABLE `replacement-classes`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `reservation_statuses`
--
ALTER TABLE `reservation_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indeks untuk tabel `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `missing_item_statuses`
--
ALTER TABLE `missing_item_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `replacement-classes`
--
ALTER TABLE `replacement-classes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `reservation_statuses`
--
ALTER TABLE `reservation_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
