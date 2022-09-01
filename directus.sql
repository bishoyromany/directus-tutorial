-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 01, 2022 at 09:35 PM
-- Server version: 10.5.5-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `directus`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` char(36) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'draft',
  `sort` int(11) DEFAULT NULL,
  `user_created` char(36) DEFAULT NULL,
  `date_created` timestamp NULL DEFAULT NULL,
  `user_updated` char(36) DEFAULT NULL,
  `date_updated` timestamp NULL DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `status`, `sort`, `user_created`, `date_created`, `user_updated`, `date_updated`, `title`, `description`) VALUES
('5f122f9c-2dce-4a9d-b848-9ebff5408b3e', 'published', NULL, 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 15:48:02', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 18:34:21', 'Test', '<p>Hello World&nbsp;</p>\n<p><img src=\"http://localhost:8055/assets/ab2ad2e1-6e2a-4bd5-8ac9-ac64b8681bcd?width=734&amp;height=1280\" alt=\"17f853a5 8dab 4306 875b 0ae7435c9696\" /></p>\n<p>&nbsp;</p>'),
('a0f9e69d-8144-4279-9903-8d7aae37b85a', 'published', NULL, 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 18:17:21', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 18:17:31', 'Get Started With JS', '<p><img src=\"http://localhost:8055/assets/8837d218-fff1-4c5a-b35d-54dedc0c85b1?width=734&amp;height=1280\" alt=\"17f853a5 8dab 4306 875b 0ae7435c9696\" /></p>\n<p>&nbsp;</p>\n<p>And more</p>');

-- --------------------------------------------------------

--
-- Table structure for table `articles_tags`
--

CREATE TABLE `articles_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `articles_id` char(36) DEFAULT NULL,
  `tags_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `articles_tags`
--

INSERT INTO `articles_tags` (`id`, `articles_id`, `tags_id`) VALUES
(1, '5f122f9c-2dce-4a9d-b848-9ebff5408b3e', '83c2897c-7d58-45ad-8137-31645dcb5556'),
(2, '5f122f9c-2dce-4a9d-b848-9ebff5408b3e', '88312797-326c-4249-8647-f4e95722feb9'),
(3, 'a0f9e69d-8144-4279-9903-8d7aae37b85a', '88312797-326c-4249-8647-f4e95722feb9'),
(4, 'a0f9e69d-8144-4279-9903-8d7aae37b85a', 'dfa2dc08-6a72-463e-bcc4-67873bd6ed78'),
(5, 'a0f9e69d-8144-4279-9903-8d7aae37b85a', '83c2897c-7d58-45ad-8137-31645dcb5556');

-- --------------------------------------------------------

--
-- Table structure for table `directus_activity`
--

CREATE TABLE `directus_activity` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(45) NOT NULL,
  `user` char(36) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `ip` varchar(50) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `collection` varchar(64) NOT NULL,
  `item` varchar(255) NOT NULL,
  `comment` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `directus_activity`
--

INSERT INTO `directus_activity` (`id`, `action`, `user`, `timestamp`, `ip`, `user_agent`, `collection`, `item`, `comment`) VALUES
(1, 'login', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 15:11:39', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_users', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', NULL),
(2, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 15:12:16', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_fields', '1', NULL),
(3, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 15:12:16', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_fields', '2', NULL),
(4, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 15:12:16', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_fields', '3', NULL),
(5, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 15:12:16', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_fields', '4', NULL),
(6, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 15:12:16', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_fields', '5', NULL),
(7, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 15:12:16', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_fields', '6', NULL),
(8, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 15:12:16', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_fields', '7', NULL),
(9, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 15:12:16', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_collections', 'articles', NULL),
(10, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 15:13:34', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_fields', '8', NULL),
(11, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 15:14:21', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_fields', '9', NULL),
(12, 'update', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 15:14:46', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_collections', 'articles', NULL),
(13, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 15:16:19', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_dashboards', '301f7aaa-09a6-4d98-b415-8e990a14211c', NULL),
(14, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 15:19:01', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_panels', '4045a060-5308-4eff-9fd1-59159a856a0a', NULL),
(15, 'update', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 15:19:13', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_panels', '4045a060-5308-4eff-9fd1-59159a856a0a', NULL),
(16, 'update', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 15:19:24', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_panels', '4045a060-5308-4eff-9fd1-59159a856a0a', NULL),
(17, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 15:19:58', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'articles', 'f725b46a-06da-4873-ab09-09f7f899bb90', NULL),
(18, 'update', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 15:23:59', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_panels', '4045a060-5308-4eff-9fd1-59159a856a0a', NULL),
(19, 'delete', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 15:24:17', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'articles', 'f725b46a-06da-4873-ab09-09f7f899bb90', NULL),
(20, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 15:26:42', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_fields', '10', NULL),
(21, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 15:47:53', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_files', 'b973bc0f-694a-455f-acde-bbe3f7d89b9e', NULL),
(22, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 15:48:02', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'articles', '5f122f9c-2dce-4a9d-b848-9ebff5408b3e', NULL),
(23, 'update', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 16:08:56', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'articles', '5f122f9c-2dce-4a9d-b848-9ebff5408b3e', NULL),
(24, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 16:09:39', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_permissions', '1', NULL),
(25, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 16:09:39', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_permissions', '2', NULL),
(26, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 16:09:39', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_permissions', '3', NULL),
(27, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 16:09:39', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_permissions', '4', NULL),
(28, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 16:09:39', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_permissions', '5', NULL),
(29, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 16:09:50', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_permissions', '6', NULL),
(30, 'delete', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 16:09:52', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_permissions', '6', NULL),
(31, 'delete', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 16:10:00', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_permissions', '1', NULL),
(32, 'delete', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 16:10:01', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_permissions', '2', NULL),
(33, 'delete', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 16:10:03', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_permissions', '3', NULL),
(34, 'delete', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 16:10:05', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_permissions', '4', NULL),
(35, 'delete', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 16:10:06', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_permissions', '5', NULL),
(36, 'update', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 16:20:26', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_panels', '4045a060-5308-4eff-9fd1-59159a856a0a', NULL),
(37, 'update', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 16:20:59', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_panels', '4045a060-5308-4eff-9fd1-59159a856a0a', NULL),
(38, 'update', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 16:22:04', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_panels', '4045a060-5308-4eff-9fd1-59159a856a0a', NULL),
(39, 'update', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 16:23:44', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_users', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', NULL),
(40, 'update', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 16:24:33', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_collections', 'articles', NULL),
(41, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 16:27:00', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_permissions', '7', NULL),
(42, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 16:27:00', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_permissions', '8', NULL),
(43, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 16:27:00', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_permissions', '9', NULL),
(44, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 16:27:00', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_permissions', '10', NULL),
(45, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 16:27:00', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_permissions', '11', NULL),
(46, 'update', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 16:32:24', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_users', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', NULL),
(47, 'delete', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 16:32:31', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_permissions', '7', NULL),
(48, 'delete', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 16:32:31', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_permissions', '8', NULL),
(49, 'delete', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 16:32:31', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_permissions', '9', NULL),
(50, 'delete', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 16:32:31', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_permissions', '10', NULL),
(51, 'delete', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 16:32:31', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_permissions', '11', NULL),
(52, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 16:34:40', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_flows', '2179deea-f825-4eb4-b437-89efa1d5ab9e', NULL),
(53, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 16:36:48', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_collections', 'Articles_Section', NULL),
(54, 'update', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 16:36:52', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_collections', 'articles', NULL),
(55, 'update', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 16:36:53', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_collections', 'Articles_Section', NULL),
(56, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 16:37:36', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_fields', '11', NULL),
(57, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 16:37:36', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_fields', '12', NULL),
(58, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 16:37:36', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_fields', '13', NULL),
(59, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 16:37:36', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_fields', '14', NULL),
(60, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 16:37:36', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_fields', '15', NULL),
(61, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 16:37:36', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_fields', '16', NULL),
(62, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 16:37:36', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_fields', '17', NULL),
(63, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 16:37:36', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_collections', 'tags', NULL),
(64, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 16:38:25', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_fields', '18', NULL),
(65, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 16:39:53', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_fields', '19', NULL),
(66, 'update', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 16:40:06', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_fields', '18', NULL),
(67, 'update', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 16:40:22', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_fields', '18', NULL),
(68, 'update', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 16:40:54', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_collections', 'tags', NULL),
(69, 'update', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 16:40:54', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_collections', 'Articles_Section', NULL),
(70, 'update', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 16:41:07', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_collections', 'Articles_Section', NULL),
(71, 'update', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 16:41:07', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_collections', 'tags', NULL),
(72, 'update', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 16:41:10', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_collections', 'Articles_Section', NULL),
(73, 'update', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 16:41:10', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_collections', 'tags', NULL),
(74, 'update', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 16:41:15', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_collections', 'articles', NULL),
(75, 'update', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 16:41:27', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_collections', 'Articles_Section', NULL),
(76, 'update', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 16:41:27', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_collections', 'articles', NULL),
(77, 'delete', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 16:41:31', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_collections', 'Articles_Section', NULL),
(78, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 16:45:11', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_fields', '20', NULL),
(79, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 16:45:33', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'articles', '195c2a95-8520-42b3-86e2-59021ba5be08', NULL),
(80, 'run', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 16:45:55', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_flows', '2179deea-f825-4eb4-b437-89efa1d5ab9e', NULL),
(81, 'delete', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 16:46:48', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'articles', '195c2a95-8520-42b3-86e2-59021ba5be08', NULL),
(82, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 16:46:56', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'tags', '83c2897c-7d58-45ad-8137-31645dcb5556', NULL),
(83, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 16:47:01', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'tags', 'dfa2dc08-6a72-463e-bcc4-67873bd6ed78', NULL),
(84, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 16:47:05', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'tags', '88312797-326c-4249-8647-f4e95722feb9', NULL),
(85, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 16:48:23', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_fields', '21', NULL),
(86, 'update', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 17:54:53', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_fields', '10', NULL),
(87, 'update', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 17:55:05', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_fields', '10', NULL),
(88, 'update', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 17:56:11', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_fields', '18', NULL),
(89, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 17:56:29', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_fields', '22', NULL),
(90, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 17:57:21', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_fields', '23', NULL),
(91, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 17:57:22', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_fields', '24', NULL),
(92, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 17:57:22', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_collections', 'tags_articles', NULL),
(93, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 17:57:22', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_fields', '25', NULL),
(94, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 17:57:23', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_fields', '26', NULL),
(95, 'delete', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 17:57:50', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_collections', 'tags_articles', NULL),
(96, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 17:58:28', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_fields', '27', NULL),
(97, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 17:58:29', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_fields', '28', NULL),
(98, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 17:58:29', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_collections', 'articles_tags', NULL),
(99, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 17:58:29', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_fields', '29', NULL),
(100, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 17:58:30', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_fields', '30', NULL),
(101, 'update', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 17:59:37', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_fields', '27', NULL),
(102, 'update', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 18:01:14', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_fields', '27', NULL),
(103, 'update', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 18:02:00', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_fields', '27', NULL),
(104, 'update', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 18:02:34', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'tags', '83c2897c-7d58-45ad-8137-31645dcb5556', NULL),
(105, 'update', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 18:02:54', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'tags', '88312797-326c-4249-8647-f4e95722feb9', NULL),
(106, 'update', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 18:03:05', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'tags', 'dfa2dc08-6a72-463e-bcc4-67873bd6ed78', NULL),
(107, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 18:03:50', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_files', 'b22fdee9-c4ff-4ceb-b2d4-4a68cddc696d', NULL),
(108, 'update', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 18:04:13', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'articles', '5f122f9c-2dce-4a9d-b848-9ebff5408b3e', NULL),
(111, 'update', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 18:05:49', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'articles', '5f122f9c-2dce-4a9d-b848-9ebff5408b3e', NULL),
(112, 'update', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 18:07:50', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_fields', '10', NULL),
(113, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 18:10:46', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_fields', '31', NULL),
(114, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 18:10:46', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_fields', '32', NULL),
(115, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 18:10:46', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_collections', 'tags_articles', NULL),
(116, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 18:10:47', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_fields', '33', NULL),
(117, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 18:10:47', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_fields', '34', NULL),
(118, 'delete', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 18:11:08', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_collections', 'articles_tags', NULL),
(119, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 18:12:00', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_fields', '35', NULL),
(120, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 18:12:01', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_fields', '36', NULL),
(121, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 18:12:01', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_collections', 'articles_tags_articles', NULL),
(122, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 18:12:01', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_fields', '37', NULL),
(123, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 18:12:02', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_fields', '38', NULL),
(124, 'update', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 18:12:51', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_fields', '35', NULL),
(125, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 18:13:30', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_files', '0ad80a21-9f6f-43fc-a88d-77a8918f347d', NULL),
(126, 'delete', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 18:13:56', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_collections', 'articles_tags_articles', NULL),
(127, 'delete', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 18:13:58', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_collections', 'tags_articles', NULL),
(128, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 18:15:09', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_fields', '39', NULL),
(129, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 18:15:09', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_fields', '40', NULL),
(130, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 18:15:09', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_collections', 'articles_tags', NULL),
(131, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 18:15:09', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_fields', '41', NULL),
(132, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 18:15:10', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_fields', '42', NULL),
(133, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 18:15:10', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_fields', '43', NULL),
(134, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 18:15:34', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'articles_tags', '1', NULL),
(135, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 18:15:34', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'articles_tags', '2', NULL),
(136, 'update', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 18:15:34', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'articles', '5f122f9c-2dce-4a9d-b848-9ebff5408b3e', NULL),
(137, 'update', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 18:15:59', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_fields', '39', NULL),
(138, 'update', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 18:16:14', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_fields', '41', NULL),
(139, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 18:17:02', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_files', '8837d218-fff1-4c5a-b35d-54dedc0c85b1', NULL),
(140, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 18:17:21', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'articles_tags', '3', NULL),
(141, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 18:17:21', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'articles_tags', '4', NULL),
(142, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 18:17:21', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'articles', 'a0f9e69d-8144-4279-9903-8d7aae37b85a', NULL),
(143, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 18:17:31', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'articles_tags', '5', NULL),
(144, 'update', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 18:17:31', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'articles', 'a0f9e69d-8144-4279-9903-8d7aae37b85a', NULL),
(145, 'update', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 18:18:23', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_fields', '41', NULL),
(146, 'update', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 18:19:19', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_fields', '39', NULL),
(147, 'update', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 18:19:37', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_fields', '39', NULL),
(148, 'update', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 18:19:57', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_fields', '39', NULL),
(149, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 18:33:10', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_permissions', '12', NULL),
(150, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 18:33:10', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_permissions', '13', NULL),
(151, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 18:33:10', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_permissions', '14', NULL),
(152, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 18:33:10', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_permissions', '15', NULL),
(153, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 18:33:11', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_permissions', '16', NULL),
(154, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 18:33:12', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_permissions', '17', NULL),
(155, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 18:33:12', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_permissions', '18', NULL),
(156, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 18:33:12', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_permissions', '19', NULL),
(157, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 18:33:12', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_permissions', '20', NULL),
(158, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 18:33:12', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_permissions', '21', NULL),
(159, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 18:33:13', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_permissions', '22', NULL),
(160, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 18:33:13', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_permissions', '23', NULL),
(161, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 18:33:13', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_permissions', '24', NULL),
(162, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 18:33:13', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_permissions', '25', NULL),
(163, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 18:33:13', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_permissions', '26', NULL),
(164, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 18:33:23', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_permissions', '27', NULL),
(165, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 18:33:23', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_permissions', '28', NULL),
(166, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 18:33:23', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_permissions', '29', NULL),
(167, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 18:33:23', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_permissions', '30', NULL),
(168, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 18:33:23', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_permissions', '31', NULL),
(169, 'create', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 18:34:12', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'directus_files', 'ab2ad2e1-6e2a-4bd5-8ac9-ac64b8681bcd', NULL),
(170, 'update', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 18:34:21', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'articles', '5f122f9c-2dce-4a9d-b848-9ebff5408b3e', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `directus_collections`
--

CREATE TABLE `directus_collections` (
  `collection` varchar(64) NOT NULL,
  `icon` varchar(30) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `display_template` varchar(255) DEFAULT NULL,
  `hidden` tinyint(1) NOT NULL DEFAULT 0,
  `singleton` tinyint(1) NOT NULL DEFAULT 0,
  `translations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`translations`)),
  `archive_field` varchar(64) DEFAULT NULL,
  `archive_app_filter` tinyint(1) NOT NULL DEFAULT 1,
  `archive_value` varchar(255) DEFAULT NULL,
  `unarchive_value` varchar(255) DEFAULT NULL,
  `sort_field` varchar(64) DEFAULT NULL,
  `accountability` varchar(255) DEFAULT 'all',
  `color` varchar(255) DEFAULT NULL,
  `item_duplication_fields` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`item_duplication_fields`)),
  `sort` int(11) DEFAULT NULL,
  `group` varchar(64) DEFAULT NULL,
  `collapse` varchar(255) NOT NULL DEFAULT 'open'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `directus_collections`
--

INSERT INTO `directus_collections` (`collection`, `icon`, `note`, `display_template`, `hidden`, `singleton`, `translations`, `archive_field`, `archive_app_filter`, `archive_value`, `unarchive_value`, `sort_field`, `accountability`, `color`, `item_duplication_fields`, `sort`, `group`, `collapse`) VALUES
('articles', NULL, NULL, NULL, 0, 0, NULL, 'status', 1, 'archived', 'draft', 'sort', 'all', NULL, '[]', 2, NULL, 'closed'),
('articles_tags', 'import_export', NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, NULL, 'all', NULL, NULL, NULL, NULL, 'open'),
('tags', NULL, NULL, NULL, 0, 0, NULL, NULL, 1, 'archived', 'draft', 'sort', 'all', NULL, NULL, 1, 'articles', 'open');

