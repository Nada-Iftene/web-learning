-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  Dim 07 juil. 2019 à 15:39
-- Version du serveur :  10.1.31-MariaDB
-- Version de PHP :  7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `test`
--

-- --------------------------------------------------------

--
-- Structure de la table `eleves`
--

CREATE TABLE `eleves` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `address` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `eleves`
--

INSERT INTO `eleves` (`id`, `nom`, `prenom`, `address`) VALUES
(1, 'Iftene', 'Nada', 'nada@gmail.com'),
(2, 'Korbaa', 'Ikram', 'ikram@gmail.com'),
(3, 'Nemiche', 'Assia', 'assia@gmail.com'),
(4, 'Cherif', 'Sohaib', 'sohaib@gmail.com'),
(5, 'Malki', 'Chourouk', 'chourouk@gmail.com'),
(6, 'Oudia', 'Morad', 'morad@gmail.com'),
(7, 'Benomari', 'Said', 'said@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `enseignants`
--

CREATE TABLE `enseignants` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `email` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `enseignants`
--

INSERT INTO `enseignants` (`id`, `nom`, `prenom`, `email`) VALUES
(1, 'Mokhtari', 'Samira', 'mokhtari@gmail.com'),
(2, 'Bousmaha', 'Kheira', 'kheira@gmail.com'),
(3, 'Messaoudi', 'Fatima', 'fatima@gmail.com'),
(4, 'Merad Boudia', 'Omar', 'omar@gmail.com'),
(5, 'Arribi', 'Noureddine', 'noureddine@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `questions`
--

CREATE TABLE `questions` (
  `domaine` varchar(100) NOT NULL,
  `idquest` int(11) NOT NULL,
  `texte` varchar(400) NOT NULL,
  `reponse` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `questions`
--

INSERT INTO `questions` (`domaine`, `idquest`, `texte`, `reponse`) VALUES
('Culture generale', 4, 'Quelle est la plus haute montagne du monde', 'Everest'),
('Culture generale', 5, 'Quelle est la plus long fleuve du monde?', 'Nil'),
('Culture generale', 6, 'Quelle est la plus haute tour du monde', 'Khalifa'),
('Informatique', 7, 'Quel est le systÃ¨me d\'exploitation mobile le plus sÃ©curisÃ©', 'ios'),
('Informatique', 9, 'Quel est le type d\'application mobile multiplatforme?', 'Native'),
('Culture generale', 10, 'Quel est le plus grand pays du monde?', 'Russie'),
('Culture generale', 11, 'Quel est le plus grand ocÃ©an du monde?', 'Pacifique');

-- --------------------------------------------------------

--
-- Structure de la table `scores`
--

CREATE TABLE `scores` (
  `id` int(11) NOT NULL,
  `domaine` varchar(100) NOT NULL,
  `repjuste` varchar(10) NOT NULL,
  `repfausse` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `eleves`
--
ALTER TABLE `eleves`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `enseignants`
--
ALTER TABLE `enseignants`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`idquest`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `eleves`
--
ALTER TABLE `eleves`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `enseignants`
--
ALTER TABLE `enseignants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `questions`
--
ALTER TABLE `questions`
  MODIFY `idquest` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
