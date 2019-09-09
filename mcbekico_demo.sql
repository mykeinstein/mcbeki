-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 11, 2018 at 08:26 AM
-- Server version: 5.7.23-cll-lve
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mcbekico_demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `caption` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `toggle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `title`, `caption`, `banner_image`, `description`, `position`, `toggle`, `created_at`, `updated_at`) VALUES
(1, 'hello world how are you today', 'hello world how are you today caption', 'upload/abouts/1540903547.png', 'hello world how are you today description', 'left', 'no', '2018-10-30 16:26:43', '2018-10-30 16:45:47');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'granted',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `email`, `access`, `image`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin@app.com', 'granted', 'upload/admins/1540896381.png', '$2y$10$kEhyTe1Cf49Vt3atCihsmOcVDGUflVgpA9yXYRo/lhxKLa8hwNti6', 'xSmdGzjaM4yfDGBOUDZGcfx73LyrIhLIHYb1lbiNKGWfTSWGKdT8RFBml6Jt', '2018-10-30 14:46:21', '2018-10-30 14:46:21');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `toggle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `description`, `image`, `toggle`, `created_at`, `updated_at`) VALUES
(2, 'This is banner 1', 'This is a very short description of how banner 1 should look like at mcbeki homepage\r\nThis is a very short description of how banner 1 should look like at mcbeki homepage', 'upload/banners/1540962102.jpg', 'yes', '2018-10-31 08:58:36', '2018-10-31 09:01:42'),
(3, 'This is banner 12', 'This is a very short description of how banner 2 should look like at mcbeki homepage\r\nThis is a very short description of how banner 2 should look like at mcbeki homepage', 'upload/banners/1540962172.jpg', 'yes', '2018-10-31 09:02:52', '2018-10-31 09:02:52'),
(4, 'This is banner 3', 'This a description of banner 3 This a description of banner 3 This a description of banner 3 This a description of banner 3 This a description of banner 3 This a description of banner 3', 'upload/banners/1540970995.jpg', 'yes', '2018-10-31 11:29:55', '2018-10-31 11:29:55'),
(5, 'This is banner 4', 'This a description of banner 4 This a description of banner 4 This a description of banner 4 \r\nThis a description of banner 4 This a description of banner 4 This a description of banner 3', 'upload/banners/1540971040.jpg', 'yes', '2018-10-31 11:30:40', '2018-10-31 11:30:40'),
(6, 'This is banner 5', 'This a description of banner 5 This a description of banner 5 This a description of banner 5\r\nThis a description of banner 5 This a description of banner 5 This a description of banner 5', 'upload/banners/1540971482.png', 'yes', '2018-10-31 11:38:02', '2018-10-31 11:38:02'),
(7, 'This is banner 6', 'This is banner 6 This is banner 6 This is banner 6 This is banner 6 This is banner 6 This is banner 6 This is banner 6 This is banner 6', 'upload/banners/1540973431.png', 'yes', '2018-10-31 12:10:31', '2018-10-31 12:10:31');

-- --------------------------------------------------------

--
-- Table structure for table `bcrumbs`
--

CREATE TABLE `bcrumbs` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `caption` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `toggle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bcrumbs`
--

INSERT INTO `bcrumbs` (`id`, `title`, `caption`, `page`, `image`, `toggle`, `created_at`, `updated_at`) VALUES
(3, 'About US', 'hello world how are you today hello world how are you today hello world how are you today', 'about', 'upload/bcrumbs/1540980448.jpg', 'yes', '2018-11-02 02:48:06', '2018-11-02 02:48:06'),
(4, 'Portfolio', 'Short description of portfolio breadcrumbs', 'portfolio', 'upload/bcrumbs/1540980448.jpg', 'yes', '2018-11-02 02:48:25', '2018-11-02 02:48:25'),
(5, 'Portfolio', 'Short description of portfolio breadcrumbs', 'contact', 'upload/bcrumbs/1540980448.jpg', 'yes', '2018-11-02 02:48:39', '2018-11-02 02:48:39'),
(6, 'Contact Us', 'Short description of portfolio breadcrumbs', 'contact', 'upload/bcrumbs/1540980448.jpg', 'yes', '2018-11-02 02:55:14', '2018-11-02 02:55:14'),
(7, 'Services', 'Service caption', 'service', 'upload/bcrumbs/1541119793.jpg', 'yes', '2018-11-02 04:49:53', '2018-11-02 04:49:53');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `toggle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `toggle`, `created_at`, `updated_at`) VALUES
(2, 'Fashion', 'yes', '2018-11-01 13:53:30', '2018-11-01 16:30:01'),
(3, 'Sport', 'yes', '2018-11-02 00:09:55', '2018-11-02 00:09:55');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'info@mcbeki.com', '2018-10-30 23:56:41', '2018-10-31 00:01:31');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(12, '2014_10_12_000000_create_users_table', 1),
(13, '2014_10_12_100000_create_password_resets_table', 1),
(17, '2018_10_26_003846_create_admins_table', 1),
(18, '2018_10_26_202252_create_teams_table', 1),
(19, '2018_10_28_151659_create_socials_table', 1),
(20, '2018_10_29_233226_create_services_table', 1),
(21, '2018_10_24_063027_about', 2),
(22, '2018_10_30_125926_create_contacts_table', 3),
(23, '2018_10_24_222547_banner', 4),
(25, '2018_10_30_231615_create_bcrumbs_table', 5),
(26, '2018_10_31_081740_create_portfolios_table', 5),
(27, '2018_10_31_194854_create_categories_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `portfolios`
--

CREATE TABLE `portfolios` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `caption` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover_length` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `toggle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'yes',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolios`
--

