-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2024 at 01:50 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(3, 'admin'),
(1, 'customer'),
(2, 'seller');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add category', 7, 'add_category'),
(26, 'Can change category', 7, 'change_category'),
(27, 'Can delete category', 7, 'delete_category'),
(28, 'Can view category', 7, 'view_category'),
(29, 'Can add feedback', 8, 'add_feedback'),
(30, 'Can change feedback', 8, 'change_feedback'),
(31, 'Can delete feedback', 8, 'delete_feedback'),
(32, 'Can view feedback', 8, 'view_feedback'),
(33, 'Can add inquiry', 9, 'add_inquiry'),
(34, 'Can change inquiry', 9, 'change_inquiry'),
(35, 'Can delete inquiry', 9, 'delete_inquiry'),
(36, 'Can view inquiry', 9, 'view_inquiry'),
(37, 'Can add product', 10, 'add_product'),
(38, 'Can change product', 10, 'change_product'),
(39, 'Can delete product', 10, 'delete_product'),
(40, 'Can view product', 10, 'view_product'),
(41, 'Can add wishlist', 11, 'add_wishlist'),
(42, 'Can change wishlist', 11, 'change_wishlist'),
(43, 'Can delete wishlist', 11, 'delete_wishlist'),
(44, 'Can view wishlist', 11, 'view_wishlist'),
(45, 'Can add subcategory', 12, 'add_subcategory'),
(46, 'Can change subcategory', 12, 'change_subcategory'),
(47, 'Can delete subcategory', 12, 'delete_subcategory'),
(48, 'Can view subcategory', 12, 'view_subcategory'),
(49, 'Can add seller profile', 13, 'add_sellerprofile'),
(50, 'Can change seller profile', 13, 'change_sellerprofile'),
(51, 'Can delete seller profile', 13, 'delete_sellerprofile'),
(52, 'Can view seller profile', 13, 'view_sellerprofile'),
(53, 'Can add customer profile', 14, 'add_customerprofile'),
(54, 'Can change customer profile', 14, 'change_customerprofile'),
(55, 'Can delete customer profile', 14, 'delete_customerprofile'),
(56, 'Can view customer profile', 14, 'view_customerprofile'),
(57, 'Can add cart', 15, 'add_cart'),
(58, 'Can change cart', 15, 'change_cart'),
(59, 'Can delete cart', 15, 'delete_cart'),
(60, 'Can view cart', 15, 'view_cart'),
(61, 'Can add admin profile', 16, 'add_adminprofile'),
(62, 'Can change admin profile', 16, 'change_adminprofile'),
(63, 'Can delete admin profile', 16, 'delete_adminprofile'),
(64, 'Can view admin profile', 16, 'view_adminprofile'),
(65, 'Can add order', 17, 'add_order'),
(66, 'Can change order', 17, 'change_order'),
(67, 'Can delete order', 17, 'delete_order'),
(68, 'Can view order', 17, 'view_order'),
(69, 'Can add orderitem', 18, 'add_orderitem'),
(70, 'Can change orderitem', 18, 'change_orderitem'),
(71, 'Can delete orderitem', 18, 'delete_orderitem'),
(72, 'Can view orderitem', 18, 'view_orderitem'),
(73, 'Can add billingaddress', 19, 'add_billingaddress'),
(74, 'Can change billingaddress', 19, 'change_billingaddress'),
(75, 'Can delete billingaddress', 19, 'delete_billingaddress'),
(76, 'Can view billingaddress', 19, 'view_billingaddress'),
(77, 'Can add shippingaddress', 20, 'add_shippingaddress'),
(78, 'Can change shippingaddress', 20, 'change_shippingaddress'),
(79, 'Can delete shippingaddress', 20, 'delete_shippingaddress'),
(80, 'Can view shippingaddress', 20, 'view_shippingaddress');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(3, 'pbkdf2_sha256$720000$dtnKjXNqddDzKWW9vhjWn7$nnALRxfy92lhmkwVnSvJ/VGYc9tJB3q7QVLCGKbINBg=', '2024-04-20 16:37:01.087603', 1, 'admin', '', '', 'addmin@gmail.com', 1, 1, '2022-01-31 11:22:57.471301'),
(4, 'pbkdf2_sha256$720000$mE5EyTDrIZBNh3QbD2lN3N$D5KLMfhjHPWwuGC+hNG9B+l0a18CHB2bj9/vBDkMIGU=', '2024-04-20 16:38:28.355346', 0, 'dhruvanshi', '', '', 'dhruva@gmail.com', 0, 1, '2024-04-14 18:50:17.317590'),
(5, 'pbkdf2_sha256$720000$nQty3dJDxzkwQ2RXIWyFlY$DolyqwYNu4/o4x4JuPhcBcsEKiA4ZSkEip6vQ8AE5N0=', '2024-04-14 19:15:28.852556', 0, 'priya', '', '', 'priya@gmail.com', 0, 1, '2024-04-14 18:51:20.554230'),
(6, 'pbkdf2_sha256$720000$lYA45FbJPbgz00VTyWQpvE$j+DZWQZ2uq3TQirtKcFf4SzaWKR3wY9HusIgRtqTsQs=', '2024-04-23 11:22:08.094380', 0, 'nandini', '', '', 'nandini@gmail.com', 0, 1, '2024-04-14 19:12:56.032345'),
(7, 'pbkdf2_sha256$720000$JgJixcVfUYZRRQkTfwH1eD$T94ZTpIOzFUMCphgZkYzpUwB2havqOuhTHCNTm0fyPU=', '2024-04-19 10:28:58.810850', 0, 'jeel', '', '', 'jeel@gmail.com', 0, 1, '2024-04-14 19:45:21.950500'),
(8, 'pbkdf2_sha256$720000$RnEV7EFFTAdhRmIhgQNmSq$afZH5ZzIu6SGG4lg3OOeLzVyaaJ7KHDbtKsRpRYFb4g=', '2024-04-23 11:25:57.562147', 0, 'nisha', '', '', 'nisha@gmail.com', 0, 1, '2024-04-18 19:23:13.681293');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user_groups`
--

INSERT INTO `auth_user_groups` (`id`, `user_id`, `group_id`) VALUES
(3, 3, 3),
(45, 4, 2),
(46, 5, 2),
(47, 6, 1),
(48, 7, 2),
(49, 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(16, 'online_shopping', 'adminprofile'),
(19, 'online_shopping', 'billingaddress'),
(15, 'online_shopping', 'cart'),
(7, 'online_shopping', 'category'),
(14, 'online_shopping', 'customerprofile'),
(8, 'online_shopping', 'feedback'),
(9, 'online_shopping', 'inquiry'),
(17, 'online_shopping', 'order'),
(18, 'online_shopping', 'orderitem'),
(10, 'online_shopping', 'product'),
(13, 'online_shopping', 'sellerprofile'),
(20, 'online_shopping', 'shippingaddress'),
(12, 'online_shopping', 'subcategory'),
(11, 'online_shopping', 'wishlist'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-01-31 09:50:28.518160'),
(2, 'auth', '0001_initial', '2022-01-31 09:50:41.246463'),
(3, 'admin', '0001_initial', '2022-01-31 09:50:44.828834'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-01-31 09:50:44.969647'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-01-31 09:50:45.081818'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-01-31 09:50:46.896885'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-01-31 09:50:48.355608'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-01-31 09:50:48.640803'),
(9, 'auth', '0004_alter_user_username_opts', '2022-01-31 09:50:48.743905'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-01-31 09:50:49.851458'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-01-31 09:50:49.911984'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-01-31 09:50:50.017156'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-01-31 09:50:50.290560'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-01-31 09:50:50.474562'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-01-31 09:50:50.789675'),
(16, 'auth', '0011_update_proxy_permissions', '2022-01-31 09:50:50.893869'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-01-31 09:50:51.074854'),
(18, 'online_shopping', '0001_initial', '2022-01-31 09:51:11.109814'),
(19, 'sessions', '0001_initial', '2022-01-31 09:51:11.934238'),
(20, 'online_shopping', '0002_billingaddress_order_orderitem_shippingaddress', '2022-01-31 10:52:26.402599'),
(21, 'online_shopping', '0002_shippingaddress_contact', '2022-01-31 12:23:57.514539'),
(22, 'online_shopping', '0002_delete_billingaddress', '2022-02-01 07:59:47.382380'),
(23, 'online_shopping', '0003_billingaddress', '2022-02-01 08:00:22.151166'),
(24, 'online_shopping', '0004_auto_20220201_1356', '2022-02-01 08:26:13.313757'),
(25, 'online_shopping', '0002_delete_orderitem', '2022-02-01 08:43:55.747378'),
(26, 'online_shopping', '0003_orderitem', '2022-02-01 08:44:17.362155'),
(27, 'online_shopping', '0004_auto_20220201_1442', '2022-02-01 09:12:34.236349'),
(28, 'online_shopping', '0005_auto_20220201_1502', '2022-02-01 09:32:34.145055'),
(29, 'online_shopping', '0006_order_status', '2022-02-01 11:11:10.087956'),
(30, 'online_shopping', '0007_order_seller', '2022-02-02 08:18:54.830612'),
(31, 'online_shopping', '0002_orderitem_seller', '2022-02-02 08:36:33.059369'),
(32, 'online_shopping', '0003_alter_orderitem_seller', '2022-02-02 09:00:32.632083'),
(33, 'online_shopping', '0002_remove_orderitem_seller', '2022-02-02 09:04:44.242207'),
(34, 'online_shopping', '0003_orderitem_seller', '2022-02-02 09:06:36.305580'),
(35, 'online_shopping', '0004_auto_20220202_1511', '2022-02-02 09:42:22.906354'),
(36, 'online_shopping', '0005_auto_20220202_1721', '2022-02-02 11:52:00.238368'),
(37, 'online_shopping', '0006_auto_20220203_1332', '2022-02-04 04:35:40.114323'),
(38, 'online_shopping', '0007_cart_quantity', '2022-02-04 08:59:02.605916'),
(39, 'online_shopping', '0008_product_size', '2022-04-05 09:52:55.201615'),
(40, 'online_shopping', '0009_alter_cart_quantity', '2022-04-05 09:52:55.264109'),
(41, 'online_shopping', '0010_customerprofile_date', '2022-04-05 09:54:33.139683');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('2bnyg6frv2ilvhdtvw2njqvnhsd91v6z', '.eJxVjL0OwiAYAN-F2RCghYKju89Avh8qVQNJaSfjuytJB13vLvcSEfYtx72lNS4szsKJ0y9DoEcqXfAdyq1KqmVbF5Q9kYdt8lo5PS9H-zfI0HLfKuZR0QDeGnA-aTsZN-BIaJmJCD34yaY5qDBr1krzN3PKBwZ02qB4fwDtIDgm:1nFBHI:yVcUUrdqTCCpvOyRweWvx-q1yclsghWwhXLrA950STU', '2022-02-16 08:46:12.449815'),
('2mvvndlsrqkbv2k27pfd2u219g7cw6gr', '.eJxVjEEOwiAQRe_C2hDL4FBcuvcMZGAGqRpISrsy3l2bdKHb_977LxVoXUpYu8xhYnVWBtThd4yUHlI3wneqt6ZTq8s8Rb0peqddXxvL87K7fweFevnWkMCbaK34wVmMno1zlph4hIzWjAlRDGDGeIpkEPxRUDIAozDDIOr9AfkBOBY:1nZs7K:ieWm-8oM7_rJjToN6gUKiLvBpYBEJQDeWK2HcCVw80M', '2022-04-14 10:33:26.257303'),
('2sw1rx5tdw8opkdi0rxjb34mlpbjyq84', '.eJxVjMEOwiAQRP-FsyGwBSIevfsNZJddpGrapLQn479bkh70MsnMm5m3SritNW1NljSyuqigTr8ZYX7K1AE_cLrPOs_Tuoyke0UftOnbzPK6Ht2_g4qt9rVEcpkju4C7eojFQLTCdC67JbIwCMDgLTiOxoF3EhCN8WALEKjPF_2kN8Y:1rweOF:Nv8VkByfEhz_isQS4KwSW4vmtlvsNRZBVeqb3WbH_Kk', '2024-04-30 08:42:07.899866'),
('37vxmex09sv64emdkdcod7fu7j56npce', '.eJxVjEEOwiAQRe_C2pACQ6Eu3XsGMgODVA0kpV0Z765NutDtf-_9lwi4rSVsnZcwJ3EWRpx-N8L44LqDdMd6azK2ui4zyV2RB-3y2hI_L4f7d1Cwl29tARJQwtEwj1ZnDU5ZhAio4pA9xMkgIjFkGxmYnBmcmTRoD14nUuL9Ae8GN_Q:1pffZw:VBc_CmX9UOxlHrehYhK5ieI_PDYGddJjeHjcTXV-7SM', '2023-04-07 11:27:28.691026'),
('382qqzh7ukplzpmrnc0vk9j9jxrvhgd6', '.eJxVjDkOwjAUBe_iGlkkXmJT0ucM1t9CAsiW4qRC3B0spYB2Zt57qQT7Nqe9ypoWVhcV1emXIdBDchN8h3wrmkre1gV1S_Rhqx4Ly_N6tH8HM9T5u-4csPAU4pkZiUQI0fbgu945Y1FAnGUbegnEA7I1g_E-ekBqcHLq_QEobjkr:1nYSRQ:Q1s-96PSpk44SJOjijnz9-uvqHkIfT2d342I7bnjAz8', '2022-04-10 12:56:20.390361'),
('3wlwz8rwtwrzrdgygm8mug6c4vzuvexx', '.eJyrVkorys-NT0ksSVWyUjIyMDLSNTDRNTBS0lEqyccQNlGqBQBgXw0I:1nbgCS:LohPJoATcIg2jTQGb0GJmgzWGpzeqGDLUN27IwQ8MJI', '2022-04-19 10:14:12.525865'),
('4xn1c3fiib17uegbukbra5wnbc7fpsu0', '.eJxVjDsOwjAQBe_iGlmON_GHkp4zWLveDQ4gR4qTCnF3iJQC2jcz76USbmtJW5MlTazOCtTpdyPMD6k74DvW26zzXNdlIr0r-qBNX2eW5-Vw_w4KtvKtzWizdDkS-h4Ni-kFkbLDIQwSjAD4DkZLzjsXMEakGA0wiAXLEFG9PwFsOCo:1nEUmC:4xYZnLQta-J19GzJXhMgOt6W8SDxoPXq1KTyz99MrlI', '2022-02-14 11:23:16.345886'),
('6wvyhjbzs0r2xtm1w0zsotks0s7i7388', '.eJxVjEEOwiAQRe_C2hDL4FBcuvcMZGAGqRpISrsy3l2bdKHb_977LxVoXUpYu8xhYnVWBtThd4yUHlI3wneqt6ZTq8s8Rb0peqddXxvL87K7fweFevnWkMCbaK34wVmMno1zlph4hIzWjAlRDGDGeIpkEPxRUDIAozDDIOr9AfkBOBY:1nZqgi:GfckQXDSFqtZBN4TqmdSciiVnz105IVadkB-sAA8CBc', '2022-04-14 09:01:52.372131'),
('7cqheeislc31agnq2p8cpzm6tctotmpy', '.eJxVjMsOwiAURP-FtSHIG5fu_QZy4V6kaiAp7cr477ZJF7qbzDkzbxZhXWpcB81xQnZhmp1-uwT5SW0H-IB27zz3tsxT4rvCDzr4rSO9rof7d1Bh1G1tgy9aki_JKKElGO-yAgIMThAakwnxvOWkcjBeSbKWvLLFCWkpW80-X-WcN8E:1nFTZU:tMyjfa2QtkI8u_vl9XwCjXZN_4Wq6kPXMdLPpETynVo', '2022-02-17 04:18:12.620783'),
('b697z1i2zb0tozjp9mcc60a15b1zn0hv', '.eJxVjEEOwiAQRe_C2pACQ6Eu3XsGMgODVA0kpV0Z765NutDtf-_9lwi4rSVsnZcwJ3EWRpx-N8L44LqDdMd6azK2ui4zyV2RB-3y2hI_L4f7d1Cwl29tARJQwtEwj1ZnDU5ZhAio4pA9xMkgIjFkGxmYnBmcmTRoD14nUuL9Ae8GN_Q:1patNC:OGLpM0lDFYXnYdnHbWgnIKwCXZyT-K_yeMdR0lDNG98', '2023-03-25 07:10:34.180751'),
('c6u4qoas8vr8040a4u0h82dmnh7hdtmd', '.eJxljDsOwyAQBe9CHSO8LP6kdJ8zoAWW2PkYycZVlLsHSy4SpZ15b17C0pZHu6282CmIs9Di9M0c-TvPuwg3mq9J-jTnZXJyn8jDrvKSAj-GY_sTGGkdy9sgBnSBGs3cGIiAbW0IPVLtVezQ95qIHGM0npFdq1Wre0DosIPg6hKNS3raQJlLDhRApbBSUEROfxjF-wOmjUQv:1nbgSB:QqvvduUjoX45LIhTt6WMknTKE412SHdvMqJ96gMTkjM', '2022-04-19 10:30:27.165767'),
('cfpgloz8fin1r7k4d64qvexfnevcx4a7', '.eJxVjMsOwiAQRf-FtSGURwdduu83kBkYpGpoUtqV8d-VpAvd3nPueYmA-1bC3ngNcxIXYcTpdyOMD64dpDvW2yLjUrd1JtkVedAmpyXx83q4f4GCrfR3UppgIADKxlgEF5NhO3pwehg1RzpbcOS_RYcqEmf0kCkZ8GhdVuL9AfJqOJE:1rdaO5:8kRVOIUqqRWgCFgwZjBdSrKXgGMIo7PMozcF37Yanro', '2024-03-08 18:35:09.257811'),
('d2gwqd9x181nta6v1ohd17eo8mzqrng1', '.eJxVjEEOwiAQRe_C2hAKDIJL9z0DmcKMVA0kpV0Z765NutDtf-_9l4i4rSVunZY4Z3ERIE6_24TpQXUH-Y711mRqdV3mSe6KPGiXY8v0vB7u30HBXr61SegYDDMBJ2es1RZNdlaxUpS1z9YFzWcG0t6DZ7KkPIBmDjgMGMT7A-9PN-w:1nFqNQ:guPXfiIhenreYv0pSXFy5oWgmCgQnmWWKt38ra6Ypeo', '2022-02-18 04:39:16.447636'),
('deb7y6aw99bx1zouize7k4o3cu1mcplp', '.eJxdjDsOwyAQRO9CnSBYFn9Sps8Z0AJL7HyMZOMqyt2DJRdJpKnmzbyXcLSWwa0Lz26M4iSMOHx3nsKdpw3EG03XLEOeyjx6uU3kThd5yZEf5337IxhoGerbIkb0kRrD3FhIgK22hAFJB5U6DL0hIs-YbGBk3xrVmh4QOuwgel2lac5PF6lw1YECOKoarKDk_1or8f4ApnNEKg:1nbexZ:2i554Ojg-e5Z-E3sisUFjO6q_kheXfthJ3gzzvCQELU', '2022-04-19 08:54:45.583779'),
('emqfqgr3ooa1r2gdok5s7vf71xvktyyg', '.eJxljDsOwyAQRO9CnSC8LP6kTJ8zoAWW2PmAZOMqyt2DJReJIk01b-a9hKW1jHZdeLZTECehxeG7c-TvnDYQbpSuWfqcyjw5uU3kThd5yYEf5337IxhpGevbIAZ0gVrN3BqIgF1jCD1S41Xs0Q-aiBxjNJ6RXadVpwdA6LGH4JoqjXN-2kCFqw4UwFFtqaDkv3oQ7w-mVkQw:1njJhT:bIzKWNevCJnR4l54HbJVacl7vKhbSJn0Rh_UqwSsyfc', '2022-05-10 11:49:47.964230'),
('fgfuhcqh46n30cecd388w3j2p8eiavib', '.eJxVjDsOwjAQBe_iGln2-pelpOcMlr1e4wCKpXwqxN0hUgpo38y8l4hpW1vcFp7jWMRZGC9Ov2NO9OBpJ-WepluX1Kd1HrPcFXnQRV574eflcP8OWlrat6bAVqsaFHtGDdXmAQkNWQ0ueILqNBRHWG1AVa3SCIaLGggAFbok3h_0nTcl:1rutd1:C3f2LXaW06aaDYr2_sOGg46onxCZR1aozn4LbjA1pdw', '2024-04-25 12:34:07.755188'),
('ij6qy7ht17o2iaha1uced0ikrxzp2ukr', '.eJxVjDsOwjAQBe_iGln2-pelpOcMlr1e4wCKpXwqxN0hUgpo38y8l4hpW1vcFp7jWMRZGC9Ov2NO9OBpJ-WepluX1Kd1HrPcFXnQRV574eflcP8OWlrat6bAVqsaFHtGDdXmAQkNWQ0ueILqNBRHWG1AVa3SCIaLGggAFbok3h_0nTcl:1ruTbw:o3idX4MCO-8iP3Tr1mpeyc61jzcE1NpNxz5V9j5qxg0', '2024-04-24 08:47:16.293739'),
('iq67ljh0odb1u5mcy828lngobfelbph1', '.eJxVjEEOwiAQRe_C2pCBQiku3XsGMgyDVA1NSrsy3l1JutDl_-_lvUTAfSthb7yGOYmzcOL0-0WkB9cO0h3rbZG01G2do-yKPGiT1yXx83K4f4GCrfQsDGRN1sqg1UjxuxSTHzOPhtFpP-VsmIx3KsGgARAtgU55ygyKonh_AOnBOFE:1nFutQ:ObbyqF7SnziSe2XuJNQl0aGeKqXpBjWIDwDihYmVkD0', '2022-02-18 09:28:36.274559'),
('jo2b1jtxh7jlp3vci77tvz19xt6w2cjx', '.eJxVjMsOwiAQAP-FsyELy0M8evcbmu0CUjWQlPZk_HdD0oNeZybzFhPtW5n2ntZpieIitBenXzgTP1MdJj6o3pvkVrd1meVI5GG7vLWYXtej_RsU6mV8OTgdmFlr7a0HjERorAajLCpWyD6DBYU5OLJ4DhA8KwMZkkOak_h8AdZ_Ns4:1rWKBB:lZ2ZF5Pcvf14fcYlQenvbykUVwgK8h8cMU3wQeEIQKA', '2024-02-17 17:51:49.598964'),
('jxn78j1isjpuy52br1hr74vxkisw3oos', '.eJxVjDsOwjAQRO_iGllem_hDSc8ZrPWujQPIkeKkQtydREoBzRTz3sxbRFyXGtee5ziyuAhw4vRbJqRnbjvhB7b7JGlqyzwmuSvyoF3eJs6v6-H-HVTsdVuTDzYZc06JVWILhGh1GLCoDDpzcB5VsZq3pGxMAKUZBs-gKBTrtPh8ASGZOFY:1nHe9R:QlMTVacEkF2JQv358-46L9l5YrJ3k8Y0u1DaKkAOxfI', '2022-02-23 04:00:17.185436'),
('k9o0y5toya16d4hh8eegqc6dixbh2yam', '.eJxVjDkOwjAUBe_iGlkkXmJT0ucM1t9CAsiW4qRC3B0spYB2Zt57qQT7Nqe9ypoWVhcV1emXIdBDchN8h3wrmkre1gV1S_Rhqx4Ly_N6tH8HM9T5u-4csPAU4pkZiUQI0fbgu945Y1FAnGUbegnEA7I1g_E-ekBqcHLq_QEobjkr:1nURwI:WMR72v4DousD5shMXSLtxlKMN53i1qJdherrT44gdRE', '2022-03-30 11:35:38.633151'),
('m5ut6w6o7hyc93goo73y2vn2lfcs13qz', '.eJxVjDsOwjAQBe_iGlmON_GHkp4zWLveDQ4gR4qTCnF3iJQC2jcz76USbmtJW5MlTazOCtTpdyPMD6k74DvW26zzXNdlIr0r-qBNX2eW5-Vw_w4KtvKtzWizdDkS-h4Ni-kFkbLDIQwSjAD4DkZLzjsXMEakGA0wiAXLEFG9PwFsOCo:1nFCes:YCLyaR8MgVZ3wVUuw_swEzQlvPASf7OyzvTWXAKE7l8', '2022-02-16 10:14:38.382551'),
('n9mhqxmzcb9zxt95674r52kf05wjqxmd', '.eJxVjDsOwjAQBe_iGlmJ8WdNSZ8zRLvrNQkgW4qTCnF3iJQC2jcz76VG3NZp3Jos45zURRmnTr8jIT-k7CTdsdyq5lrWZSa9K_qgTQ81yfN6uH8HE7bpW-fsPWcbcyCWIAjOnRnAGhF22HMMXQ9E3gboEwRynY8GOxMwUQJv1fsDJr44Uw:1rKCiA:JkgwU4Qu210maXcdzCNdwsyRFgY-y75kSQvmD7qxcHg', '2024-01-15 07:27:46.573103'),
('odsb7zokod5mcn1wpodh99n82q3uaqgf', '.eJxVjMsOwiAQAP-FsyELy0M8evcbmu0CUjWQlPZk_HdD0oNeZybzFhPtW5n2ntZpieIitBenXzgTP1MdJj6o3pvkVrd1meVI5GG7vLWYXtej_RsU6mV8OTgdmFlr7a0HjERorAajLCpWyD6DBYU5OLJ4DhA8KwMZkkOak_h8AdZ_Ns4:1rakKe:qxBznqOI4vTz4kPchLmh3DP-PG3LAMd7VnfCkQgA73Y', '2024-02-29 22:35:52.756733'),
('pup6nv7n79l0yfaxk0ua72kiktzlk040', '.eJxVjDsOwjAQBe_iGln2-pelpOcMlr1e4wCKpXwqxN0hUgpo38y8l4hpW1vcFp7jWMRZGC9Ov2NO9OBpJ-WepluX1Kd1HrPcFXnQRV574eflcP8OWlrat6bAVqsaFHtGDdXmAQkNWQ0ueILqNBRHWG1AVa3SCIaLGggAFbok3h_0nTcl:1ru9DA:AzvBx772CROhUiSJFvelgfwokwTKbe8mgYihO_L6j30', '2024-04-23 11:00:20.366717'),
('q95a04tfuco8ni96cg0nsu9jjvga87wm', '.eJxVjEEOgjAQRe_StWloS53BpXvOQGY6U0ENTSisjHdXEha6_e-9_zIDbes4bFWXYRJzMQ7N6XdkSg-ddyJ3mm_FpjKvy8R2V-xBq-2L6PN6uH8HI9XxW2cITil33oGCB4cAHkNSwJbJY0Q-U3IgKBwhNkKiuW2DNpEjdk027w_95zfx:1nHeXy:KzQd586vERpDUU9oodL7dnMw8vs8rRik9riR-2RehpE', '2022-02-23 04:25:38.401587'),
('rzeiydkmi4iwtb4uplobsltvk6imk0e3', '.eJxVjEEOwiAQRe_C2hAKDIJL9z0DmcKMVA0kpV0Z765NutDtf-_9l4i4rSVunZY4Z3ERIE6_24TpQXUH-Y711mRqdV3mSe6KPGiXY8v0vB7u30HBXr61SegYDDMBJ2es1RZNdlaxUpS1z9YFzWcG0t6DZ7KkPIBmDjgMGMT7A-9PN-w:1nFCUn:dX2C_6miJO7MqNG6VwuGOwFO7XZ9ag8rMV_8sFIwTaU', '2022-02-16 10:04:13.854818'),
('sax07axax36c6lxl08r93mk6m7noj6ch', '.eJxVjMsOwiAQAP-FsyELy0M8evcbmu0CUjWQlPZk_HdD0oNeZybzFhPtW5n2ntZpieIitBenXzgTP1MdJj6o3pvkVrd1meVI5GG7vLWYXtej_RsU6mV8OTgdmFlr7a0HjERorAajLCpWyD6DBYU5OLJ4DhA8KwMZkkOak_h8AdZ_Ns4:1rW2Tk:SU_G1FmBOv4z3Nc9o9QLMNjdtBsX_CtJyN-kwQOjQfY', '2024-02-16 22:57:48.005934'),
('taw98b63nmyttymm93nq4v3ek6o8glyo', '.eJxtjDsOwyAQBe9CHSO8LP6kdJ8zoAWW2PkYycZVlLsHSy4SKe3Me_MSlrY82m3lxU5BnIUWp2_myN953kW40XxN0qc5L5OT-0QedpWXFPgxHNufwEjrWN4GMaAL1GjmxkAEbGtD6JFqr2KHvtdE5Bij8YzsWq1a3QNChx0EV5doXNLTBspccqAAKoWVgiJy-oPfH6aHRC0:1pXiKO:uvNaILFsnKhPRlOsn6kv-mLpSqt1l1kCX7D0JZTCFko', '2023-03-16 12:46:32.436387'),
('uuxozen6ixypl53os8mwvzhrlcre6h97', '.eJxVjDkOwjAUBe_iGlkkXmJT0ucM1t9CAsiW4qRC3B0spYB2Zt57qQT7Nqe9ypoWVhcV1emXIdBDchN8h3wrmkre1gV1S_Rhqx4Ly_N6tH8HM9T5u-4csPAU4pkZiUQI0fbgu945Y1FAnGUbegnEA7I1g_E-ekBqcHLq_QEobjkr:1nUmxB:TW1TyQhRUFova7akYaQ95Q-vM5h6aRItY0_ll3LnhqA', '2022-03-31 10:01:57.851012'),
('vayjpw40n3xuuafjhe3jzxmnpuzv1sym', '.eJxVjDsOwjAQBe_iGln2-pelpOcMlr1e4wCKpXwqxN0hUgpo38y8l4hpW1vcFp7jWMRZGC9Ov2NO9OBpJ-WepluX1Kd1HrPcFXnQRV574eflcP8OWlrat6bAVqsaFHtGDdXmAQkNWQ0ueILqNBRHWG1AVa3SCIaLGggAFbok3h_0nTcl:1ruQzr:HRhy5NdKhsEWaAzE4ZospdTDb45sdeiS71kZGGvbG0I', '2024-04-24 05:59:47.783974'),
('vmduy2i65imjkbyq1g8lp2vx2y8rfjug', '.eJxVjDsOwjAQBe_iGln2Jv5ASZ8zWLveBQeQI8VJhbg7spQCmle8Gc1bJdy3kvYma5pZXdRg1On3JMxPqZ3wA-t90Xmp2zqT7oo-aNPTwvK6Hu5foGArvRtMhDMFwQyMGCmS6WtHQHAQBHhE760DIR8JXEQTeQjZ3oSyoPp8AQftOIA:1rvvS5:A--f14cnwAbQDCIkrXn5TopXsb7gSZixL7glcQEPN_Y', '2024-04-28 08:43:05.495373'),
('wchwsj1woxm6ibfd2vuv6ym8d323ms01', '.eJxVjMsOwiAQAP-FsyELy0M8evcbmu0CUjWQlPZk_HdD0oNeZybzFhPtW5n2ntZpieIitBenXzgTP1MdJj6o3pvkVrd1meVI5GG7vLWYXtej_RsU6mV8OTgdmFlr7a0HjERorAajLCpWyD6DBYU5OLJ4DhA8KwMZkkOak_h8AdZ_Ns4:1rVaCQ:HUPO7nV-stvnXzE7xN_QMr_P-x27n6HTonZghOCHobg', '2024-02-15 16:46:02.510409'),
('wqxde05461n9hd1s7bf9rj3mvfqrjkvp', '.eJxVjDsOwjAQBe_iGlmON_GHkp4zWLveDQ4gR4qTCnF3iJQC2jcz76USbmtJW5MlTazOCtTpdyPMD6k74DvW26zzXNdlIr0r-qBNX2eW5-Vw_w4KtvKtzWizdDkS-h4Ni-kFkbLDIQwSjAD4DkZLzjsXMEakGA0wiAXLEFG9PwFsOCo:1nFBDw:oezYDtUgWogjfv8BZBoHPyD-eKjusbc6rKBhTV2A6zE', '2022-02-16 08:42:44.184213'),
('wrrd3usg0dx2siv0hmvmdewgoelb2coo', '.eJxVjL0OwyAQg9-FuUKEgwAdu-cZ0B0_JW1FpJBMVd-9RMrQLrbkz_abedy34veWVj9HdmXSsstvSBieqR4kPrDeFx6Wuq0z8aPCT9r4tMT0up3dv4OCrfQ1SOdEDgpUxgGUJIQMxuioQ8wEZF2iJAaK1mC3rLVII9kuowsSFPt8AQ8IODM:1rTpjn:t_oTDGXoY50hLFKod37_KthoODeEBTftN4TNrn1awHI', '2024-02-10 20:57:15.624026'),
('ze5bfwwpyrwlyrak43og8njzb24ey7rw', '.eJxVjMsOwiAQAP-FsyELy0M8evcbmu0CUjWQlPZk_HdD0oNeZybzFhPtW5n2ntZpieIitBenXzgTP1MdJj6o3pvkVrd1meVI5GG7vLWYXtej_RsU6mV8OTgdmFlr7a0HjERorAajLCpWyD6DBYU5OLJ4DhA8KwMZkkOak_h8AdZ_Ns4:1rYQvK:K7mXHPvT9RfuBUJmpvCYaSxt8FuNBElkx3isijAO9gw', '2024-02-23 13:28:10.606207');

-- --------------------------------------------------------

--
-- Table structure for table `online_shopping_adminprofile`
--

CREATE TABLE `online_shopping_adminprofile` (
  `id` bigint(20) NOT NULL,
  `contact_number` bigint(20) UNSIGNED DEFAULT NULL CHECK (`contact_number` >= 0),
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `zipcode` int(11) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `online_shopping_adminprofile`
--

INSERT INTO `online_shopping_adminprofile` (`id`, `contact_number`, `city`, `state`, `zipcode`, `image`, `user_id`) VALUES
(1, NULL, NULL, NULL, NULL, 'admin/admin1_IjYmHPo.png', 3);

-- --------------------------------------------------------

--
-- Table structure for table `online_shopping_billingaddress`
--

CREATE TABLE `online_shopping_billingaddress` (
  `id` bigint(20) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `contact` bigint(20) UNSIGNED NOT NULL CHECK (`contact` >= 0),
  `address` varchar(1000) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `online_shopping_billingaddress`
--

INSERT INTO `online_shopping_billingaddress` (`id`, `username`, `email`, `contact`, `address`, `order_id`, `user_id`) VALUES
(1, 'nandini', 'nandini@gmail.com', 9712951478, 'oadhv', 1, 6),
(2, 'nisha', 'nisha@gmail.com', 1234567892, 'vastral', 2, 8),
(3, 'nandini', 'nandini@gmail.com', 9712951478, 'Odhav', 3, 6),
(4, 'nisha', 'nisha@gmail.com', 1234567892, 'vastral', 4, 8),
(5, 'nandini', 'nandini@gmail.com', 9712951478, 'odhav', 5, 6);

-- --------------------------------------------------------

--
-- Table structure for table `online_shopping_cart`
--

CREATE TABLE `online_shopping_cart` (
  `id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `online_shopping_category`
