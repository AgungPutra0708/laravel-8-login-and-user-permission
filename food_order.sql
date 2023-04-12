-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Apr 2023 pada 09.21
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food_order`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `abouts`
--

CREATE TABLE `abouts` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `subtitle` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `images` varchar(100) NOT NULL,
  `updated_at` varchar(50) DEFAULT NULL,
  `created_at` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `abouts`
--

INSERT INTO `abouts` (`id`, `title`, `subtitle`, `description`, `images`, `updated_at`, `created_at`) VALUES
(1, 'About Us', 'MaemMamam', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Doloribus perferendis aliquid non sunt harum iusto quidem? Adipisci vero, reprehenderit magnam laboriosam, corrupti sapiente excepturi eaque ullam ex nam earum amet!', 'bg-about.svg', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `company_trusteds`
--

CREATE TABLE `company_trusteds` (
  `id` int(11) NOT NULL,
  `images` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `updated_at` varchar(50) DEFAULT NULL,
  `created_at` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `company_trusteds`
--

INSERT INTO `company_trusteds` (`id`, `images`, `description`, `updated_at`, `created_at`) VALUES
(1, 'bukalapak.svg', 'Bukalapak', NULL, NULL),
(2, 'shoope.svg', 'Shopee', NULL, NULL),
(3, 'gojek.svg', 'Gojek', NULL, NULL),
(4, 'grab.svg', 'Grab', NULL, NULL),
(5, 'bukalapak.svg', 'Bukalapak', NULL, NULL),
(6, 'gojek.svg', 'Gojek', NULL, NULL),
(10, 'upload_image/2kN0saEiygY8hb8LR3nrdyGYJN5p1U4VLIic8UIf.svg', 'Gojek', '2023-01-25 02:42:55', '2023-01-25 02:42:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `comunities`
--

CREATE TABLE `comunities` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `subtitle` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `images` varchar(100) NOT NULL,
  `updated_at` varchar(50) DEFAULT NULL,
  `created_at` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `comunities`
--

INSERT INTO `comunities` (`id`, `title`, `subtitle`, `description`, `images`, `updated_at`, `created_at`) VALUES
(1, 'About Us', 'MaemMamam', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Doloribus perferendis aliquid non sunt harum iusto quidem? Adipisci vero, reprehenderit magnam laboriosam, corrupti sapiente excepturi eaque ullam ex nam earum amet!', 'bg-about.svg', NULL, NULL);

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
-- Struktur dari tabel `hero_sections`
--

CREATE TABLE `hero_sections` (
  `id` int(11) NOT NULL,
  `header` varchar(50) DEFAULT NULL,
  `title` varchar(50) NOT NULL,
  `subtitle` varchar(50) NOT NULL,
  `description` text DEFAULT NULL,
  `images` varchar(100) NOT NULL,
  `link_order` varchar(25) DEFAULT NULL,
  `link_menu` varchar(25) DEFAULT NULL,
  `updated_at` varchar(100) DEFAULT NULL,
  `created_at` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `hero_sections`
--

INSERT INTO `hero_sections` (`id`, `header`, `title`, `subtitle`, `description`, `images`, `link_order`, `link_menu`, `updated_at`, `created_at`) VALUES
(1, 'Makes You Satisfied With What You Ordered', 'Popular Menu1', 'Best Popular Menu', '<p>Find the food you want to buy and get the prize, made from the best ingredients we choose.</p>', 'bg-hero.svg', '/menu', '/menu', '2023-01-25 02:48:36', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `menus`
--

CREATE TABLE `menus` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `topping` varchar(50) NOT NULL,
  `price` double NOT NULL,
  `rating` double NOT NULL,
  `desc` text NOT NULL,
  `image` varchar(100) NOT NULL,
  `updated_at` varchar(100) DEFAULT NULL,
  `created_at` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `menus`
--

INSERT INTO `menus` (`id`, `title`, `topping`, `price`, `rating`, `desc`, `image`, `updated_at`, `created_at`) VALUES
(1, 'Best Spaggheti', 'With Saus Hots', 20, 2.1, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Dolorum alias quisquam temporibus sapiente sit quidem minus!', 'Spaggheti.png', '', ''),
(2, 'Steak Beef Special', 'With Hot Chili', 40, 2.1, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Dolorum alias quisquam temporibus sapiente sit quidem minus!', 'Steak.png', '', ''),
(3, 'Burger Campur Special', 'With Spich', 20, 2.1, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Dolorum alias quisquam temporibus sapiente sit quidem minus!', 'Burger.png', '', ''),
(4, 'Potato satu satu', 'With Sausage', 20, 2.1, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Dolorum alias quisquam temporibus sapiente sit quidem minus!', 'Potato.png', '', ''),
(5, 'Best Spaggheti', 'With Saus Hots', 20, 2.1, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Dolorum alias quisquam temporibus sapiente sit quidem minus!', 'Spaggheti.png', '', ''),
(6, 'Steak Beef Special', 'With Hot Chili', 40, 2.1, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Dolorum alias quisquam temporibus sapiente sit quidem minus!', 'Steak.png', '', ''),
(7, 'Burger Campur Special', 'With Spich', 20, 2.1, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Dolorum alias quisquam temporibus sapiente sit quidem minus!', 'Burger.png', '', ''),
(8, 'Potato satu satu', 'With Sausage', 20, 2.1, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Dolorum alias quisquam temporibus sapiente sit quidem minus!', 'Potato.png', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu_sections`
--

