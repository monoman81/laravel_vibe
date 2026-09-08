-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2025 at 01:25 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `basic`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Our mission is to bring financial wellness', '<h3><strong>Our mission</strong></h3><p>We believe financial wellness is key to a better life. Our mission is to empower individuals and businesses with the tools they need to understand, manage, and grow their financial health.</p><p>With our app, you can easily track spending, set budgets, automate savings,</p><p>and get re<strong>al-time insights into your financial world.</strong></p><p>For businesses, our software offers seamless integration with your existing tools to ensure that your accounting, invoicing, and financial reporting are effortless and organized.</p>', 'upload/about/1828777123935050.png', NULL, '2025-04-07 15:26:16');

-- --------------------------------------------------------

--
-- Table structure for table `apps`
--

CREATE TABLE `apps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `apps`
--

INSERT INTO `apps` (`id`, `title`, `image`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Start a new level of money management', 'upload/apps/1828697242702165.png', 'Our finance apps and software are powerful tools for managing personal or business finances, helping users stay organized, track financial health, and make informed decisions.', NULL, '2025-04-06 17:20:02');

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `category_name`, `category_slug`, `created_at`, `updated_at`) VALUES
(1, 'Finance Data', 'finance-data', NULL, NULL),
(2, 'new Business', 'new-business', NULL, '2025-04-07 16:30:37'),
(3, 'Technology', 'technology', NULL, NULL),
(4, 'Development', 'development', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog_posts`
--

CREATE TABLE `blog_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blogcat_id` int(11) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_slug` varchar(255) NOT NULL,
  `long_descp` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_posts`
--

INSERT INTO `blog_posts` (`id`, `blogcat_id`, `post_title`, `post_slug`, `long_descp`, `image`, `created_at`, `updated_at`) VALUES
(1, 4, '11Hotel Management is the Best Policy', '11hotel-management-is-the-best-policy', '<p>11Personal finance software can help you manage your money more effectively and save on expenses. It can help you track your spending, set financial goals, and make informed financial decisions.</p><p>Personal finance software can also help you stay disciplined with your spending and make better financial decisions. When selecting the best free personal finance software, consider the following factors:</p><ul><li><strong>Ease of Use: Look for an app that’s intuitive and easy to navigate. If it’s too complicated, you may not stick with it.</strong></li><li><strong>Mobile Access: If you want to manage your finances on the go, choose an app that’s available on mobile devices.</strong></li><li>Integration with Accounts: Make sure the software can sy</li></ul><p><br></p>', 'upload/post/1828864273726551.png', '2025-04-08 05:23:50', '2025-04-08 13:34:46'),
(2, 3, 'Two of Amazon\'s Most Popular Prime', 'two-of-amazon\'s-most-popular-prime', '<p>This type of software helps you track and manage your finances – including checking, savings, credit cards, and investments all in one place. When selecting the best free personal finance software, consider the following factors:</p><ul><li>Track Yo<strong>ur Spending: Free apps automatically track your spending, giving you a clear picture of where your money.</strong></li><li><strong>Create Budgets: Budgeting becomes simple, allowing you to set spending limits in different categories and stick.</strong></li><li>Set Savings Goals: You can set and monitor savings goals for everything from vacations to emergency funds.</li></ul><p><br></p>', 'upload/post/1828833462101336.png', '2025-04-08 05:25:02', '2025-04-08 05:25:02'),
(4, 3, 'Why do need personal finance software', 'why-do-need-personal-finance-software', '<p>Personal finance software can help you manage your money more effectively and save on expenses. It can help you track your spending, set financial goals, and make informed financial decisions.</p><p>Personal finance s<strong>oftware can also help you stay disciplined with your spending and make better financial decisions. When selecting the </strong>best free personal finance software, consider the following factors:</p><ul><li>Ease of Use: Look for an app that’s intuitive and easy to navigate. If it’s too complicated, you may not stick with it.</li><li>Mobile Access: If you want to manage your finances on the go, choose an app that’s available on mobile devices.</li><li>Integration with Accounts: Make sure the software can sync with your bank, credit card, and investment accounts to streamline tracking.</li></ul><p><br></p>', 'upload/post/1828864795807607.png', '2025-04-08 13:43:04', '2025-04-08 15:32:11');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clarifis`
--

CREATE TABLE `clarifis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clarifis`
--

INSERT INTO `clarifis` (`id`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, '1It clarifies all strategic financial decisions', '1With this tool, you can say goodbye to overspending, stay on track with your savings goals, and say goodbye to financial worries. Get ready for a clearer view of your finances like never before!', 'upload/clarifi/1828609718008643.png', NULL, '2025-04-05 18:12:40');

-- --------------------------------------------------------

--
-- Table structure for table `connects`
--

CREATE TABLE `connects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `connects`
--

