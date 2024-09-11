-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 11, 2024 at 07:38 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `todo_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `status` enum('Pending','In Progress','Completed') DEFAULT 'Pending',
  `due_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `user_id`, `title`, `description`, `category`, `status`, `due_date`) VALUES
(14, 1, 'vijay', 'job', 'Work', 'Pending', '2024-09-12'),
(15, 2, 'dhakad', 'regarding personel', 'Personal', 'Pending', '2024-09-12'),
(16, 3, 'web develop', 'time taking process', 'Work', 'In Progress', '2024-09-19'),
(17, 3, 'timepass', 'working fail', 'Personal', 'Completed', '2024-09-19'),
(18, 12, 'office work', 'website work', 'Work', 'Pending', '2024-09-12');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(1, 'vijay', 'dhakadvijay2684@gmail.com', '$2y$10$Jor0vUaEQegX0jGkOb9ym.X27fFgfhJQJPidRyIltlZlXbQQOh0JC'),
(2, 'vishal', 'Vijaydhakad2684@gmail.com', '$2y$10$rx8fLojh9UkQquoSrUN4Ke9AsgYo6T1cYo0tC.JIL1w2pI1F0WUM.'),
(3, 'varun', 'varun@gmail.com', '$2y$10$houOk93pX.U7SN.cdj3LM.zS81Gdftr23bLm.IB3yIO5N01TitIHi'),
(4, 'vijay', 'vijay@gmail.com', '$2y$10$YUcXOAv6DmrQ3pH6YLz6IeZ0ymbUMPdA1rgUj8uHDjtf83g4rHk6a'),
(10, 'Vijay', 'Vinaykumar@gmail.com', '$2y$10$.MFHFT3wKGYhK32M9smsP.sU.Y2sza2b6EcUayu2ai.GClZuGrJ7a'),
(12, 'Vijay', 'vivekkumar@gmail.com', '$2y$10$AiOfNnQMRhIzZWe2xBeH8ONwHGkh4XZcqUQWvNQxF4UpFvMDcMkcq');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
