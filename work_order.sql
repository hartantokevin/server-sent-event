-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Sep 2022 pada 07.13
-- Versi server: 10.4.18-MariaDB
-- Versi PHP: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `work_order`
--

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
(26, '2014_10_12_000000_create_users_table', 1),
(27, '2014_10_12_100000_create_password_resets_table', 1),
(28, '2019_08_19_000000_create_failed_jobs_table', 1),
(29, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(30, '2022_09_22_013455_work_order', 1);

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
(1, 'Harmony Treutel', 'hillary82@example.net', '2022-09-21 20:43:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '67NIqYE80C', '2022-09-21 20:43:17', '2022-09-21 20:43:17'),
(2, 'Leslie Fritsch', 'elaina.gutkowski@example.org', '2022-09-21 20:43:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'nJfOTRlys0', '2022-09-21 20:43:17', '2022-09-21 20:43:17'),
(3, 'Lauren Ziemann', 'yesenia64@example.com', '2022-09-21 20:43:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dbY8E6AZw5', '2022-09-21 20:43:17', '2022-09-21 20:43:17'),
(4, 'Blanche Zulauf Sr.', 'darion21@example.com', '2022-09-21 20:43:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'nRQVKaGRjD', '2022-09-21 20:43:17', '2022-09-21 20:43:17'),
(5, 'Royce Harris', 'shaun.larkin@example.com', '2022-09-21 20:43:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OVYXmllnic', '2022-09-21 20:43:17', '2022-09-21 20:43:17'),
(6, 'Rubye Waters', 'hkoch@example.com', '2022-09-21 20:43:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'tvudPm6qXV', '2022-09-21 20:43:17', '2022-09-21 20:43:17'),
(7, 'Rachel Tremblay', 'maybell54@example.net', '2022-09-21 20:43:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'a2Bj7B6xJ6', '2022-09-21 20:43:17', '2022-09-21 20:43:17'),
(8, 'Prof. Martin Christiansen Jr.', 'langworth.bruce@example.com', '2022-09-21 20:43:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NHV1LM6OjY', '2022-09-21 20:43:17', '2022-09-21 20:43:17'),
(9, 'Fritz Heathcote', 'rod.torp@example.net', '2022-09-21 20:43:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fdIHHHmJnR', '2022-09-21 20:43:17', '2022-09-21 20:43:17'),
(10, 'Juliana Zboncak', 'qnienow@example.net', '2022-09-21 20:43:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OIwMdjum67', '2022-09-21 20:43:17', '2022-09-21 20:43:17'),
(11, 'Prof. Stefanie Cronin II', 'bturcotte@example.net', '2022-09-21 20:43:36', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'y5K1P8lUET', '2022-09-21 20:43:36', '2022-09-21 20:43:36'),
(12, 'Bernardo Mante', 'deven17@example.org', '2022-09-21 20:43:36', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'DNzeD6geAs', '2022-09-21 20:43:36', '2022-09-21 20:43:36'),
(13, 'Daniella Hand', 'krempel@example.com', '2022-09-21 20:43:36', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'cnGx4ptiQa', '2022-09-21 20:43:36', '2022-09-21 20:43:36'),
(14, 'Rodolfo Stehr', 'amparo.reichert@example.org', '2022-09-21 20:43:36', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'kh63Fsr9dI', '2022-09-21 20:43:36', '2022-09-21 20:43:36'),
(15, 'Dr. Jaleel Fahey', 'christa94@example.com', '2022-09-21 20:43:36', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'R8y6nLHi3P', '2022-09-21 20:43:36', '2022-09-21 20:43:36'),
(16, 'Mr. Art Osinski DVM', 'fpacocha@example.net', '2022-09-21 20:43:36', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'VlymXBdOCY', '2022-09-21 20:43:36', '2022-09-21 20:43:36'),
(17, 'Dr. Ally Oberbrunner PhD', 'hernser@example.net', '2022-09-21 20:43:36', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4dzsfmioLo', '2022-09-21 20:43:36', '2022-09-21 20:43:36'),
(18, 'Dr. Kaitlin Rath Jr.', 'baumbach.efren@example.org', '2022-09-21 20:43:36', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '89mzDl2rnm', '2022-09-21 20:43:36', '2022-09-21 20:43:36'),
(19, 'Mr. Deion Denesik DVM', 'roob.kole@example.net', '2022-09-21 20:43:36', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'n3h4LFQftI', '2022-09-21 20:43:36', '2022-09-21 20:43:36'),
(20, 'Ricardo Daniel II', 'lurline79@example.net', '2022-09-21 20:43:36', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '68Bs7CFUst', '2022-09-21 20:43:36', '2022-09-21 20:43:36'),
(21, 'Buster Kutch PhD', 'elsa.pfeffer@example.org', '2022-09-21 20:43:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WvPedfC1sx', '2022-09-21 20:43:54', '2022-09-21 20:43:54'),
(22, 'Prof. Zoey Ziemann I', 'sbradtke@example.org', '2022-09-21 20:43:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fAI3W8vtt5', '2022-09-21 20:43:54', '2022-09-21 20:43:54'),
(23, 'Dashawn Towne', 'marvin26@example.net', '2022-09-21 20:43:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'n5hJFqjqxZ', '2022-09-21 20:43:54', '2022-09-21 20:43:54'),
(24, 'Geovanny Nikolaus', 'rudolph.legros@example.net', '2022-09-21 20:43:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'GoGW0Vn9Bn', '2022-09-21 20:43:54', '2022-09-21 20:43:54'),
(25, 'Reagan Stroman', 'orpha.anderson@example.org', '2022-09-21 20:43:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'a73aySW02r', '2022-09-21 20:43:54', '2022-09-21 20:43:54'),
(26, 'Natalie Shanahan', 'rlabadie@example.net', '2022-09-21 20:43:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'cgXYHFJry4', '2022-09-21 20:43:54', '2022-09-21 20:43:54'),
(27, 'Dr. Alysha Marquardt III', 'cleo02@example.org', '2022-09-21 20:43:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xJSW6Q3Slx', '2022-09-21 20:43:54', '2022-09-21 20:43:54'),
(28, 'Aisha Collins PhD', 'amparo44@example.org', '2022-09-21 20:43:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'osmIE5DRf0', '2022-09-21 20:43:54', '2022-09-21 20:43:54'),
(29, 'Mr. Dante Kunde IV', 'jacobson.vanessa@example.com', '2022-09-21 20:43:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Kp7gGkfq2d', '2022-09-21 20:43:54', '2022-09-21 20:43:54'),
(30, 'Eunice Borer', 'cartwright.berry@example.net', '2022-09-21 20:43:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'kwN9zQ6Glj', '2022-09-21 20:43:54', '2022-09-21 20:43:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `work_orders`
--

CREATE TABLE `work_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `work_orders`
--

INSERT INTO `work_orders` (`id`, `job`, `status`, `created_by`) VALUES
(1, 'Mobile Developer', 1, 'Regan Powlowski DDS'),
(2, 'Claims Examiner', 0, 'Elian Zulauf'),
(3, 'Aerospace Engineer', 1, 'Myrtle Harvey'),
(4, 'Ceiling Tile Installer', 0, 'Abbigail Wolf'),
(5, 'Web Developer', 0, 'Jason Schoen'),
(6, 'Singer', 1, 'Irma Heathcote'),
(7, 'Bindery Machine Operator', 1, 'Dr. Buck Klocko'),
(8, 'Scientific Photographer', 0, 'Mr. Terry Kassulke II'),
(9, 'HVAC Mechanic', 1, 'Ron Stracke'),
(10, 'Segmental Paver', 1, 'Mr. Roberto McLaughlin IV'),
(11, 'Recreation Worker', 1, 'Justice Vandervort'),
(12, 'Claims Examiner', 1, 'Elisa Cormier II'),
(13, 'Eligibility Interviewer', 0, 'Ms. Lolita O\'Keefe'),
(14, 'Communication Equipment Repairer', 0, 'Amos Jakubowski'),
(15, 'Dental Laboratory Technician', 1, 'Karson Metz'),
(16, 'Cardiovascular Technologist', 1, 'Talon Oberbrunner I'),
(17, 'Tire Changer', 0, 'Donato Ward DVM'),
(18, 'Photographic Reproduction Technician', 0, 'Dr. Catharine Armstrong I'),
(19, 'Data Entry Operator', 1, 'Prof. Orrin Mueller'),
(20, 'Maintenance and Repair Worker', 0, 'Furman Sporer'),
(21, 'Farmer', 0, 'Edgardo Steuber'),
(22, 'Grounds Maintenance Worker', 1, 'Miss Dannie Dooley'),
(23, 'Fitter', 0, 'Ms. Dulce Walter'),
(24, 'Fish Hatchery Manager', 1, 'Leilani Streich'),
(25, 'Legal Secretary', 0, 'Terrill Lockman'),
(26, 'Personal Trainer', 1, 'Ora McGlynn'),
(27, 'Manufactured Building Installer', 0, 'Gladys Olson'),
(28, 'Psychiatrist', 0, 'Prof. Francisco Medhurst III'),
(29, 'Armored Assault Vehicle Crew Member', 0, 'Dr. Immanuel Beatty'),
(30, 'Environmental Science Teacher', 1, 'Stephania Rippin');

--
-- Indexes for dumped tables
--

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
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indeks untuk tabel `work_orders`
--
ALTER TABLE `work_orders`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `work_orders`
--
ALTER TABLE `work_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