INSERT INTO `connects` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Start a new level of money management', 'Our finance apps and software are powerful tools for managing personal or business finances, helping users stay organized, track financial health, and make informed decisions.', '2025-04-06 11:43:05', '2025-04-06 17:20:02'),
(2, 'Set Budgets & Goals', 'Define your spending limits and savings goals for categories like groceries, bills or future investments to stay on track.', '2025-04-06 11:43:28', '2025-04-06 12:26:05'),
(3, 'Monitor & Automate', 'Check your financial dashboard for regular updates and set up automatic payments or savings to simplify management.', '2025-04-06 11:43:42', '2025-04-06 12:26:03');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Ariyan', 'ariyan@gmail.com', 'Hi I need your help.', '2025-04-08 17:04:32', '2025-04-08 17:04:32'),
(2, 'Jhon', 'jhon@gmail.com', 'I need your number. Could you plz give me your number', '2025-04-08 17:05:14', '2025-04-08 17:05:14');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Is my financial data safe and secure?', 'Yes, this finance apps use bank-level encryption, multi-factor authentication, and other security measures to protect your sensitive information.', '2025-04-06 12:46:32', '2025-04-06 12:58:59'),
(3, 'Can I link multiple bank accounts and credit cards?', 'Yes, this finance apps use bank-level encryption, multi-factor authentication, and other security measures to protect your sensitive information.', '2025-04-06 12:58:49', '2025-04-06 12:58:49'),
(4, 'How does the app help me stick to my budget?', 'Yes, this finance apps use bank-level encryption, multi-factor authentication, and other security measures to protect your sensitive information.', '2025-04-06 12:59:13', '2025-04-06 12:59:13'),
(5, 'Can I track my investments with the app?', 'Yes, this finance apps use bank-level encryption, multi-factor authentication, and other security measures to protect your sensitive information.', '2025-04-06 12:59:28', '2025-04-06 12:59:28'),
(6, 'What is the laravel', 'Laravel is good for all.', '2025-04-06 13:12:58', '2025-04-06 13:12:58');

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `title`, `description`, `icon`, `created_at`, `updated_at`) VALUES
(1, 'Expense Tracking', 'Allows users to record and categorize daily transactions such as income, expenses, bills, and savings.', 'feature1', '2025-04-05 17:04:34', '2025-04-05 17:04:34'),
(2, 'Budgeting Tools', 'Provides visual insights like graphs or pie charts to show how much is spent versus the budgeted amount.', 'feature2', '2025-04-05 17:05:52', '2025-04-05 17:17:18'),
(4, 'Investment Tracking', 'For users interested in investing, finance apps often provide tools to track stocks, bonds or mutual funds.', 'feature3', '2025-04-05 17:18:05', '2025-04-05 17:18:05'),
(5, 'Tax Management', 'This tool integrate with tax software to help users prepare for tax season, deduct expenses, and file returns.', 'feature4', '2025-04-05 17:18:24', '2025-04-05 17:18:24'),
(6, 'Bill Management', 'Tracks upcoming bills, sets reminders for due dates, and enables easy payments via integration with online banking', 'feature5', '2025-04-05 17:18:39', '2025-04-05 17:18:39'),
(7, 'Security Features', 'Provides bank-level encryption to ensure user data and financial information remain safe, MFA and biometric logins.', 'feature6', '2025-04-05 17:18:59', '2025-04-05 17:18:59');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_03_29_195801_create_reviews_table', 2),
(5, '2025_04_03_211521_create_sliders_table', 3),
(6, '2025_04_03_214252_create_sliders_table', 4),
(7, '2025_04_04_222440_create_titles_table', 5),
(8, '2025_04_05_181251_create_features_table', 6),
(9, '2025_04_05_234214_create_clarifis_table', 7),
(10, '2025_04_06_002045_create_usabilities_table', 8),
(11, '2025_04_06_153843_create_connects_table', 9),
(12, '2025_04_06_183523_create_faqs_table', 10),
(13, '2025_04_06_221753_create_apps_table', 11),
(14, '2025_04_07_175300_create_teams_table', 12),
(15, '2025_04_07_194903_create_abouts_table', 13),
(16, '2025_04_07_213502_create_blog_categories_table', 14),
(17, '2025_04_08_105557_create_blog_posts_table', 15),
(18, '2025_04_08_225626_create_contacts_table', 16);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `name`, `position`, `image`, `message`, `created_at`, `updated_at`) VALUES
(1, 'James Carter', 'CTO', 'upload/review/1827966314497797.jpg', 'TechNova Solutions launched our app early with flawless cloud support, slashing costs by 25%. Their expertise and responsiveness made them an invaluable tech ally', '2025-03-29 15:42:06', '2025-04-03 14:26:58'),
(2, 'Sarah Mitchell', 'Sales Director', 'upload/review/1827970389046953.jpg', 'TechNova Solutions boosted our sales with a custom CRM, cutting response times by 40%. Their proactive support and seamless deployment doubled our revenue. A true partner!', '2025-03-29 15:45:01', '2025-04-03 14:26:30'),
(4, 'Emily Rodriguez', 'Marketing Manager', 'upload/review/1828414602522729.png', 'TechNova Solutions built a secure e-commerce platform fast. It handles peak traffic perfectly, doubling our sales. Their communication and expertise are unmatched.', '2025-04-03 14:27:27', '2025-04-03 14:27:27'),
(5, 'Michael Lee', 'Operations Lead', 'upload/review/1828414634424439.jpg', 'TechNova Solutions crafted an inventory system for us, reducing errors by 60%. Their patience and ongoing support turned our workflow around completely', '2025-04-03 14:27:56', '2025-04-03 14:27:56'),
(6, 'Priya Sharma', 'Product Manager', 'upload/review/1828414673971575.jpg', 'TechNova Solutions created a powerful, user-friendly app on time and budget. Engagement rose 50% since launch. They’re the best in tech innovation!', '2025-04-03 14:28:34', '2025-04-03 14:28:34');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('kT0RCEijZtcosYwn91M2t6oJqEywHPhEAdGMpZdy', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN2VXNUQ1Z0lBTVl0TUVtMGhYN2R2VG5wOFV2dVlPOHFvNHRkWWhuWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1744154574);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `description`, `image`, `link`, `created_at`, `updated_at`) VALUES
(1, 'Manage your finances more effectively', 'Track your daily finances automatically. Manage your money in a friendly & flexible way, making it easy to spend guilt-free.', 'upload/slider/1828421895304533.png', 'http://127.0.0.1:8000/contact', NULL, '2025-04-04 05:16:14');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `name`, `position`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Michael Chen', 'Chief Executive Officer', 'upload/team/1828770624015438.png', '2025-04-07 12:14:46', '2025-04-07 12:46:14'),
(3, 'Liam Discord', 'Chief Financial Officer', 'upload/team/1828770571904570.png', '2025-04-07 12:45:25', '2025-04-07 12:45:25'),
(4, 'Alex Paul', 'Web Developer', 'upload/team/1828770593684613.png', '2025-04-07 12:45:45', '2025-04-07 12:45:45'),
(5, 'James Keith', 'Technology Officer', 'upload/team/1828770607546354.png', '2025-04-07 12:45:59', '2025-04-07 12:45:59');

