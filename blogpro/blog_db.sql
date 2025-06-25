-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 13, 2023 at 06:08 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(25, 'Can add uploaddata', 7, 'add_uploaddata'),
(26, 'Can change uploaddata', 7, 'change_uploaddata'),
(27, 'Can delete uploaddata', 7, 'delete_uploaddata'),
(28, 'Can view uploaddata', 7, 'view_uploaddata'),
(29, 'Can add signup', 8, 'add_signup'),
(30, 'Can change signup', 8, 'change_signup'),
(31, 'Can delete signup', 8, 'delete_signup'),
(32, 'Can view signup', 8, 'view_signup'),
(33, 'Can add form', 9, 'add_form'),
(34, 'Can change form', 9, 'change_form'),
(35, 'Can delete form', 9, 'delete_form'),
(36, 'Can view form', 9, 'view_form'),
(37, 'Can add report', 10, 'add_report'),
(38, 'Can change report', 10, 'change_report'),
(39, 'Can delete report', 10, 'delete_report'),
(40, 'Can view report', 10, 'view_report');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$atra1aCOwIlzGyDuTOBHcy$sIWBps046PabU2eoG2Qbg1yFAPJnVtyFUTNaWfcXOyE=', '2023-08-12 16:19:01.663604', 0, 'gurleen', 'Gurleen', 'dhaliwal', 'dhaliwal04@gmail.com', 0, 1, '2023-08-01 06:30:55.965258'),
(2, 'pbkdf2_sha256$600000$cZ79YWoTkkZorw2zrrTV40$jTckPQuZSHRs+qK0s2TbYBYH1oreLFpc5XTe4aS4yic=', '2023-08-10 16:26:14.081187', 0, 'manmeet', 'Manmeet', 'Dhaliwal', 'dhaliwal@gmail.com', 0, 1, '2023-08-02 04:37:41.583930'),
(3, 'pbkdf2_sha256$600000$a8UKGul21CXtVIUtGYN71l$apldKMgh75Dte3TmW3+O6u99w5TbaL4SXlBRPS/kiMM=', NULL, 0, 'parleen', 'parleen', 'kaur', 'parleen@gmail.com', 0, 1, '2023-08-06 16:22:42.667238'),
(4, 'pbkdf2_sha256$600000$DCYKtFUohZ1flhGu1Oxq9J$9X+8XQLF+FDUtARHh1RfZ80dJuSbTVBFCO+CjuAmPLA=', NULL, 0, 'rohit', 'Rohit', 'sharma', 'sharma@gmail.com', 0, 1, '2023-08-06 16:31:11.816184'),
(5, 'pbkdf2_sha256$600000$XyJOgNICoiJtafevXVEAmO$+rwavuJJguYiaEUqh38uCDGK3CQCbYsAT7ZJzN13wmk=', NULL, 0, 'kulwinder', 'kulwinder', 'Dhaliwal', 'dhaliwal@gmail.com', 0, 1, '2023-08-06 16:34:13.853423');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(9, 'proapp', 'form'),
(10, 'proapp', 'report'),
(8, 'proapp', 'signup'),
(7, 'proapp', 'uploaddata'),
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-08-01 05:12:26.539761'),
(2, 'auth', '0001_initial', '2023-08-01 05:12:27.056948'),
(3, 'admin', '0001_initial', '2023-08-01 05:12:27.229638'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-08-01 05:12:27.256328'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-08-01 05:12:27.273206'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-08-01 05:12:27.353786'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-08-01 05:12:27.454844'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-08-01 05:12:27.491218'),
(9, 'auth', '0004_alter_user_username_opts', '2023-08-01 05:12:27.518533'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-08-01 05:12:27.561637'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-08-01 05:12:27.576839'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-08-01 05:12:27.589745'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-08-01 05:12:27.610251'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-08-01 05:12:27.632949'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-08-01 05:12:27.655831'),
(16, 'auth', '0011_update_proxy_permissions', '2023-08-01 05:12:27.673667'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-08-01 05:12:27.696046'),
(18, 'sessions', '0001_initial', '2023-08-01 05:12:27.724866'),
(19, 'proapp', '0001_initial', '2023-08-01 05:29:19.069608'),
(20, 'proapp', '0002_signup', '2023-08-01 06:15:02.543061'),
(21, 'proapp', '0003_form_alter_uploaddata_image', '2023-08-04 05:18:56.172136'),
(22, 'proapp', '0004_report', '2023-08-10 05:17:58.167985'),
(23, 'proapp', '0005_report_email', '2023-08-11 05:08:35.425923');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('fawzvqjxhxm3st8ocrj6c86wi9gfncnj', '.eJxVjEEOwiAQRe_C2pDCUECX7nsGMswMUjVtUtqV8e7apAvd_vfef6mE21rT1mRJI6uLMur0u2Wkh0w74DtOt1nTPK3LmPWu6IM2Pcwsz-vh_h1UbPVbFzCGXbb92ffkuBMsLgiYEjzEziIXLiSxRApGAChH8DY48uhiAAvq_QHrxDfZ:1qUrKP:3cC68kWqDZEL0grzizCI7Enbu8f9ILlyFXUD4FRfXio', '2023-08-26 16:19:01.698305');

-- --------------------------------------------------------

--
-- Table structure for table `form`
--

CREATE TABLE `form` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `contact` varchar(13) NOT NULL,
  `message` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `form`
--

INSERT INTO `form` (`id`, `name`, `email`, `contact`, `message`) VALUES
(1, 'Gurleen Kaur', 'dhaliwal@gmail.com', '7654321980', 'very good blogs'),
(2, 'Gurleen Kaur', 'dhaliwal@gmail.com', '7654321980', 'very good blogs'),
(3, 'Gurleen Kaur', 'dhaliwal@gmail.com', '7654321980', 'very good blogs'),
(4, 'Gurleen Kaur', 'dhaliwal@gmail.com', '7654321980', 'good blogs'),
(5, 'Gurleen Kaur', 'dhaliwal@gmail.com', '7654321980', 'good blogs'),
(6, 'Gurleen Kaur', 'dhaliwal@gmail.com', '7654321980', 'good blogs'),
(7, 'Gurleen Kaur', 'dhaliwal@gmail.com', '7654321980', 'cctfy'),
(8, 'Gurleen Kaur', 'dhaliwal@gmail.com', '7654321980', 'cctfy'),
(9, 'Gurleen Kaur', 'dhaliwal@gmail.com', '7654321980', 'n ldnklncsdfef'),
(10, 'Gurleen Kaur', 'dhaliwal@gmail.com', '7654321980', 'nncsbbw'),
(11, 'Gurleen Kaur', 'roturohit1@gmail.com', '7654321980', 'bvjvbdnjifgjreioug8e'),
(12, 'Gurleen Kaur', 'dhaliwalkulwinder1977@gmail.com', '7654321980', 'dncjkbjkbfewf'),
(13, 'Gurleen Kaur', 'roturohit1@gmail.com', '235475686970', 'jjnjcbhdfyugwydu'),
(14, 'Gurleen Kaur', 'dhaliwal@gmail.com', '7654321980', 'gfytfrsxzz\r\n'),
(15, 'Gurleen Kaur', 'dhaliwal@gmail.com', '7654321980', 'gfytfrsxzz\r\n'),
(16, 'Gurleen Kaur', 'roturohit1@gmail.com', '9876554321', 'jkhjgtfdtrdr'),
(17, 'Gurleen Kaur', 'roturohit1@gmail.com', '343655476876', 'xvjdbhhejf3w'),
(18, 'Gurleen Kaur', 'roturohit1@gmail.com', '345678976433', 'jmnhjvgfddersw'),
(19, 'Gurleen Kaur', 'dhaliwal@gmail.com', '7654321980', 'etgrehtrj56'),
(20, 'kulwinder Dhaliwal', 'dhaliwalmeet098@gmail.com', '9876543210', ' ncjbvbdshjvb'),
(21, 'gurleen kaur ', 'gurleenkaur20002055@gmail.com', '8544831304', 'very good'),
(22, 'gurleen kaur ', 'gurleenkaur20002055@gmail.com', '8544831304', 'very good');

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `id` bigint(20) NOT NULL,
  `username` varchar(100) NOT NULL,
  `type` varchar(50) NOT NULL,
  `message` varchar(200) NOT NULL,
  `blogid` varchar(10) NOT NULL,
  `email` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`id`, `username`, `type`, `message`, `blogid`, `email`) VALUES
(1, 'gurleen', 'offensive', ' cvhfvfyu', '', '1'),
(2, 'gurleen', 'irrelevant', 'dncjdhvvwefegyu', '', '1'),
(3, 'gurleen', 'irrelevant', 'it is not relevant ', '2', '1'),
(4, 'gurleen', 'spam', 'jknjbgded', '2', 'roturohit1@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `id` bigint(20) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `password` varchar(60) NOT NULL,
  `confirmpassword` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `uploaddata`
--

CREATE TABLE `uploaddata` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(200) NOT NULL,
  `publish` varchar(50) NOT NULL,
  `category` varchar(20) NOT NULL,
  `image` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `uploaddata`
--

INSERT INTO `uploaddata` (`id`, `title`, `description`, `publish`, `category`, `image`, `username`) VALUES
(2, 'Life', 'Accept yourself, love yourself, and keep moving forward. If you want to fly, you have to give up what weighs you down.', '2023-08-02', 'personal', 'blogpro/nature_p5PuDCk.jpg', 'manmeet'),
(6, 'Hiking', 'Hiking is a long, vigorous walk, usually on trails or footpaths in the countryside. Walking for pleasure developed in Europe during the eighteenth century.Religious pilgrimages have existed much longe', '2023-08-07', 'travel', 'blogpro/forks_596.jpg', 'gurleen');

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
-- Indexes for table `form`
--
ALTER TABLE `form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uploaddata`
--
ALTER TABLE `uploaddata`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `form`
--
ALTER TABLE `form`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `uploaddata`
--
ALTER TABLE `uploaddata`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
