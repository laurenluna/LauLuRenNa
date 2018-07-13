-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2018-07-13 18:57:35
-- 服务器版本： 8.0.11
-- PHP Version: 7.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lunalauren`
--

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `name`, `phone`) VALUES
(1, 'lunacao', '81dc9bdb52d04dc20036dbd8313ed055', 'lunacao214@outlook.com', 'luna cao', '5196948222'),
(2, 'laurenlin', 'cb5e35fe0160c0a3439ecec60523ff30', 'imlinaixin@gmail.com', 'lauren lin', '1234567890'),
(3, 'daidaishou', 'ecaa2899a0a43a91529200da8cf3b011', 'woshidaidaishou@gmail.com', 'dawang', '1234567812'),
(4, 'lunalauren', 'f5bb0c8de146c67b44babbf4e6584cc0', '123123@gmail.com', 'lunalauren123', '1231231231'),
(5, '1231231', '3ec3baf3455d78bfa771616fd0713aaa', '123132', '123123', '123123'),
(6, '123123', '4297f44b13955235245b2497399d7a93', '1231231321', '123123', '12312313');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