-- --------------------------------------------------------

--
-- Table structure for table `titles`
--

CREATE TABLE `titles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `features` varchar(255) DEFAULT NULL,
  `reviews` varchar(255) DEFAULT NULL,
  `answers` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `titles`
--

INSERT INTO `titles` (`id`, `features`, `reviews`, `answers`, `created_at`, `updated_at`) VALUES
(1, 'Features that make spending smarter', 'Don\'t take our word for it, check user reviews', 'Find answers to all questions below', NULL, '2025-04-04 17:13:05');

-- --------------------------------------------------------

--
-- Table structure for table `usabilities`
--

CREATE TABLE `usabilities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `usabilities`
--

INSERT INTO `usabilities` (`id`, `title`, `description`, `image`, `youtube`, `link`, `created_at`, `updated_at`) VALUES
(1, 'Its usability is simple and intuitive for users', 'It\'s a cloud-based accounting tool ideal for individuals & businesses to easily manage finances, invoices & payroll. Unlock the 3-step path to enhanced financial control.', 'upload/usability/1828611485529545.png', 'https://www.youtube.com/watch?v=fgZc7mAYIY8', 'http://127.0.0.1:8000/contact', NULL, '2025-04-05 18:44:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'user',
  `status` varchar(255) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `photo`, `phone`, `address`, `role`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'User', 'user@gmail.com', NULL, '$2y$12$vRZhwIebEnRf5x/6M3O43.6BhN9LVjyCHSiiu5fgZ9940d2hTnMW.', '1743199758.jpg', '3232323', 'Uttara Dhaka', 'user', '1', 'DlqHmlXAr9qAz7uncOaoqo6Zi6WXNUU1m82Xp2IqmSS5qvk26oV3yltwmUrU', '2025-03-25 16:46:12', '2025-03-28 17:35:25'),
(2, 'Ariyan', 'ariyan@gmail.com', NULL, '$2y$12$B8kawyJQ6WD8pMYeOl.gMOcJmwCz9LDuCyd.nsXolqgBL3VgjiVyG', NULL, NULL, NULL, 'user', '1', NULL, '2025-03-26 17:31:51', '2025-03-26 17:31:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `apps`
--
ALTER TABLE `apps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `clarifis`
--
ALTER TABLE `clarifis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `connects`
--
ALTER TABLE `connects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `titles`
--
ALTER TABLE `titles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usabilities`
--
ALTER TABLE `usabilities`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `apps`
--
ALTER TABLE `apps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `blog_posts`
--
ALTER TABLE `blog_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `clarifis`
--
ALTER TABLE `clarifis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `connects`
--
ALTER TABLE `connects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `titles`
--
ALTER TABLE `titles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `usabilities`
--
ALTER TABLE `usabilities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