-- --------------------------------------------------------

--
-- Table structure for table `directus_dashboards`
--

CREATE TABLE `directus_dashboards` (
  `id` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `icon` varchar(30) NOT NULL DEFAULT 'dashboard',
  `note` text DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_created` char(36) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `directus_dashboards`
--

INSERT INTO `directus_dashboards` (`id`, `name`, `icon`, `note`, `date_created`, `user_created`, `color`) VALUES
('301f7aaa-09a6-4d98-b415-8e990a14211c', 'Articles', 'dashboard', NULL, '2022-09-01 15:16:19', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '#2ECDA7');

-- --------------------------------------------------------

--
-- Table structure for table `directus_fields`
--

CREATE TABLE `directus_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `collection` varchar(64) NOT NULL,
  `field` varchar(64) NOT NULL,
  `special` varchar(64) DEFAULT NULL,
  `interface` varchar(64) DEFAULT NULL,
  `options` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`options`)),
  `display` varchar(64) DEFAULT NULL,
  `display_options` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`display_options`)),
  `readonly` tinyint(1) NOT NULL DEFAULT 0,
  `hidden` tinyint(1) NOT NULL DEFAULT 0,
  `sort` int(10) UNSIGNED DEFAULT NULL,
  `width` varchar(30) DEFAULT 'full',
  `translations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`translations`)),
  `note` text DEFAULT NULL,
  `conditions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`conditions`)),
  `required` tinyint(1) DEFAULT 0,
  `group` varchar(64) DEFAULT NULL,
  `validation` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`validation`)),
  `validation_message` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `directus_fields`
--

