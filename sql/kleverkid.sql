-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2015 at 07:36 PM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kleverkid`
--

-- --------------------------------------------------------

--
-- Table structure for table `kids`
--

CREATE TABLE IF NOT EXISTS `kids` (
  `kid_id` int(10) unsigned NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kids`
--

INSERT INTO `kids` (`kid_id`, `username`, `password`, `email`, `phone`, `name`, `created_at`, `updated_at`) VALUES
(1, 'john', 'johndoe', 'johndoe@gmail.com', '123456', 'John', '2013-06-07 02:43:28', '2013-06-07 02:43:28'),
(2, 'amy', 'amy.deg', 'amy@outlook.com', '1234567', 'amy', '2013-06-07 02:44:49', '2013-06-07 02:44:49');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE IF NOT EXISTS `members` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `uid` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `name`, `email`, `phone`, `country`, `updated_at`, `created_at`, `uid`) VALUES
(5, 'ni', 'ni', 'nill', 'ni', '2015-10-13 15:05:25', '2015-10-13 14:46:49', 0),
(6, 'j', 'j', 'kk', 'jlll', '2015-10-16 10:39:52', '2015-10-13 14:58:07', 0),
(7, 'aa', 'aaaa', 'a', 'aa', '2015-10-15 09:34:42', '2015-10-15 09:34:42', 0),
(8, 'p', 'p', 'p', 'p', '2015-10-15 09:38:05', '2015-10-15 09:38:05', 0),
(9, 'oo', 'oo', 'oo', 'oo', '2015-10-15 09:39:39', '2015-10-15 09:39:39', 0),
(10, 'ppp', 'p', 'p', 'p', '2015-10-15 09:43:58', '2015-10-15 09:43:58', 0),
(11, 'p', 'p', 'p', 'u', '2015-10-15 09:48:30', '2015-10-15 09:48:30', 0),
(12, 'p', 'p', 'p', 'u', '2015-10-15 09:49:18', '2015-10-15 09:49:18', 0),
(13, 'p', 'p', 'p', 'u', '2015-10-15 09:49:30', '2015-10-15 09:49:30', 0),
(14, 'p', 'p', 'p', 'u', '2015-10-15 09:53:07', '2015-10-15 09:53:07', 0),
(15, 'ki', 'k', 'k', 'k', '2015-10-15 09:55:07', '2015-10-15 09:55:07', 0),
(16, 'm', 'm', 'mm', 'm', '2015-10-15 09:55:48', '2015-10-15 09:55:48', 0),
(17, 'lpLP', 'l', 'l', 'l', '2015-10-15 15:07:34', '2015-10-15 15:07:34', 0),
(18, 'lpLP', 'l', 'l', 'l', '2015-10-15 15:10:22', '2015-10-15 15:10:22', 0),
(19, 'p', 'pp', 'pp', 'p', '2015-10-15 15:13:36', '2015-10-15 15:13:36', 1);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) unsigned NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_tag_pivot`
--

CREATE TABLE IF NOT EXISTS `post_tag_pivot` (
  `id` int(10) unsigned NOT NULL,
  `post_id` int(10) unsigned NOT NULL,
  `tag_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE IF NOT EXISTS `tags` (
  `id` int(10) unsigned NOT NULL,
  `tag` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `page_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `layout` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'blog.layouts.index',
  `reverse_direction` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Nishank', 'nishank.cp@gmail.com', '$2y$10$u4mp0EnPTTSyjOsgxYYhX.MlU0ol2bA8V8U.QbmefrvudWetGFcxG', 'NQlOydaOwIoJkuUbnhkD2jfK8hVtQRucF7lbi5H1zWvVbvANb0lwPi101YuD', '2015-10-11 13:27:12', '2015-10-16 10:43:16'),
(2, 'nishank', 'nishan@gmail.comn', '$2y$10$UUED4czCgYHIdAardanDN.4mJJPWbfuPihFha.hkb2gmdesE0Fp1K', 'YsjFvRx5ANm3ppSduoJSvYfAvQ4k2eRNUo8fJ0FoqyQts9eJ22dzWCuqPWGz', '2015-10-14 11:42:47', '2015-10-14 11:43:04'),
(3, 'n', 'n@mn.mo', '$2y$10$66PSZ.LidGmB0nEPb5rZyOCg4mV2mlsbwtFN4JJB2YSfaEjz4840C', '9hq9ZIvHZ0vbVebdm4dPS0Z5l4l00ncSZ2qD7zonZK9ovaDCx6v1qw4ln2Fu', '2015-10-16 09:23:53', '2015-10-16 09:24:12'),
(4, 'atul', 'atul@mail.com', '$2y$10$ezqWFYZbDfZQT3gUEXFLeuRI9gBV8cdHGnHIroU0MJ74lkMol3/eu', 'UlZKmblro0NfLkfztoXweQoJKH0cB3j0fbYNlGuH6Txjh33ahzQz4MzhW7Lx', '2015-10-16 09:24:36', '2015-10-16 10:39:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kids`
--
ALTER TABLE `kids`
  ADD PRIMARY KEY (`kid_id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `member_id_unique` (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_published_at_index` (`published_at`);

--
-- Indexes for table `post_tag_pivot`
--
ALTER TABLE `post_tag_pivot`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_tag_pivot_post_id_index` (`post_id`),
  ADD KEY `post_tag_pivot_tag_id_index` (`tag_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_tag_unique` (`tag`);

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
-- AUTO_INCREMENT for table `kids`
--
ALTER TABLE `kids`
  MODIFY `kid_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `post_tag_pivot`
--
ALTER TABLE `post_tag_pivot`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
