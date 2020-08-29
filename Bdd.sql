-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : sam. 29 août 2020 à 03:51
-- Version du serveur :  10.4.14-MariaDB
-- Version de PHP : 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


# création de Base de données : `world`
 CREATE DATABASE  world;


# creation de la table `personnes`

CREATE TABLE `personnes` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  `taille` float NOT NULL,
  `poids` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


#insertions des données de la table `personnes`

INSERT INTO `personnes` (`id`, `nom`, `prenom`, `age`, `taille`, `poids`) VALUES
(1, 'Rakoto', 'Be Nify', 10, 1.5, 70),
(2, 'Lava\r\n', '\r\nRapeto', 25, 2, 30),
(3, 'Ba', 'Lita', 7, 1, 20.5),
(4, 'Kiala', 'Manjakely', 100, 1.68, 45.7),
(5, 'Kiala\r\n', 'Pota', 37, 0.8, 50);


#Index pour la table `personnes`
ALTER TABLE `personnes`
  ADD PRIMARY KEY (`id`);

-- AUTO_INCREMENT pour les tables déchargées


-- AUTO_INCREMENT pour la table `personnes`
ALTER TABLE `personnes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;


#Ajouter une nouvelle contrainte à une table existante

ALTER TABLE personnes ADD couleur_preferee varchar(10);

UPDATE `personnes` SET `couleur_preferee`= 'rouge'WHERE id=1 ;
UPDATE `personnes` SET `couleur_preferee`= 'vert' WHERE id =2;
UPDATE `personnes` SET `couleur_preferee`= 'jaune' WHERE id=3;
UPDATE `personnes` SET `couleur_preferee`= 'violet' WHERE id=4;
UPDATE `personnes` SET `couleur_preferee`= 'grise' WHERE id=5;