INSERT INTO `portfolios` (`id`, `title`, `caption`, `description`, `category`, `cover_length`, `cover_image`, `image`, `toggle`, `created_at`, `updated_at`) VALUES
(4, 'hello world how are you today title', 'hello world how are you today caption', 'User interface design (UI) or user interface engineering is the design of user interfaces for machines and software, such as computers, home appliances, mobile devices, and other electronic devices, with the focus on maximizing usability and the user experience.', 'Sport', 'full', 'upload/portfolio/hello world how are you today title/cover/1541103124.jpg', '1541103124.fig1.jpg,1541103124.fig2.jpg,1541103124.fig3.jpg,1541103124.fig 1.jpg,1541103124.fig 4.1.jpg,1541103124.fig 4.2.jpg', 'yes', '2018-11-02 00:12:04', '2018-11-02 00:12:04'),
(5, 'This portfolio title two', 'hello world how are you today caption two', 'hello world how are you today caption two hello world how are you today caption two hello world how are you today caption two', 'Sport', 'half', 'upload/portfolio/This portfolio title two/cover/1541103650.jpg', '1541103650.fig1.jpg,1541103650.fig2.jpg,1541103650.fig3.jpg,1541103650.fig 1.jpg,1541103650.fig 4.1.jpg,1541103650.fig 4.2.jpg', 'yes', '2018-11-02 00:20:50', '2018-11-02 00:20:50'),
(6, 'hello world ow are you today', 'Short caption of portfolio post oneShort caption of portfolio post one', 'Short caption of portfolio post one Short caption of portfolio post one Short caption of portfolio post one Short caption of portfolio post on Short caption of portfolio post onevShort caption of portfolio post one Short caption of portfolio post onee', 'Sport', 'half', 'upload/portfolio/hello world ow are you today/cover/1541104048.jpg', '1541104048.DB_FS_BENJAMIN_011-1024x576.jpg,1541104048.DB_HOME_OF_CYCLING_005A_WIREFRAME.jpg,1541104048.DixonBaxi_STOREY_SML-1.jpg,1541104048.DSCF3502-1500x844.jpg', 'yes', '2018-11-02 00:27:28', '2018-11-02 00:27:28'),
(7, 'Short caption of portfolio post one', 'Short caption of portfolio post one', 'Short caption of portfolio post oneShort caption of portfolio post one Short caption of portfolio post one Short caption of portfolio post one', 'Sport', 'half', 'upload/portfolio/Short caption of portfolio post one/cover/1541104109.jpg', '1541104109.DB_FS_BENJAMIN_011-1024x576.jpg,1541104109.DB_HOME_OF_CYCLING_005A_WIREFRAME.jpg,1541104109.DixonBaxi_STOREY_SML-1.jpg,1541104109.DSCF3502-1500x844.jpg', 'yes', '2018-11-02 00:28:29', '2018-11-02 00:28:29'),
(8, 'Short caption of portfolio post one again', 'Short caption of portfolio post one again', 'Short caption of portfolio post one Short caption of portfolio post one Short caption of portfolio post one Short caption of portfolio post one Short caption of portfolio post one', 'Sport', 'half', 'upload/portfolio/Short caption of portfolio post one again/cover/1541104189.jpg', '1541104189.climate-graph.png,1541104189.DB_FS_BENJAMIN_011-1024x576.jpg,1541104189.DB_HOME_OF_CYCLING_005A_WIREFRAME.jpg,1541104189.DixonBaxi_STOREY_SML-1.jpg,1541104189.DSCF3502-1500x844.jpg', 'yes', '2018-11-02 00:29:49', '2018-11-02 00:29:49');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `toggle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `description`, `toggle`, `created_at`, `updated_at`) VALUES
(1, 'hello world ow are you today', 'hello world ow are you today', 'yes', '2018-10-30 14:47:38', '2018-10-30 14:47:38');

-- --------------------------------------------------------

--
-- Table structure for table `socials`
--

CREATE TABLE `socials` (
  `id` int(10) UNSIGNED NOT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `toggle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socials`
--

INSERT INTO `socials` (`id`, `facebook`, `instagram`, `linkedin`, `twitter`, `toggle`, `created_at`, `updated_at`) VALUES
(1, 'https://', 'https://', 'https://', 'https://', 'yes', '2018-10-30 14:47:13', '2018-10-30 14:47:13');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` int(10) UNSIGNED NOT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `toggle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `fullname`, `image`, `role`, `description`, `toggle`, `created_at`, `updated_at`) VALUES
(1, 'Adeniyi Joseph', 'upload/teams/1540973130.jpg', 'Web Developer and Programmer', 'I\'m a certified Web Developer and Programmer', 'yes', '2018-10-30 14:47:02', '2018-10-31 12:05:30'),
(2, 'Mr John Doe', 'upload/teams/1540973353.jpg', 'UI/UX', 'I love creating professional UI/UX Designs', 'yes', '2018-10-31 12:09:13', '2018-10-31 12:09:13'),
(3, 'Janet Doe M', 'upload/teams/1540973593.jpg', 'Web Developer and Programmer', 'I\'m a professional web developer', 'yes', '2018-10-31 12:13:13', '2018-10-31 12:13:13');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bcrumbs`
--
ALTER TABLE `bcrumbs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contacts_email_unique` (`email`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `portfolios`
--
ALTER TABLE `portfolios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socials`
--
ALTER TABLE `socials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `bcrumbs`
--
ALTER TABLE `bcrumbs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `portfolios`
--
ALTER TABLE `portfolios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `socials`
--
ALTER TABLE `socials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
