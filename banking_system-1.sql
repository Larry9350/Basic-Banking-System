SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";



-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `Sno` int(3) NOT NULL,
  `Sender` varchar(12) NOT NULL,
  `Receiver` varchar(12) NOT NULL,
  `Balance` int(8) NOT NULL,
  `Datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `Name` varchar(12) NOT NULL,
  `email` varchar(30) NOT NULL,
  `Balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `Name`, `email`, `Balance`) VALUES
(1, 'Salman', 'shaik@gmail.com', 50000),
(2, 'Bhuvan', 'bam@gmail.com', 30000),
(3, 'jerry', 'patek@gmail.com', 40000),
(4, 'Priya', 'pp@gmail.com', 50000),
(5, 'Ashish', 'acv@gmail.com', 40000),
(6, 'Tom', 'cat@gmail.com', 30000),
(7, 'Deep', 'patil@gmail.com', 50000),
(8, 'Juhit', 'chawda@gmail.com', 40000),
(9, 'BuNick', 'lotia@gmail.com', 30000),
(10, 'Aman', 'meher@gmail.com', 50000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`Sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `Sno` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;
COMMIT;
