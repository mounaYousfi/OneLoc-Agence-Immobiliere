-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 21 nov. 2025 à 13:36
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
-- Base de données : `realestate`
--

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20251106235112', '2025-11-06 23:51:21', 293),
('DoctrineMigrations\\Version20251107224501', '2025-11-07 22:45:06', 172),
('DoctrineMigrations\\Version20251109220834', '2025-11-09 22:08:40', 208);

-- --------------------------------------------------------

--
-- Structure de la table `properties`
--

CREATE TABLE `properties` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `address` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `bedrooms` int(11) NOT NULL,
  `bathrooms` int(11) NOT NULL,
  `area` int(11) NOT NULL,
  `available` tinyint(1) NOT NULL,
  `photos` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`photos`)),
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `properties`
--

INSERT INTO `properties` (`id`, `owner_id`, `title`, `description`, `address`, `price`, `bedrooms`, `bathrooms`, `area`, `available`, `photos`, `created_at`) VALUES
(18, 1, 'Cozy Garden Apartment', 'Quiet 1-bedroom with private garden, near metro.', '45 Rue de Marseille, Tunis', 620.00, 1, 1, 60, 1, '[\"1657870727-Artboard 12 copy.webp\", \"appartment-construction-service.jpg\", \"appartment-construction.jpg\"]', '2025-11-10 23:45:27'),
(19, 1, 'Luxury Villa with Pool', '5-star villa, private pool, sea view, perfect for families.', 'Sidi Bou Said, Tunis', 2500.00, 5, 4, 320, 1, '[\"bd690bac.avif\", \"cf5beccd04c00e.png\", \"cf60ab770625e39.jpg\"]', '2025-11-10 23:45:27'),
(21, 1, 'Family House in Suburbs', 'Spacious 4-bedroom house with garage and garden.', 'La Marsa, Tunis', 1200.00, 4, 2, 180, 1, '[\"The-Apex-Georgian-Elevation-1.avif\"]', '2025-11-10 23:45:27'),
(23, 2, 'Old Town Charm', 'Renovated traditional house in Medina, central location.', 'Medina, Tunis', 700.00, 2, 1, 75, 1, '[\"476394-L.jpg\", \"390416936.jpg\", \"1657870727-Artboard 12 copy.webp\"]', '2025-11-10 23:45:27'),
(24, 2, 'Penthouse Skyview', 'Top-floor penthouse with 360° city views.', 'Les Berges du Lac, Tunis', 1800.00, 3, 3, 200, 1, '[\"appartment-construction-service.jpg\", \"appartment-construction.jpg\", \"bd690bac.avif\"]', '2025-11-10 23:45:27'),
(27, 2, 'aaaaaaaaaaaaaaaaaa', 'qpodsof', 'poqdsfp', 123.00, 123, 132, 123, 1, '[\"393d077a904253aa121373e69c80d80c.jpg\", \"5fe62565f659b07fe72f192c9aae7854.jpg\"]', '2025-11-10 22:50:42');

-- --------------------------------------------------------

--
-- Structure de la table `reservations`
--

CREATE TABLE `reservations` (
  `id` int(11) NOT NULL,
  `tenant_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `check_in` date NOT NULL,
  `check_out` date NOT NULL,
  `created_at` datetime NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `reservations`
--

INSERT INTO `reservations` (`id`, `tenant_id`, `property_id`, `check_in`, `check_out`, `created_at`, `status`) VALUES
(4, 4, 21, '2025-11-07', '2025-11-21', '2025-11-11 20:49:52', 'pending'),
(5, 4, 27, '2025-11-12', '2025-11-21', '2025-11-11 22:37:31', 'accepted');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(255) NOT NULL,
  `face_id` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `verified` tinyint(1) NOT NULL,
  `roles` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`roles`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `face_id`, `phone`, `verified`, `roles`) VALUES
(1, 'aaaaaa', 'qsdfqfs', 'habib@gmail.com', '$2y$13$fFvc4qVXz8Qpbgng2.ZyGe68HCIDZ06Xmbye6eUdA5eHrj8VFldM2', NULL, '123213', 0, '[\"ROLE_USER\"]'),
(2, 'arij', 'arij', 'arij@gmail.com', '$2y$13$acwjzZva4stCeVE1jyIi.uAh7oIyVYZze7pTM.I.AiaKQKD25oLfG', NULL, '1234567', 0, '[\"ROLE_USER\"]'),
(3, 'admin', 'admin', 'admin@gmail.com', '$2y$13$mJNprqJ04sgE2IZ.KdoTCOYOrrCvEJKypVkXo5QEJaLmqUKTwiLSq', NULL, '12345678', 0, '[\"ROLE_ADMIN\"]'),
(4, 'arij', 'ayed', 'ariij@gmail.com', '$2y$13$nti/wJgDTjgzHeb4dmO14uN6e6I9O1H2vcwU45X1L/FuzRFe9sXFu', NULL, NULL, 0, '[\"ROLE_USER\",\"ROLE_ADMIN\"]'),
(5, 'Zouhour', 'Chahed', 'zouhour@gmail.com', '$2y$13$ntq.YMuve8viOHh3JRgxJeK56fCeTY4ABPT1k5j9oBZ7.WBmSmaHe', NULL, '', 0, '[]'),
(6, 'Arij', 'aaa', 'arijj@gmail.com', '$2y$13$SQK2e.GWos1tR9AC9HfNzeCI90OjjxZtIn/UTqJo9x4BfanZFT0oi', NULL, '', 0, '[]');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_87C331C77E3C61F9` (`owner_id`);

--
-- Index pour la table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_4DA2399033212A` (`tenant_id`),
  ADD KEY `IDX_4DA239549213EC` (`property_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_1483A5E9E7927C74` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT pour la table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `properties`
--
ALTER TABLE `properties`
  ADD CONSTRAINT `FK_87C331C77E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `reservations`
--
ALTER TABLE `reservations`
  ADD CONSTRAINT `FK_4DA239549213EC` FOREIGN KEY (`property_id`) REFERENCES `properties` (`id`),
  ADD CONSTRAINT `FK_4DA2399033212A` FOREIGN KEY (`tenant_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
