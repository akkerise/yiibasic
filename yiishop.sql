-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 12, 2017 at 03:18 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yiishop`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `order_user_id` int(11) DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `total_price` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL COMMENT '1. New Order - 2. Transporting Order - 3. Transported Order - 4. Destroy Order',
  `created_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `user_ship` varchar(255) DEFAULT NULL,
  `email_ship` varchar(255) DEFAULT NULL,
  `address_ship` varchar(255) DEFAULT NULL,
  `phonenumber_ship` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `author_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `description`, `author_id`) VALUES
(1, 'Vật giá đang leo thang , người dân thi nhau nhảy lầu ', 'Đôi khi cuộc đời không mong muốn , dân Việt Nam mình có những sở thích thật đặc biệt . Mỗi khi buồn mọi người đều lấy bộ môn nhảy lầu để làm thú vui bên cạnh những lo toan bộn bề của cuộc sống !', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eos et exercitationem fugit ipsum labore necessitatibus nemo pariatur quas rerum, totam. Ab amet asperiores commodi cupiditate delectus deleniti dignissimos doloremque ducimus ea enim ex facere laudantium magnam minus nam officiis pariatur quam, quisquam reprehenderit repudiandae saepe sint sit soluta tempora tenetur ut vitae voluptates? Alias aliquam assumenda at aut deleniti, esse explicabo laudantium, molestias nobis odio omnis pariatur provident rerum sint, tempora totam voluptatem. Aliquam at cumque dolores natus officia ratione! Ad alias, consequatur cum cupiditate delectus deserunt ea error illo inventore ipsam modi, neque, quam recusandae rem repudiandae ut velit? Facere nemo, omnis. Aperiam autem commodi consequatur, delectus et eveniet fugiat itaque nostrum pariatur quidem! Amet, animi est excepturi iure quisquam sapiente sit tempore velit veritatis voluptatem. Cum eligendi magni vitae. Aliquam animi blanditiis consequuntur corporis culpa dolor est, harum hic in labore officiis pariatur ratione reprehenderit saepe sed, voluptas voluptatum! Adipisci animi, autem dolores error fuga fugiat nostrum, nulla odio quam quasi rem tempora ut vel veniam vero? Animi cum iusto magnam pariatur qui quo temporibus. Accusamus aliquam amet aspernatur autem, commodi consectetur consequatur cupiditate dolore dolores, ducimus eaque est excepturi fugit impedit itaque molestiae mollitia necessitatibus neque nisi odio quia reprehenderit rerum saepe sequi similique, sunt unde ut vitae voluptas voluptates. Dolorem earum harum molestias. Asperiores aspernatur cum fuga magni officia pariatur sunt vero! Alias dignissimos dolor eaque illo incidunt magnam perferendis, quisquam ratione voluptatum. A ab asperiores blanditiis commodi, consequuntur deleniti distinctio dolor enim eos error eveniet facilis fugit harum id ipsam laudantium molestiae mollitia necessitatibus nostrum quaerat quam reiciendis rem reprehenderit repudiandae saepe sapiente soluta tempora veritatis vitae voluptates! Aspernatur earum iure iusto numquam omnis, saepe totam unde? Aliquam amet atque delectus deleniti dignissimos, doloribus ea error eum eveniet libero molestias possimus sed tempora! Accusamus adipisci aliquid, aut dolor dolorem eligendi incidunt nihil numquam odit quo tenetur, ut vitae voluptatum? Ab alias aliquid asperiores, corporis delectus dicta, dolor earum eligendi, ipsam ipsum iste labore laboriosam libero maiores maxime nam non numquam officia quidem quos rem repudiandae saepe tempora unde vel velit voluptatibus! A aliquam commodi cum cumque cupiditate ea eligendi esse ex incidunt, ipsa nemo nesciunt nisi numquam quam sequi velit voluptate voluptates? Alias cum deleniti eligendi eveniet harum iure magnam molestiae natus non officia optio, porro praesentium quisquam, sunt veniam. Alias, ipsam, quia? Aliquam amet, aut consequuntur dolorum ducimus, eaque incidunt libero magni molestiae nulla, officia repellat reprehenderit repudiandae sequi tenetur. Assumenda, doloremque earum expedita incidunt laborum necessitatibus nesciunt nulla odio porro, praesentium quibusdam quisquam temporibus ullam unde velit? Aspernatur, culpa dolore. Accusantium alias, aperiam atque commodi earum eligendi eos illo itaque magnam maxime molestias natus, nulla pariatur perspiciatis quia rem similique voluptate. Architecto asperiores cumque, dolores ducimus harum hic, id minima nam odio odit, quas quasi repellat temporibus. Accusantium amet assumenda, cum cupiditate dolore doloremque enim hic laboriosam magnam magni nemo nulla omnis porro rerum, suscipit ut veritatis. A assumenda id, illo illum in ipsa laborum maiores molestias, nisi quis reprehenderit saepe sed, temporibus!', 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `cate_id` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `image_detail` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `description` text,
  `metakey` text,
  `metadescription` text,
  `status` tinyint(1) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phonenumber` varchar(255) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `gender` tinyint(1) DEFAULT NULL,
  `province` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `address`, `phonenumber`, `birthday`, `gender`, `province`, `status`, `created_time`, `update_time`) VALUES
(0, 'akkerise', 'quintus', 'akkerise@gmail.com', 'HN', '399234932', '2017-04-11', 1, 11000, 1, NULL, NULL),
(1, 'riseakke', 'quintus', 'akkerise@gmail.com', 'HN', '399234932', '2017-04-11', 1, 11000, 1, '2017-04-28 13:19:18', '2017-04-28 13:19:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `author_id_user` (`author_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `author_id_user` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