--

CREATE TABLE `online_shopping_category` (
  `id` bigint(20) NOT NULL,
  `category` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `online_shopping_category`
--

INSERT INTO `online_shopping_category` (`id`, `category`) VALUES
(1, 'Bride'),
(2, 'Groom'),
(3, 'Wedding Accessories');

-- --------------------------------------------------------

--
-- Table structure for table `online_shopping_customerprofile`
--

CREATE TABLE `online_shopping_customerprofile` (
  `id` bigint(20) NOT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(30) DEFAULT NULL,
  `contact_number` bigint(20) UNSIGNED DEFAULT NULL CHECK (`contact_number` >= 0),
  `address` varchar(500) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `online_shopping_customerprofile`
--

INSERT INTO `online_shopping_customerprofile` (`id`, `dob`, `gender`, `contact_number`, `address`, `image`, `user_id`, `date`) VALUES
(1, '2003-08-06', 'Female', 9712951478, 'Odhav', 'customer/d5.jpg', 6, '2024-04-15'),
(2, '2003-10-15', 'Female', 1234567892, 'vastral', 'placeholder.jpg', 8, '2024-04-19');

-- --------------------------------------------------------

--
-- Table structure for table `online_shopping_feedback`
--

CREATE TABLE `online_shopping_feedback` (
  `id` bigint(20) NOT NULL,
  `customer` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `online_shopping_inquiry`
--

CREATE TABLE `online_shopping_inquiry` (
  `id` bigint(20) NOT NULL,
  `customer` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `online_shopping_inquiry`
--

INSERT INTO `online_shopping_inquiry` (`id`, `customer`, `email`, `subject`, `message`, `date`) VALUES
(2, 'nandini', 'nandini@gmail.com', 'outfits', 'product issue', '2024-01-28');

-- --------------------------------------------------------

--
-- Table structure for table `online_shopping_order`
--

CREATE TABLE `online_shopping_order` (
  `id` bigint(20) NOT NULL,
  `date` date NOT NULL,
  `total_amount` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `seller_id` bigint(20) NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `online_shopping_order`
--

INSERT INTO `online_shopping_order` (`id`, `date`, `total_amount`, `user_id`, `seller_id`, `status`) VALUES
(1, '2024-04-15', 20000, 6, 1, 'Delivered'),
(2, '2024-04-19', 70000, 8, 1, 'Delivered'),
(3, '2024-04-19', 10000, 6, 3, 'Delivered'),
(4, '2024-04-19', 7000, 8, 3, 'Delivered'),
(5, '2024-04-20', 20000, 6, 2, 'Delivered');

-- --------------------------------------------------------

--
-- Table structure for table `online_shopping_orderitem`
--

CREATE TABLE `online_shopping_orderitem` (
  `id` bigint(20) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `prices` int(11) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `online_shopping_orderitem`
--

INSERT INTO `online_shopping_orderitem` (`id`, `product_name`, `prices`, `image`, `quantity`, `order_id`, `product_id`) VALUES
(1, 'Bright Pink Lehenga set with Intricate Floral Gold & Multicolored Thread Work Embroidery', 20000, 'seller/products/images/l2_ooWC66V.jpg', 1, 1, 2),
(2, 'Bright Yellow Embellished Lehenga Set with matching Organza Dupatta', 35000, 'seller/products/images/ck1_KEGx9nZ.jpg', 2, 2, 7),
(3, 'Turquoise Gold Tone Meenakari Full Bridal Set', 10000, 'seller/products/images/j1_gP3jeBk.jpg', 1, 3, 27),
(4, 'Mint Green Safa Turban with Gold Tone Kundan Kalgi', 7000, 'seller/products/images/gt1_uSO4ePb.jpg', 1, 4, 37),
(5, 'Pastel Embroidered short Galabandh with Pastel Yellow Short Kurta', 20000, 'seller/products/images/srt1_GLq8epG.jpg', 1, 5, 21);

-- --------------------------------------------------------

--
-- Table structure for table `online_shopping_product`
--

CREATE TABLE `online_shopping_product` (
  `id` bigint(20) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `description` varchar(500) NOT NULL,
  `price` int(11) NOT NULL,
  `image1` varchar(100) DEFAULT NULL,
  `image2` varchar(100) DEFAULT NULL,
  `image3` varchar(100) DEFAULT NULL,
  `image4` varchar(100) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `date` datetime(6) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `subcategory_id` bigint(20) NOT NULL,
  `size` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `online_shopping_product`
--

INSERT INTO `online_shopping_product` (`id`, `product_name`, `description`, `price`, `image1`, `image2`, `image3`, `image4`, `quantity`, `date`, `category_id`, `seller_id`, `subcategory_id`, `size`) VALUES
(1, 'Ruby Red Velvet Ornate Embroidery Bridal Lehenga Set with matching Net Dupatta', 'Ruby Red Velvet Ornate Embroidery Bridal Lehenga Set with matching Net Dupatta', 15000, 'seller/products/images/l1_BMKk9cd.jpg', 'seller/products/images/lhdh1_hk61B0W.jpg', 'sellerproducts/images/lhdh2_CY89t9w.jpg', '', 3, '2024-04-14 18:53:37.743539', 1, 4, 1, 's,xl,xxl'),
(2, 'Bright Pink Lehenga set with Intricate Floral Gold & Multicolored Thread Work Embroidery', 'Bright Pink Lehenga set with Intricate Floral Gold & Multicolored Thread Work Embroidery', 20000, 'seller/products/images/l2_ooWC66V.jpg', 'seller/products/images/lhd3_z4ALptj.jpg', 'sellerproducts/images/lhd4_oh9u0pU.jpg', '', 4, '2024-04-14 18:55:26.152914', 1, 4, 1, 's,xl,xxl'),
(3, 'Deep Magenta Embroidered Lehenga Set with Net Dupatta', 'Deep Magenta Embroidered Lehenga Set with Net Dupatta', 25000, 'seller/products/images/l3_m2vDCZU.jpg', 'seller/products/images/lhd5_zUnPqyF.jpg', 'sellerproducts/images/lhd6_dnQmawP.jpg', '', 2, '2024-04-14 18:57:00.312623', 1, 4, 1, 's,xl,xxl'),
(4, 'Hotpink & Red Dual Tone Zardosi Embroidered Silk Bridal Lehenga', 'Hotpink & Red Dual Tone Zardosi Embroidered Silk Bridal Lehenga', 18000, 'seller/products/images/lh2_jylwogS.jpg', 'seller/products/images/lhd25_NmubiCb.jpg', 'sellerproducts/images/lhd26_cnttTzQ.jpg', '', 4, '2024-04-14 18:59:19.426512', 1, 4, 2, 's,xl,xxl'),
(5, 'Bottle Green Dori Embroidered Raw silk Bridal Lehenga', 'Bottle Green Dori Embroidered Raw silk Bridal Lehenga', 22000, 'seller/products/images/lh7_9Ij7teU.jpg', 'seller/products/images/lhd35_iA8IfCo.jpg', 'sellerproducts/images/lhd36_vYBxPrV.jpg', '', 6, '2024-04-14 19:00:46.552951', 1, 4, 2, 's,xl,xxl'),
(6, 'Crimson Pink Zardosi Embroidered Raw Silk Bridal Lehenga', 'Crimson Pink Zardosi Embroidered Raw Silk Bridal Lehenga', 23400, 'seller/products/images/lh8_EMOxcRf.jpg', 'seller/products/images/lhd37_N9OHdCJ.jpg', 'sellerproducts/images/lhd38_IopQDtO.jpg', '', 3, '2024-04-14 19:02:43.489202', 1, 4, 2, 's,xl,xxl'),
(7, 'Bright Yellow Embellished Lehenga Set with matching Organza Dupatta', 'Bright Yellow Embellished Lehenga Set with matching Organza Dupatta', 35000, 'seller/products/images/ck1_KEGx9nZ.jpg', 'seller/products/images/lhd41_BO43aqm.jpg', 'sellerproducts/images/lhd42_ThXeEzX.jpg', '', 6, '2024-04-14 19:04:11.689204', 1, 4, 3, 's,xl,xxl'),
(8, 'Pastel Pink Embroidered Lehenga Set with matching Organza Dupatta', 'Pastel Pink Embroidered Lehenga Set with matching Organza Dupatta', 38900, 'seller/products/images/ck2_fn3rufP.jpg', 'seller/products/images/lhd43_kojxuMd.jpg', 'sellerproducts/images/lhd44_GeZyXtJ.jpg', '', 5, '2024-04-14 19:05:39.569241', 1, 4, 3, 's,xl,xxl'),
(9, 'Mehndi Ornate Lehenga Set with Mustard Organza Dupatta', 'Mehndi Ornate Lehenga Set with Mustard Organza Dupatta', 25000, 'seller/products/images/ck8_92aWmlh.jpg', 'seller/products/images/lhd57_HR368Qb.jpg', 'sellerproducts/images/lhd58_9mnD9Gi.jpg', '', 3, '2024-04-14 19:07:15.064344', 1, 4, 3, 's,xl,xxl'),
(10, 'Deep Red Velvet Floral Embroidery Bridal Anarkali', 'Deep Red Velvet Floral Embroidery Bridal Anarkali', 40000, 'seller/products/images/rs_3781kjz.jpg', 'seller/products/images/lhd61_I8Tplxl.jpg', 'sellerproducts/images/lhd62.jpg', '', 7, '2024-04-14 19:09:09.575716', 1, 4, 4, 's,xl,xxl'),
(11, 'Tropical Blue Mughal Floral Embroidery Gown with Structured Bodice', 'Tropical Blue Mughal Floral Embroidery Gown with Structured Bodice', 33500, 'seller/products/images/rs3_BAeSM69.jpg', 'seller/products/images/lhd67_dmIIKmM.jpg', 'sellerproducts/images/lhd68_VfGPMHx.jpg', '', 5, '2024-04-14 19:10:17.560084', 1, 4, 4, 's,xl,xxl'),
(12, 'Beige Floral Embroidery Floor Length Tulle Gown', 'Beige Floral Embroidery Floor Length Tulle Gown', 36000, 'seller/products/images/rs5_GcIjzYq.jpg', 'seller/products/images/lhd69_KzhuYhg.jpg', 'sellerproducts/images/lhd70_BIgMInA.jpg', '', 5, '2024-04-14 19:11:47.602175', 1, 4, 4, 's,xl,xxl'),
(13, 'Ice Blue Floral Embroidered Sherwani Set with Aqua Stole and Ivory Anarkali Kurta & Chooridar', 'Ice Blue Floral Embroidered Sherwani Set with Aqua Stole and Ivory Anarkali Kurta & Chooridar', 12000, 'seller/products/images/as_6QDT1K1.jpg', 'seller/products/images/gs1_zg5kDyc.jpg', 'sellerproducts/images/gs2_8qhG9Hs.jpg', '', 4, '2024-04-14 19:18:45.367332', 2, 5, 5, 's,xl,xxl'),
(14, 'Ivory and Peach Floral Embroidered Sherwani Set with Anarkali Kurta', 'Ivory and Peach Floral Embroidered Sherwani Set with Anarkali Kurta', 15000, 'seller/products/images/as1_UocPfuD.jpg', 'seller/products/images/gs3_mKX5WKE.jpg', 'sellerproducts/images/gs4_MIh1KnJ.jpg', '', 3, '2024-04-14 19:21:11.406594', 2, 5, 5, 's,xl,xxl'),
(15, 'Ivory Floral Embroidered Sherwani Set with Green Stole and matching Ivory Anarkali Kurta', 'Ivory Floral Embroidered Sherwani Set with Green Stole and matching Ivory Anarkali Kurta', 20000, 'seller/products/images/as2_5tHQjns.jpg', 'seller/products/images/gs5_Iln6FO2.jpg', 'sellerproducts/images/gs6.jpg', '', 5, '2024-04-14 19:23:39.129629', 2, 5, 5, 's,xl,xxl'),
(16, 'Gold Beige Mughal Floral Embroidered Sherwani Set with Ivory Anarkali Kurta & Chooridar', 'Gold Beige Mughal Floral Embroidered Sherwani Set with Ivory Anarkali Kurta & Chooridar', 15000, 'seller/products/images/as3_JWWJl8w.jpg', 'seller/products/images/gs7_3Cn3ZTs.jpg', 'sellerproducts/images/gs8_F7Pf4lQ.jpg', '', 4, '2024-04-14 19:26:17.225923', 2, 5, 5, 's,xl,xxl'),
(17, 'Pale Yellow Floral Embroidered Sherwani Set with Ivory Anarkali Kurta & Chooridar', 'Pale Yellow Floral Embroidered Sherwani Set with Ivory Anarkali Kurta & Chooridar', 16000, 'seller/products/images/as4_T5ogrgz.jpg', 'seller/products/images/gs9_EhIu4Jq.jpg', 'sellerproducts/images/gs10_9CbAQf9.jpg', '', 3, '2024-04-14 19:27:35.415736', 2, 5, 5, 's,xl,xxl'),
(18, 'Light Beige Embroidered Achkan Sherwani Set with Ivory Kurta', 'Light Beige Embroidered Achkan Sherwani Set with Ivory Kurta', 16800, 'seller/products/images/st1_T7EQWZ2.jpg', 'seller/products/images/gs19_91H0cYw.jpg', 'sellerproducts/images/gs20_6fv6ZT5.jpg', '', 8, '2024-04-14 19:30:29.458867', 2, 5, 6, 's,xl,xxl'),
(19, 'Pistachio Embroidered Sherwani Set with Ivory Kurta & Chooridar', 'Pistachio Embroidered Sherwani Set with Ivory Kurta & Chooridar', 20000, 'seller/products/images/st2_SYl19vp.jpg', 'seller/products/images/gs21_YJTNRAy.jpg', 'sellerproducts/images/gs22_IN6lm42.jpg', '', 5, '2024-04-14 19:31:34.090928', 2, 5, 6, 's,xl,xxl'),
(20, 'Pale Peach Embroidered Achkan Sherwani Set with Ivory Kurta & Chooridar', 'Pale Peach Embroidered Achkan Sherwani Set with Ivory Kurta & Chooridar', 22500, 'seller/products/images/st3_XV2VBcN.jpg', 'seller/products/images/gs23_ddPnFTf.jpg', 'sellerproducts/images/gs24_42wAZCV.jpg', '', 4, '2024-04-14 19:32:39.034872', 2, 5, 6, 's,xl,xxl'),
(21, 'Pastel Embroidered short Galabandh with Pastel Yellow Short Kurta', 'Pastel Embroidered short Galabandh with Pastel Yellow Short Kurta', 20000, 'seller/products/images/srt1_GLq8epG.jpg', 'seller/products/images/gs37_O7crBhP.jpg', 'sellerproducts/images/gs38_hwghpeX.jpg', '', 5, '2024-04-14 19:34:53.165872', 2, 5, 7, 's,xl,xxl'),
(22, 'Black Flora Fauna Embroidered Achkan with matching Black Pants', 'Black Flora Fauna Embroidered Achkan with matching Black Pants', 25000, 'seller/products/images/srt2_DRVi0xg.jpg', 'seller/products/images/gs39_FqcXDBk.jpg', 'sellerproducts/images/gs40_mY6IeH4.jpg', '', 3, '2024-04-14 19:35:53.064537', 2, 5, 6, 's,xl,xxl'),
(23, 'Grape & Black Embroidered Draped Achkan Jacket with matching Black Pants', 'Grape & Black Embroidered Draped Achkan Jacket with matching Black Pants', 28500, 'seller/products/images/srt4_FjhY1Kq.jpg', 'seller/products/images/gs43_ImHD0rX.jpg', 'sellerproducts/images/gs44_cMbhdNy.jpg', '', 5, '2024-04-14 19:37:07.137388', 2, 5, 7, 's,xl,xxl'),
(24, 'Dark Green Army Print Dinner Jacket', 'Dark Green Army Print Dinner Jacket', 20000, 'seller/products/images/res_X2NtvLc.jpg', '', '', '', 5, '2024-04-14 19:40:30.351616', 2, 5, 8, 's,xl,xxl'),
(25, 'Floral Embroidered Black Dinner Jacket', 'Floral Embroidered Black Dinner Jacket', 12000, 'seller/products/images/res1_sLhspI1.jpg', '', '', '', 5, '2024-04-14 19:41:11.319720', 2, 5, 8, 's,xl,xxl'),
(26, 'Woven Design Tuxedo with Ornate Lapels', 'Woven Design Tuxedo with Ornate Lapels', 15000, 'seller/products/images/res4_TWExXi2.jpg', '', '', '', 3, '2024-04-14 19:42:03.740083', 2, 5, 8, 's,xl,xxl'),
(27, 'Turquoise Gold Tone Meenakari Full Bridal Set', 'Turquoise Gold Tone Meenakari Full Bridal Set', 10000, 'seller/products/images/j1_gP3jeBk.jpg', 'seller/products/images/bj1_yY4szzr.jpg', 'sellerproducts/images/bj2_9zs7Bvk.jpg', '', 4, '2024-04-14 19:48:12.139928', 3, 7, 9, '-'),
(28, 'Pink Gold Tone Kundan Turquoise Enameled Full Bridal Set', 'Pink Gold Tone Kundan Turquoise Enameled Full Bridal Set', 20000, 'seller/products/images/j2_R8TdZt6.jpg', 'seller/products/images/bj5_DP7rP42.jpg', 'sellerproducts/images/bj6_5FRN71M.jpg', '', 5, '2024-04-14 19:50:28.839995', 3, 7, 9, '-'),
(29, 'Pink Green Gold Tone Kundan Turquoise Meenakari Full Bridal Set', 'Pink Green Gold Tone Kundan Turquoise Meenakari Full Bridal Set', 22000, 'seller/products/images/j6_NjLwk8a.jpg', 'seller/products/images/bj11_rNBNDLe.jpg', 'sellerproducts/images/bj12_4RQexwl.jpg', '', 4, '2024-04-14 19:51:52.278769', 3, 7, 9, '-'),
(30, 'Gold Tone Embossed Dome multilayered Pearl Strings Bridal Kalire with Leaf Tassels', 'Gold Tone Embossed Dome multilayered Pearl Strings Bridal Kalire with Leaf Tassels', 5000, 'seller/products/images/kl1_VhVLY5W.jpg', '', '', '', 5, '2024-04-14 19:53:57.201645', 3, 7, 10, '-'),
(31, 'Pearl Studded Gold Tone Dome Bridal Kalire with Jhumki Leaf Tassels', 'Pearl Studded Gold Tone Dome Bridal Kalire with Jhumki Leaf Tassels', 6000, 'seller/products/images/kl2_RrmDKX0.jpg', '', '', '', 6, '2024-04-14 19:55:47.629833', 3, 7, 10, '-'),
(32, 'Tiered Gold Tone Studded Domes Bridal Kalire with Pearl Strings & Leaf Tassels', 'Tiered Gold Tone Studded Domes Bridal Kalire with Pearl Strings & Leaf Tassels', 7000, 'seller/products/images/kl5_oMWjdxl.jpg', '', '', '', 4, '2024-04-14 19:56:49.004613', 3, 7, 10, '-'),
(33, 'Deep Red Bridal Chooda with Traditional Ivory Patterned Bangles', 'Deep Red Bridal Chooda with Traditional Ivory Patterned Bangles', 6000, 'seller/products/images/c1_McX3CSR.jpg', '', '', '', 5, '2024-04-14 19:58:31.692352', 3, 7, 11, '-'),
(34, 'Red Bridal Chooda with Intricate Mughal Jaali', 'Red Bridal Chooda with Intricate Mughal Jaali', 7000, 'seller/products/images/c3_u9oXigv.jpg', '', '', '', 5, '2024-04-14 20:00:25.785221', 3, 7, 11, '-'),
(35, 'Bridal Chooda with Geometrical Cutwork Jaali', 'Bridal Chooda with Geometrical Cutwork Jaali', 8000, 'seller/products/images/c4_3UNb2Rj.jpg', '', '', '', 5, '2024-04-14 20:01:02.647296', 3, 7, 11, '-'),
(36, 'khaki Gold Safa Turban with Gold Tone Kundan Kalgi', 'khaki Gold Safa Turban with Gold Tone Kundan Kalgi', 5000, 'seller/products/images/gt_qBn6yAM.jpg', '', '', '', 10, '2024-04-14 20:02:47.346417', 3, 7, 12, '-'),
(37, 'Mint Green Safa Turban with Gold Tone Kundan Kalgi', 'Mint Green Safa Turban with Gold Tone Kundan Kalgi', 7000, 'seller/products/images/gt1_uSO4ePb.jpg', '', '', '', 15, '2024-04-14 20:04:01.905004', 3, 7, 12, '-'),
(38, 'Dusky Chartreuse Safa Turban with Gold Tone Kundan Kalgi', 'Dusky Chartreuse Safa Turban with Gold Tone Kundan Kalgi', 8000, 'seller/products/images/gt3_cFDrS0d.jpg', '', '', '', 20, '2024-04-14 20:04:47.885525', 3, 7, 12, '-'),
(39, 'Cream Pearls and Emeralds Beaded Layered Moti Mala', 'Cream Pearls and Emeralds Beaded Layered Moti Mala', 2000, 'seller/products/images/ga2_DC9N1Sj.jpg', '', '', '', 8, '2024-04-14 20:07:50.482746', 3, 7, 13, '-'),
(40, 'Ivory Pearls and Rubies Beaded Layered Moti Mala', 'Ivory Pearls and Rubies Beaded Layered Moti Mala', 3000, 'seller/products/images/ga1_4Qf67cc.jpg', '', '', '', 5, '2024-04-14 20:08:41.259810', 3, 7, 13, '-'),
(41, 'Cream & Pink Pearls Layered Moti Mala', 'Cream & Pink Pearls Layered Moti Mala', 2500, 'seller/products/images/ga6_KpRVFgt.jpg', '', '', '', 8, '2024-04-14 20:09:29.138233', 3, 7, 13, '-');

-- --------------------------------------------------------

--
-- Table structure for table `online_shopping_sellerprofile`
--

CREATE TABLE `online_shopping_sellerprofile` (
  `id` bigint(20) NOT NULL,
  `contact_number` bigint(20) UNSIGNED DEFAULT NULL CHECK (`contact_number` >= 0),
  `shop_name` varchar(200) DEFAULT NULL,
  `shop_address` varchar(500) DEFAULT NULL,
  `gst_number` varchar(20) DEFAULT NULL,
  `verified` tinyint(1) NOT NULL,
  `rejected` tinyint(1) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `online_shopping_sellerprofile`
--

INSERT INTO `online_shopping_sellerprofile` (`id`, `contact_number`, `shop_name`, `shop_address`, `gst_number`, `verified`, `rejected`, `image`, `user_id`) VALUES
(1, 8141588660, 'DLehengas', 'Usmanpura', '2312', 1, 0, 'placeholder.jpg', 4),
(2, 9365664080, 'Priya Creations', 'Gota', '1234', 1, 0, 'placeholder.jpg', 5),
(3, 123456782, 'jeelaccessories', 'Usmanpura', '1212', 1, 0, 'placeholder.jpg', 7);

-- --------------------------------------------------------

--
-- Table structure for table `online_shopping_shippingaddress`
--

CREATE TABLE `online_shopping_shippingaddress` (
  `id` bigint(20) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `contact` bigint(20) UNSIGNED NOT NULL CHECK (`contact` >= 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `online_shopping_shippingaddress`
--

INSERT INTO `online_shopping_shippingaddress` (`id`, `username`, `email`, `address`, `order_id`, `user_id`, `contact`) VALUES
(1, 'dhruvanshi', 'dhruva@gmail.com', 'sabarmati', 1, 6, 8141588660),
(2, 'dhruvanshi', 'dhruva@gmail.com', 'sabarmati', 2, 8, 8141588660),
(3, 'nandini', 'nandini@gmail.com', 'odhav', 3, 6, 9712951478),
(4, 'nisha', 'nisha@gmail.com', 'vastral', 4, 8, 1234567892),
(5, 'dhruvanshi', 'dhruva@gmail.com', 'sabarmati', 5, 6, 8141588660);

-- --------------------------------------------------------

--
-- Table structure for table `online_shopping_subcategory`
--

CREATE TABLE `online_shopping_subcategory` (
  `id` bigint(20) NOT NULL,
  `subcategory` varchar(500) NOT NULL,
  `category_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `online_shopping_subcategory`
--

INSERT INTO `online_shopping_subcategory` (`id`, `subcategory`, `category_id`) VALUES
(1, 'Bridal Lehenga', 1),
(2, 'Letest Bridal Lehenga', 1),
(3, 'Cocktail Lehenga', 1),
(4, 'Reception Gown', 1),
(5, 'Anarkali Sherwani', 2),
(6, 'Straight Sherwani', 2),
(7, 'Short Sherwani', 2),
(8, 'Reception Suit', 2),
(9, 'Bridal Jwellery', 3),
(10, 'Bridal Kalire', 3),
(11, 'Bridal Chooda', 3),
(12, 'Groom Turban', 3),
(13, 'Groom Mala', 3);

-- --------------------------------------------------------

--
-- Table structure for table `online_shopping_wishlist`
--

CREATE TABLE `online_shopping_wishlist` (
  `id` bigint(20) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `product_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `online_shopping_adminprofile`
--
ALTER TABLE `online_shopping_adminprofile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `online_shopping_billingaddress`
--
ALTER TABLE `online_shopping_billingaddress`
  ADD PRIMARY KEY (`id`),
  ADD KEY `online_shopping_bill_order_id_16e6a09c_fk_online_sh` (`order_id`),
  ADD KEY `online_shopping_billingaddress_user_id_c6c11f54_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `online_shopping_cart`
--
ALTER TABLE `online_shopping_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `online_shopping_cart_product_id_716d58a7_fk_online_sh` (`product_id`),
  ADD KEY `online_shopping_cart_user_id_7d5ae6d1_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `online_shopping_category`
--
ALTER TABLE `online_shopping_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `online_shopping_customerprofile`
--
ALTER TABLE `online_shopping_customerprofile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `online_shopping_feedback`
--
ALTER TABLE `online_shopping_feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `online_shopping_inquiry`
--
ALTER TABLE `online_shopping_inquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `online_shopping_order`
--
ALTER TABLE `online_shopping_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `online_shopping_order_user_id_def4d37f_fk_auth_user_id` (`user_id`),
  ADD KEY `online_shopping_orde_seller_id_46ab7fc5_fk_online_sh` (`seller_id`);

--
-- Indexes for table `online_shopping_orderitem`
--
ALTER TABLE `online_shopping_orderitem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `online_shopping_orde_order_id_eb504206_fk_online_sh` (`order_id`),
  ADD KEY `online_shopping_orde_product_id_9f7ba937_fk_online_sh` (`product_id`);

--
-- Indexes for table `online_shopping_product`
--
ALTER TABLE `online_shopping_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `online_shopping_prod_subcategory_id_e97a360f_fk_online_sh` (`subcategory_id`),
  ADD KEY `online_shopping_prod_category_id_4ec95cdf_fk_online_sh` (`category_id`),
  ADD KEY `online_shopping_product_seller_id_e3d1c098_fk_auth_user_id` (`seller_id`);

--
-- Indexes for table `online_shopping_sellerprofile`
--
ALTER TABLE `online_shopping_sellerprofile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `online_shopping_shippingaddress`
--
ALTER TABLE `online_shopping_shippingaddress`
  ADD PRIMARY KEY (`id`),
  ADD KEY `online_shopping_ship_order_id_fc20b8e4_fk_online_sh` (`order_id`),
  ADD KEY `online_shopping_shippingaddress_user_id_90c75108_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `online_shopping_subcategory`
--
ALTER TABLE `online_shopping_subcategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `online_shopping_subc_category_id_b64c730b_fk_online_sh` (`category_id`);

--
-- Indexes for table `online_shopping_wishlist`
--
ALTER TABLE `online_shopping_wishlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `online_shopping_wishlist_customer_id_52bb3ede_fk_auth_user_id` (`customer_id`),
  ADD KEY `online_shopping_wish_product_id_e241bad6_fk_online_sh` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `online_shopping_adminprofile`
--
ALTER TABLE `online_shopping_adminprofile`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `online_shopping_billingaddress`
--
ALTER TABLE `online_shopping_billingaddress`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `online_shopping_cart`
--
ALTER TABLE `online_shopping_cart`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `online_shopping_category`
--
ALTER TABLE `online_shopping_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `online_shopping_customerprofile`
--
ALTER TABLE `online_shopping_customerprofile`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `online_shopping_feedback`
--
ALTER TABLE `online_shopping_feedback`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `online_shopping_inquiry`
--
ALTER TABLE `online_shopping_inquiry`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `online_shopping_order`
--
ALTER TABLE `online_shopping_order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `online_shopping_orderitem`
--
ALTER TABLE `online_shopping_orderitem`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `online_shopping_product`
--
ALTER TABLE `online_shopping_product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `online_shopping_sellerprofile`
--
ALTER TABLE `online_shopping_sellerprofile`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `online_shopping_shippingaddress`
--
ALTER TABLE `online_shopping_shippingaddress`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `online_shopping_subcategory`
--
ALTER TABLE `online_shopping_subcategory`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `online_shopping_wishlist`
--
ALTER TABLE `online_shopping_wishlist`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `online_shopping_adminprofile`
--
ALTER TABLE `online_shopping_adminprofile`
  ADD CONSTRAINT `online_shopping_adminprofile_user_id_22eb76ab_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `online_shopping_billingaddress`
--
ALTER TABLE `online_shopping_billingaddress`
  ADD CONSTRAINT `online_shopping_billingaddress_user_id_c6c11f54_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `online_shopping_cart`
--
ALTER TABLE `online_shopping_cart`
  ADD CONSTRAINT `online_shopping_cart_product_id_716d58a7_fk_online_sh` FOREIGN KEY (`product_id`) REFERENCES `online_shopping_product` (`id`),
  ADD CONSTRAINT `online_shopping_cart_user_id_7d5ae6d1_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `online_shopping_customerprofile`
--
ALTER TABLE `online_shopping_customerprofile`
  ADD CONSTRAINT `online_shopping_customerprofile_user_id_82cd48d2_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `online_shopping_order`
--
ALTER TABLE `online_shopping_order`
  ADD CONSTRAINT `online_shopping_orde_seller_id_46ab7fc5_fk_online_sh` FOREIGN KEY (`seller_id`) REFERENCES `online_shopping_sellerprofile` (`id`),
  ADD CONSTRAINT `online_shopping_order_user_id_def4d37f_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `online_shopping_orderitem`
--
ALTER TABLE `online_shopping_orderitem`
  ADD CONSTRAINT `online_shopping_orde_order_id_eb504206_fk_online_sh` FOREIGN KEY (`order_id`) REFERENCES `online_shopping_order` (`id`),
  ADD CONSTRAINT `online_shopping_orde_product_id_9f7ba937_fk_online_sh` FOREIGN KEY (`product_id`) REFERENCES `online_shopping_product` (`id`);

--
-- Constraints for table `online_shopping_product`
--
ALTER TABLE `online_shopping_product`
  ADD CONSTRAINT `online_shopping_prod_category_id_4ec95cdf_fk_online_sh` FOREIGN KEY (`category_id`) REFERENCES `online_shopping_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `online_shopping_prod_subcategory_id_e97a360f_fk_online_sh` FOREIGN KEY (`subcategory_id`) REFERENCES `online_shopping_subcategory` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `online_shopping_product_seller_id_e3d1c098_fk_auth_user_id` FOREIGN KEY (`seller_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `online_shopping_sellerprofile`
--
ALTER TABLE `online_shopping_sellerprofile`
  ADD CONSTRAINT `online_shopping_sellerprofile_user_id_3183463f_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `online_shopping_shippingaddress`
--
ALTER TABLE `online_shopping_shippingaddress`
  ADD CONSTRAINT `online_shopping_ship_order_id_fc20b8e4_fk_online_sh` FOREIGN KEY (`order_id`) REFERENCES `online_shopping_order` (`id`),
  ADD CONSTRAINT `online_shopping_shippingaddress_user_id_90c75108_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `online_shopping_subcategory`
--
ALTER TABLE `online_shopping_subcategory`
  ADD CONSTRAINT `online_shopping_subc_category_id_b64c730b_fk_online_sh` FOREIGN KEY (`category_id`) REFERENCES `online_shopping_category` (`id`);

--
-- Constraints for table `online_shopping_wishlist`
--
ALTER TABLE `online_shopping_wishlist`
  ADD CONSTRAINT `online_shopping_wish_product_id_e241bad6_fk_online_sh` FOREIGN KEY (`product_id`) REFERENCES `online_shopping_product` (`id`),
  ADD CONSTRAINT `online_shopping_wishlist_customer_id_52bb3ede_fk_auth_user_id` FOREIGN KEY (`customer_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
