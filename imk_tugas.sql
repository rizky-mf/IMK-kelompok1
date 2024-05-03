-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2024 at 06:42 AM
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
-- Database: `imk_tugas`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id_cart` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `banyak` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id_cart`, `user_id`, `product_id`, `banyak`, `total`) VALUES
(77, 12, 4, 2, 72000);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `slug`) VALUES
(1, 'Bahan pangan', 'bahan-pangan'),
(2, 'Tepung', 'tepung'),
(4, 'Rempah atau Bumbu', 'rempah-atau-bumbu');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id_product` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `unit` int(11) NOT NULL,
  `price` varchar(255) NOT NULL,
  `descriptions` text NOT NULL,
  `category_id` int(11) NOT NULL,
  `stock` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id_product`, `product_name`, `unit`, `price`, `descriptions`, `category_id`, `stock`) VALUES
(1, 'Telur Ayam', 1000, '23000', '<p>Telur ayam adalah&nbsp;<strong>telur yang dihasilkan oleh ternak unggas ayam</strong>. Terdapat dua macam telur ayam yang banyak dikonsumsi oleh masyarakat yaitu telur ayam kampung (telur ayam buras) dan telur ayam negeri (telur ayam ras).</p>\r\n', 1, '10000'),
(2, 'Telur Bebek', 1000, '24000', '<p>Selain perbedaan warna,&nbsp;<strong>cangkang telur bebek jauh lebih tebal daripada telur ayam</strong>. Terdapat juga perbedaan pada kuning telurnya, kuning telur bebek berukuran dua kali lipat dari kuning telur ayam dan putih telur bebek lebih bening daripada putih telur ayam.</p>\r\n', 1, '10000'),
(27, 'Tepung Terigu', 1000, '8000', '<p>Tepung terigu merupakan tepung yang diperoleh dari biji gandum yang digiling (Matz, 1972). Sifat yang dimiliki tepung terigu yaitu kemampuan dalam membentuk gluten pada adonan membuat adonan elastis dan tidak mudah hancur pada proses pemasakan hingga pencetakan.</p>\r\n', 2, '93000'),
(28, 'Tepung Tapioka', 1000, '7500', '<p>tapioka, ketika dipegang, terigu akan cukup melekat di tangan. Sementara itu, tapioka memiliki tekstur yang cenderung lebih licin. Jika dicampur dengan air, tapioka agak sulit menyatu dengan campuran air tersebut.</p>\r\n', 2, '12000'),
(29, 'Gula', 1000, '9000', '<p>Gula hanya mengandung glukosa. Polifenol memiliki fungsi sebagai antiviral, antialergi, dan antiperadangan. Untuk memperoleh manfaatnya, pilihlah air tebu alami yang dibuat langsung dari batang tebu.</p>\r\n', 4, '78000'),
(30, 'Dada Ayam', 1000, '38000', '<p><strong>Mulai dari membangun dan menjaga massa otot, memperkuat tulang, hingga mengurangi nafsu makan, berikut adalah beberapa&nbsp;<strong>manfaat dada ayam</strong>&nbsp;yang penting untuk kesehatan:</strong></p>\r\n\r\n<ul>\r\n	<li>Mempertahankan dan membangun massa otot. ...</li>\r\n	<li>Memperkuat tulang. ...</li>\r\n	<li>Menurunkan nafsu makan. ...</li>\r\n	<li>Meningkatkan produksi hormon serotonin dan melatonin.</li>\r\n</ul>\r\n', 1, '150000');

-- --------------------------------------------------------

--
-- Table structure for table `products_galleries`
--