INSERT INTO `directus_fields` (`id`, `collection`, `field`, `special`, `interface`, `options`, `display`, `display_options`, `readonly`, `hidden`, `sort`, `width`, `translations`, `note`, `conditions`, `required`, `group`, `validation`, `validation_message`) VALUES
(1, 'articles', 'id', 'uuid', 'input', NULL, NULL, NULL, 1, 1, NULL, 'full', NULL, NULL, NULL, 0, NULL, NULL, NULL),
(2, 'articles', 'status', NULL, 'select-dropdown', '{\"choices\":[{\"text\":\"$t:published\",\"value\":\"published\"},{\"text\":\"$t:draft\",\"value\":\"draft\"},{\"text\":\"$t:archived\",\"value\":\"archived\"}]}', 'labels', '{\"showAsDot\":true,\"choices\":[{\"text\":\"$t:published\",\"value\":\"published\",\"foreground\":\"#FFFFFF\",\"background\":\"var(--primary)\"},{\"text\":\"$t:draft\",\"value\":\"draft\",\"foreground\":\"#18222F\",\"background\":\"#D3DAE4\"},{\"text\":\"$t:archived\",\"value\":\"archived\",\"foreground\":\"#FFFFFF\",\"background\":\"var(--warning)\"}]}', 0, 0, NULL, 'full', NULL, NULL, NULL, 0, NULL, NULL, NULL),
(3, 'articles', 'sort', NULL, 'input', NULL, NULL, NULL, 0, 1, NULL, 'full', NULL, NULL, NULL, 0, NULL, NULL, NULL),
(4, 'articles', 'user_created', 'user-created', 'select-dropdown-m2o', '{\"template\":\"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"}', 'user', NULL, 1, 1, NULL, 'half', NULL, NULL, NULL, 0, NULL, NULL, NULL),
(5, 'articles', 'date_created', 'date-created', 'datetime', NULL, 'datetime', '{\"relative\":true}', 1, 1, NULL, 'half', NULL, NULL, NULL, 0, NULL, NULL, NULL),
(6, 'articles', 'user_updated', 'user-updated', 'select-dropdown-m2o', '{\"template\":\"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"}', 'user', NULL, 1, 1, NULL, 'half', NULL, NULL, NULL, 0, NULL, NULL, NULL),
(7, 'articles', 'date_updated', 'date-updated', 'datetime', NULL, 'datetime', '{\"relative\":true}', 1, 1, NULL, 'half', NULL, NULL, NULL, 0, NULL, NULL, NULL),
(8, 'articles', 'title', NULL, 'input', '{\"placeholder\":\"Article title\",\"iconLeft\":\"join_right\",\"iconRight\":\"abc\"}', NULL, NULL, 0, 0, NULL, 'full', NULL, NULL, NULL, 1, NULL, NULL, NULL),
(10, 'articles', 'description', NULL, 'input-rich-text-html', '{\"defaultView\":{\"center\":{\"lng\":0,\"lat\":0},\"zoom\":0,\"bearing\":0,\"pitch\":0},\"geometryType\":\"Point\"}', 'raw', '{}', 0, 0, NULL, 'full', NULL, NULL, NULL, 0, NULL, NULL, NULL),
(11, 'tags', 'id', 'uuid', 'input', NULL, NULL, NULL, 1, 1, NULL, 'full', NULL, NULL, NULL, 0, NULL, NULL, NULL),
(13, 'tags', 'sort', NULL, 'input', NULL, NULL, NULL, 0, 1, NULL, 'full', NULL, NULL, NULL, 0, NULL, NULL, NULL),
(14, 'tags', 'user_created', 'user-created', 'select-dropdown-m2o', '{\"template\":\"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"}', 'user', NULL, 1, 1, NULL, 'half', NULL, NULL, NULL, 0, NULL, NULL, NULL),
(15, 'tags', 'date_created', 'date-created', 'datetime', NULL, 'datetime', '{\"relative\":true}', 1, 1, NULL, 'half', NULL, NULL, NULL, 0, NULL, NULL, NULL),
(16, 'tags', 'user_updated', 'user-updated', 'select-dropdown-m2o', '{\"template\":\"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"}', 'user', NULL, 1, 1, NULL, 'half', NULL, NULL, NULL, 0, NULL, NULL, NULL),
(17, 'tags', 'date_updated', 'date-updated', 'datetime', NULL, 'datetime', '{\"relative\":true}', 1, 1, NULL, 'half', NULL, NULL, NULL, 0, NULL, NULL, NULL),
(18, 'tags', 'tag', NULL, 'input', '{\"slug\":true}', 'formatted-value', '{\"format\":true}', 0, 0, NULL, 'full', NULL, NULL, NULL, 1, NULL, NULL, NULL),
(22, 'tags', 'Title', NULL, 'input', NULL, NULL, NULL, 0, 0, NULL, 'full', NULL, NULL, NULL, 1, NULL, NULL, NULL),
(39, 'articles', 'tags', 'm2m', 'list-m2m', '{\"enableSearchFilter\":true,\"enableLink\":true,\"template\":\"{{tags_id.Title}}\"}', 'related-values', '{\"template\":\"{{tags_id.Title}}\"}', 0, 0, NULL, 'full', NULL, NULL, NULL, 1, NULL, NULL, NULL),
(40, 'articles_tags', 'id', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, 'full', NULL, NULL, NULL, 0, NULL, NULL, NULL),
(41, 'tags', 'articles', 'm2m', 'list-m2m', '{\"template\":\"{{articles_id.title}}\"}', 'related-values', '{\"template\":\"{{articles_id.title}}\"}', 0, 0, NULL, 'full', NULL, NULL, NULL, 0, NULL, NULL, NULL),
(42, 'articles_tags', 'articles_id', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, 'full', NULL, NULL, NULL, 0, NULL, NULL, NULL),
(43, 'articles_tags', 'tags_id', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, 'full', NULL, NULL, NULL, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `directus_files`
--

CREATE TABLE `directus_files` (
  `id` char(36) NOT NULL,
  `storage` varchar(255) NOT NULL,
  `filename_disk` varchar(255) DEFAULT NULL,
  `filename_download` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `folder` char(36) DEFAULT NULL,
  `uploaded_by` char(36) DEFAULT NULL,
  `uploaded_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_by` char(36) DEFAULT NULL,
  `modified_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `charset` varchar(50) DEFAULT NULL,
  `filesize` bigint(20) DEFAULT NULL,
  `width` int(10) UNSIGNED DEFAULT NULL,
  `height` int(10) UNSIGNED DEFAULT NULL,
  `duration` int(10) UNSIGNED DEFAULT NULL,
  `embed` varchar(200) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `location` text DEFAULT NULL,
  `tags` text DEFAULT NULL,
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`metadata`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `directus_files`
--

INSERT INTO `directus_files` (`id`, `storage`, `filename_disk`, `filename_download`, `title`, `type`, `folder`, `uploaded_by`, `uploaded_on`, `modified_by`, `modified_on`, `charset`, `filesize`, `width`, `height`, `duration`, `embed`, `description`, `location`, `tags`, `metadata`) VALUES
('0ad80a21-9f6f-43fc-a88d-77a8918f347d', 'local', '0ad80a21-9f6f-43fc-a88d-77a8918f347d.jpg', '17f853a5-8dab-4306-875b-0ae7435c9696.jpg', '17f853a5 8dab 4306 875b 0ae7435c9696', 'image/jpeg', NULL, 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 20:13:30', NULL, '2022-09-01 18:13:30', NULL, 97325, 734, 1280, NULL, NULL, NULL, NULL, NULL, '{}'),
('8837d218-fff1-4c5a-b35d-54dedc0c85b1', 'local', '8837d218-fff1-4c5a-b35d-54dedc0c85b1.jpg', '17f853a5-8dab-4306-875b-0ae7435c9696.jpg', '17f853a5 8dab 4306 875b 0ae7435c9696', 'image/jpeg', NULL, 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 20:17:02', NULL, '2022-09-01 18:17:02', NULL, 97325, 734, 1280, NULL, NULL, NULL, NULL, NULL, '{}'),
('ab2ad2e1-6e2a-4bd5-8ac9-ac64b8681bcd', 'local', 'ab2ad2e1-6e2a-4bd5-8ac9-ac64b8681bcd.jpg', '17f853a5-8dab-4306-875b-0ae7435c9696.jpg', '17f853a5 8dab 4306 875b 0ae7435c9696', 'image/jpeg', NULL, 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 20:34:12', NULL, '2022-09-01 18:34:12', NULL, 97325, 734, 1280, NULL, NULL, NULL, NULL, NULL, '{}'),
('b22fdee9-c4ff-4ceb-b2d4-4a68cddc696d', 'local', 'b22fdee9-c4ff-4ceb-b2d4-4a68cddc696d.jpg', '17f853a5-8dab-4306-875b-0ae7435c9696.jpg', '17f853a5 8dab 4306 875b 0ae7435c9696', 'image/jpeg', NULL, 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 20:03:50', NULL, '2022-09-01 18:03:50', NULL, 97325, 734, 1280, NULL, NULL, NULL, NULL, NULL, '{}'),
('b973bc0f-694a-455f-acde-bbe3f7d89b9e', 'local', 'b973bc0f-694a-455f-acde-bbe3f7d89b9e.jpg', '17f853a5-8dab-4306-875b-0ae7435c9696.jpg', '17f853a5 8dab 4306 875b 0ae7435c9696', 'image/jpeg', NULL, 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 17:47:53', NULL, '2022-09-01 15:47:53', NULL, 97325, 734, 1280, NULL, NULL, NULL, NULL, NULL, '{}');

-- --------------------------------------------------------

--
-- Table structure for table `directus_flows`
--

CREATE TABLE `directus_flows` (
  `id` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `icon` varchar(30) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `trigger` varchar(255) DEFAULT NULL,
  `accountability` varchar(255) DEFAULT 'all',
  `options` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`options`)),
  `operation` char(36) DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_created` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `directus_flows`
--

INSERT INTO `directus_flows` (`id`, `name`, `icon`, `color`, `description`, `status`, `trigger`, `accountability`, `options`, `operation`, `date_created`, `user_created`) VALUES
('2179deea-f825-4eb4-b437-89efa1d5ab9e', 'Test', 'bolt', NULL, NULL, 'active', 'manual', 'all', '{\"collections\":[\"articles\"]}', NULL, '2022-09-01 16:34:40', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062');

-- --------------------------------------------------------

--
-- Table structure for table `directus_folders`
--

CREATE TABLE `directus_folders` (
  `id` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `parent` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `directus_migrations`
--

CREATE TABLE `directus_migrations` (
  `version` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `directus_migrations`
--

INSERT INTO `directus_migrations` (`version`, `name`, `timestamp`) VALUES
('20201028A', 'Remove Collection Foreign Keys', '2022-09-01 17:09:35'),
('20201029A', 'Remove System Relations', '2022-09-01 17:09:35'),
('20201029B', 'Remove System Collections', '2022-09-01 17:09:35'),
('20201029C', 'Remove System Fields', '2022-09-01 17:09:35'),
('20201105A', 'Add Cascade System Relations', '2022-09-01 17:09:35'),
('20201105B', 'Change Webhook URL Type', '2022-09-01 17:09:35'),
('20210225A', 'Add Relations Sort Field', '2022-09-01 17:09:35'),
('20210304A', 'Remove Locked Fields', '2022-09-01 17:09:35'),
('20210312A', 'Webhooks Collections Text', '2022-09-01 17:09:35'),
('20210331A', 'Add Refresh Interval', '2022-09-01 17:09:35'),
('20210415A', 'Make Filesize Nullable', '2022-09-01 17:09:35'),
('20210416A', 'Add Collections Accountability', '2022-09-01 17:09:35'),
('20210422A', 'Remove Files Interface', '2022-09-01 17:09:35'),
('20210506A', 'Rename Interfaces', '2022-09-01 17:09:35'),
('20210510A', 'Restructure Relations', '2022-09-01 17:09:35'),
('20210518A', 'Add Foreign Key Constraints', '2022-09-01 17:09:58'),
('20210519A', 'Add System Fk Triggers', '2022-09-01 17:09:58'),
('20210521A', 'Add Collections Icon Color', '2022-09-01 17:09:58'),
('20210525A', 'Add Insights', '2022-09-01 17:09:58'),
('20210608A', 'Add Deep Clone Config', '2022-09-01 17:09:58'),
('20210626A', 'Change Filesize Bigint', '2022-09-01 17:09:59'),
('20210716A', 'Add Conditions to Fields', '2022-09-01 17:09:59'),
('20210721A', 'Add Default Folder', '2022-09-01 17:09:59'),
('20210802A', 'Replace Groups', '2022-09-01 17:09:59'),
('20210803A', 'Add Required to Fields', '2022-09-01 17:09:59'),
('20210805A', 'Update Groups', '2022-09-01 17:09:59'),
('20210805B', 'Change Image Metadata Structure', '2022-09-01 17:09:59'),
('20210811A', 'Add Geometry Config', '2022-09-01 17:09:59'),
('20210831A', 'Remove Limit Column', '2022-09-01 17:09:59'),
('20210903A', 'Add Auth Provider', '2022-09-01 17:09:59'),
('20210907A', 'Webhooks Collections Not Null', '2022-09-01 17:09:59'),
('20210910A', 'Move Module Setup', '2022-09-01 17:09:59'),
('20210920A', 'Webhooks URL Not Null', '2022-09-01 17:09:59'),
('20210924A', 'Add Collection Organization', '2022-09-01 17:09:59'),
('20210927A', 'Replace Fields Group', '2022-09-01 17:09:59'),
('20210927B', 'Replace M2M Interface', '2022-09-01 17:09:59'),
('20210929A', 'Rename Login Action', '2022-09-01 17:09:59'),
('20211007A', 'Update Presets', '2022-09-01 17:09:59'),
('20211009A', 'Add Auth Data', '2022-09-01 17:09:59'),
('20211016A', 'Add Webhook Headers', '2022-09-01 17:09:59'),
('20211103A', 'Set Unique to User Token', '2022-09-01 17:09:59'),
('20211103B', 'Update Special Geometry', '2022-09-01 17:09:59'),
('20211104A', 'Remove Collections Listing', '2022-09-01 17:09:59'),
('20211118A', 'Add Notifications', '2022-09-01 17:09:59'),
('20211211A', 'Add Shares', '2022-09-01 17:09:59'),
('20211230A', 'Add Project Descriptor', '2022-09-01 17:09:59'),
('20220303A', 'Remove Default Project Color', '2022-09-01 17:09:59'),
('20220308A', 'Add Bookmark Icon and Color', '2022-09-01 17:09:59'),
('20220314A', 'Add Translation Strings', '2022-09-01 17:09:59'),
('20220322A', 'Rename Field Typecast Flags', '2022-09-01 17:09:59'),
('20220323A', 'Add Field Validation', '2022-09-01 17:09:59'),
('20220325A', 'Fix Typecast Flags', '2022-09-01 17:09:59'),
('20220325B', 'Add Default Language', '2022-09-01 17:09:59'),
('20220402A', 'Remove Default Value Panel Icon', '2022-09-01 17:09:59'),
('20220429A', 'Add Flows', '2022-09-01 17:10:00'),
('20220429B', 'Add Color to Insights Icon', '2022-09-01 17:10:00'),
('20220429C', 'Drop Non Null From IP of Activity', '2022-09-01 17:10:00'),
('20220429D', 'Drop Non Null From Sender of Notifications', '2022-09-01 17:10:00'),
('20220614A', 'Rename Hook Trigger to Event', '2022-09-01 17:10:00'),
('20220801A', 'Update Notifications Timestamp Column', '2022-09-01 17:10:00'),
('20220802A', 'Add Custom Aspect Ratios', '2022-09-01 17:10:00');

-- --------------------------------------------------------

--
-- Table structure for table `directus_notifications`
--

CREATE TABLE `directus_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `timestamp` timestamp NULL DEFAULT current_timestamp(),
  `status` varchar(255) DEFAULT 'inbox',
  `recipient` char(36) NOT NULL,
  `sender` char(36) DEFAULT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text DEFAULT NULL,
  `collection` varchar(64) DEFAULT NULL,
  `item` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `directus_operations`
--

CREATE TABLE `directus_operations` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `key` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `position_x` int(11) NOT NULL,
  `position_y` int(11) NOT NULL,
  `options` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`options`)),
  `resolve` char(36) DEFAULT NULL,
  `reject` char(36) DEFAULT NULL,
  `flow` char(36) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_created` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `directus_panels`
--

CREATE TABLE `directus_panels` (
  `id` char(36) NOT NULL,
  `dashboard` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `icon` varchar(30) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL,
  `show_header` tinyint(1) NOT NULL DEFAULT 0,
  `note` text DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `position_x` int(11) NOT NULL,
  `position_y` int(11) NOT NULL,
  `width` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `options` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`options`)),
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_created` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `directus_panels`
--

INSERT INTO `directus_panels` (`id`, `dashboard`, `name`, `icon`, `color`, `show_header`, `note`, `type`, `position_x`, `position_y`, `width`, `height`, `options`, `date_created`, `user_created`) VALUES
('4045a060-5308-4eff-9fd1-59159a856a0a', '301f7aaa-09a6-4d98-b415-8e990a14211c', 'Aricles List', 'article', NULL, 1, NULL, 'list', 1, 1, 57, 34, '{\"collection\":\"articles\",\"sortField\":\"id\",\"filter\":null,\"displayTemplate\":\"{{id}} - {{title}} - {{status}}\"}', '2022-09-01 15:19:01', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062');

-- --------------------------------------------------------

--
-- Table structure for table `directus_permissions`
--

CREATE TABLE `directus_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `role` char(36) DEFAULT NULL,
  `collection` varchar(64) NOT NULL,
  `action` varchar(10) NOT NULL,
  `permissions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`permissions`)),
  `validation` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`validation`)),
  `presets` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`presets`)),
  `fields` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `directus_permissions`
--

INSERT INTO `directus_permissions` (`id`, `role`, `collection`, `action`, `permissions`, `validation`, `presets`, `fields`) VALUES
(12, NULL, 'articles', 'create', '{}', '{}', NULL, '*'),
(13, NULL, 'articles', 'read', '{}', '{}', NULL, '*'),
(14, NULL, 'articles', 'update', '{}', '{}', NULL, '*'),
(15, NULL, 'articles', 'delete', '{}', '{}', NULL, '*'),
(16, NULL, 'articles', 'share', '{}', '{}', NULL, '*'),
(17, NULL, 'articles_tags', 'delete', '{}', '{}', NULL, '*'),
(18, NULL, 'articles_tags', 'create', '{}', '{}', NULL, '*'),
(19, NULL, 'articles_tags', 'read', '{}', '{}', NULL, '*'),
(20, NULL, 'articles_tags', 'update', '{}', '{}', NULL, '*'),
(21, NULL, 'articles_tags', 'share', '{}', '{}', NULL, '*'),
(22, NULL, 'tags', 'create', '{}', '{}', NULL, '*'),
(23, NULL, 'tags', 'read', '{}', '{}', NULL, '*'),
(24, NULL, 'tags', 'update', '{}', '{}', NULL, '*'),
(25, NULL, 'tags', 'delete', '{}', '{}', NULL, '*'),
(26, NULL, 'tags', 'share', '{}', '{}', NULL, '*'),
(27, NULL, 'directus_files', 'create', '{}', '{}', NULL, '*'),
(28, NULL, 'directus_files', 'read', '{}', '{}', NULL, '*'),
(29, NULL, 'directus_files', 'update', '{}', '{}', NULL, '*'),
(30, NULL, 'directus_files', 'delete', '{}', '{}', NULL, '*'),
(31, NULL, 'directus_files', 'share', '{}', '{}', NULL, '*');

-- --------------------------------------------------------

--
-- Table structure for table `directus_presets`
--

CREATE TABLE `directus_presets` (
  `id` int(10) UNSIGNED NOT NULL,
  `bookmark` varchar(255) DEFAULT NULL,
  `user` char(36) DEFAULT NULL,
  `role` char(36) DEFAULT NULL,
  `collection` varchar(64) DEFAULT NULL,
  `search` varchar(100) DEFAULT NULL,
  `layout` varchar(100) DEFAULT 'tabular',
  `layout_query` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`layout_query`)),
  `layout_options` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`layout_options`)),
  `refresh_interval` int(11) DEFAULT NULL,
  `filter` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`filter`)),
  `icon` varchar(30) NOT NULL DEFAULT 'bookmark_outline',
  `color` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `directus_presets`
--

INSERT INTO `directus_presets` (`id`, `bookmark`, `user`, `role`, `collection`, `search`, `layout`, `layout_query`, `layout_options`, `refresh_interval`, `filter`, `icon`, `color`) VALUES
(1, NULL, 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', NULL, 'directus_files', NULL, 'cards', '{\"cards\":{\"sort\":[\"-uploaded_on\"],\"page\":1}}', '{\"cards\":{\"icon\":\"insert_drive_file\",\"title\":\"{{ title }}\",\"subtitle\":\"{{ type }} • {{ filesize }}\",\"size\":4,\"imageFit\":\"crop\"}}', NULL, NULL, 'bookmark_outline', NULL),
(2, NULL, 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', NULL, 'articles', NULL, 'tabular', '{\"tabular\":{\"page\":1,\"fields\":[\"title\",\"tags\",\"status\",\"user_updated\",\"user_created\"]}}', '{\"tabular\":{\"spacing\":\"cozy\",\"widths\":{}}}', NULL, NULL, 'bookmark_outline', NULL),
(3, NULL, 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', NULL, 'tags', NULL, NULL, '{\"tabular\":{\"page\":1}}', NULL, NULL, NULL, 'bookmark_outline', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `directus_relations`
--

CREATE TABLE `directus_relations` (
  `id` int(10) UNSIGNED NOT NULL,
  `many_collection` varchar(64) NOT NULL,
  `many_field` varchar(64) NOT NULL,
  `one_collection` varchar(64) DEFAULT NULL,
  `one_field` varchar(64) DEFAULT NULL,
  `one_collection_field` varchar(64) DEFAULT NULL,
  `one_allowed_collections` text DEFAULT NULL,
  `junction_field` varchar(64) DEFAULT NULL,
  `sort_field` varchar(64) DEFAULT NULL,
  `one_deselect_action` varchar(255) NOT NULL DEFAULT 'nullify'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `directus_relations`
--

INSERT INTO `directus_relations` (`id`, `many_collection`, `many_field`, `one_collection`, `one_field`, `one_collection_field`, `one_allowed_collections`, `junction_field`, `sort_field`, `one_deselect_action`) VALUES
(1, 'articles', 'user_created', 'directus_users', NULL, NULL, NULL, NULL, NULL, 'nullify'),
(2, 'articles', 'user_updated', 'directus_users', NULL, NULL, NULL, NULL, NULL, 'nullify'),
(3, 'tags', 'user_created', 'directus_users', NULL, NULL, NULL, NULL, NULL, 'nullify'),
(4, 'tags', 'user_updated', 'directus_users', NULL, NULL, NULL, NULL, NULL, 'nullify'),
(14, 'articles_tags', 'tags_id', 'tags', 'articles', NULL, NULL, 'articles_id', NULL, 'nullify'),
(15, 'articles_tags', 'articles_id', 'articles', 'tags', NULL, NULL, 'tags_id', NULL, 'nullify');

-- --------------------------------------------------------

--
-- Table structure for table `directus_revisions`
--

CREATE TABLE `directus_revisions` (
  `id` int(10) UNSIGNED NOT NULL,
  `activity` int(10) UNSIGNED NOT NULL,
  `collection` varchar(64) NOT NULL,
  `item` varchar(255) NOT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`data`)),
  `delta` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`delta`)),
  `parent` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `directus_revisions`
--

INSERT INTO `directus_revisions` (`id`, `activity`, `collection`, `item`, `data`, `delta`, `parent`) VALUES
(1, 2, 'directus_fields', '1', '{\"hidden\":true,\"readonly\":true,\"interface\":\"input\",\"special\":\"uuid\",\"field\":\"id\",\"collection\":\"articles\"}', '{\"hidden\":true,\"readonly\":true,\"interface\":\"input\",\"special\":\"uuid\",\"field\":\"id\",\"collection\":\"articles\"}', NULL),
(2, 3, 'directus_fields', '2', '{\"width\":\"full\",\"options\":{\"choices\":[{\"text\":\"$t:published\",\"value\":\"published\"},{\"text\":\"$t:draft\",\"value\":\"draft\"},{\"text\":\"$t:archived\",\"value\":\"archived\"}]},\"interface\":\"select-dropdown\",\"display\":\"labels\",\"display_options\":{\"showAsDot\":true,\"choices\":[{\"text\":\"$t:published\",\"value\":\"published\",\"foreground\":\"#FFFFFF\",\"background\":\"var(--primary)\"},{\"text\":\"$t:draft\",\"value\":\"draft\",\"foreground\":\"#18222F\",\"background\":\"#D3DAE4\"},{\"text\":\"$t:archived\",\"value\":\"archived\",\"foreground\":\"#FFFFFF\",\"background\":\"var(--warning)\"}]},\"field\":\"status\",\"collection\":\"articles\"}', '{\"width\":\"full\",\"options\":{\"choices\":[{\"text\":\"$t:published\",\"value\":\"published\"},{\"text\":\"$t:draft\",\"value\":\"draft\"},{\"text\":\"$t:archived\",\"value\":\"archived\"}]},\"interface\":\"select-dropdown\",\"display\":\"labels\",\"display_options\":{\"showAsDot\":true,\"choices\":[{\"text\":\"$t:published\",\"value\":\"published\",\"foreground\":\"#FFFFFF\",\"background\":\"var(--primary)\"},{\"text\":\"$t:draft\",\"value\":\"draft\",\"foreground\":\"#18222F\",\"background\":\"#D3DAE4\"},{\"text\":\"$t:archived\",\"value\":\"archived\",\"foreground\":\"#FFFFFF\",\"background\":\"var(--warning)\"}]},\"field\":\"status\",\"collection\":\"articles\"}', NULL),
(3, 4, 'directus_fields', '3', '{\"interface\":\"input\",\"hidden\":true,\"field\":\"sort\",\"collection\":\"articles\"}', '{\"interface\":\"input\",\"hidden\":true,\"field\":\"sort\",\"collection\":\"articles\"}', NULL),
(4, 5, 'directus_fields', '4', '{\"special\":\"user-created\",\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"},\"display\":\"user\",\"readonly\":true,\"hidden\":true,\"width\":\"half\",\"field\":\"user_created\",\"collection\":\"articles\"}', '{\"special\":\"user-created\",\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"},\"display\":\"user\",\"readonly\":true,\"hidden\":true,\"width\":\"half\",\"field\":\"user_created\",\"collection\":\"articles\"}', NULL),
(5, 6, 'directus_fields', '5', '{\"special\":\"date-created\",\"interface\":\"datetime\",\"readonly\":true,\"hidden\":true,\"width\":\"half\",\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"field\":\"date_created\",\"collection\":\"articles\"}', '{\"special\":\"date-created\",\"interface\":\"datetime\",\"readonly\":true,\"hidden\":true,\"width\":\"half\",\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"field\":\"date_created\",\"collection\":\"articles\"}', NULL),
(6, 7, 'directus_fields', '6', '{\"special\":\"user-updated\",\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"},\"display\":\"user\",\"readonly\":true,\"hidden\":true,\"width\":\"half\",\"field\":\"user_updated\",\"collection\":\"articles\"}', '{\"special\":\"user-updated\",\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"},\"display\":\"user\",\"readonly\":true,\"hidden\":true,\"width\":\"half\",\"field\":\"user_updated\",\"collection\":\"articles\"}', NULL),
(7, 8, 'directus_fields', '7', '{\"special\":\"date-updated\",\"interface\":\"datetime\",\"readonly\":true,\"hidden\":true,\"width\":\"half\",\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"field\":\"date_updated\",\"collection\":\"articles\"}', '{\"special\":\"date-updated\",\"interface\":\"datetime\",\"readonly\":true,\"hidden\":true,\"width\":\"half\",\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"field\":\"date_updated\",\"collection\":\"articles\"}', NULL),
(8, 9, 'directus_collections', 'articles', '{\"sort_field\":\"sort\",\"archive_field\":\"status\",\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"singleton\":false,\"collection\":\"articles\"}', '{\"sort_field\":\"sort\",\"archive_field\":\"status\",\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"singleton\":false,\"collection\":\"articles\"}', NULL),
(9, 10, 'directus_fields', '8', '{\"interface\":\"input\",\"special\":null,\"required\":true,\"options\":{\"placeholder\":\"Article title\",\"iconLeft\":\"join_right\",\"iconRight\":\"abc\"},\"collection\":\"articles\",\"field\":\"title\"}', '{\"interface\":\"input\",\"special\":null,\"required\":true,\"options\":{\"placeholder\":\"Article title\",\"iconLeft\":\"join_right\",\"iconRight\":\"abc\"},\"collection\":\"articles\",\"field\":\"title\"}', NULL),
(10, 11, 'directus_fields', '9', '{\"interface\":\"input\",\"special\":null,\"options\":{\"placeholder\":\"Article Description\",\"iconLeft\":\"receipt\"},\"collection\":\"articles\",\"field\":\"description\"}', '{\"interface\":\"input\",\"special\":null,\"options\":{\"placeholder\":\"Article Description\",\"iconLeft\":\"receipt\"},\"collection\":\"articles\",\"field\":\"description\"}', NULL),
(11, 12, 'directus_collections', 'articles', '{\"collection\":\"articles\",\"icon\":null,\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":null,\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":\"sort\",\"accountability\":\"all\",\"color\":null,\"item_duplication_fields\":[],\"sort\":null,\"group\":null,\"collapse\":\"open\"}', '{\"item_duplication_fields\":[]}', NULL),
(12, 13, 'directus_dashboards', '301f7aaa-09a6-4d98-b415-8e990a14211c', '{\"name\":\"Articles\",\"icon\":\"dashboard\",\"color\":\"#2ECDA7\",\"note\":null}', '{\"name\":\"Articles\",\"icon\":\"dashboard\",\"color\":\"#2ECDA7\",\"note\":null}', NULL),
(13, 14, 'directus_panels', '4045a060-5308-4eff-9fd1-59159a856a0a', '{\"show_header\":true,\"type\":\"list\",\"width\":65,\"height\":40,\"position_x\":1,\"position_y\":1,\"options\":{\"collection\":\"articles\",\"sortField\":\"id\",\"filter\":{\"_and\":[{\"title\":{\"_contains\":null}},{\"status\":{\"_eq\":null}},{\"description\":{\"_contains\":null}}]},\"displayTemplate\":\"{{id}}{{title}}{{description}}{{status}}\"},\"dashboard\":\"301f7aaa-09a6-4d98-b415-8e990a14211c\"}', '{\"show_header\":true,\"type\":\"list\",\"width\":65,\"height\":40,\"position_x\":1,\"position_y\":1,\"options\":{\"collection\":\"articles\",\"sortField\":\"id\",\"filter\":{\"_and\":[{\"title\":{\"_contains\":null}},{\"status\":{\"_eq\":null}},{\"description\":{\"_contains\":null}}]},\"displayTemplate\":\"{{id}}{{title}}{{description}}{{status}}\"},\"dashboard\":\"301f7aaa-09a6-4d98-b415-8e990a14211c\"}', NULL),
(14, 15, 'directus_panels', '4045a060-5308-4eff-9fd1-59159a856a0a', '{\"id\":\"4045a060-5308-4eff-9fd1-59159a856a0a\",\"dashboard\":\"301f7aaa-09a6-4d98-b415-8e990a14211c\",\"name\":null,\"icon\":null,\"color\":null,\"show_header\":true,\"note\":null,\"type\":\"list\",\"position_x\":1,\"position_y\":1,\"width\":57,\"height\":40,\"options\":{\"collection\":\"articles\",\"sortField\":\"id\",\"filter\":{\"_and\":[{\"title\":{\"_contains\":null}},{\"status\":{\"_eq\":null}},{\"description\":{\"_contains\":null}}]},\"displayTemplate\":\"{{id}}{{title}}{{description}}{{status}}\"},\"date_created\":\"2022-09-01T17:19:01.000Z\",\"user_created\":\"f56a6812-5a82-4fe8-a53b-e4c7d2771062\"}', '{\"width\":57}', NULL),
(15, 16, 'directus_panels', '4045a060-5308-4eff-9fd1-59159a856a0a', '{\"id\":\"4045a060-5308-4eff-9fd1-59159a856a0a\",\"dashboard\":\"301f7aaa-09a6-4d98-b415-8e990a14211c\",\"name\":null,\"icon\":null,\"color\":null,\"show_header\":true,\"note\":null,\"type\":\"list\",\"position_x\":1,\"position_y\":1,\"width\":57,\"height\":34,\"options\":{\"collection\":\"articles\",\"sortField\":\"id\",\"filter\":{\"_and\":[{\"title\":{\"_contains\":null}},{\"status\":{\"_eq\":null}},{\"description\":{\"_contains\":null}}]},\"displayTemplate\":\"{{id}}{{title}}{{description}}{{status}}\"},\"date_created\":\"2022-09-01T17:19:01.000Z\",\"user_created\":\"f56a6812-5a82-4fe8-a53b-e4c7d2771062\"}', '{\"height\":34}', NULL),
(16, 17, 'articles', 'f725b46a-06da-4873-ab09-09f7f899bb90', '{\"status\":\"published\",\"title\":\"Test Title\",\"description\":\"gkjgjkg\"}', '{\"status\":\"published\",\"title\":\"Test Title\",\"description\":\"gkjgjkg\"}', NULL),
(17, 18, 'directus_panels', '4045a060-5308-4eff-9fd1-59159a856a0a', '{\"id\":\"4045a060-5308-4eff-9fd1-59159a856a0a\",\"dashboard\":\"301f7aaa-09a6-4d98-b415-8e990a14211c\",\"name\":null,\"icon\":null,\"color\":null,\"show_header\":true,\"note\":null,\"type\":\"list\",\"position_x\":1,\"position_y\":1,\"width\":57,\"height\":34,\"options\":{\"collection\":\"articles\",\"sortField\":\"id\",\"filter\":{\"_and\":[{\"title\":{\"_contains\":null}},{\"status\":{\"_eq\":null}},{\"description\":{\"_contains\":null}}]},\"displayTemplate\":\"{{id}}{{title}}{{description}}{{status}}\"},\"date_created\":\"2022-09-01T17:19:01.000Z\",\"user_created\":\"f56a6812-5a82-4fe8-a53b-e4c7d2771062\"}', '{\"dashboard\":\"301f7aaa-09a6-4d98-b415-8e990a14211c\",\"name\":null,\"icon\":null,\"color\":null,\"show_header\":true,\"note\":null,\"type\":\"list\",\"position_x\":1,\"position_y\":1,\"width\":57,\"height\":34,\"options\":{\"collection\":\"articles\",\"sortField\":\"id\",\"filter\":{\"_and\":[{\"title\":{\"_contains\":null}},{\"status\":{\"_eq\":null}},{\"description\":{\"_contains\":null}}]},\"displayTemplate\":\"{{id}}{{title}}{{description}}{{status}}\"},\"date_created\":\"2022-09-01T17:19:01.000Z\",\"user_created\":\"f56a6812-5a82-4fe8-a53b-e4c7d2771062\"}', NULL),
(18, 20, 'directus_fields', '10', '{\"interface\":\"input-rich-text-html\",\"special\":null,\"collection\":\"articles\",\"field\":\"description\"}', '{\"interface\":\"input-rich-text-html\",\"special\":null,\"collection\":\"articles\",\"field\":\"description\"}', NULL),
(19, 21, 'directus_files', 'b973bc0f-694a-455f-acde-bbe3f7d89b9e', '{\"title\":\"17f853a5 8dab 4306 875b 0ae7435c9696\",\"filename_download\":\"17f853a5-8dab-4306-875b-0ae7435c9696.jpg\",\"type\":\"image/jpeg\",\"storage\":\"local\"}', '{\"title\":\"17f853a5 8dab 4306 875b 0ae7435c9696\",\"filename_download\":\"17f853a5-8dab-4306-875b-0ae7435c9696.jpg\",\"type\":\"image/jpeg\",\"storage\":\"local\"}', NULL),
(20, 22, 'articles', '5f122f9c-2dce-4a9d-b848-9ebff5408b3e', '{\"title\":\"Test\",\"status\":\"published\",\"description\":\"<p>Hello World&nbsp;</p>\\n<p><img src=\\\"http://localhost:8055/assets/b973bc0f-694a-455f-acde-bbe3f7d89b9e?width=734&amp;height=1280\\\" alt=\\\"17f853a5 8dab 4306 875b 0ae7435c9696\\\" /></p>\"}', '{\"title\":\"Test\",\"status\":\"published\",\"description\":\"<p>Hello World&nbsp;</p>\\n<p><img src=\\\"http://localhost:8055/assets/b973bc0f-694a-455f-acde-bbe3f7d89b9e?width=734&amp;height=1280\\\" alt=\\\"17f853a5 8dab 4306 875b 0ae7435c9696\\\" /></p>\"}', NULL),
(21, 23, 'articles', '5f122f9c-2dce-4a9d-b848-9ebff5408b3e', '{\"id\":\"5f122f9c-2dce-4a9d-b848-9ebff5408b3e\",\"status\":\"published\",\"sort\":null,\"user_created\":\"f56a6812-5a82-4fe8-a53b-e4c7d2771062\",\"date_created\":\"2022-09-01T17:48:02.000Z\",\"user_updated\":\"f56a6812-5a82-4fe8-a53b-e4c7d2771062\",\"date_updated\":\"2022-09-01T18:08:56.000Z\",\"title\":\"Test\",\"description\":\"<p>Hello World&nbsp;</p>\\n<p><img src=\\\"http://localhost:8055/assets/b973bc0f-694a-455f-acde-bbe3f7d89b9e?width=734&amp;height=1280\\\" alt=\\\"17f853a5 8dab 4306 875b 0ae7435c9696\\\" /></p>\\n<p>&nbsp;</p>\"}', '{\"description\":\"<p>Hello World&nbsp;</p>\\n<p><img src=\\\"http://localhost:8055/assets/b973bc0f-694a-455f-acde-bbe3f7d89b9e?width=734&amp;height=1280\\\" alt=\\\"17f853a5 8dab 4306 875b 0ae7435c9696\\\" /></p>\\n<p>&nbsp;</p>\",\"user_updated\":\"f56a6812-5a82-4fe8-a53b-e4c7d2771062\",\"date_updated\":\"2022-09-01T18:08:56.850Z\"}', NULL),
(22, 24, 'directus_permissions', '1', '{\"role\":null,\"collection\":\"articles\",\"action\":\"create\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', '{\"role\":null,\"collection\":\"articles\",\"action\":\"create\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', NULL),
(23, 25, 'directus_permissions', '2', '{\"role\":null,\"collection\":\"articles\",\"action\":\"read\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', '{\"role\":null,\"collection\":\"articles\",\"action\":\"read\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', NULL),
(24, 26, 'directus_permissions', '3', '{\"role\":null,\"collection\":\"articles\",\"action\":\"update\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', '{\"role\":null,\"collection\":\"articles\",\"action\":\"update\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', NULL),
(25, 27, 'directus_permissions', '4', '{\"role\":null,\"collection\":\"articles\",\"action\":\"delete\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', '{\"role\":null,\"collection\":\"articles\",\"action\":\"delete\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', NULL),
(26, 28, 'directus_permissions', '5', '{\"role\":null,\"collection\":\"articles\",\"action\":\"share\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', '{\"role\":null,\"collection\":\"articles\",\"action\":\"share\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', NULL),
(27, 29, 'directus_permissions', '6', '{\"role\":null,\"collection\":\"directus_activity\",\"action\":\"create\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', '{\"role\":null,\"collection\":\"directus_activity\",\"action\":\"create\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', NULL),
(28, 36, 'directus_panels', '4045a060-5308-4eff-9fd1-59159a856a0a', '{\"id\":\"4045a060-5308-4eff-9fd1-59159a856a0a\",\"dashboard\":\"301f7aaa-09a6-4d98-b415-8e990a14211c\",\"name\":null,\"icon\":null,\"color\":null,\"show_header\":true,\"note\":null,\"type\":\"list\",\"position_x\":1,\"position_y\":1,\"width\":57,\"height\":34,\"options\":{\"collection\":\"articles\",\"sortField\":\"id\",\"filter\":null,\"displayTemplate\":\"{{id}}{{title}}{{description}}{{status}}\"},\"date_created\":\"2022-09-01T17:19:01.000Z\",\"user_created\":\"f56a6812-5a82-4fe8-a53b-e4c7d2771062\"}', '{\"dashboard\":\"301f7aaa-09a6-4d98-b415-8e990a14211c\",\"name\":null,\"icon\":null,\"color\":null,\"show_header\":true,\"note\":null,\"type\":\"list\",\"position_x\":1,\"position_y\":1,\"width\":57,\"height\":34,\"options\":{\"collection\":\"articles\",\"sortField\":\"id\",\"filter\":null,\"displayTemplate\":\"{{id}}{{title}}{{description}}{{status}}\"},\"date_created\":\"2022-09-01T17:19:01.000Z\",\"user_created\":\"f56a6812-5a82-4fe8-a53b-e4c7d2771062\"}', NULL),
(29, 37, 'directus_panels', '4045a060-5308-4eff-9fd1-59159a856a0a', '{\"id\":\"4045a060-5308-4eff-9fd1-59159a856a0a\",\"dashboard\":\"301f7aaa-09a6-4d98-b415-8e990a14211c\",\"name\":\"Aricles List\",\"icon\":\"article\",\"color\":null,\"show_header\":true,\"note\":null,\"type\":\"list\",\"position_x\":1,\"position_y\":1,\"width\":57,\"height\":34,\"options\":{\"collection\":\"articles\",\"sortField\":\"id\",\"filter\":null,\"displayTemplate\":\"{{id}}{{title}}{{description}}{{status}}\"},\"date_created\":\"2022-09-01T17:19:01.000Z\",\"user_created\":\"f56a6812-5a82-4fe8-a53b-e4c7d2771062\"}', '{\"dashboard\":\"301f7aaa-09a6-4d98-b415-8e990a14211c\",\"name\":\"Aricles List\",\"icon\":\"article\",\"color\":null,\"show_header\":true,\"note\":null,\"type\":\"list\",\"position_x\":1,\"position_y\":1,\"width\":57,\"height\":34,\"options\":{\"collection\":\"articles\",\"sortField\":\"id\",\"filter\":null,\"displayTemplate\":\"{{id}}{{title}}{{description}}{{status}}\"},\"date_created\":\"2022-09-01T17:19:01.000Z\",\"user_created\":\"f56a6812-5a82-4fe8-a53b-e4c7d2771062\"}', NULL),
(30, 38, 'directus_panels', '4045a060-5308-4eff-9fd1-59159a856a0a', '{\"id\":\"4045a060-5308-4eff-9fd1-59159a856a0a\",\"dashboard\":\"301f7aaa-09a6-4d98-b415-8e990a14211c\",\"name\":\"Aricles List\",\"icon\":\"article\",\"color\":null,\"show_header\":true,\"note\":null,\"type\":\"list\",\"position_x\":1,\"position_y\":1,\"width\":57,\"height\":34,\"options\":{\"collection\":\"articles\",\"sortField\":\"id\",\"filter\":null,\"displayTemplate\":\"{{id}} - {{title}} - {{status}}\"},\"date_created\":\"2022-09-01T17:19:01.000Z\",\"user_created\":\"f56a6812-5a82-4fe8-a53b-e4c7d2771062\"}', '{\"dashboard\":\"301f7aaa-09a6-4d98-b415-8e990a14211c\",\"name\":\"Aricles List\",\"icon\":\"article\",\"color\":null,\"show_header\":true,\"note\":null,\"type\":\"list\",\"position_x\":1,\"position_y\":1,\"width\":57,\"height\":34,\"options\":{\"collection\":\"articles\",\"sortField\":\"id\",\"filter\":null,\"displayTemplate\":\"{{id}} - {{title}} - {{status}}\"},\"date_created\":\"2022-09-01T17:19:01.000Z\",\"user_created\":\"f56a6812-5a82-4fe8-a53b-e4c7d2771062\"}', NULL),
(31, 39, 'directus_users', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '{\"id\":\"f56a6812-5a82-4fe8-a53b-e4c7d2771062\",\"first_name\":\"Admin\",\"last_name\":\"User\",\"email\":\"admin@example.com\",\"password\":\"**********\",\"location\":null,\"title\":null,\"description\":null,\"tags\":null,\"avatar\":null,\"language\":null,\"theme\":\"auto\",\"tfa_secret\":null,\"status\":\"active\",\"role\":\"48d494a0-099d-4b17-b390-1930bcb490e5\",\"token\":\"**********\",\"last_access\":\"2022-09-01T20:23:44.000Z\",\"last_page\":\"/users/f56a6812-5a82-4fe8-a53b-e4c7d2771062\",\"provider\":\"default\",\"external_identifier\":null,\"auth_data\":null,\"email_notifications\":true}', '{\"token\":\"**********\"}', NULL),
(32, 40, 'directus_collections', 'articles', '{\"collection\":\"articles\",\"icon\":null,\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":null,\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":\"sort\",\"accountability\":\"all\",\"color\":null,\"item_duplication_fields\":[],\"sort\":null,\"group\":null,\"collapse\":\"open\"}', '{\"translations\":null}', NULL),
(33, 42, 'directus_permissions', '8', '{\"role\":null,\"collection\":\"articles\",\"action\":\"read\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', '{\"role\":null,\"collection\":\"articles\",\"action\":\"read\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', NULL),
(34, 41, 'directus_permissions', '7', '{\"role\":null,\"collection\":\"articles\",\"action\":\"create\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', '{\"role\":null,\"collection\":\"articles\",\"action\":\"create\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', NULL),
(35, 43, 'directus_permissions', '9', '{\"role\":null,\"collection\":\"articles\",\"action\":\"update\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', '{\"role\":null,\"collection\":\"articles\",\"action\":\"update\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', NULL),
(36, 44, 'directus_permissions', '10', '{\"role\":null,\"collection\":\"articles\",\"action\":\"delete\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', '{\"role\":null,\"collection\":\"articles\",\"action\":\"delete\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', NULL),
(37, 45, 'directus_permissions', '11', '{\"role\":null,\"collection\":\"articles\",\"action\":\"share\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', '{\"role\":null,\"collection\":\"articles\",\"action\":\"share\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', NULL),
(38, 46, 'directus_users', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '{\"id\":\"f56a6812-5a82-4fe8-a53b-e4c7d2771062\",\"first_name\":\"Admin\",\"last_name\":\"User\",\"email\":\"admin@example.com\",\"password\":\"**********\",\"location\":null,\"title\":null,\"description\":null,\"tags\":null,\"avatar\":null,\"language\":null,\"theme\":\"auto\",\"tfa_secret\":null,\"status\":\"active\",\"role\":\"48d494a0-099d-4b17-b390-1930bcb490e5\",\"token\":\"**********\",\"last_access\":\"2022-09-01T20:32:24.000Z\",\"last_page\":\"/users/f56a6812-5a82-4fe8-a53b-e4c7d2771062\",\"provider\":\"default\",\"external_identifier\":null,\"auth_data\":null,\"email_notifications\":true}', '{\"token\":\"**********\"}', NULL),
(39, 52, 'directus_flows', '2179deea-f825-4eb4-b437-89efa1d5ab9e', '{\"name\":\"Test\",\"icon\":\"bolt\",\"color\":null,\"description\":null,\"status\":\"active\",\"accountability\":\"all\",\"trigger\":\"manual\",\"options\":{\"collections\":[\"articles\"]}}', '{\"name\":\"Test\",\"icon\":\"bolt\",\"color\":null,\"description\":null,\"status\":\"active\",\"accountability\":\"all\",\"trigger\":\"manual\",\"options\":{\"collections\":[\"articles\"]}}', NULL),
(40, 53, 'directus_collections', 'Articles_Section', '{\"collection\":\"Articles_Section\",\"icon\":\"folder\",\"note\":null,\"color\":null,\"translations\":null}', '{\"collection\":\"Articles_Section\",\"icon\":\"folder\",\"note\":null,\"color\":null,\"translations\":null}', NULL),
(41, 54, 'directus_collections', 'articles', '{\"collection\":\"articles\",\"icon\":null,\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":null,\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":\"sort\",\"accountability\":\"all\",\"color\":null,\"item_duplication_fields\":[],\"sort\":1,\"group\":\"Articles_Section\",\"collapse\":\"open\"}', '{\"sort\":1,\"group\":\"Articles_Section\"}', NULL),
(42, 55, 'directus_collections', 'Articles_Section', '{\"collection\":\"Articles_Section\",\"icon\":\"folder\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":null,\"archive_field\":null,\"archive_app_filter\":true,\"archive_value\":null,\"unarchive_value\":null,\"sort_field\":null,\"accountability\":\"all\",\"color\":null,\"item_duplication_fields\":null,\"sort\":1,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":1,\"group\":null}', NULL),
(43, 56, 'directus_fields', '11', '{\"hidden\":true,\"readonly\":true,\"interface\":\"input\",\"special\":\"uuid\",\"field\":\"id\",\"collection\":\"tags\"}', '{\"hidden\":true,\"readonly\":true,\"interface\":\"input\",\"special\":\"uuid\",\"field\":\"id\",\"collection\":\"tags\"}', NULL),
(44, 57, 'directus_fields', '12', '{\"width\":\"full\",\"options\":{\"choices\":[{\"text\":\"$t:published\",\"value\":\"published\"},{\"text\":\"$t:draft\",\"value\":\"draft\"},{\"text\":\"$t:archived\",\"value\":\"archived\"}]},\"interface\":\"select-dropdown\",\"display\":\"labels\",\"display_options\":{\"showAsDot\":true,\"choices\":[{\"text\":\"$t:published\",\"value\":\"published\",\"foreground\":\"#FFFFFF\",\"background\":\"var(--primary)\"},{\"text\":\"$t:draft\",\"value\":\"draft\",\"foreground\":\"#18222F\",\"background\":\"#D3DAE4\"},{\"text\":\"$t:archived\",\"value\":\"archived\",\"foreground\":\"#FFFFFF\",\"background\":\"var(--warning)\"}]},\"field\":\"status\",\"collection\":\"tags\"}', '{\"width\":\"full\",\"options\":{\"choices\":[{\"text\":\"$t:published\",\"value\":\"published\"},{\"text\":\"$t:draft\",\"value\":\"draft\"},{\"text\":\"$t:archived\",\"value\":\"archived\"}]},\"interface\":\"select-dropdown\",\"display\":\"labels\",\"display_options\":{\"showAsDot\":true,\"choices\":[{\"text\":\"$t:published\",\"value\":\"published\",\"foreground\":\"#FFFFFF\",\"background\":\"var(--primary)\"},{\"text\":\"$t:draft\",\"value\":\"draft\",\"foreground\":\"#18222F\",\"background\":\"#D3DAE4\"},{\"text\":\"$t:archived\",\"value\":\"archived\",\"foreground\":\"#FFFFFF\",\"background\":\"var(--warning)\"}]},\"field\":\"status\",\"collection\":\"tags\"}', NULL),
(45, 58, 'directus_fields', '13', '{\"interface\":\"input\",\"hidden\":true,\"field\":\"sort\",\"collection\":\"tags\"}', '{\"interface\":\"input\",\"hidden\":true,\"field\":\"sort\",\"collection\":\"tags\"}', NULL),
(46, 59, 'directus_fields', '14', '{\"special\":\"user-created\",\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"},\"display\":\"user\",\"readonly\":true,\"hidden\":true,\"width\":\"half\",\"field\":\"user_created\",\"collection\":\"tags\"}', '{\"special\":\"user-created\",\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"},\"display\":\"user\",\"readonly\":true,\"hidden\":true,\"width\":\"half\",\"field\":\"user_created\",\"collection\":\"tags\"}', NULL),
(47, 60, 'directus_fields', '15', '{\"special\":\"date-created\",\"interface\":\"datetime\",\"readonly\":true,\"hidden\":true,\"width\":\"half\",\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"field\":\"date_created\",\"collection\":\"tags\"}', '{\"special\":\"date-created\",\"interface\":\"datetime\",\"readonly\":true,\"hidden\":true,\"width\":\"half\",\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"field\":\"date_created\",\"collection\":\"tags\"}', NULL),
(48, 61, 'directus_fields', '16', '{\"special\":\"user-updated\",\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"},\"display\":\"user\",\"readonly\":true,\"hidden\":true,\"width\":\"half\",\"field\":\"user_updated\",\"collection\":\"tags\"}', '{\"special\":\"user-updated\",\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"},\"display\":\"user\",\"readonly\":true,\"hidden\":true,\"width\":\"half\",\"field\":\"user_updated\",\"collection\":\"tags\"}', NULL),
(49, 62, 'directus_fields', '17', '{\"special\":\"date-updated\",\"interface\":\"datetime\",\"readonly\":true,\"hidden\":true,\"width\":\"half\",\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"field\":\"date_updated\",\"collection\":\"tags\"}', '{\"special\":\"date-updated\",\"interface\":\"datetime\",\"readonly\":true,\"hidden\":true,\"width\":\"half\",\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"field\":\"date_updated\",\"collection\":\"tags\"}', NULL),
(50, 63, 'directus_collections', 'tags', '{\"sort_field\":\"sort\",\"archive_field\":\"status\",\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"singleton\":false,\"collection\":\"tags\"}', '{\"sort_field\":\"sort\",\"archive_field\":\"status\",\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"singleton\":false,\"collection\":\"tags\"}', NULL),
(51, 64, 'directus_fields', '18', '{\"interface\":\"input\",\"special\":null,\"collection\":\"tags\",\"field\":\"tag\"}', '{\"interface\":\"input\",\"special\":null,\"collection\":\"tags\",\"field\":\"tag\"}', NULL),
(52, 65, 'directus_fields', '19', '{\"interface\":\"select-dropdown-m2o\",\"special\":\"m2o\",\"options\":{\"template\":\"{{title}}\"},\"required\":true,\"collection\":\"tags\",\"field\":\"article\"}', '{\"interface\":\"select-dropdown-m2o\",\"special\":\"m2o\",\"options\":{\"template\":\"{{title}}\"},\"required\":true,\"collection\":\"tags\",\"field\":\"article\"}', NULL),
(53, 66, 'directus_fields', '18', '{\"id\":18,\"collection\":\"tags\",\"field\":\"tag\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":null,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null,\"validation\":null,\"validation_message\":null}', '{\"collection\":\"tags\",\"field\":\"tag\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":null,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null,\"validation\":null,\"validation_message\":null}', NULL),
(54, 67, 'directus_fields', '18', '{\"id\":18,\"collection\":\"tags\",\"field\":\"tag\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":null,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":true,\"group\":null,\"validation\":null,\"validation_message\":null}', '{\"collection\":\"tags\",\"field\":\"tag\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":null,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":true,\"group\":null,\"validation\":null,\"validation_message\":null}', NULL),
(55, 68, 'directus_collections', 'tags', '{\"collection\":\"tags\",\"icon\":null,\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":null,\"archive_field\":null,\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":\"sort\",\"accountability\":\"all\",\"color\":null,\"item_duplication_fields\":null,\"sort\":1,\"group\":\"articles\",\"collapse\":\"open\"}', '{\"sort\":1,\"group\":\"articles\"}', NULL),
(56, 69, 'directus_collections', 'Articles_Section', '{\"collection\":\"Articles_Section\",\"icon\":\"folder\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":null,\"archive_field\":null,\"archive_app_filter\":true,\"archive_value\":null,\"unarchive_value\":null,\"sort_field\":null,\"accountability\":\"all\",\"color\":null,\"item_duplication_fields\":null,\"sort\":1,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":1,\"group\":null}', NULL),
(57, 70, 'directus_collections', 'Articles_Section', '{\"collection\":\"Articles_Section\",\"icon\":\"folder\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":null,\"archive_field\":null,\"archive_app_filter\":true,\"archive_value\":null,\"unarchive_value\":null,\"sort_field\":null,\"accountability\":\"all\",\"color\":null,\"item_duplication_fields\":null,\"sort\":1,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":1,\"group\":null}', NULL),
(58, 71, 'directus_collections', 'tags', '{\"collection\":\"tags\",\"icon\":null,\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":null,\"archive_field\":null,\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":\"sort\",\"accountability\":\"all\",\"color\":null,\"item_duplication_fields\":null,\"sort\":2,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":2,\"group\":null}', NULL),
(59, 72, 'directus_collections', 'Articles_Section', '{\"collection\":\"Articles_Section\",\"icon\":\"folder\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":null,\"archive_field\":null,\"archive_app_filter\":true,\"archive_value\":null,\"unarchive_value\":null,\"sort_field\":null,\"accountability\":\"all\",\"color\":null,\"item_duplication_fields\":null,\"sort\":1,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":1,\"group\":null}', NULL),
(60, 73, 'directus_collections', 'tags', '{\"collection\":\"tags\",\"icon\":null,\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":null,\"archive_field\":null,\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":\"sort\",\"accountability\":\"all\",\"color\":null,\"item_duplication_fields\":null,\"sort\":1,\"group\":\"articles\",\"collapse\":\"open\"}', '{\"sort\":1,\"group\":\"articles\"}', NULL),
(61, 74, 'directus_collections', 'articles', '{\"collection\":\"articles\",\"icon\":null,\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":null,\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":\"sort\",\"accountability\":\"all\",\"color\":null,\"item_duplication_fields\":[],\"sort\":1,\"group\":\"Articles_Section\",\"collapse\":\"closed\"}', '{\"collapse\":\"closed\"}', NULL),
(62, 75, 'directus_collections', 'Articles_Section', '{\"collection\":\"Articles_Section\",\"icon\":\"folder\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":null,\"archive_field\":null,\"archive_app_filter\":true,\"archive_value\":null,\"unarchive_value\":null,\"sort_field\":null,\"accountability\":\"all\",\"color\":null,\"item_duplication_fields\":null,\"sort\":1,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":1,\"group\":null}', NULL),
(63, 76, 'directus_collections', 'articles', '{\"collection\":\"articles\",\"icon\":null,\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":null,\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":\"sort\",\"accountability\":\"all\",\"color\":null,\"item_duplication_fields\":[],\"sort\":2,\"group\":null,\"collapse\":\"closed\"}', '{\"sort\":2,\"group\":null}', NULL),
(64, 78, 'directus_fields', '20', '{\"interface\":\"tags\",\"special\":\"cast-json\",\"options\":{\"placeholder\":\"Type Tags\",\"iconLeft\":\"account_circle\",\"iconRight\":\"backup\"},\"collection\":\"articles\",\"field\":\"tags\"}', '{\"interface\":\"tags\",\"special\":\"cast-json\",\"options\":{\"placeholder\":\"Type Tags\",\"iconLeft\":\"account_circle\",\"iconRight\":\"backup\"},\"collection\":\"articles\",\"field\":\"tags\"}', NULL),
(65, 79, 'articles', '195c2a95-8520-42b3-86e2-59021ba5be08', '{\"tags\":[\"test\",\"dasda\",\"dasdasd\",\"asdasdas\"],\"title\":\"testdasd\",\"status\":\"published\"}', '{\"tags\":[\"test\",\"dasda\",\"dasdasd\",\"asdasdas\"],\"title\":\"testdasd\",\"status\":\"published\"}', NULL),
(66, 80, 'directus_flows', '2179deea-f825-4eb4-b437-89efa1d5ab9e', '{\"steps\":[],\"data\":{\"$trigger\":{\"path\":\"/trigger/2179deea-f825-4eb4-b437-89efa1d5ab9e\",\"query\":{},\"body\":{\"collection\":\"articles\",\"keys\":[\"5f122f9c-2dce-4a9d-b848-9ebff5408b3e\"]},\"method\":\"POST\",\"headers\":{\"host\":\"localhost:8055\",\"connection\":\"keep-alive\",\"content-length\":\"73\",\"sec-ch-ua\":\"\\\"Chromium\\\";v=\\\"104\\\", \\\" Not A;Brand\\\";v=\\\"99\\\", \\\"Google Chrome\\\";v=\\\"104\\\"\",\"dnt\":\"1\",\"sec-ch-ua-mobile\":\"?0\",\"authorization\":\"--redacted--\",\"content-type\":\"application/json\",\"accept\":\"application/json, text/plain, */*\",\"user-agent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36\",\"cache-control\":\"no-store\",\"sec-ch-ua-platform\":\"\\\"Windows\\\"\",\"origin\":\"http://localhost:8055\",\"sec-fetch-site\":\"same-origin\",\"sec-fetch-mode\":\"cors\",\"sec-fetch-dest\":\"empty\",\"referer\":\"http://localhost:8055/admin/content/articles\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"en-US,en;q=0.9,ar;q=0.8\",\"cookie\":\"--redacted--\"}},\"$last\":{\"path\":\"/trigger/2179deea-f825-4eb4-b437-89efa1d5ab9e\",\"query\":{},\"body\":{\"collection\":\"articles\",\"keys\":[\"5f122f9c-2dce-4a9d-b848-9ebff5408b3e\"]},\"method\":\"POST\",\"headers\":{\"host\":\"localhost:8055\",\"connection\":\"keep-alive\",\"content-length\":\"73\",\"sec-ch-ua\":\"\\\"Chromium\\\";v=\\\"104\\\", \\\" Not A;Brand\\\";v=\\\"99\\\", \\\"Google Chrome\\\";v=\\\"104\\\"\",\"dnt\":\"1\",\"sec-ch-ua-mobile\":\"?0\",\"authorization\":\"--redacted--\",\"content-type\":\"application/json\",\"accept\":\"application/json, text/plain, */*\",\"user-agent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36\",\"cache-control\":\"no-store\",\"sec-ch-ua-platform\":\"\\\"Windows\\\"\",\"origin\":\"http://localhost:8055\",\"sec-fetch-site\":\"same-origin\",\"sec-fetch-mode\":\"cors\",\"sec-fetch-dest\":\"empty\",\"referer\":\"http://localhost:8055/admin/content/articles\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"en-US,en;q=0.9,ar;q=0.8\",\"cookie\":\"--redacted--\"}},\"$accountability\":{\"user\":\"f56a6812-5a82-4fe8-a53b-e4c7d2771062\",\"role\":\"48d494a0-099d-4b17-b390-1930bcb490e5\",\"admin\":true,\"app\":true,\"ip\":\"127.0.0.1\",\"userAgent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36\"}}}', NULL, NULL),
(67, 82, 'tags', '83c2897c-7d58-45ad-8137-31645dcb5556', '{\"tag\":\"Tag 1\"}', '{\"tag\":\"Tag 1\"}', NULL),
(68, 83, 'tags', 'dfa2dc08-6a72-463e-bcc4-67873bd6ed78', '{\"tag\":\"Tag 2\"}', '{\"tag\":\"Tag 2\"}', NULL),
(69, 84, 'tags', '88312797-326c-4249-8647-f4e95722feb9', '{\"tag\":\"Tag 3\"}', '{\"tag\":\"Tag 3\"}', NULL),
(70, 85, 'directus_fields', '21', '{\"interface\":\"list-o2m\",\"special\":\"o2m\",\"required\":false,\"options\":{\"template\":\"{{tag}}\",\"enableSearchFilter\":true,\"enableLink\":true},\"collection\":\"articles\",\"field\":\"tags\"}', '{\"interface\":\"list-o2m\",\"special\":\"o2m\",\"required\":false,\"options\":{\"template\":\"{{tag}}\",\"enableSearchFilter\":true,\"enableLink\":true},\"collection\":\"articles\",\"field\":\"tags\"}', NULL),
(71, 86, 'directus_fields', '10', '{\"id\":10,\"collection\":\"articles\",\"field\":\"description\",\"special\":null,\"interface\":\"input-rich-text-html\",\"options\":{\"imageToken\":\"token\"},\"display\":null,\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":null,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null,\"validation\":null,\"validation_message\":null}', '{\"collection\":\"articles\",\"field\":\"description\",\"special\":null,\"interface\":\"input-rich-text-html\",\"options\":{\"imageToken\":\"token\"},\"display\":null,\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":null,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null,\"validation\":null,\"validation_message\":null}', NULL),
(72, 87, 'directus_fields', '10', '{\"id\":10,\"collection\":\"articles\",\"field\":\"description\",\"special\":null,\"interface\":\"input-rich-text-html\",\"options\":{\"imageToken\":\"token\"},\"display\":\"formatted-value\",\"display_options\":{\"format\":true},\"readonly\":false,\"hidden\":false,\"sort\":null,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null,\"validation\":null,\"validation_message\":null}', '{\"collection\":\"articles\",\"field\":\"description\",\"special\":null,\"interface\":\"input-rich-text-html\",\"options\":{\"imageToken\":\"token\"},\"display\":\"formatted-value\",\"display_options\":{\"format\":true},\"readonly\":false,\"hidden\":false,\"sort\":null,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null,\"validation\":null,\"validation_message\":null}', NULL),
(73, 88, 'directus_fields', '18', '{\"id\":18,\"collection\":\"tags\",\"field\":\"tag\",\"special\":null,\"interface\":\"input\",\"options\":{\"slug\":true},\"display\":\"formatted-value\",\"display_options\":{\"format\":true},\"readonly\":false,\"hidden\":false,\"sort\":null,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":true,\"group\":null,\"validation\":null,\"validation_message\":null}', '{\"collection\":\"tags\",\"field\":\"tag\",\"special\":null,\"interface\":\"input\",\"options\":{\"slug\":true},\"display\":\"formatted-value\",\"display_options\":{\"format\":true},\"readonly\":false,\"hidden\":false,\"sort\":null,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":true,\"group\":null,\"validation\":null,\"validation_message\":null}', NULL),
(74, 89, 'directus_fields', '22', '{\"interface\":\"input\",\"special\":null,\"required\":true,\"collection\":\"tags\",\"field\":\"Title\"}', '{\"interface\":\"input\",\"special\":null,\"required\":true,\"collection\":\"tags\",\"field\":\"Title\"}', NULL),
(75, 90, 'directus_fields', '23', '{\"interface\":\"list-m2m\",\"special\":\"m2m\",\"options\":{\"enableSearchFilter\":true,\"enableLink\":true},\"collection\":\"tags\",\"field\":\"tags\"}', '{\"interface\":\"list-m2m\",\"special\":\"m2m\",\"options\":{\"enableSearchFilter\":true,\"enableLink\":true},\"collection\":\"tags\",\"field\":\"tags\"}', NULL),
(76, 91, 'directus_fields', '24', '{\"hidden\":true,\"field\":\"id\",\"collection\":\"tags_articles\"}', '{\"hidden\":true,\"field\":\"id\",\"collection\":\"tags_articles\"}', NULL),
(77, 92, 'directus_collections', 'tags_articles', '{\"hidden\":true,\"icon\":\"import_export\",\"collection\":\"tags_articles\"}', '{\"hidden\":true,\"icon\":\"import_export\",\"collection\":\"tags_articles\"}', NULL),
(78, 93, 'directus_fields', '25', '{\"hidden\":true,\"collection\":\"tags_articles\",\"field\":\"tags_id\"}', '{\"hidden\":true,\"collection\":\"tags_articles\",\"field\":\"tags_id\"}', NULL),
(79, 94, 'directus_fields', '26', '{\"hidden\":true,\"collection\":\"tags_articles\",\"field\":\"articles_id\"}', '{\"hidden\":true,\"collection\":\"tags_articles\",\"field\":\"articles_id\"}', NULL),
(80, 96, 'directus_fields', '27', '{\"interface\":\"list-m2m\",\"special\":\"m2m\",\"required\":false,\"options\":{\"enableSearchFilter\":true,\"enableLink\":true},\"collection\":\"articles\",\"field\":\"tags\"}', '{\"interface\":\"list-m2m\",\"special\":\"m2m\",\"required\":false,\"options\":{\"enableSearchFilter\":true,\"enableLink\":true},\"collection\":\"articles\",\"field\":\"tags\"}', NULL),
(81, 97, 'directus_fields', '28', '{\"hidden\":true,\"field\":\"id\",\"collection\":\"articles_tags\"}', '{\"hidden\":true,\"field\":\"id\",\"collection\":\"articles_tags\"}', NULL),
(82, 98, 'directus_collections', 'articles_tags', '{\"hidden\":true,\"icon\":\"import_export\",\"collection\":\"articles_tags\"}', '{\"hidden\":true,\"icon\":\"import_export\",\"collection\":\"articles_tags\"}', NULL),
(83, 99, 'directus_fields', '29', '{\"hidden\":true,\"collection\":\"articles_tags\",\"field\":\"articles_id\"}', '{\"hidden\":true,\"collection\":\"articles_tags\",\"field\":\"articles_id\"}', NULL),
(84, 100, 'directus_fields', '30', '{\"hidden\":true,\"collection\":\"articles_tags\",\"field\":\"tags_id\"}', '{\"hidden\":true,\"collection\":\"articles_tags\",\"field\":\"tags_id\"}', NULL),
(85, 101, 'directus_fields', '27', '{\"id\":27,\"collection\":\"articles\",\"field\":\"tags\",\"special\":[\"m2m\"],\"interface\":\"list-m2m\",\"options\":{\"enableSearchFilter\":true,\"enableLink\":true},\"display\":\"related-values\",\"display_options\":{\"template\":\"{{tags_id.Title}}- {{articles_id.title}}\"},\"readonly\":false,\"hidden\":false,\"sort\":null,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null,\"validation\":null,\"validation_message\":null}', '{\"collection\":\"articles\",\"field\":\"tags\",\"special\":[\"m2m\"],\"interface\":\"list-m2m\",\"options\":{\"enableSearchFilter\":true,\"enableLink\":true},\"display\":\"related-values\",\"display_options\":{\"template\":\"{{tags_id.Title}}- {{articles_id.title}}\"},\"readonly\":false,\"hidden\":false,\"sort\":null,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null,\"validation\":null,\"validation_message\":null}', NULL),
(86, 102, 'directus_fields', '27', '{\"id\":27,\"collection\":\"articles\",\"field\":\"tags\",\"special\":[\"m2m\"],\"interface\":\"list-m2m\",\"options\":{\"enableSearchFilter\":true,\"enableLink\":true,\"layout\":\"table\",\"fields\":[\"tags_id.tag\"]},\"display\":\"related-values\",\"display_options\":{\"template\":\"{{tags_id.Title}}- {{articles_id.title}}\"},\"readonly\":false,\"hidden\":false,\"sort\":null,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null,\"validation\":null,\"validation_message\":null}', '{\"collection\":\"articles\",\"field\":\"tags\",\"special\":[\"m2m\"],\"interface\":\"list-m2m\",\"options\":{\"enableSearchFilter\":true,\"enableLink\":true,\"layout\":\"table\",\"fields\":[\"tags_id.tag\"]},\"display\":\"related-values\",\"display_options\":{\"template\":\"{{tags_id.Title}}- {{articles_id.title}}\"},\"readonly\":false,\"hidden\":false,\"sort\":null,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null,\"validation\":null,\"validation_message\":null}', NULL),
(87, 103, 'directus_fields', '27', '{\"id\":27,\"collection\":\"articles\",\"field\":\"tags\",\"special\":[\"m2m\"],\"interface\":\"list-m2m\",\"options\":{\"enableSearchFilter\":true,\"enableLink\":true,\"fields\":[\"tags_id.tag\"],\"template\":\"{{tags_id.Title}}-{{tags_id.tag}}\"},\"display\":\"related-values\",\"display_options\":{\"template\":\"{{tags_id.Title}}- {{articles_id.title}}\"},\"readonly\":false,\"hidden\":false,\"sort\":null,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null,\"validation\":null,\"validation_message\":null}', '{\"collection\":\"articles\",\"field\":\"tags\",\"special\":[\"m2m\"],\"interface\":\"list-m2m\",\"options\":{\"enableSearchFilter\":true,\"enableLink\":true,\"fields\":[\"tags_id.tag\"],\"template\":\"{{tags_id.Title}}-{{tags_id.tag}}\"},\"display\":\"related-values\",\"display_options\":{\"template\":\"{{tags_id.Title}}- {{articles_id.title}}\"},\"readonly\":false,\"hidden\":false,\"sort\":null,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null,\"validation\":null,\"validation_message\":null}', NULL),
(88, 104, 'tags', '83c2897c-7d58-45ad-8137-31645dcb5556', '{\"id\":\"83c2897c-7d58-45ad-8137-31645dcb5556\",\"sort\":null,\"user_created\":\"f56a6812-5a82-4fe8-a53b-e4c7d2771062\",\"date_created\":\"2022-09-01T18:46:56.000Z\",\"user_updated\":\"f56a6812-5a82-4fe8-a53b-e4c7d2771062\",\"date_updated\":\"2022-09-01T20:02:34.000Z\",\"tag\":\"css\",\"Title\":\"CSS\"}', '{\"tag\":\"css\",\"Title\":\"CSS\",\"user_updated\":\"f56a6812-5a82-4fe8-a53b-e4c7d2771062\",\"date_updated\":\"2022-09-01T20:02:34.229Z\"}', NULL),
(89, 105, 'tags', '88312797-326c-4249-8647-f4e95722feb9', '{\"id\":\"88312797-326c-4249-8647-f4e95722feb9\",\"sort\":null,\"user_created\":\"f56a6812-5a82-4fe8-a53b-e4c7d2771062\",\"date_created\":\"2022-09-01T18:47:05.000Z\",\"user_updated\":\"f56a6812-5a82-4fe8-a53b-e4c7d2771062\",\"date_updated\":\"2022-09-01T20:02:54.000Z\",\"tag\":\"java-script\",\"Title\":\"JavaScript\"}', '{\"tag\":\"java-script\",\"Title\":\"JavaScript\",\"user_updated\":\"f56a6812-5a82-4fe8-a53b-e4c7d2771062\",\"date_updated\":\"2022-09-01T20:02:54.901Z\"}', NULL),
(90, 106, 'tags', 'dfa2dc08-6a72-463e-bcc4-67873bd6ed78', '{\"id\":\"dfa2dc08-6a72-463e-bcc4-67873bd6ed78\",\"sort\":null,\"user_created\":\"f56a6812-5a82-4fe8-a53b-e4c7d2771062\",\"date_created\":\"2022-09-01T18:47:01.000Z\",\"user_updated\":\"f56a6812-5a82-4fe8-a53b-e4c7d2771062\",\"date_updated\":\"2022-09-01T20:03:05.000Z\",\"tag\":\"php\",\"Title\":\"PHP\"}', '{\"tag\":\"php\",\"Title\":\"PHP\",\"user_updated\":\"f56a6812-5a82-4fe8-a53b-e4c7d2771062\",\"date_updated\":\"2022-09-01T20:03:05.301Z\"}', NULL),
(91, 107, 'directus_files', 'b22fdee9-c4ff-4ceb-b2d4-4a68cddc696d', '{\"title\":\"17f853a5 8dab 4306 875b 0ae7435c9696\",\"filename_download\":\"17f853a5-8dab-4306-875b-0ae7435c9696.jpg\",\"type\":\"image/jpeg\",\"storage\":\"local\"}', '{\"title\":\"17f853a5 8dab 4306 875b 0ae7435c9696\",\"filename_download\":\"17f853a5-8dab-4306-875b-0ae7435c9696.jpg\",\"type\":\"image/jpeg\",\"storage\":\"local\"}', NULL),
(92, 108, 'articles', '5f122f9c-2dce-4a9d-b848-9ebff5408b3e', '{\"id\":\"5f122f9c-2dce-4a9d-b848-9ebff5408b3e\",\"status\":\"published\",\"sort\":null,\"user_created\":\"f56a6812-5a82-4fe8-a53b-e4c7d2771062\",\"date_created\":\"2022-09-01T17:48:02.000Z\",\"user_updated\":\"f56a6812-5a82-4fe8-a53b-e4c7d2771062\",\"date_updated\":\"2022-09-01T20:04:13.000Z\",\"title\":\"Test\",\"description\":\"<p>Hello World&nbsp;</p>\\n<p><img src=\\\"http://localhost:8055/assets/b22fdee9-c4ff-4ceb-b2d4-4a68cddc696d?access_token=token&amp;width=734&amp;height=1280\\\" alt=\\\"17f853a5 8dab 4306 875b 0ae7435c9696\\\" /></p>\\n<p>&nbsp;</p>\",\"tags\":[]}', '{\"description\":\"<p>Hello World&nbsp;</p>\\n<p><img src=\\\"http://localhost:8055/assets/b22fdee9-c4ff-4ceb-b2d4-4a68cddc696d?access_token=token&amp;width=734&amp;height=1280\\\" alt=\\\"17f853a5 8dab 4306 875b 0ae7435c9696\\\" /></p>\\n<p>&nbsp;</p>\",\"user_updated\":\"f56a6812-5a82-4fe8-a53b-e4c7d2771062\",\"date_updated\":\"2022-09-01T20:04:13.245Z\"}', NULL),
(95, 111, 'articles', '5f122f9c-2dce-4a9d-b848-9ebff5408b3e', '{\"id\":\"5f122f9c-2dce-4a9d-b848-9ebff5408b3e\",\"status\":\"published\",\"sort\":null,\"user_created\":\"f56a6812-5a82-4fe8-a53b-e4c7d2771062\",\"date_created\":\"2022-09-01T17:48:02.000Z\",\"user_updated\":\"f56a6812-5a82-4fe8-a53b-e4c7d2771062\",\"date_updated\":\"2022-09-01T20:05:49.000Z\",\"title\":\"Test\",\"description\":\"<p>Hello World&nbsp;</p>\\n<p><img src=\\\"http://localhost:8055/assets/b22fdee9-c4ff-4ceb-b2d4-4a68cddc696d?access_token=token&amp;width=734&amp;height=1280\\\" alt=\\\"17f853a5 8dab 4306 875b 0ae7435c9696\\\" /></p>\\n<p>&nbsp;</p>\",\"tags\":[1,2]}', '{\"user_updated\":\"f56a6812-5a82-4fe8-a53b-e4c7d2771062\",\"date_updated\":\"2022-09-01T20:05:49.669Z\"}', NULL);
INSERT INTO `directus_revisions` (`id`, `activity`, `collection`, `item`, `data`, `delta`, `parent`) VALUES
(96, 112, 'directus_fields', '10', '{\"id\":10,\"collection\":\"articles\",\"field\":\"description\",\"special\":null,\"interface\":\"input-rich-text-html\",\"options\":{\"defaultView\":{\"center\":{\"lng\":0,\"lat\":0},\"zoom\":0,\"bearing\":0,\"pitch\":0},\"geometryType\":\"Point\"},\"display\":\"raw\",\"display_options\":{},\"readonly\":false,\"hidden\":false,\"sort\":null,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null,\"validation\":null,\"validation_message\":null}', '{\"collection\":\"articles\",\"field\":\"description\",\"special\":null,\"interface\":\"input-rich-text-html\",\"options\":{\"defaultView\":{\"center\":{\"lng\":0,\"lat\":0},\"zoom\":0,\"bearing\":0,\"pitch\":0},\"geometryType\":\"Point\"},\"display\":\"raw\",\"display_options\":{},\"readonly\":false,\"hidden\":false,\"sort\":null,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null,\"validation\":null,\"validation_message\":null}', NULL),
(97, 113, 'directus_fields', '31', '{\"interface\":\"list-m2m\",\"special\":\"m2m\",\"options\":{\"enableLink\":true,\"enableSearchFilter\":true},\"collection\":\"tags\",\"field\":\"articles\"}', '{\"interface\":\"list-m2m\",\"special\":\"m2m\",\"options\":{\"enableLink\":true,\"enableSearchFilter\":true},\"collection\":\"tags\",\"field\":\"articles\"}', NULL),
(98, 114, 'directus_fields', '32', '{\"hidden\":true,\"field\":\"id\",\"collection\":\"tags_articles\"}', '{\"hidden\":true,\"field\":\"id\",\"collection\":\"tags_articles\"}', NULL),
(99, 115, 'directus_collections', 'tags_articles', '{\"hidden\":true,\"icon\":\"import_export\",\"collection\":\"tags_articles\"}', '{\"hidden\":true,\"icon\":\"import_export\",\"collection\":\"tags_articles\"}', NULL),
(100, 116, 'directus_fields', '33', '{\"hidden\":true,\"collection\":\"tags_articles\",\"field\":\"tags_id\"}', '{\"hidden\":true,\"collection\":\"tags_articles\",\"field\":\"tags_id\"}', NULL),
(101, 117, 'directus_fields', '34', '{\"hidden\":true,\"collection\":\"tags_articles\",\"field\":\"articles_id\"}', '{\"hidden\":true,\"collection\":\"tags_articles\",\"field\":\"articles_id\"}', NULL),
(102, 119, 'directus_fields', '35', '{\"interface\":\"list-m2m\",\"special\":\"m2m\",\"options\":{\"enableLink\":true,\"enableSearchFilter\":true},\"collection\":\"articles\",\"field\":\"tags\"}', '{\"interface\":\"list-m2m\",\"special\":\"m2m\",\"options\":{\"enableLink\":true,\"enableSearchFilter\":true},\"collection\":\"articles\",\"field\":\"tags\"}', NULL),
(103, 120, 'directus_fields', '36', '{\"hidden\":true,\"field\":\"id\",\"collection\":\"articles_tags_articles\"}', '{\"hidden\":true,\"field\":\"id\",\"collection\":\"articles_tags_articles\"}', NULL),
(104, 121, 'directus_collections', 'articles_tags_articles', '{\"hidden\":true,\"icon\":\"import_export\",\"collection\":\"articles_tags_articles\"}', '{\"hidden\":true,\"icon\":\"import_export\",\"collection\":\"articles_tags_articles\"}', NULL),
(105, 122, 'directus_fields', '37', '{\"hidden\":true,\"collection\":\"articles_tags_articles\",\"field\":\"articles_id\"}', '{\"hidden\":true,\"collection\":\"articles_tags_articles\",\"field\":\"articles_id\"}', NULL),
(106, 123, 'directus_fields', '38', '{\"hidden\":true,\"collection\":\"articles_tags_articles\",\"field\":\"tags_articles_id\"}', '{\"hidden\":true,\"collection\":\"articles_tags_articles\",\"field\":\"tags_articles_id\"}', NULL),
(107, 124, 'directus_fields', '35', '{\"id\":35,\"collection\":\"articles\",\"field\":\"tags\",\"special\":[\"m2m\"],\"interface\":\"list-m2m\",\"options\":{\"enableLink\":true,\"enableSearchFilter\":true,\"template\":\"{{tags_articles_id.tags_id.Title}}\"},\"display\":null,\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":null,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null,\"validation\":null,\"validation_message\":null}', '{\"collection\":\"articles\",\"field\":\"tags\",\"special\":[\"m2m\"],\"interface\":\"list-m2m\",\"options\":{\"enableLink\":true,\"enableSearchFilter\":true,\"template\":\"{{tags_articles_id.tags_id.Title}}\"},\"display\":null,\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":null,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null,\"validation\":null,\"validation_message\":null}', NULL),
(108, 125, 'directus_files', '0ad80a21-9f6f-43fc-a88d-77a8918f347d', '{\"title\":\"17f853a5 8dab 4306 875b 0ae7435c9696\",\"filename_download\":\"17f853a5-8dab-4306-875b-0ae7435c9696.jpg\",\"type\":\"image/jpeg\",\"storage\":\"local\"}', '{\"title\":\"17f853a5 8dab 4306 875b 0ae7435c9696\",\"filename_download\":\"17f853a5-8dab-4306-875b-0ae7435c9696.jpg\",\"type\":\"image/jpeg\",\"storage\":\"local\"}', NULL),
(109, 128, 'directus_fields', '39', '{\"interface\":\"list-m2m\",\"special\":\"m2m\",\"required\":true,\"options\":{\"enableSearchFilter\":true,\"enableLink\":true},\"display\":\"related-values\",\"collection\":\"articles\",\"field\":\"tags\"}', '{\"interface\":\"list-m2m\",\"special\":\"m2m\",\"required\":true,\"options\":{\"enableSearchFilter\":true,\"enableLink\":true},\"display\":\"related-values\",\"collection\":\"articles\",\"field\":\"tags\"}', NULL),
(110, 129, 'directus_fields', '40', '{\"hidden\":true,\"field\":\"id\",\"collection\":\"articles_tags\"}', '{\"hidden\":true,\"field\":\"id\",\"collection\":\"articles_tags\"}', NULL),
(111, 130, 'directus_collections', 'articles_tags', '{\"hidden\":true,\"icon\":\"import_export\",\"collection\":\"articles_tags\"}', '{\"hidden\":true,\"icon\":\"import_export\",\"collection\":\"articles_tags\"}', NULL),
(112, 131, 'directus_fields', '41', '{\"special\":\"m2m\",\"interface\":\"list-m2m\",\"collection\":\"tags\",\"field\":\"articles\"}', '{\"special\":\"m2m\",\"interface\":\"list-m2m\",\"collection\":\"tags\",\"field\":\"articles\"}', NULL),
(113, 132, 'directus_fields', '42', '{\"hidden\":true,\"collection\":\"articles_tags\",\"field\":\"articles_id\"}', '{\"hidden\":true,\"collection\":\"articles_tags\",\"field\":\"articles_id\"}', NULL),
(114, 133, 'directus_fields', '43', '{\"hidden\":true,\"collection\":\"articles_tags\",\"field\":\"tags_id\"}', '{\"hidden\":true,\"collection\":\"articles_tags\",\"field\":\"tags_id\"}', NULL),
(115, 134, 'articles_tags', '1', '{\"articles_id\":\"5f122f9c-2dce-4a9d-b848-9ebff5408b3e\",\"tags_id\":{\"id\":\"83c2897c-7d58-45ad-8137-31645dcb5556\"}}', '{\"articles_id\":\"5f122f9c-2dce-4a9d-b848-9ebff5408b3e\",\"tags_id\":{\"id\":\"83c2897c-7d58-45ad-8137-31645dcb5556\"}}', 117),
(116, 135, 'articles_tags', '2', '{\"articles_id\":\"5f122f9c-2dce-4a9d-b848-9ebff5408b3e\",\"tags_id\":{\"id\":\"88312797-326c-4249-8647-f4e95722feb9\"}}', '{\"articles_id\":\"5f122f9c-2dce-4a9d-b848-9ebff5408b3e\",\"tags_id\":{\"id\":\"88312797-326c-4249-8647-f4e95722feb9\"}}', 117),
(117, 136, 'articles', '5f122f9c-2dce-4a9d-b848-9ebff5408b3e', '{\"id\":\"5f122f9c-2dce-4a9d-b848-9ebff5408b3e\",\"status\":\"published\",\"sort\":null,\"user_created\":\"f56a6812-5a82-4fe8-a53b-e4c7d2771062\",\"date_created\":\"2022-09-01T17:48:02.000Z\",\"user_updated\":\"f56a6812-5a82-4fe8-a53b-e4c7d2771062\",\"date_updated\":\"2022-09-01T20:15:34.000Z\",\"title\":\"Test\",\"description\":\"<p>Hello World&nbsp;</p>\\n<p><img src=\\\"http://localhost:8055/assets/b22fdee9-c4ff-4ceb-b2d4-4a68cddc696d?access_token=token&amp;width=734&amp;height=1280\\\" alt=\\\"17f853a5 8dab 4306 875b 0ae7435c9696\\\" /></p>\\n<p>&nbsp;</p>\",\"tags\":[1,2]}', '{\"user_updated\":\"f56a6812-5a82-4fe8-a53b-e4c7d2771062\",\"date_updated\":\"2022-09-01T20:15:34.238Z\"}', NULL),
(118, 137, 'directus_fields', '39', '{\"id\":39,\"collection\":\"articles\",\"field\":\"tags\",\"special\":[\"m2m\"],\"interface\":\"list-m2m\",\"options\":{\"enableSearchFilter\":true,\"enableLink\":true,\"template\":\"{{tags_id.Title}}\"},\"display\":\"related-values\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":null,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":true,\"group\":null,\"validation\":null,\"validation_message\":null}', '{\"collection\":\"articles\",\"field\":\"tags\",\"special\":[\"m2m\"],\"interface\":\"list-m2m\",\"options\":{\"enableSearchFilter\":true,\"enableLink\":true,\"template\":\"{{tags_id.Title}}\"},\"display\":\"related-values\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":null,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":true,\"group\":null,\"validation\":null,\"validation_message\":null}', NULL),
(119, 138, 'directus_fields', '41', '{\"id\":41,\"collection\":\"tags\",\"field\":\"articles\",\"special\":[\"m2m\"],\"interface\":\"list-m2m\",\"options\":{\"template\":\"{{articles_id.title}}\"},\"display\":null,\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":null,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null,\"validation\":null,\"validation_message\":null}', '{\"collection\":\"tags\",\"field\":\"articles\",\"special\":[\"m2m\"],\"interface\":\"list-m2m\",\"options\":{\"template\":\"{{articles_id.title}}\"},\"display\":null,\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":null,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null,\"validation\":null,\"validation_message\":null}', NULL),
(120, 139, 'directus_files', '8837d218-fff1-4c5a-b35d-54dedc0c85b1', '{\"title\":\"17f853a5 8dab 4306 875b 0ae7435c9696\",\"filename_download\":\"17f853a5-8dab-4306-875b-0ae7435c9696.jpg\",\"type\":\"image/jpeg\",\"storage\":\"local\"}', '{\"title\":\"17f853a5 8dab 4306 875b 0ae7435c9696\",\"filename_download\":\"17f853a5-8dab-4306-875b-0ae7435c9696.jpg\",\"type\":\"image/jpeg\",\"storage\":\"local\"}', NULL),
(121, 140, 'articles_tags', '3', '{\"articles_id\":\"a0f9e69d-8144-4279-9903-8d7aae37b85a\",\"tags_id\":{\"id\":\"88312797-326c-4249-8647-f4e95722feb9\"}}', '{\"articles_id\":\"a0f9e69d-8144-4279-9903-8d7aae37b85a\",\"tags_id\":{\"id\":\"88312797-326c-4249-8647-f4e95722feb9\"}}', 123),
(122, 141, 'articles_tags', '4', '{\"articles_id\":\"a0f9e69d-8144-4279-9903-8d7aae37b85a\",\"tags_id\":{\"id\":\"dfa2dc08-6a72-463e-bcc4-67873bd6ed78\"}}', '{\"articles_id\":\"a0f9e69d-8144-4279-9903-8d7aae37b85a\",\"tags_id\":{\"id\":\"dfa2dc08-6a72-463e-bcc4-67873bd6ed78\"}}', 123),
(123, 142, 'articles', 'a0f9e69d-8144-4279-9903-8d7aae37b85a', '{\"status\":\"published\",\"title\":\"Get Started With JS\",\"description\":\"<p><img src=\\\"http://localhost:8055/assets/8837d218-fff1-4c5a-b35d-54dedc0c85b1?width=734&amp;height=1280\\\" alt=\\\"17f853a5 8dab 4306 875b 0ae7435c9696\\\" /></p>\\n<p>&nbsp;</p>\\n<p>And more</p>\",\"tags\":{\"create\":[{\"articles_id\":\"+\",\"tags_id\":{\"id\":\"88312797-326c-4249-8647-f4e95722feb9\"}},{\"articles_id\":\"+\",\"tags_id\":{\"id\":\"dfa2dc08-6a72-463e-bcc4-67873bd6ed78\"}}],\"update\":[],\"delete\":[]}}', '{\"status\":\"published\",\"title\":\"Get Started With JS\",\"description\":\"<p><img src=\\\"http://localhost:8055/assets/8837d218-fff1-4c5a-b35d-54dedc0c85b1?width=734&amp;height=1280\\\" alt=\\\"17f853a5 8dab 4306 875b 0ae7435c9696\\\" /></p>\\n<p>&nbsp;</p>\\n<p>And more</p>\",\"tags\":{\"create\":[{\"articles_id\":\"+\",\"tags_id\":{\"id\":\"88312797-326c-4249-8647-f4e95722feb9\"}},{\"articles_id\":\"+\",\"tags_id\":{\"id\":\"dfa2dc08-6a72-463e-bcc4-67873bd6ed78\"}}],\"update\":[],\"delete\":[]}}', NULL),
(124, 143, 'articles_tags', '5', '{\"articles_id\":\"a0f9e69d-8144-4279-9903-8d7aae37b85a\",\"tags_id\":{\"id\":\"83c2897c-7d58-45ad-8137-31645dcb5556\"}}', '{\"articles_id\":\"a0f9e69d-8144-4279-9903-8d7aae37b85a\",\"tags_id\":{\"id\":\"83c2897c-7d58-45ad-8137-31645dcb5556\"}}', 125),
(125, 144, 'articles', 'a0f9e69d-8144-4279-9903-8d7aae37b85a', '{\"id\":\"a0f9e69d-8144-4279-9903-8d7aae37b85a\",\"status\":\"published\",\"sort\":null,\"user_created\":\"f56a6812-5a82-4fe8-a53b-e4c7d2771062\",\"date_created\":\"2022-09-01T20:17:21.000Z\",\"user_updated\":\"f56a6812-5a82-4fe8-a53b-e4c7d2771062\",\"date_updated\":\"2022-09-01T20:17:31.000Z\",\"title\":\"Get Started With JS\",\"description\":\"<p><img src=\\\"http://localhost:8055/assets/8837d218-fff1-4c5a-b35d-54dedc0c85b1?width=734&amp;height=1280\\\" alt=\\\"17f853a5 8dab 4306 875b 0ae7435c9696\\\" /></p>\\n<p>&nbsp;</p>\\n<p>And more</p>\",\"tags\":[3,4,5]}', '{\"user_updated\":\"f56a6812-5a82-4fe8-a53b-e4c7d2771062\",\"date_updated\":\"2022-09-01T20:17:31.527Z\"}', NULL),
(126, 145, 'directus_fields', '41', '{\"id\":41,\"collection\":\"tags\",\"field\":\"articles\",\"special\":[\"m2m\"],\"interface\":\"list-m2m\",\"options\":{\"template\":\"{{articles_id.title}}\"},\"display\":\"related-values\",\"display_options\":{\"template\":\"{{articles_id.title}}\"},\"readonly\":false,\"hidden\":false,\"sort\":null,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null,\"validation\":null,\"validation_message\":null}', '{\"collection\":\"tags\",\"field\":\"articles\",\"special\":[\"m2m\"],\"interface\":\"list-m2m\",\"options\":{\"template\":\"{{articles_id.title}}\"},\"display\":\"related-values\",\"display_options\":{\"template\":\"{{articles_id.title}}\"},\"readonly\":false,\"hidden\":false,\"sort\":null,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null,\"validation\":null,\"validation_message\":null}', NULL),
(127, 146, 'directus_fields', '39', '{\"id\":39,\"collection\":\"articles\",\"field\":\"tags\",\"special\":[\"m2m\"],\"interface\":\"list-m2m\",\"options\":{\"enableSearchFilter\":true,\"enableLink\":true,\"template\":\"{{tags_id.Title}}\"},\"display\":\"related-values\",\"display_options\":{\"template\":\"{{tags_id.Title}}\"},\"readonly\":false,\"hidden\":false,\"sort\":null,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":true,\"group\":null,\"validation\":null,\"validation_message\":null}', '{\"collection\":\"articles\",\"field\":\"tags\",\"special\":[\"m2m\"],\"interface\":\"list-m2m\",\"options\":{\"enableSearchFilter\":true,\"enableLink\":true,\"template\":\"{{tags_id.Title}}\"},\"display\":\"related-values\",\"display_options\":{\"template\":\"{{tags_id.Title}}\"},\"readonly\":false,\"hidden\":false,\"sort\":null,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":true,\"group\":null,\"validation\":null,\"validation_message\":null}', NULL),
(128, 147, 'directus_fields', '39', '{\"id\":39,\"collection\":\"articles\",\"field\":\"tags\",\"special\":[\"m2m\"],\"interface\":\"list-m2m\",\"options\":{\"enableSearchFilter\":true,\"enableLink\":true,\"template\":\"{{tags_id.Title}}\"},\"display\":\"raw\",\"display_options\":{\"template\":\"{{tags_id.Title}}\"},\"readonly\":false,\"hidden\":false,\"sort\":null,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":true,\"group\":null,\"validation\":null,\"validation_message\":null}', '{\"collection\":\"articles\",\"field\":\"tags\",\"special\":[\"m2m\"],\"interface\":\"list-m2m\",\"options\":{\"enableSearchFilter\":true,\"enableLink\":true,\"template\":\"{{tags_id.Title}}\"},\"display\":\"raw\",\"display_options\":{\"template\":\"{{tags_id.Title}}\"},\"readonly\":false,\"hidden\":false,\"sort\":null,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":true,\"group\":null,\"validation\":null,\"validation_message\":null}', NULL),
(129, 148, 'directus_fields', '39', '{\"id\":39,\"collection\":\"articles\",\"field\":\"tags\",\"special\":[\"m2m\"],\"interface\":\"list-m2m\",\"options\":{\"enableSearchFilter\":true,\"enableLink\":true,\"template\":\"{{tags_id.Title}}\"},\"display\":\"related-values\",\"display_options\":{\"template\":\"{{tags_id.Title}}\"},\"readonly\":false,\"hidden\":false,\"sort\":null,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":true,\"group\":null,\"validation\":null,\"validation_message\":null}', '{\"collection\":\"articles\",\"field\":\"tags\",\"special\":[\"m2m\"],\"interface\":\"list-m2m\",\"options\":{\"enableSearchFilter\":true,\"enableLink\":true,\"template\":\"{{tags_id.Title}}\"},\"display\":\"related-values\",\"display_options\":{\"template\":\"{{tags_id.Title}}\"},\"readonly\":false,\"hidden\":false,\"sort\":null,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":true,\"group\":null,\"validation\":null,\"validation_message\":null}', NULL),
(130, 149, 'directus_permissions', '12', '{\"role\":null,\"collection\":\"articles\",\"action\":\"create\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', '{\"role\":null,\"collection\":\"articles\",\"action\":\"create\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', NULL),
(131, 150, 'directus_permissions', '13', '{\"role\":null,\"collection\":\"articles\",\"action\":\"read\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', '{\"role\":null,\"collection\":\"articles\",\"action\":\"read\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', NULL),
(132, 151, 'directus_permissions', '14', '{\"role\":null,\"collection\":\"articles\",\"action\":\"update\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', '{\"role\":null,\"collection\":\"articles\",\"action\":\"update\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', NULL),
(133, 152, 'directus_permissions', '15', '{\"role\":null,\"collection\":\"articles\",\"action\":\"delete\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', '{\"role\":null,\"collection\":\"articles\",\"action\":\"delete\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', NULL),
(134, 153, 'directus_permissions', '16', '{\"role\":null,\"collection\":\"articles\",\"action\":\"share\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', '{\"role\":null,\"collection\":\"articles\",\"action\":\"share\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', NULL),
(135, 154, 'directus_permissions', '17', '{\"role\":null,\"collection\":\"articles_tags\",\"action\":\"delete\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', '{\"role\":null,\"collection\":\"articles_tags\",\"action\":\"delete\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', NULL),
(136, 155, 'directus_permissions', '18', '{\"role\":null,\"collection\":\"articles_tags\",\"action\":\"create\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', '{\"role\":null,\"collection\":\"articles_tags\",\"action\":\"create\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', NULL),
(137, 156, 'directus_permissions', '19', '{\"role\":null,\"collection\":\"articles_tags\",\"action\":\"read\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', '{\"role\":null,\"collection\":\"articles_tags\",\"action\":\"read\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', NULL),
(138, 157, 'directus_permissions', '20', '{\"role\":null,\"collection\":\"articles_tags\",\"action\":\"update\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', '{\"role\":null,\"collection\":\"articles_tags\",\"action\":\"update\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', NULL),
(139, 158, 'directus_permissions', '21', '{\"role\":null,\"collection\":\"articles_tags\",\"action\":\"share\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', '{\"role\":null,\"collection\":\"articles_tags\",\"action\":\"share\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', NULL),
(140, 159, 'directus_permissions', '22', '{\"role\":null,\"collection\":\"tags\",\"action\":\"create\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', '{\"role\":null,\"collection\":\"tags\",\"action\":\"create\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', NULL),
(141, 160, 'directus_permissions', '23', '{\"role\":null,\"collection\":\"tags\",\"action\":\"read\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', '{\"role\":null,\"collection\":\"tags\",\"action\":\"read\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', NULL),
(142, 161, 'directus_permissions', '24', '{\"role\":null,\"collection\":\"tags\",\"action\":\"update\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', '{\"role\":null,\"collection\":\"tags\",\"action\":\"update\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', NULL),
(143, 162, 'directus_permissions', '25', '{\"role\":null,\"collection\":\"tags\",\"action\":\"delete\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', '{\"role\":null,\"collection\":\"tags\",\"action\":\"delete\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', NULL),
(144, 163, 'directus_permissions', '26', '{\"role\":null,\"collection\":\"tags\",\"action\":\"share\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', '{\"role\":null,\"collection\":\"tags\",\"action\":\"share\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', NULL),
(145, 164, 'directus_permissions', '27', '{\"role\":null,\"collection\":\"directus_files\",\"action\":\"create\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', '{\"role\":null,\"collection\":\"directus_files\",\"action\":\"create\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', NULL),
(146, 165, 'directus_permissions', '28', '{\"role\":null,\"collection\":\"directus_files\",\"action\":\"read\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', '{\"role\":null,\"collection\":\"directus_files\",\"action\":\"read\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', NULL),
(147, 166, 'directus_permissions', '29', '{\"role\":null,\"collection\":\"directus_files\",\"action\":\"update\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', '{\"role\":null,\"collection\":\"directus_files\",\"action\":\"update\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', NULL),
(148, 167, 'directus_permissions', '30', '{\"role\":null,\"collection\":\"directus_files\",\"action\":\"delete\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', '{\"role\":null,\"collection\":\"directus_files\",\"action\":\"delete\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', NULL),
(149, 168, 'directus_permissions', '31', '{\"role\":null,\"collection\":\"directus_files\",\"action\":\"share\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', '{\"role\":null,\"collection\":\"directus_files\",\"action\":\"share\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', NULL),
(150, 169, 'directus_files', 'ab2ad2e1-6e2a-4bd5-8ac9-ac64b8681bcd', '{\"title\":\"17f853a5 8dab 4306 875b 0ae7435c9696\",\"filename_download\":\"17f853a5-8dab-4306-875b-0ae7435c9696.jpg\",\"type\":\"image/jpeg\",\"storage\":\"local\"}', '{\"title\":\"17f853a5 8dab 4306 875b 0ae7435c9696\",\"filename_download\":\"17f853a5-8dab-4306-875b-0ae7435c9696.jpg\",\"type\":\"image/jpeg\",\"storage\":\"local\"}', NULL),
(151, 170, 'articles', '5f122f9c-2dce-4a9d-b848-9ebff5408b3e', '{\"id\":\"5f122f9c-2dce-4a9d-b848-9ebff5408b3e\",\"status\":\"published\",\"sort\":null,\"user_created\":\"f56a6812-5a82-4fe8-a53b-e4c7d2771062\",\"date_created\":\"2022-09-01T17:48:02.000Z\",\"user_updated\":\"f56a6812-5a82-4fe8-a53b-e4c7d2771062\",\"date_updated\":\"2022-09-01T20:34:21.000Z\",\"title\":\"Test\",\"description\":\"<p>Hello World&nbsp;</p>\\n<p><img src=\\\"http://localhost:8055/assets/ab2ad2e1-6e2a-4bd5-8ac9-ac64b8681bcd?width=734&amp;height=1280\\\" alt=\\\"17f853a5 8dab 4306 875b 0ae7435c9696\\\" /></p>\\n<p>&nbsp;</p>\",\"tags\":[1,2]}', '{\"description\":\"<p>Hello World&nbsp;</p>\\n<p><img src=\\\"http://localhost:8055/assets/ab2ad2e1-6e2a-4bd5-8ac9-ac64b8681bcd?width=734&amp;height=1280\\\" alt=\\\"17f853a5 8dab 4306 875b 0ae7435c9696\\\" /></p>\\n<p>&nbsp;</p>\",\"user_updated\":\"f56a6812-5a82-4fe8-a53b-e4c7d2771062\",\"date_updated\":\"2022-09-01T20:34:21.072Z\"}', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `directus_roles`
--

CREATE TABLE `directus_roles` (
  `id` char(36) NOT NULL,
  `name` varchar(100) NOT NULL,
  `icon` varchar(30) NOT NULL DEFAULT 'supervised_user_circle',
  `description` text DEFAULT NULL,
  `ip_access` text DEFAULT NULL,
  `enforce_tfa` tinyint(1) NOT NULL DEFAULT 0,
  `admin_access` tinyint(1) NOT NULL DEFAULT 0,
  `app_access` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `directus_roles`
--

INSERT INTO `directus_roles` (`id`, `name`, `icon`, `description`, `ip_access`, `enforce_tfa`, `admin_access`, `app_access`) VALUES
('48d494a0-099d-4b17-b390-1930bcb490e5', 'Administrator', 'verified', '$t:admin_description', NULL, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `directus_sessions`
--

CREATE TABLE `directus_sessions` (
  `token` varchar(64) NOT NULL,
  `user` char(36) DEFAULT NULL,
  `expires` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ip` varchar(255) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `share` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `directus_sessions`
--

INSERT INTO `directus_sessions` (`token`, `user`, `expires`, `ip`, `user_agent`, `share`) VALUES
('TA51Vy8i8hPje_MgU4it1Dy475JyAljQvTyhzToqCRlNyHeZ-OIzHkbZ3SPbCItF', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-08 20:59:27', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `directus_settings`
--

CREATE TABLE `directus_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `project_name` varchar(100) NOT NULL DEFAULT 'Directus',
  `project_url` varchar(255) DEFAULT NULL,
  `project_color` varchar(50) DEFAULT NULL,
  `project_logo` char(36) DEFAULT NULL,
  `public_foreground` char(36) DEFAULT NULL,
  `public_background` char(36) DEFAULT NULL,
  `public_note` text DEFAULT NULL,
  `auth_login_attempts` int(10) UNSIGNED DEFAULT 25,
  `auth_password_policy` varchar(100) DEFAULT NULL,
  `storage_asset_transform` varchar(7) DEFAULT 'all',
  `storage_asset_presets` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`storage_asset_presets`)),
  `custom_css` text DEFAULT NULL,
  `storage_default_folder` char(36) DEFAULT NULL,
  `basemaps` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`basemaps`)),
  `mapbox_key` varchar(255) DEFAULT NULL,
  `module_bar` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`module_bar`)),
  `project_descriptor` varchar(100) DEFAULT NULL,
  `translation_strings` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`translation_strings`)),
  `default_language` varchar(255) NOT NULL DEFAULT 'en-US',
  `custom_aspect_ratios` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`custom_aspect_ratios`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `directus_shares`
--

CREATE TABLE `directus_shares` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `collection` varchar(64) DEFAULT NULL,
  `item` varchar(255) DEFAULT NULL,
  `role` char(36) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `user_created` char(36) DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `date_start` timestamp NULL DEFAULT NULL,
  `date_end` timestamp NULL DEFAULT NULL,
  `times_used` int(11) DEFAULT 0,
  `max_uses` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `directus_users`
--

CREATE TABLE `directus_users` (
  `id` char(36) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `tags` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`tags`)),
  `avatar` char(36) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `theme` varchar(20) DEFAULT 'auto',
  `tfa_secret` varchar(255) DEFAULT NULL,
  `status` varchar(16) NOT NULL DEFAULT 'active',
  `role` char(36) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `last_access` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `last_page` varchar(255) DEFAULT NULL,
  `provider` varchar(128) NOT NULL DEFAULT 'default',
  `external_identifier` varchar(255) DEFAULT NULL,
  `auth_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`auth_data`)),
  `email_notifications` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `directus_users`
--

INSERT INTO `directus_users` (`id`, `first_name`, `last_name`, `email`, `password`, `location`, `title`, `description`, `tags`, `avatar`, `language`, `theme`, `tfa_secret`, `status`, `role`, `token`, `last_access`, `last_page`, `provider`, `external_identifier`, `auth_data`, `email_notifications`) VALUES
('f56a6812-5a82-4fe8-a53b-e4c7d2771062', 'Admin', 'User', 'admin@example.com', '$argon2id$v=19$m=4096,t=3,p=1$AwGzpyXS3O7RFRfz9QxebA$5IWQRaFWxY/ZabSbRnZfOFMz9fYlUX/PMYmpjPkKgMI', NULL, NULL, NULL, NULL, NULL, NULL, 'auto', NULL, 'active', '48d494a0-099d-4b17-b390-1930bcb490e5', 'WR1c7lfsMAdN4iNweY04cPD3MF4gclUJ', '2022-09-01 20:59:27', '/settings/data-model', 'default', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `directus_webhooks`
--

CREATE TABLE `directus_webhooks` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `method` varchar(10) NOT NULL DEFAULT 'POST',
  `url` varchar(255) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'active',
  `data` tinyint(1) NOT NULL DEFAULT 1,
  `actions` varchar(100) NOT NULL,
  `collections` varchar(255) NOT NULL,
  `headers` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`headers`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` char(36) NOT NULL,
  `sort` int(11) DEFAULT NULL,
  `user_created` char(36) DEFAULT NULL,
  `date_created` timestamp NULL DEFAULT NULL,
  `user_updated` char(36) DEFAULT NULL,
  `date_updated` timestamp NULL DEFAULT NULL,
  `tag` varchar(255) NOT NULL,
  `Title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `sort`, `user_created`, `date_created`, `user_updated`, `date_updated`, `tag`, `Title`) VALUES
('83c2897c-7d58-45ad-8137-31645dcb5556', NULL, 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 16:46:56', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 18:02:34', 'css', 'CSS'),
('88312797-326c-4249-8647-f4e95722feb9', NULL, 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 16:47:05', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 18:02:54', 'java-script', 'JavaScript'),
('dfa2dc08-6a72-463e-bcc4-67873bd6ed78', NULL, 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 16:47:01', 'f56a6812-5a82-4fe8-a53b-e4c7d2771062', '2022-09-01 18:03:05', 'php', 'PHP');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_user_created_foreign` (`user_created`),
  ADD KEY `articles_user_updated_foreign` (`user_updated`);

--
-- Indexes for table `articles_tags`
--
ALTER TABLE `articles_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_tags_tags_id_foreign` (`tags_id`),
  ADD KEY `articles_tags_articles_id_foreign` (`articles_id`);

--
-- Indexes for table `directus_activity`
--
ALTER TABLE `directus_activity`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directus_activity_collection_foreign` (`collection`);

--
-- Indexes for table `directus_collections`
--
ALTER TABLE `directus_collections`
  ADD PRIMARY KEY (`collection`),
  ADD KEY `directus_collections_group_foreign` (`group`);

--
-- Indexes for table `directus_dashboards`
--
ALTER TABLE `directus_dashboards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directus_dashboards_user_created_foreign` (`user_created`);

--
-- Indexes for table `directus_fields`
--
ALTER TABLE `directus_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directus_fields_collection_foreign` (`collection`);

--
-- Indexes for table `directus_files`
--
ALTER TABLE `directus_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directus_files_uploaded_by_foreign` (`uploaded_by`),
  ADD KEY `directus_files_modified_by_foreign` (`modified_by`),
  ADD KEY `directus_files_folder_foreign` (`folder`);

--
-- Indexes for table `directus_flows`
--
ALTER TABLE `directus_flows`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `directus_flows_operation_unique` (`operation`),
  ADD KEY `directus_flows_user_created_foreign` (`user_created`);

--
-- Indexes for table `directus_folders`
--
ALTER TABLE `directus_folders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directus_folders_parent_foreign` (`parent`);

--
-- Indexes for table `directus_migrations`
--
ALTER TABLE `directus_migrations`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `directus_notifications`
--
ALTER TABLE `directus_notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directus_notifications_recipient_foreign` (`recipient`),
  ADD KEY `directus_notifications_sender_foreign` (`sender`);

--
-- Indexes for table `directus_operations`
--
ALTER TABLE `directus_operations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `directus_operations_resolve_unique` (`resolve`),
  ADD UNIQUE KEY `directus_operations_reject_unique` (`reject`),
  ADD KEY `directus_operations_flow_foreign` (`flow`),
  ADD KEY `directus_operations_user_created_foreign` (`user_created`);

--
-- Indexes for table `directus_panels`
--
ALTER TABLE `directus_panels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directus_panels_dashboard_foreign` (`dashboard`),
  ADD KEY `directus_panels_user_created_foreign` (`user_created`);

--
-- Indexes for table `directus_permissions`
--
ALTER TABLE `directus_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directus_permissions_collection_foreign` (`collection`),
  ADD KEY `directus_permissions_role_foreign` (`role`);

--
-- Indexes for table `directus_presets`
--
ALTER TABLE `directus_presets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directus_presets_collection_foreign` (`collection`),
  ADD KEY `directus_presets_user_foreign` (`user`),
  ADD KEY `directus_presets_role_foreign` (`role`);

--
-- Indexes for table `directus_relations`
--
ALTER TABLE `directus_relations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directus_relations_many_collection_foreign` (`many_collection`),
  ADD KEY `directus_relations_one_collection_foreign` (`one_collection`);

--
-- Indexes for table `directus_revisions`
--
ALTER TABLE `directus_revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directus_revisions_collection_foreign` (`collection`),
  ADD KEY `directus_revisions_parent_foreign` (`parent`),
  ADD KEY `directus_revisions_activity_foreign` (`activity`);

--
-- Indexes for table `directus_roles`
--
ALTER TABLE `directus_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `directus_sessions`
--
ALTER TABLE `directus_sessions`
  ADD PRIMARY KEY (`token`),
  ADD KEY `directus_sessions_user_foreign` (`user`),
  ADD KEY `directus_sessions_share_foreign` (`share`);

--
-- Indexes for table `directus_settings`
--
ALTER TABLE `directus_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directus_settings_project_logo_foreign` (`project_logo`),
  ADD KEY `directus_settings_public_foreground_foreign` (`public_foreground`),
  ADD KEY `directus_settings_public_background_foreign` (`public_background`),
  ADD KEY `directus_settings_storage_default_folder_foreign` (`storage_default_folder`);

--
-- Indexes for table `directus_shares`
--
ALTER TABLE `directus_shares`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directus_shares_collection_foreign` (`collection`),
  ADD KEY `directus_shares_role_foreign` (`role`),
  ADD KEY `directus_shares_user_created_foreign` (`user_created`);

--
-- Indexes for table `directus_users`
--
ALTER TABLE `directus_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `directus_users_external_identifier_unique` (`external_identifier`),
  ADD UNIQUE KEY `directus_users_email_unique` (`email`),
  ADD UNIQUE KEY `directus_users_token_unique` (`token`),
  ADD KEY `directus_users_role_foreign` (`role`);

--
-- Indexes for table `directus_webhooks`
--
ALTER TABLE `directus_webhooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tags_user_created_foreign` (`user_created`),
  ADD KEY `tags_user_updated_foreign` (`user_updated`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles_tags`
--
ALTER TABLE `articles_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `directus_activity`
--
ALTER TABLE `directus_activity`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT for table `directus_fields`
--
ALTER TABLE `directus_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `directus_notifications`
--
ALTER TABLE `directus_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `directus_permissions`
--
ALTER TABLE `directus_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `directus_presets`
--
ALTER TABLE `directus_presets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `directus_relations`
--
ALTER TABLE `directus_relations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `directus_revisions`
--
ALTER TABLE `directus_revisions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT for table `directus_settings`
--
ALTER TABLE `directus_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `directus_webhooks`
--
ALTER TABLE `directus_webhooks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_user_created_foreign` FOREIGN KEY (`user_created`) REFERENCES `directus_users` (`id`),
  ADD CONSTRAINT `articles_user_updated_foreign` FOREIGN KEY (`user_updated`) REFERENCES `directus_users` (`id`);

--
-- Constraints for table `articles_tags`
--
ALTER TABLE `articles_tags`
  ADD CONSTRAINT `articles_tags_articles_id_foreign` FOREIGN KEY (`articles_id`) REFERENCES `articles` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `articles_tags_tags_id_foreign` FOREIGN KEY (`tags_id`) REFERENCES `tags` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `directus_collections`
--
ALTER TABLE `directus_collections`
  ADD CONSTRAINT `directus_collections_group_foreign` FOREIGN KEY (`group`) REFERENCES `directus_collections` (`collection`);

--
-- Constraints for table `directus_dashboards`
--
ALTER TABLE `directus_dashboards`
  ADD CONSTRAINT `directus_dashboards_user_created_foreign` FOREIGN KEY (`user_created`) REFERENCES `directus_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `directus_files`
--
ALTER TABLE `directus_files`
  ADD CONSTRAINT `directus_files_folder_foreign` FOREIGN KEY (`folder`) REFERENCES `directus_folders` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `directus_files_modified_by_foreign` FOREIGN KEY (`modified_by`) REFERENCES `directus_users` (`id`),
  ADD CONSTRAINT `directus_files_uploaded_by_foreign` FOREIGN KEY (`uploaded_by`) REFERENCES `directus_users` (`id`);

--
-- Constraints for table `directus_flows`
--
ALTER TABLE `directus_flows`
  ADD CONSTRAINT `directus_flows_user_created_foreign` FOREIGN KEY (`user_created`) REFERENCES `directus_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `directus_folders`
--
ALTER TABLE `directus_folders`
  ADD CONSTRAINT `directus_folders_parent_foreign` FOREIGN KEY (`parent`) REFERENCES `directus_folders` (`id`);

--
-- Constraints for table `directus_notifications`
--
ALTER TABLE `directus_notifications`
  ADD CONSTRAINT `directus_notifications_recipient_foreign` FOREIGN KEY (`recipient`) REFERENCES `directus_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `directus_notifications_sender_foreign` FOREIGN KEY (`sender`) REFERENCES `directus_users` (`id`);

--
-- Constraints for table `directus_operations`
--
ALTER TABLE `directus_operations`
  ADD CONSTRAINT `directus_operations_flow_foreign` FOREIGN KEY (`flow`) REFERENCES `directus_flows` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `directus_operations_reject_foreign` FOREIGN KEY (`reject`) REFERENCES `directus_operations` (`id`),
  ADD CONSTRAINT `directus_operations_resolve_foreign` FOREIGN KEY (`resolve`) REFERENCES `directus_operations` (`id`),
  ADD CONSTRAINT `directus_operations_user_created_foreign` FOREIGN KEY (`user_created`) REFERENCES `directus_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `directus_panels`
--
ALTER TABLE `directus_panels`
  ADD CONSTRAINT `directus_panels_dashboard_foreign` FOREIGN KEY (`dashboard`) REFERENCES `directus_dashboards` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `directus_panels_user_created_foreign` FOREIGN KEY (`user_created`) REFERENCES `directus_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `directus_permissions`
--
ALTER TABLE `directus_permissions`
  ADD CONSTRAINT `directus_permissions_role_foreign` FOREIGN KEY (`role`) REFERENCES `directus_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `directus_presets`
--
ALTER TABLE `directus_presets`
  ADD CONSTRAINT `directus_presets_role_foreign` FOREIGN KEY (`role`) REFERENCES `directus_roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `directus_presets_user_foreign` FOREIGN KEY (`user`) REFERENCES `directus_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `directus_revisions`
--
ALTER TABLE `directus_revisions`
  ADD CONSTRAINT `directus_revisions_activity_foreign` FOREIGN KEY (`activity`) REFERENCES `directus_activity` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `directus_revisions_parent_foreign` FOREIGN KEY (`parent`) REFERENCES `directus_revisions` (`id`);

--
-- Constraints for table `directus_sessions`
--
ALTER TABLE `directus_sessions`
  ADD CONSTRAINT `directus_sessions_share_foreign` FOREIGN KEY (`share`) REFERENCES `directus_shares` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `directus_sessions_user_foreign` FOREIGN KEY (`user`) REFERENCES `directus_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `directus_settings`
--
ALTER TABLE `directus_settings`
  ADD CONSTRAINT `directus_settings_project_logo_foreign` FOREIGN KEY (`project_logo`) REFERENCES `directus_files` (`id`),
  ADD CONSTRAINT `directus_settings_public_background_foreign` FOREIGN KEY (`public_background`) REFERENCES `directus_files` (`id`),
  ADD CONSTRAINT `directus_settings_public_foreground_foreign` FOREIGN KEY (`public_foreground`) REFERENCES `directus_files` (`id`),
  ADD CONSTRAINT `directus_settings_storage_default_folder_foreign` FOREIGN KEY (`storage_default_folder`) REFERENCES `directus_folders` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `directus_shares`
--
ALTER TABLE `directus_shares`
  ADD CONSTRAINT `directus_shares_collection_foreign` FOREIGN KEY (`collection`) REFERENCES `directus_collections` (`collection`) ON DELETE CASCADE,
  ADD CONSTRAINT `directus_shares_role_foreign` FOREIGN KEY (`role`) REFERENCES `directus_roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `directus_shares_user_created_foreign` FOREIGN KEY (`user_created`) REFERENCES `directus_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `directus_users`
--
ALTER TABLE `directus_users`
  ADD CONSTRAINT `directus_users_role_foreign` FOREIGN KEY (`role`) REFERENCES `directus_roles` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `tags`
--
ALTER TABLE `tags`
  ADD CONSTRAINT `tags_user_created_foreign` FOREIGN KEY (`user_created`) REFERENCES `directus_users` (`id`),
  ADD CONSTRAINT `tags_user_updated_foreign` FOREIGN KEY (`user_updated`) REFERENCES `directus_users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