CREATE TABLE `menu_sections` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `subtitle` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `images` varchar(100) NOT NULL,
  `updated_at` varchar(50) DEFAULT NULL,
  `created_at` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `menu_sections`
--

INSERT INTO `menu_sections` (`id`, `title`, `subtitle`, `description`, `images`, `updated_at`, `created_at`) VALUES
(1, 'Popular Menu1', 'Best Popular Menu', '<p>Find the food you want to buy and get the prize, made from the best ingredients we choose.</p>', '', '2023-01-25 02:50:46', NULL);

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
(16, '2014_10_12_000000_create_users_table', 1),
(17, '2014_10_12_100000_create_password_resets_table', 1),
(18, '2019_08_19_000000_create_failed_jobs_table', 1),
(19, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(20, '2023_04_06_064416_add_role_to_users', 1);

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `shop_actions`
--

CREATE TABLE `shop_actions` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `subtitle` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `images` varchar(100) NOT NULL,
  `updated_at` varchar(50) DEFAULT NULL,
  `created_at` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `shop_actions`
--

INSERT INTO `shop_actions` (`id`, `title`, `subtitle`, `description`, `images`, `updated_at`, `created_at`) VALUES
(1, 'MaemMamam Restaurant1', 'Fast food and fill your stomach', '<p>We are a fast food company and we make everyone enjoy any food we serve them because we serve the best for them all.</p>', 'bg-shop.svg', '2023-01-25 02:48:04', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `role` enum('admin','manager') NOT NULL DEFAULT 'admin',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `status`, `remember_token`, `role`, `created_at`, `updated_at`) VALUES
(1, 'admin@gmail.com', '$2y$10$kGv9wzDFwvXsN7jTGwqixOgDrAyk3yuA7XdonOWagZYLrf6TqZf7S', '', NULL, 'admin', NULL, NULL),
(2, 'manager@gmail.com', '$2y$10$kGv9wzDFwvXsN7jTGwqixOgDrAyk3yuA7XdonOWagZYLrf6TqZf7S', '', NULL, 'manager', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `company_trusteds`
--
ALTER TABLE `company_trusteds`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `comunities`
--
ALTER TABLE `comunities`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `hero_sections`
--
ALTER TABLE `hero_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `menu_sections`
--
ALTER TABLE `menu_sections`
  ADD PRIMARY KEY (`id`);

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
-- Indeks untuk tabel `shop_actions`
--
ALTER TABLE `shop_actions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `company_trusteds`
--
ALTER TABLE `company_trusteds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `comunities`
--
ALTER TABLE `comunities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `hero_sections`
--
ALTER TABLE `hero_sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `menu_sections`
--
ALTER TABLE `menu_sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `shop_actions`
--
ALTER TABLE `shop_actions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