CREATE TABLE `products_galleries` (
  `id_gallery` int(11) NOT NULL,
  `photos` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products_galleries`
--

INSERT INTO `products_galleries` (`id_gallery`, `photos`, `product_id`) VALUES
(1, '6632036564f26.jpg', 1),
(2, '6632039c07814.jpg', 2),
(3, '6632040f32fe4.jpg', 3),
(8, '663203d05a4dc.jpg', 7),
(14, '65105c8694117.png', 8),
(15, '65105c4d22d15.jpg', 10),
(21, '651197163b602.jpg', 20),
(23, '6634624e6c1e6.png', 26),
(50, '66346a8d25a9b.jpg', 27),
(51, '66346a9bd614e.jpg', 28),
(52, '66346aab2d466.jpg', 29),
(53, '66346ab7c3f81.jpg', 29),
(54, '66346ac2ec5c8.png', 30);

-- --------------------------------------------------------

--
-- Table structure for table `rekening_numbers`
--

CREATE TABLE `rekening_numbers` (
  `id_rekening` int(11) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL,
  `rekening_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rekening_numbers`
--

INSERT INTO `rekening_numbers` (`id_rekening`, `bank_name`, `number`, `rekening_name`) VALUES
(1, 'BCA', '008278232023', 'Rizky '),
(2, 'Mandiri', '03794232032', 'Aprian'),
(3, 'Syariah', '0932482211', 'Admin Toko');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id_transaction` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  `city` varchar(255) NOT NULL,
  `rekening_id` int(11) NOT NULL,
  `transaction_status` varchar(255) NOT NULL,
  `weight_total` int(11) NOT NULL,
  `delivered` int(11) NOT NULL,
  `photo_transaction` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `receiver` varchar(255) NOT NULL,
  `time_arrived` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id_transaction`, `user_id`, `total_price`, `city`, `rekening_id`, `transaction_status`, `weight_total`, `delivered`, `photo_transaction`, `code`, `receiver`, `time_arrived`, `created_at`) VALUES
(10, 14, 48000, 'JAKARTA', 1, 'BELUM KONFIRMASI', 6000, 0, '', 'EZM-20731', '', NULL, '2024-05-03 04:42:26');

-- --------------------------------------------------------

--
-- Table structure for table `transactions_details`
--

CREATE TABLE `transactions_details` (
  `id_transaction_detail` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `banyak` int(11) NOT NULL,
  `code_product` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transactions_details`
--

INSERT INTO `transactions_details` (`id_transaction_detail`, `transaction_id`, `product_id`, `price`, `banyak`, `code_product`) VALUES
(17, 10, 27, 8000, 6, 'PRD-24429');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` text DEFAULT NULL,
  `phone_number` varchar(255) NOT NULL,
  `postal_code` varchar(191) NOT NULL,
  `roles` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `name`, `email`, `password`, `address`, `phone_number`, `postal_code`, `roles`) VALUES
(13, 'Aprian', 'aprian@gmail.com', '$2y$10$mICLl.Qvk6nwzeFCtoy6q.1.aGuq1ZQdnqt6N3uVX8f6OyJJGbDwW', NULL, '081388303718', '', 'ADMIN'),
(14, 'Pembeli', 'pembeli@gmail.com', '$2y$10$fDU/ax.V4PPhdYzoT5fgvesDlOesxU3ZchYr.qOZsDKc5B7oEEw3.', '<p>Jalana</p>\r\n', '0893181813', '1212121', 'USER'),
(15, 'Rizky', 'rizky@gmail.com', '$2y$10$gmNa5vNLGZK893LxwvZR5uhowt3EPiuz3m4u5okj/1KRLvPCq30NS', '<p>Bumi</p>\r\n', '082738238', '232423', 'ADMIN'),
(16, 'Derry', 'derry@gmail.com', '$2y$10$OoEVWOdYpiCQbs/HGR5VO.7QWnPY/pP.g8UYMV4betBBemklrmwyK', '<p>bumi juga</p>\r\n', '087372732', '23211', 'ADMIN');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id_cart`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id_product`);

--
-- Indexes for table `products_galleries`
--
ALTER TABLE `products_galleries`
  ADD PRIMARY KEY (`id_gallery`);

--
-- Indexes for table `rekening_numbers`
--
ALTER TABLE `rekening_numbers`
  ADD PRIMARY KEY (`id_rekening`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id_transaction`);

--
-- Indexes for table `transactions_details`
--
ALTER TABLE `transactions_details`
  ADD PRIMARY KEY (`id_transaction_detail`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `products_galleries`
--
ALTER TABLE `products_galleries`
  MODIFY `id_gallery` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `rekening_numbers`
--
ALTER TABLE `rekening_numbers`
  MODIFY `id_rekening` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id_transaction` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `transactions_details`
--
ALTER TABLE `transactions_details`
  MODIFY `id_transaction_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
