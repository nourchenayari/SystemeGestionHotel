-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 20 mai 2024 à 01:58
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `hotelmanagementsystem`
--

-- --------------------------------------------------------

--
-- Structure de la table `customer`
--

CREATE TABLE `customer` (
  `document` varchar(20) DEFAULT NULL,
  `number` varchar(30) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `gender` varchar(15) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `room` varchar(10) DEFAULT NULL,
  `checkintime` varchar(80) DEFAULT NULL,
  `deposit` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `customer`
--

INSERT INTO `customer` (`document`, `number`, `name`, `gender`, `country`, `room`, `checkintime`, `deposit`) VALUES
('Passport', 'C123456', 'John Doe', 'Male', 'USA', '101', '2024-05-01 14:00:00', '100'),
('ID Card', 'C456789', 'Emily Davis', 'Female', 'Australia', '104', '2024-05-04 16:45:00', '180'),
('Passport', 'C567890', 'Chris Brown', 'Male', 'New Zealand', '105', '2024-05-05 13:20:00', '250');

-- --------------------------------------------------------

--
-- Structure de la table `department`
--

CREATE TABLE `department` (
  `department` varchar(30) DEFAULT NULL,
  `budget` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `department`
--

INSERT INTO `department` (`department`, `budget`) VALUES
('Front Office', '500000'),
('Housekeeping', '40000'),
('Food and Beverage', '23000'),
('Kitchen or Food Production', '540000'),
('Security', '320000');

-- --------------------------------------------------------

--
-- Structure de la table `driver`
--

CREATE TABLE `driver` (
  `name` varchar(20) DEFAULT NULL,
  `age` varchar(10) DEFAULT NULL,
  `gender` varchar(15) DEFAULT NULL,
  `company` varchar(20) DEFAULT NULL,
  `branch` varchar(20) DEFAULT NULL,
  `available` varchar(20) DEFAULT NULL,
  `location` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `driver`
--

INSERT INTO `driver` (`name`, `age`, `gender`, `company`, `branch`, `available`, `location`) VALUES
('John Doe', '30', 'Male', 'ABC Transport', 'City Center', 'Yes', 'New York'),
('Alice Smith', '28', 'Female', 'XYZ Logistics', 'Suburb Branch', 'No', 'Los Angeles'),
('Bob Johnson', '35', 'Male', 'DEF Couriers', 'Downtown Branch', 'Yes', 'Chicago'),
('Emma Brown', '32', 'Female', 'GHI Transport', 'North Branch', 'Yes', 'Houston'),
('Michael Davis', '29', 'Male', 'JKL Delivery', 'South Branch', 'No', 'Miami'),
('amine', '25', 'Male', 'aramex', 'toyota', 'No', 'mahdia'),
('salim', '40', 'Male', 'aramex', 'dimax', 'Yes', 'sousse'),
('souheil', '25', 'Male', 'aramex', 'dimax', 'Yes', 'mestir'),
('ameen', '32', 'Male', 'aramex', 'toyota', 'No', 'sousse');

-- --------------------------------------------------------

--
-- Structure de la table `employee`
--

CREATE TABLE `employee` (
  `name` varchar(25) DEFAULT NULL,
  `age` varchar(10) DEFAULT NULL,
  `gender` varchar(15) DEFAULT NULL,
  `job` varchar(30) DEFAULT NULL,
  `salary` varchar(15) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `aadhar` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `employee`
--

INSERT INTO `employee` (`name`, `age`, `gender`, `job`, `salary`, `phone`, `email`, `aadhar`) VALUES
('John Smith', '35', 'Male', 'Manager', '50000', '1234567890', 'john@example.com', '1234 5678 9012'),
('Alice Johnson', '28', 'Female', 'Developer', '40000', '9876543210', 'alice@example.com', '9876 5432 1098'),
('Bob Williams', '42', 'Male', 'Sales Executive', '35000', '7418529630', 'bob@example.com', '7412 8963 0254'),
('Emma Davis', '30', 'Female', 'HR Manager', '45000', '8529631470', 'emma@example.com', '8521 9634 7058'),
('Michael Brown', '38', 'Male', 'Accountant', '38000', '3698521470', 'michael@example.com', '3698 1470 2583'),
('amine', '23', 'male', 'Porters', '560', '98654789', 'tunis', 'amine@gmail.com'),
('nourchen', '22', 'Female', 'Manager', '50000', '92614977', 'nourchennn', 'nourchen@gmail.com'),
('sami', '35', 'Male', 'Porters', '2600', '55847521', 'sami', 'sami@gmail.com'),
('nour', '25', 'Female', 'Manager', '45260', '89471256', 'nnnn', 'nour@gmail.com'),
('omar', '30', 'Male', 'Porters', '3600', '56847213', 'new', 'omar@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `login`
--

CREATE TABLE `login` (
  `username` varchar(25) DEFAULT NULL,
  `password` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('admin', '12345');

-- --------------------------------------------------------

--
-- Structure de la table `room`
--

CREATE TABLE `room` (
  `roomnumber` varchar(10) DEFAULT NULL,
  `availability` varchar(20) DEFAULT NULL,
  `cleaning_status` varchar(20) DEFAULT NULL,
  `price` varchar(20) DEFAULT NULL,
  `bed_type` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `room`
--

INSERT INTO `room` (`roomnumber`, `availability`, `cleaning_status`, `price`, `bed_type`) VALUES
('101', 'Available', 'Clean', '100', 'Single'),
('102', 'Occupied', 'Dirty', '150', 'Double'),
('103', 'Available', 'Clean', '200', 'Suite'),
('104', 'Occupied', 'Dirty', '180', 'Double'),
('105', 'Occupied', 'Clean', '250', 'Suite'),
('106', 'Available', 'Clean', '100', 'Single'),
('107', 'Available', 'Clean', '300', 'Double'),
('108', 'Available', 'Clean', '190', 'Single'),
('103', 'Occupied', 'Clean', '200', 'Suite'),
('110', 'Available', 'Dirty', '200', 'Double Bed'),
('111', 'Occupied', 'Dirty', '200', 'Double Bed'),
('120', 'Occupied', 'Dirty', '650', 'Single Bed'),
('220', 'Occupied', 'Dirty', '500', 'Double Bed');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
