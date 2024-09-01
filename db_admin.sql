SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

-- Database: `db_admin`

-- Table structure for table `tbl_roles`
CREATE TABLE `tbl_roles` (
  `id` int(11) NOT NULL COMMENT 'role_id',
  `role` varchar(255) DEFAULT NULL COMMENT 'role_text'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `tbl_roles` (`id`, `role`) VALUES
(1, 'Admin'),
(2, 'Editor'),
(3, 'User');

-- Table structure for table `tbl_users`
CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `mobile` varchar(25) DEFAULT NULL,
  `roleid` tinyint(4) DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `tbl_users` (`id`, `name`, `username`, `email`, `password`, `mobile`, `roleid`, `isActive`, `created_at`, `updated_at`) VALUES
(22, 'Ravi Kumar', 'RaviKumar', 'ravi.kumar@gmail.com', 'e99a18c428cb38d5f260853678922e03abd8331c', '9876543210', 3, 1, NOW(), NOW()),
(21, 'admin', 'admin', 'admin@gmail.com', 'admin123', '9876543210', 1, 0, NOW(), NOW()),
(23, 'Sneha Patel', 'SnehaP', 'sneha.patel@gmail.com', 'ab56b4d92b40713acc5af89985d4b786f780e225', '9123456789', 3, 1, NOW(), NOW()),
(24, 'Arjun Singh', 'ArjunSingh', 'arjun.singh@gmail.com', '8f14e45fceea167a5a36dedd4bea2543ff190abe', '9988776655', 3, 0, NOW(), NOW()),
(25, 'Priya Sharma', 'PriyaS', 'priya.sharma@gmail.com', 'b6d767d2f8ed5d21a44b0e5886680cb9ee2b7d04', '9876543211', 2, 1, NOW(), NOW()),
(26, 'Vikram Rao', 'VikramRao', 'vikram.rao@gmail.com', '4b43b0aee35624cd95b910189b3dc231605dd16e', '9876543212', 3, 0, NOW(), NOW());

ALTER TABLE `tbl_roles`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `tbl_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'role_id', AUTO_INCREMENT=4;

ALTER TABLE `tbl_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

COMMIT;
