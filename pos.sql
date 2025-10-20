-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Okt 2025 pada 08.49
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pos`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `catalogtable`
--

CREATE TABLE `catalogtable` (
  `PID` int(12) NOT NULL,
  `prodname` varchar(10) NOT NULL,
  `description` text DEFAULT NULL,
  `PCID` int(12) NOT NULL,
  `MRP` decimal(14,2) NOT NULL,
  `costprice` decimal(14,2) DEFAULT NULL,
  `qty` int(12) NOT NULL,
  `prodstatus` varchar(200) NOT NULL,
  `prodcode` int(12) NOT NULL,
  `tax` int(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `catalogtable`
--

INSERT INTO `catalogtable` (`PID`, `prodname`, `description`, `PCID`, `MRP`, `costprice`, `qty`, `prodstatus`, `prodcode`, `tax`) VALUES
(58, 'aqua', 'segerr', 58, 5.00, 3000.00, 14, 'Active', 111, 0),
(59, 'sosis', 'enak', 59, 2.00, 1.00, 26, 'Active', 222, 0),
(60, 'nabati', 'bikin tagih', 59, 3.00, 3.50, 27, 'Active', 333, 0),
(61, 'beras', 'beras putih', 60, 15.00, 2.00, 20, 'Active', 444, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `category`
--

CREATE TABLE `category` (
  `CID` int(12) NOT NULL,
  `catname` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `category`
--

INSERT INTO `category` (`CID`, `catname`, `status`) VALUES
(57, 'makanan', 'Active'),
(58, 'minuman', 'Active'),
(59, 'snack', 'Offline'),
(60, 'sembako', 'Active');

-- --------------------------------------------------------

--
-- Struktur dari tabel `productsold`
--

CREATE TABLE `productsold` (
  `ID` int(12) NOT NULL,
  `SID` int(12) NOT NULL,
  `prodcode` int(12) NOT NULL,
  `MRP` decimal(14,2) NOT NULL,
  `total` decimal(14,2) NOT NULL,
  `qty` int(12) NOT NULL,
  `discount` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `productsold`
--

INSERT INTO `productsold` (`ID`, `SID`, `prodcode`, `MRP`, `total`, `qty`, `discount`) VALUES
(89, 81, 111, 5.00, 5.00, 1, ''),
(90, 82, 111, 5.00, 15.00, 3, ''),
(91, 83, 111, 5.00, 15.00, 3, ''),
(92, 84, 111, 5.00, 15.00, 3, ''),
(93, 85, 111, 5.00, 10.00, 2, ''),
(94, 85, 222, 2.00, 4.00, 2, ''),
(95, 86, 111, 5.00, 10.00, 2, ''),
(96, 87, 111, 5.00, 30.00, 6, ''),
(97, 88, 111, 5.00, 10.00, 2, ''),
(98, 88, 222, 2.00, 4.00, 2, ''),
(99, 88, 333, 3.00, 9.00, 3, ''),
(100, 89, 111, 5.00, 20.00, 4, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `salestable`
--

CREATE TABLE `salestable` (
  `SID` int(12) NOT NULL,
  `date` varchar(200) NOT NULL,
  `total` decimal(14,2) NOT NULL,
  `paid` decimal(14,2) NOT NULL,
  `balance` decimal(14,2) NOT NULL,
  `user` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `salestable`
--

INSERT INTO `salestable` (`SID`, `date`, `total`, `paid`, `balance`, `user`) VALUES
(85, '06/10/2025', 14.00, 15.00, 1.00, 'aldo'),
(86, '06/10/2025', 10.00, 15.00, 5.00, 'aldo'),
(87, '06/10/2025', 30.00, 50.00, 20.00, 'aldo'),
(88, '20/10/2025', 23.00, 25.00, 2.00, 'aldo'),
(89, '20/10/2025', 20.00, 21.00, 1.00, 'aldo');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `ID` int(12) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `type` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`ID`, `username`, `password`, `status`, `type`) VALUES
(9, 'user', '123', 'Active', 'user'),
(17, 'manager', 'filler', 'Active', 'manager'),
(23, 'aldo', 'aldo', 'Active', 'admin'),
(25, 'shela', '123', 'Offline', 'manager');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `catalogtable`
--
ALTER TABLE `catalogtable`
  ADD PRIMARY KEY (`PID`),
  ADD UNIQUE KEY `prodname` (`prodname`),
  ADD UNIQUE KEY `prodcode` (`prodcode`);

--
-- Indeks untuk tabel `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`CID`),
  ADD UNIQUE KEY `catname` (`catname`);

--
-- Indeks untuk tabel `productsold`
--
ALTER TABLE `productsold`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks untuk tabel `salestable`
--
ALTER TABLE `salestable`
  ADD PRIMARY KEY (`SID`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `catalogtable`
--
ALTER TABLE `catalogtable`
  MODIFY `PID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT untuk tabel `category`
--
ALTER TABLE `category`
  MODIFY `CID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT untuk tabel `productsold`
--
ALTER TABLE `productsold`
  MODIFY `ID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT untuk tabel `salestable`
--
ALTER TABLE `salestable`
  MODIFY `SID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
