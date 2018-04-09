-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Ven 06 Avril 2018 à 12:41
-- Version du serveur :  10.1.26-MariaDB-0+deb9u1
-- Version de PHP :  7.0.27-0+deb9u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `gsbvisite`
--

-- --------------------------------------------------------

--
-- Structure de la table `affectation`
--

CREATE TABLE `affectation` (
  `uId` varchar(4) NOT NULL,
  `aDate` datetime NOT NULL,
  `rCode` smallint(6) NOT NULL,
  `aStatut` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `affectation`
--

INSERT INTO `affectation` (`uId`, `aDate`, `rCode`, `aStatut`) VALUES
('a131', '1992-12-11 00:00:00', 28, 'Visiteur'),
('a131', '1996-05-27 00:00:00', 53, 'Visiteur'),
('a17', '1991-08-26 00:00:00', 84, 'Visiteur'),
('a17', '1997-09-19 00:00:00', 84, 'Délégué'),
('a55', '1987-07-17 00:00:00', 76, 'Visiteur'),
('a55', '1995-05-19 00:00:00', 76, 'Visiteur'),
('a55', '1999-08-21 00:00:00', 76, 'Délégué'),
('a93', '1999-01-02 00:00:00', 75, 'Visiteur'),
('b13', '1996-03-11 00:00:00', 44, 'Visiteur'),
('b16', '1997-03-21 00:00:00', 53, 'Visiteur'),
('b19', '1999-01-31 00:00:00', 52, 'Visiteur'),
('b25', '1994-07-03 00:00:00', 52, 'Visiteur'),
('b25', '2000-01-01 00:00:00', 52, 'Délégué'),
('b28', '2000-08-02 00:00:00', 76, 'Visiteur'),
('b34', '1993-12-06 00:00:00', 24, 'Délégué'),
('b34', '1999-06-18 00:00:00', 24, 'Responsable'),
('b4', '1997-09-25 00:00:00', 75, 'Visiteur'),
('b50', '1998-01-18 00:00:00', 93, 'Visiteur'),
('b59', '1995-10-21 00:00:00', 84, 'Visiteur'),
('bp', '2012-12-12 00:00:00', 27, 'Comptable'),
('c14', '1989-02-01 00:00:00', 93, 'Visiteur'),
('c14', '1997-02-01 00:00:00', 93, 'Délégué'),
('c14', '2001-03-03 00:00:00', 93, 'Responsable'),
('c3', '1992-05-05 00:00:00', 44, 'Visiteur'),
('c54', '1991-04-09 00:00:00', 44, 'Visiteur'),
('d13', '1991-12-05 00:00:00', 52, 'Visiteur'),
('d51', '1997-11-18 00:00:00', 27, 'Délégué'),
('d51', '2002-03-20 00:00:00', 27, 'Responsable'),
('e22', '1989-03-24 00:00:00', 44, 'Visiteur'),
('e24', '1993-05-17 00:00:00', 44, 'Délégué'),
('e24', '2000-02-29 00:00:00', 44, 'Responsable'),
('e39', '1988-04-26 00:00:00', 11, 'Visiteur'),
('e49', '1996-02-19 00:00:00', 76, 'Visiteur'),
('e5', '1990-11-27 00:00:00', 76, 'Visiteur'),
('e5', '1995-11-27 00:00:00', 76, 'Délégué'),
('e5', '2000-11-27 00:00:00', 75, 'Responsable'),
('e52', '1991-10-31 00:00:00', 28, 'Visiteur'),
('f21', '1993-06-08 00:00:00', 84, 'Visiteur'),
('f39', '1997-02-15 00:00:00', 84, 'Visiteur'),
('f4', '1994-05-03 00:00:00', 76, 'Visiteur'),
('g19', '1996-01-18 00:00:00', 11, 'Visiteur'),
('g30', '1999-03-27 00:00:00', 32, 'Délégué'),
('g30', '2000-10-31 00:00:00', 32, 'Responsable'),
('g53', '1985-10-02 00:00:00', 53, 'Visiteur'),
('g7', '1996-01-13 00:00:00', 75, 'Visiteur'),
('h13', '1993-05-08 00:00:00', 75, 'Visiteur'),
('h30', '1998-04-26 00:00:00', 11, 'Visiteur'),
('h35', '1993-08-26 00:00:00', 84, 'Visiteur'),
('h40', '1992-11-01 00:00:00', 44, 'Visiteur'),
('j45', '1998-02-25 00:00:00', 44, 'Responsable'),
('j50', '1992-12-16 00:00:00', 32, 'Visiteur'),
('j8', '1998-06-18 00:00:00', 11, 'Responsable'),
('k4', '1996-11-21 00:00:00', 76, 'Visiteur'),
('k53', '1983-03-23 00:00:00', 44, 'Visiteur'),
('k53', '1992-04-03 00:00:00', 44, 'Délégué'),
('l14', '1995-02-02 00:00:00', 52, 'Visiteur'),
('l23', '1995-06-05 00:00:00', 75, 'Visiteur'),
('l46', '1997-01-24 00:00:00', 52, 'Visiteur'),
('l56', '1996-02-27 00:00:00', 27, 'Visiteur'),
('m35', '1987-10-06 00:00:00', 76, 'Visiteur'),
('m45', '1990-10-13 00:00:00', 44, 'Visiteur'),
('m45', '1999-04-08 00:00:00', 44, 'Délégué'),
('n42', '1996-03-06 00:00:00', 28, 'Visiteur'),
('n58', '1992-08-30 00:00:00', 24, 'Visiteur'),
('n59', '1994-12-19 00:00:00', 32, 'Visiteur'),
('o26', '1995-01-05 00:00:00', 76, 'Visiteur'),
('p32', '1992-12-24 00:00:00', 11, 'Visiteur'),
('p40', '1992-12-14 00:00:00', 28, 'Délégué'),
('p40', '1999-07-17 00:00:00', 28, 'Responsable'),
('p41', '1998-07-27 00:00:00', 75, 'Visiteur'),
('p42', '1994-12-12 00:00:00', 32, 'Visiteur'),
('p49', '1977-10-03 00:00:00', 24, 'Visiteur'),
('p6', '1997-03-30 00:00:00', 75, 'Visiteur'),
('p7', '1990-03-01 00:00:00', 76, 'Visiteur'),
('p8', '1991-06-23 00:00:00', 27, 'Visiteur'),
('q17', '1997-09-06 00:00:00', 28, 'Visiteur'),
('r24', '1984-07-29 00:00:00', 28, 'Visiteur'),
('r24', '1998-05-25 00:00:00', 28, 'Responsable'),
('r58', '1990-06-30 00:00:00', 53, 'Visiteur'),
('s10', '1995-11-14 00:00:00', 27, 'Visiteur'),
('s21', '1992-09-25 00:00:00', 75, 'Visiteur'),
('t43', '1995-03-09 00:00:00', 27, 'Visiteur'),
('t47', '1997-08-29 00:00:00', 32, 'Visiteur'),
('t55', '1994-11-29 00:00:00', 76, 'Visiteur'),
('t60', '1991-03-29 00:00:00', 24, 'Visiteur');

-- --------------------------------------------------------

--
-- Structure de la table `commentaires`
--

CREATE TABLE `commentaires` (
  `comNum` int(11) NOT NULL,
  `comPract` int(11) NOT NULL,
  `comDate` date NOT NULL,
  `comCommentaire` varchar(2048) NOT NULL,
  `comMedoc` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `commentaires`
--

INSERT INTO `commentaires` (`comNum`, `comPract`, `comDate`, `comCommentaire`, `comMedoc`) VALUES
(1, 1, '2018-02-08', 'Ce Médicament est efficace', '3MYC7');

-- --------------------------------------------------------

--
-- Structure de la table `famille`
--

CREATE TABLE `famille` (
  `fCode` varchar(3) NOT NULL,
  `fLibelle` varchar(83) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `famille`
--

INSERT INTO `famille` (`fCode`, `fLibelle`) VALUES
('AA', 'Antalgiques en association'),
('AAA', 'Antalgiques antipyrétiques en association'),
('AAC', 'Antidépresseur d\'action centrale'),
('AAH', 'Antivertigineux antihistaminique H1'),
('ABA', 'Antibiotique antituberculeux'),
('ABC', 'Antibiotique antiacnéique local'),
('ABP', 'Antibiotique de la famille des béta-lactamines pénicilline A'),
('AFC', 'Antibiotique de la famille des cyclines'),
('AFM', 'Antibiotique de la famille des macrolides'),
('AH', 'Antihistaminique H1 local'),
('AIM', 'Antidépresseur imipraminique tricyclique'),
('AIN', 'Antidépresseur inhibiteur sélectif de la recapture de la sérotonine'),
('ALO', 'Antibiotique local ORL'),
('ANS', 'Antidépresseur IMAO non sélectif'),
('AO', 'Antibiotique ophtalmique'),
('AP', 'Antipsychotique normothymique'),
('AUM', 'Antibiotique urinaire minute'),
('CRT', 'Corticoïde, antibiotique et antifongique à  usage local'),
('HYP', 'Hypnotique antihistaminique'),
('PSA', 'Psychostimulant, antiasthénique');

-- --------------------------------------------------------

--
-- Structure de la table `labo`
--

CREATE TABLE `labo` (
  `lCode` varchar(2) NOT NULL,
  `lNom` varchar(50) DEFAULT NULL,
  `lChefVentes` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `labo`
--

INSERT INTO `labo` (`lCode`, `lNom`, `lChefVentes`) VALUES
('BC', 'Bichat', 'Suzanne Terminus'),
('GY', 'Gyverny', 'Marcel MacDouglas'),
('SW', 'Swiss Kane', 'Alain Poutre');

-- --------------------------------------------------------

--
-- Structure de la table `medicament`
--

CREATE TABLE `medicament` (
  `mDepotLegal` varchar(10) NOT NULL,
  `mNomCommercial` varchar(25) DEFAULT NULL,
  `mComposition` varchar(255) DEFAULT NULL,
  `mEffets` varchar(255) DEFAULT NULL,
  `mContreIndications` varchar(255) DEFAULT NULL,
  `mPrix` float DEFAULT NULL,
  `fCode` varchar(3) NOT NULL,
  `mNum` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `medicament`
--

INSERT INTO `medicament` (`mDepotLegal`, `mNomCommercial`, `mComposition`, `mEffets`, `mContreIndications`, `mPrix`, `fCode`, `mNum`) VALUES
('3MYC7', 'TRIMYCINE', 'Triamcinolone (acétonide) + Néomycine + Nystatine', 'Ce médicament est un corticoïde à  activité forte ou très forte associé à  un antibiotique et un antifongique, utilisé en application locale dans certaines atteintes cutanées surinfectées.', 'Ce médicament est contre-indiqué en cas d\'allergie à  l\'un des constituants, d\'infections de la peau ou de parasitisme non traités, d\'acné. Ne pas appliquer sur une plaie, ni sous un pansement occlusif.', NULL, 'CRT', 25),
('ADIMOL9', 'ADIMOL', 'Amoxicilline + Acide clavulanique', 'Ce médicament, plus puissant que les pénicillines simples, est utilisé pour traiter des infections bactériennes spécifiques.', 'Ce médicament est contre-indiqué en cas d\'allergie aux pénicillines ou aux céphalosporines.', NULL, 'ABP', 0),
('AMOPIL7', 'AMOPIL', 'Amoxicilline', 'Ce médicament, plus puissant que les pénicillines simples, est utilisé pour traiter des infections bactériennes spécifiques.', 'Ce médicament est contre-indiqué en cas d\'allergie aux pénicillines. Il doit être administré avec prudence en cas d\'allergie aux céphalosporines.', NULL, 'ABP', 1),
('AMOX45', 'AMOXAR', 'Amoxicilline', 'Ce médicament, plus puissant que les pénicillines simples, est utilisé pour traiter des infections bactériennes spécifiques.', 'La prise de ce médicament peut rendre positifs les tests de dépistage du dopage.', NULL, 'ABP', 2),
('AMOXIG12', 'AMOXI Gé', 'Amoxicilline', 'Ce médicament, plus puissant que les pénicillines simples, est utilisé pour traiter des infections bactériennes spécifiques.', 'Ce médicament est contre-indiqué en cas d\'allergie aux pénicillines. Il doit être administré avec prudence en cas d\'allergie aux céphalosporines.', NULL, 'ABP', 3),
('APATOUX22', 'APATOUX Vitamine C', 'Tyrothricine + Tétracaïne + Acide ascorbique (Vitamine C)', 'Ce médicament est utilisé pour traiter les affections de la bouche et de la gorge.', 'Ce médicament est contre-indiqué en cas d\'allergie à  l\'un des constituants, en cas de phénylcétonurie et chez l\'enfant de moins de 6 ans.', NULL, 'ALO', 4),
('BACTIG10', 'BACTIGEL', 'Erythromycine', 'Ce médicament est utilisé en application locale pour traiter l\'acné et les infections cutanées bactériennes associées.', 'Ce médicament est contre-indiqué en cas d\'allergie aux antibiotiques de la famille des macrolides ou des lincosanides.', NULL, 'ABC', 5),
('BACTIV13', 'BACTIVIL', 'Erythromycine', 'Ce médicament est utilisé pour traiter des infections bactériennes spécifiques.', 'Ce médicament est contre-indiqué en cas d\'allergie aux macrolides (dont le chef de file est l\'érythromycine).', NULL, 'AFM', 6),
('BITALV', 'BIVALIC', 'Dextropropoxyphène + Paracétamol', 'Ce médicament est utilisé pour traiter les douleurs d\'intensité modérée ou intense.', 'Ce médicament est contre-indiqué en cas d\'allergie aux médicaments de cette famille, d\'insuffisance hépatique ou d\'insuffisance rénale.', NULL, 'AAA', 7),
('CARTION6', 'CARTION', 'Acide acétylsalicylique (aspirine) + Acide ascorbique (Vitamine C) + Paracétamol', 'Ce médicament est utilisé dans le traitement symptomatique de la douleur ou de la fièvre.', 'Ce médicament est contre-indiqué en cas de troubles de la coagulation (tendances aux hémorragies), d\'ulcère gastroduodénal, maladies graves du foie.', NULL, 'AAA', 8),
('CLAZER6', 'CLAZER', 'Clarithromycine', 'Ce médicament est utilisé pour traiter des infections bactériennes spécifiques. Il est également utilisé dans le traitement de l\'ulcère gastro-duodénal, en association avec d\'autres médicaments.', 'Ce médicament est contre-indiqué en cas d\'allergie aux macrolides (dont le chef de file est l\'érythromycine).', NULL, 'AFM', 9),
('DEPRIL9', 'DEPRAMIL', 'Clomipramine', 'Ce médicament est utilisé pour traiter les épisodes dépressifs sévères, certaines douleurs rebelles, les troubles obsessionnels compulsifs et certaines énurésies chez l\'enfant.', 'Ce médicament est contre-indiqué en cas de glaucome ou d\'adénome de la prostate, d\'infarctus récent, ou si vous avez reà§u un traitement par IMAO durant les 2 semaines précédentes ou en cas d\'allergie aux antidépresseurs imipraminiques.', NULL, 'AIM', 10),
('DIMIRTAM6', 'DIMIRTAM', 'Mirtazapine', 'Ce médicament est utilisé pour traiter les épisodes dépressifs sévères.', 'La prise de ce produit est contre-indiquée en cas de d\'allergie à  l\'un des constituants.', NULL, 'AAC', 11),
('DOLRIL7', 'DOLORIL', 'Acide acétylsalicylique (aspirine) + Acide ascorbique (Vitamine C) + Paracétamol', 'Ce médicament est utilisé dans le traitement symptomatique de la douleur ou de la fièvre.', 'Ce médicament est contre-indiqué en cas d\'allergie au paracétamol ou aux salicylates.', NULL, 'AAA', 12),
('DORNOM8', 'NORMADOR', 'Doxylamine', 'Ce médicament est utilisé pour traiter l\'insomnie chez l\'adulte.', 'Ce médicament est contre-indiqué en cas de glaucome, de certains troubles urinaires (rétention urinaire) et chez l\'enfant de moins de 15 ans.', NULL, 'HYP', 19),
('EQUILARX6', 'EQUILAR', 'Méclozine', 'Ce médicament est utilisé pour traiter les vertiges et pour prévenir le mal des transports.', 'Ce médicament ne doit pas être utilisé en cas d\'allergie au produit, en cas de glaucome ou de rétention urinaire.', NULL, 'AAH', 13),
('EVILR7', 'EVEILLOR', 'Adrafinil', 'Ce médicament est utilisé pour traiter les troubles de la vigilance et certains symptomes neurologiques chez le sujet agé.', 'Ce médicament est contre-indiqué en cas d\'allergie à  l\'un des constituants.', NULL, 'PSA', 14),
('INSXT5', 'INSECTIL', 'Diphénydramine', 'Ce médicament est utilisé en application locale sur les piqûres d\'insecte et l\'urticaire.', 'Ce médicament est contre-indiqué en cas d\'allergie aux antihistaminiques.', NULL, 'AH', 15),
('JOVAI8', 'JOVENIL', 'Josamycine', 'Ce médicament est utilisé pour traiter des infections bactériennes spécifiques.', 'Ce médicament est contre-indiqué en cas d\'allergie aux macrolides (dont le chef de file est l\'érythromycine).', NULL, 'AFM', 16),
('LIDOXY23', 'LIDOXYTRACINE', 'Oxytétracycline +Lidocaïne', 'Ce médicament est utilisé en injection intramusculaire pour traiter certaines infections spécifiques.', 'Ce médicament est contre-indiqué en cas d\'allergie à  l\'un des constituants. Il ne doit pas être associé aux rétinoïdes.', NULL, 'AFC', 17),
('LITHOR12', 'LITHORINE', 'Lithium', 'Ce médicament est indiqué dans la prévention des psychoses maniaco-dépressives ou pour traiter les états maniaques.', 'Ce médicament ne doit pas être utilisé si vous êtes allergique au lithium. Avant de prendre ce traitement, signalez à  votre médecin traitant si vous souffrez d\'insuffisance rénale, ou si vous avez un régime sans sel.', NULL, 'AP', 18),
('PARMOL16', 'PARMOCODEINE', 'Codéine + Paracétamol', 'Ce médicament est utilisé pour le traitement des douleurs lorsque des antalgiques simples ne sont pas assez efficaces.', 'Ce médicament est contre-indiqué en cas d\'allergie à  l\'un des constituants, chez l\'enfant de moins de 15 Kg, en cas d\'insuffisance hépatique ou respiratoire, d\'asthme, de phénylcétonurie et chez la femme qui allaite.', NULL, 'AA', 20),
('PHYSOI8', 'PHYSICOR', 'Sulbutiamine', 'Ce médicament est utilisé pour traiter les baisses d\'activité physique ou psychique, souvent dans un contexte de dépression.', 'Ce médicament est contre-indiqué en cas d\'allergie à  l\'un des constituants.', NULL, 'PSA', 21),
('PIRIZ8', 'PIRIZAN', 'Pyrazinamide', 'Ce médicament est utilisé, en association à  d\'autres antibiotiques, pour traiter la tuberculose.', 'Ce médicament est contre-indiqué en cas d\'allergie à  l\'un des constituants, d\'insuffisance rénale ou hépatique, d\'hyperuricémie ou de porphyrie.', NULL, 'ABA', 22),
('POMDI20', 'POMADINE', 'Bacitracine', 'Ce médicament est utilisé pour traiter les infections oculaires de la surface de l\'oeil.', 'Ce médicament est contre-indiqué en cas d\'allergie aux antibiotiques appliqués localement.', NULL, 'AO', 23),
('TROXT21', 'TROXADET', 'Paroxétine', 'Ce médicament est utilisé pour traiter la dépression et les troubles obsessionnels compulsifs. Il peut également être utilisé en prévention des crises de panique avec ou sans agoraphobie.', 'Ce médicament est contre-indiqué en cas d\'allergie au produit.', NULL, 'AIN', 26),
('TXISOL22', 'TOUXISOL Vitamine C', 'Tyrothricine + Acide ascorbique (Vitamine C)', 'Ce médicament est utilisé pour traiter les affections de la bouche et de la gorge.', 'Ce médicament est contre-indiqué en cas d\'allergie à  l\'un des constituants et chez l\'enfant de moins de 6 ans.', NULL, 'ALO', 24),
('URIEG6', 'URIREGUL', 'Fosfomycine trométamol', 'Ce médicament est utilisé pour traiter les infections urinaires simples chez la femme de moins de 65 ans.', 'La prise de ce médicament est contre-indiquée en cas d\'allergie à  l\'un des constituants et d\'insuffisance rénale.', NULL, 'AUM', 27);

-- --------------------------------------------------------

--
-- Structure de la table `observation`
--

CREATE TABLE `observation` (
  `oNum` int(11) NOT NULL,
  `pNum` int(11) NOT NULL,
  `mDepotLegal` varchar(10) NOT NULL,
  `oRemarque` varchar(32) DEFAULT NULL,
  `oDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `observation`
--

INSERT INTO `observation` (`oNum`, `pNum`, `mDepotLegal`, `oRemarque`, `oDate`) VALUES
(1, 57, 'AMOXIG12', 'bla bla bla', '2016-01-02 00:00:00'),
(2, 9, 'AMOPIL7', 'bla bla bla', '2016-01-03 00:00:00'),
(3, 67, 'PHYSOI8', 'bla bla bla', '2016-01-03 00:00:00'),
(4, 80, 'TXISOL22', 'bla bla bla', '2016-01-03 00:00:00'),
(5, 68, 'TROXT21', 'bla bla bla', '2016-01-04 00:00:00'),
(6, 42, 'DIMIRTAM6', 'bla bla bla', '2016-01-04 00:00:00'),
(7, 39, 'DORNOM8', 'bla bla bla', '2016-01-05 00:00:00'),
(8, 70, 'CARTION6', 'bla bla bla', '2016-01-05 00:00:00'),
(9, 80, 'POMDI20', 'bla bla bla', '2016-01-06 00:00:00'),
(10, 53, 'BITALV', 'bla bla bla', '2016-01-06 00:00:00'),
(11, 82, 'DIMIRTAM6', 'bla bla bla', '2016-01-06 00:00:00'),
(12, 74, 'AMOPIL7', 'bla bla bla', '2016-01-08 00:00:00'),
(13, 43, 'DEPRIL9', 'bla bla bla', '2016-01-08 00:00:00'),
(14, 69, 'ADIMOL9', 'bla bla bla', '2016-01-08 00:00:00'),
(15, 78, '3MYC7', 'bla bla bla', '2016-01-08 00:00:00'),
(16, 19, 'INSXT5', 'bla bla bla', '2016-01-10 00:00:00'),
(17, 59, 'AMOX45', 'bla bla bla', '2016-01-10 00:00:00'),
(18, 5, 'CLAZER6', 'bla bla bla', '2016-01-10 00:00:00'),
(19, 81, 'EQUILARX6', 'bla bla bla', '2016-01-10 00:00:00'),
(20, 10, 'EVILR7', 'bla bla bla', '2016-01-11 00:00:00'),
(21, 10, 'DEPRIL9', 'bla bla bla', '2016-01-11 00:00:00'),
(22, 9, 'INSXT5', 'bla bla bla', '2016-01-12 00:00:00'),
(23, 65, 'ADIMOL9', 'bla bla bla', '2016-01-12 00:00:00'),
(24, 81, 'PIRIZ8', 'bla bla bla', '2016-01-12 00:00:00'),
(25, 23, 'AMOXIG12', 'bla bla bla', '2016-01-13 00:00:00'),
(26, 23, 'BACTIV13', 'bla bla bla', '2016-01-13 00:00:00'),
(27, 2, 'BACTIV13', 'bla bla bla', '2016-01-13 00:00:00'),
(28, 45, 'CLAZER6', 'bla bla bla', '2016-01-14 00:00:00'),
(29, 49, 'AMOX45', 'bla bla bla', '2016-01-15 00:00:00'),
(30, 50, 'DIMIRTAM6', 'bla bla bla', '2016-01-15 00:00:00'),
(31, 8, 'DEPRIL9', 'bla bla bla', '2016-01-16 00:00:00'),
(32, 77, 'EVILR7', 'bla bla bla', '2016-01-16 00:00:00'),
(33, 34, 'AMOX45', 'bla bla bla', '2016-01-16 00:00:00'),
(34, 21, 'APATOUX22', 'bla bla bla', '2016-01-16 00:00:00'),
(35, 33, 'DEPRIL9', 'bla bla bla', '2016-01-16 00:00:00'),
(36, 58, 'INSXT5', 'bla bla bla', '2016-01-17 00:00:00'),
(37, 3, 'ADIMOL9', 'bla bla bla', '2016-01-17 00:00:00'),
(38, 48, 'BITALV', 'bla bla bla', '2016-01-17 00:00:00'),
(39, 20, 'AMOX45', 'bla bla bla', '2016-01-17 00:00:00'),
(40, 35, 'DEPRIL9', 'bla bla bla', '2016-01-17 00:00:00'),
(41, 84, 'POMDI20', 'bla bla bla', '2016-01-18 00:00:00'),
(42, 65, 'URIEG6', 'bla bla bla', '2016-01-18 00:00:00'),
(43, 79, 'ADIMOL9', 'bla bla bla', '2016-01-18 00:00:00'),
(44, 44, 'PHYSOI8', 'bla bla bla', '2016-01-19 00:00:00'),
(45, 6, 'PHYSOI8', 'bla bla bla', '2016-01-19 00:00:00'),
(46, 42, 'BITALV', 'bla bla bla', '2016-01-19 00:00:00'),
(47, 61, 'AMOPIL7', 'bla bla bla', '2016-01-20 00:00:00'),
(48, 29, 'LIDOXY23', 'bla bla bla', '2016-01-20 00:00:00'),
(49, 64, 'BACTIV13', 'bla bla bla', '2016-01-22 00:00:00'),
(50, 52, 'PARMOL16', 'bla bla bla', '2016-01-22 00:00:00'),
(51, 39, 'DEPRIL9', 'bla bla bla', '2016-01-22 00:00:00'),
(52, 70, 'BACTIG10', 'bla bla bla', '2016-01-22 00:00:00'),
(53, 85, 'TXISOL22', 'bla bla bla', '2016-01-23 00:00:00'),
(54, 60, 'URIEG6', 'bla bla bla', '2016-01-24 00:00:00'),
(55, 31, 'BITALV', 'bla bla bla', '2016-01-24 00:00:00'),
(56, 84, 'AMOXIG12', 'bla bla bla', '2016-01-25 00:00:00'),
(57, 69, 'CARTION6', 'bla bla bla', '2016-01-25 00:00:00'),
(58, 36, 'TROXT21', 'bla bla bla', '2016-01-26 00:00:00'),
(59, 73, 'INSXT5', 'bla bla bla', '2016-01-27 00:00:00'),
(60, 25, 'PARMOL16', 'bla bla bla', '2016-01-28 00:00:00'),
(61, 4, 'BACTIV13', 'bla bla bla', '2016-01-28 00:00:00'),
(62, 24, '3MYC7', 'bla bla bla', '2016-01-30 00:00:00'),
(63, 12, 'DIMIRTAM6', 'bla bla bla', '2016-01-30 00:00:00'),
(64, 33, 'LITHOR12', 'bla bla bla', '2016-01-30 00:00:00'),
(65, 17, 'BACTIG10', 'bla bla bla', '2016-01-31 00:00:00'),
(66, 6, 'CLAZER6', 'bla bla bla', '2016-01-31 00:00:00'),
(67, 60, '3MYC7', 'bla bla bla', '2016-02-01 00:00:00'),
(68, 78, 'JOVAI8', 'bla bla bla', '2016-02-01 00:00:00'),
(69, 71, 'PARMOL16', 'bla bla bla', '2016-02-01 00:00:00'),
(70, 55, 'BACTIV13', 'bla bla bla', '2016-02-02 00:00:00'),
(71, 5, 'BITALV', 'bla bla bla', '2016-02-02 00:00:00'),
(72, 28, 'AMOX45', 'bla bla bla', '2016-02-02 00:00:00'),
(73, 57, 'DORNOM8', 'bla bla bla', '2016-02-02 00:00:00'),
(74, 76, 'PHYSOI8', 'bla bla bla', '2016-02-02 00:00:00'),
(75, 37, 'PIRIZ8', 'bla bla bla', '2016-02-03 00:00:00'),
(76, 26, 'TXISOL22', 'bla bla bla', '2016-02-05 00:00:00'),
(77, 41, '3MYC7', 'bla bla bla', '2016-02-05 00:00:00'),
(78, 11, 'JOVAI8', 'bla bla bla', '2016-02-06 00:00:00'),
(79, 27, 'TROXT21', 'bla bla bla', '2016-02-06 00:00:00'),
(80, 69, 'TXISOL22', 'bla bla bla', '2016-02-06 00:00:00'),
(81, 84, 'LIDOXY23', 'bla bla bla', '2016-02-07 00:00:00'),
(82, 32, 'JOVAI8', 'bla bla bla', '2016-02-08 00:00:00'),
(83, 30, 'ADIMOL9', 'bla bla bla', '2016-02-08 00:00:00'),
(84, 71, 'PHYSOI8', 'bla bla bla', '2016-02-08 00:00:00'),
(85, 7, 'PARMOL16', 'bla bla bla', '2016-02-10 00:00:00'),
(86, 36, 'DORNOM8', 'bla bla bla', '2016-02-10 00:00:00'),
(87, 46, 'TROXT21', 'bla bla bla', '2016-02-10 00:00:00'),
(88, 26, 'AMOPIL7', 'bla bla bla', '2016-02-11 00:00:00'),
(89, 86, 'EVILR7', 'bla bla bla', '2016-02-11 00:00:00'),
(90, 81, 'PHYSOI8', 'bla bla bla', '2016-02-11 00:00:00'),
(91, 65, 'POMDI20', 'bla bla bla', '2016-02-11 00:00:00'),
(92, 16, 'DOLRIL7', 'bla bla bla', '2016-02-12 00:00:00'),
(93, 15, 'BACTIV13', 'bla bla bla', '2016-02-12 00:00:00'),
(94, 50, 'BACTIG10', 'bla bla bla', '2016-02-12 00:00:00'),
(95, 62, 'TROXT21', 'bla bla bla', '2016-02-13 00:00:00'),
(96, 60, 'CARTION6', 'bla bla bla', '2016-02-13 00:00:00'),
(97, 22, 'PHYSOI8', 'bla bla bla', '2016-02-15 00:00:00'),
(98, 47, 'DOLRIL7', 'bla bla bla', '2016-02-15 00:00:00'),
(99, 53, 'DOLRIL7', 'bla bla bla', '2016-02-15 00:00:00'),
(100, 79, 'LITHOR12', 'bla bla bla', '2016-02-15 00:00:00'),
(101, 29, 'PARMOL16', 'bla bla bla', '2016-02-15 00:00:00'),
(102, 48, 'EVILR7', 'bla bla bla', '2016-02-16 00:00:00'),
(103, 46, 'LIDOXY23', 'bla bla bla', '2016-02-16 00:00:00'),
(104, 73, 'LIDOXY23', 'bla bla bla', '2016-02-17 00:00:00'),
(105, 72, '3MYC7', 'bla bla bla', '2016-02-18 00:00:00'),
(106, 58, 'CARTION6', 'bla bla bla', '2016-02-18 00:00:00'),
(107, 52, 'APATOUX22', 'bla bla bla', '2016-02-18 00:00:00'),
(108, 45, 'POMDI20', 'bla bla bla', '2016-02-18 00:00:00'),
(109, 38, 'ADIMOL9', 'bla bla bla', '2016-02-18 00:00:00'),
(110, 63, 'DEPRIL9', 'bla bla bla', '2016-02-19 00:00:00'),
(111, 28, 'URIEG6', 'bla bla bla', '2016-02-19 00:00:00'),
(112, 14, 'LIDOXY23', 'bla bla bla', '2016-02-19 00:00:00'),
(113, 34, 'APATOUX22', 'bla bla bla', '2016-02-20 00:00:00'),
(114, 76, 'URIEG6', 'bla bla bla', '2016-02-20 00:00:00'),
(115, 83, 'EQUILARX6', 'bla bla bla', '2016-02-21 00:00:00'),
(116, 8, 'DOLRIL7', 'bla bla bla', '2016-02-21 00:00:00'),
(117, 54, 'EVILR7', 'bla bla bla', '2016-02-21 00:00:00'),
(118, 78, '3MYC7', 'bla bla bla', '2016-02-21 00:00:00'),
(119, 19, 'DIMIRTAM6', 'bla bla bla', '2016-02-22 00:00:00'),
(120, 20, 'LITHOR12', 'bla bla bla', '2016-02-22 00:00:00'),
(121, 57, 'AMOPIL7', 'bla bla bla', '2016-02-23 00:00:00'),
(122, 37, 'LITHOR12', 'bla bla bla', '2016-02-24 00:00:00'),
(123, 77, 'DEPRIL9', 'bla bla bla', '2016-02-24 00:00:00'),
(124, 85, 'URIEG6', 'bla bla bla', '2016-02-24 00:00:00'),
(125, 77, 'PARMOL16', 'bla bla bla', '2016-02-24 00:00:00'),
(126, 13, 'URIEG6', 'bla bla bla', '2016-02-25 00:00:00'),
(127, 61, 'DORNOM8', 'bla bla bla', '2016-02-25 00:00:00'),
(128, 30, 'CLAZER6', 'bla bla bla', '2016-02-26 00:00:00'),
(129, 11, '3MYC7', 'bla bla bla', '2016-02-26 00:00:00'),
(130, 40, 'DOLRIL7', 'bla bla bla', '2016-02-27 00:00:00'),
(131, 31, 'LITHOR12', 'bla bla bla', '2016-02-27 00:00:00'),
(132, 83, 'TXISOL22', 'bla bla bla', '2016-02-27 00:00:00'),
(133, 18, 'APATOUX22', 'bla bla bla', '2016-02-28 00:00:00'),
(134, 53, 'BACTIV13', 'bla bla bla', '2016-02-28 00:00:00'),
(135, 75, 'DIMIRTAM6', 'bla bla bla', '2016-02-29 00:00:00'),
(136, 55, 'DOLRIL7', 'bla bla bla', '2016-02-29 00:00:00'),
(137, 72, 'TROXT21', 'bla bla bla', '2016-03-02 00:00:00'),
(138, 64, 'LITHOR12', 'bla bla bla', '2016-03-02 00:00:00'),
(139, 24, 'EVILR7', 'bla bla bla', '2016-03-03 00:00:00'),
(140, 27, 'POMDI20', 'bla bla bla', '2016-03-03 00:00:00'),
(141, 51, 'CARTION6', 'bla bla bla', '2016-03-03 00:00:00'),
(142, 82, 'LITHOR12', 'bla bla bla', '2016-03-04 00:00:00'),
(143, 74, 'DIMIRTAM6', 'bla bla bla', '2016-03-04 00:00:00'),
(144, 12, 'INSXT5', 'bla bla bla', '2016-03-05 00:00:00'),
(145, 56, 'TROXT21', 'bla bla bla', '2016-03-05 00:00:00'),
(146, 17, 'ADIMOL9', 'bla bla bla', '2016-03-06 00:00:00'),
(147, 66, 'AMOXIG12', 'bla bla bla', '2016-03-06 00:00:00'),
(148, 32, 'DOLRIL7', 'bla bla bla', '2016-03-07 00:00:00'),
(149, 85, 'LIDOXY23', 'bla bla bla', '2016-03-07 00:00:00'),
(150, 67, 'AMOPIL7', 'bla bla bla', '2016-03-08 00:00:00'),
(151, 47, 'BITALV', 'bla bla bla', '2016-03-08 00:00:00'),
(152, 73, '3MYC7', 'bla bla bla', '2016-03-08 00:00:00'),
(153, 21, 'PHYSOI8', 'bla bla bla', '2016-03-09 00:00:00'),
(154, 25, 'BACTIG10', 'bla bla bla', '2016-03-10 00:00:00'),
(155, 40, 'DEPRIL9', 'bla bla bla', '2016-03-10 00:00:00'),
(156, 54, 'BACTIG10', 'bla bla bla', '2016-03-11 00:00:00'),
(157, 44, 'PIRIZ8', 'bla bla bla', '2016-03-11 00:00:00'),
(158, 59, 'DEPRIL9', 'bla bla bla', '2016-03-11 00:00:00'),
(159, 14, 'INSXT5', 'bla bla bla', '2016-03-11 00:00:00'),
(160, 72, 'AMOPIL7', 'bla bla bla', '2016-03-11 00:00:00'),
(161, 63, 'BACTIV13', 'bla bla bla', '2016-03-12 00:00:00'),
(162, 76, 'DOLRIL7', 'bla bla bla', '2016-03-12 00:00:00'),
(163, 51, 'AMOXIG12', 'bla bla bla', '2016-03-14 00:00:00'),
(164, 63, 'LITHOR12', 'bla bla bla', '2016-03-14 00:00:00'),
(165, 67, 'DOLRIL7', 'bla bla bla', '2016-03-14 00:00:00'),
(166, 61, 'LIDOXY23', 'bla bla bla', '2016-03-15 00:00:00'),
(167, 49, 'URIEG6', 'bla bla bla', '2016-03-15 00:00:00'),
(168, 71, 'APATOUX22', 'bla bla bla', '2016-03-17 00:00:00'),
(169, 43, 'EVILR7', 'bla bla bla', '2016-03-17 00:00:00'),
(170, 55, 'AMOXIG12', 'bla bla bla', '2016-03-18 00:00:00'),
(171, 41, 'CLAZER6', 'bla bla bla', '2016-03-18 00:00:00'),
(172, 64, 'URIEG6', 'bla bla bla', '2016-03-19 00:00:00'),
(173, 16, 'DIMIRTAM6', 'bla bla bla', '2016-03-19 00:00:00'),
(174, 15, 'BACTIG10', 'bla bla bla', '2016-03-19 00:00:00'),
(175, 83, 'AMOX45', 'bla bla bla', '2016-03-20 00:00:00'),
(176, 52, 'INSXT5', 'bla bla bla', '2016-03-20 00:00:00'),
(177, 66, 'EVILR7', 'bla bla bla', '2016-03-20 00:00:00'),
(178, 38, 'BITALV', 'bla bla bla', '2016-03-20 00:00:00'),
(179, 86, 'DOLRIL7', 'bla bla bla', '2016-03-21 00:00:00'),
(180, 80, 'DEPRIL9', 'bla bla bla', '2016-03-21 00:00:00'),
(181, 1, 'EQUILARX6', 'bla bla bla', '2016-03-22 00:00:00'),
(182, 1, 'TXISOL22', 'bla bla bla', '2016-03-22 00:00:00'),
(183, 68, 'ADIMOL9', 'bla bla bla', '2016-03-22 00:00:00'),
(184, 22, 'LIDOXY23', 'bla bla bla', '2016-03-25 00:00:00'),
(185, 82, 'BITALV', 'bla bla bla', '2016-03-25 00:00:00'),
(186, 3, 'EQUILARX6', 'bla bla bla', '2016-03-25 00:00:00'),
(187, 56, 'EVILR7', 'bla bla bla', '2016-03-25 00:00:00'),
(188, 13, 'DOLRIL7', 'bla bla bla', '2016-03-25 00:00:00'),
(189, 59, 'ADIMOL9', 'bla bla bla', '2016-03-27 00:00:00'),
(190, 54, 'BITALV', 'bla bla bla', '2016-03-27 00:00:00'),
(191, 70, 'LITHOR12', 'bla bla bla', '2016-03-27 00:00:00'),
(192, 75, '3MYC7', 'bla bla bla', '2016-03-30 00:00:00'),
(193, 74, 'APATOUX22', 'bla bla bla', '2016-03-31 00:00:00'),
(194, 62, 'EVILR7', 'bla bla bla', '2016-04-01 00:00:00'),
(195, 58, 'DIMIRTAM6', 'bla bla bla', '2016-04-01 00:00:00'),
(196, 75, 'EVILR7', 'bla bla bla', '2016-04-02 00:00:00'),
(197, 2, 'BITALV', 'bla bla bla', '2016-04-02 00:00:00'),
(198, 68, 'CARTION6', 'bla bla bla', '2016-04-03 00:00:00'),
(199, 7, 'BACTIG10', 'bla bla bla', '2016-04-04 00:00:00'),
(200, 66, 'TROXT21', 'bla bla bla', '2016-04-04 00:00:00'),
(201, 62, 'POMDI20', 'bla bla bla', '2016-04-04 00:00:00'),
(202, 18, 'AMOPIL7', 'bla bla bla', '2016-04-05 00:00:00'),
(203, 79, 'DOLRIL7', 'bla bla bla', '2016-04-05 00:00:00'),
(204, 4, 'POMDI20', 'bla bla bla', '2016-04-07 00:00:00'),
(205, 56, 'TROXT21', 'bla bla bla', '2016-04-08 00:00:00'),
(206, 35, 'LITHOR12', 'bla bla bla', '2016-04-09 00:00:00'),
(207, 41, 'JOVAI8', 'bla bla bla', '2017-03-23 00:00:00'),
(208, 23, 'PARMOL16', 'bla bla bla', '2017-04-18 00:00:00'),
(209, 4, 'DORNOM8', 'bla bla bla', '2017-05-21 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `offrir`
--

CREATE TABLE `offrir` (
  `uId` varchar(4) NOT NULL,
  `vNum` smallint(6) NOT NULL,
  `mDepotLegal` varchar(10) NOT NULL,
  `OFF_QTE` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `offrir`
--

INSERT INTO `offrir` (`uId`, `vNum`, `mDepotLegal`, `OFF_QTE`) VALUES
('a131', 1, 'PHYSOI8', 3),
('a131', 2, 'LIDOXY23', 1),
('a131', 3, 'JOVAI8', 1),
('a131', 4, 'PARMOL16', 1),
('a17', 1, 'PIRIZ8', 3),
('a17', 2, 'EQUILARX6', 2),
('a17', 3, 'LITHOR12', 4),
('a17', 4, 'LITHOR12', 4),
('a17', 5, 'AMOX45', 1),
('a17', 6, 'BITALV', 1),
('a55', 1, 'AMOPIL7', 4),
('a55', 2, 'PHYSOI8', 1),
('a55', 3, 'INSXT5', 4),
('a55', 4, '3MYC7', 4),
('a55', 5, 'TROXT21', 3),
('a55', 6, 'AMOPIL7', 3),
('a93', 1, 'PARMOL16', 3),
('a93', 2, 'TXISOL22', 1),
('a93', 4, 'DOLRIL7', 3),
('a93', 5, 'BITALV', 3),
('a93', 6, 'BACTIG10', 2),
('b13', 1, 'DEPRIL9', 4),
('b13', 2, 'DOLRIL7', 2),
('b13', 4, 'EVILR7', 2),
('b16', 1, 'AMOXIG12', 1),
('b16', 2, 'BACTIV13', 2),
('b16', 3, 'PARMOL16', 2),
('b16', 5, 'BACTIG10', 1),
('b16', 6, 'AMOPIL7', 1),
('b19', 1, 'INSXT5', 3),
('b25', 2, 'INSXT5', 2),
('b25', 4, 'CARTION6', 4),
('b25', 5, 'DIMIRTAM6', 2),
('b25', 6, 'EVILR7', 4),
('b25', 7, 'DOLRIL7', 1),
('b25', 8, 'EQUILARX6', 3),
('b25', 9, 'TXISOL22', 4),
('b25', 10, 'TROXT21', 3),
('b28', 1, 'EVILR7', 4),
('b28', 2, 'BACTIV13', 1),
('b28', 3, 'BACTIG10', 3),
('b28', 5, 'ADIMOL9', 1),
('b28', 6, 'URIEG6', 3),
('b34', 1, '3MYC7', 1),
('b34', 4, 'DEPRIL9', 4),
('b4', 1, 'TXISOL22', 3),
('b4', 2, 'JOVAI8', 2),
('b4', 4, 'DOLRIL7', 4),
('b50', 2, 'DIMIRTAM6', 4),
('b59', 1, 'DOLRIL7', 1),
('bp', 1, 'ADIMOL9', 2),
('bp', 2, 'PARMOL16', 3),
('bp', 3, 'ADIMOL9', 1),
('bp', 4, 'APATOUX22', 1),
('bp', 5, 'CLAZER6', 2),
('c14', 1, 'AMOPIL7', 1),
('c14', 2, 'AMOX45', 4),
('c14', 3, 'BACTIV13', 1),
('c14', 5, 'BACTIG10', 2),
('c14', 6, 'ADIMOL9', 1),
('c3', 1, 'TXISOL22', 1),
('c3', 2, 'POMDI20', 4),
('c3', 3, 'AMOX45', 2),
('c3', 4, 'DIMIRTAM6', 1),
('c3', 5, 'JOVAI8', 1),
('c3', 6, 'PHYSOI8', 1),
('c3', 7, 'APATOUX22', 2),
('c3', 10, 'BACTIG10', 4),
('c54', 1, 'BITALV', 2),
('c54', 2, 'URIEG6', 1),
('c54', 3, '3MYC7', 1),
('c54', 4, 'TROXT21', 1),
('c54', 5, 'EVILR7', 4),
('c54', 6, 'DEPRIL9', 3),
('c54', 8, 'BACTIV13', 2),
('d13', 2, 'CARTION6', 1),
('d13', 4, 'AMOXIG12', 3),
('d51', 1, 'DORNOM8', 3),
('d51', 2, 'DEPRIL9', 1),
('e22', 1, 'EVILR7', 4),
('e24', 1, 'BACTIV13', 4),
('e39', 1, 'AMOXIG12', 1),
('e39', 2, 'BITALV', 3),
('e39', 3, 'AMOPIL7', 2),
('e39', 4, 'BACTIV13', 2),
('e49', 1, 'TROXT21', 3),
('e49', 2, 'CLAZER6', 1),
('e49', 3, 'ADIMOL9', 4),
('e49', 4, 'POMDI20', 2),
('e49', 6, 'AMOXIG12', 1),
('e49', 7, 'INSXT5', 4),
('e49', 8, 'BITALV', 1),
('e49', 9, '3MYC7', 3),
('e49', 10, 'ADIMOL9', 3),
('e5', 1, 'CARTION6', 3),
('e5', 2, 'CLAZER6', 1),
('e5', 3, 'DEPRIL9', 2),
('e5', 4, 'AMOX45', 4),
('e5', 5, 'BACTIG10', 4),
('e5', 7, 'LITHOR12', 1),
('e5', 8, 'TXISOL22', 3),
('e5', 9, 'POMDI20', 4),
('e5', 11, 'DOLRIL7', 3),
('e5', 12, 'AMOXIG12', 2),
('e52', 1, 'TROXT21', 2),
('e52', 4, '3MYC7', 1),
('f21', 2, 'PHYSOI8', 3),
('f39', 1, 'TROXT21', 3),
('f39', 2, 'ADIMOL9', 2),
('f39', 6, 'EVILR7', 4),
('f4', 1, 'TROXT21', 4),
('g19', 1, 'BITALV', 3),
('g19', 2, 'TROXT21', 2),
('g19', 3, 'LIDOXY23', 4),
('g30', 1, 'BACTIV13', 2),
('g30', 2, 'LITHOR12', 4),
('g30', 3, 'DOLRIL7', 1),
('g30', 4, 'POMDI20', 2),
('g53', 1, 'PHYSOI8', 3),
('g53', 3, 'URIEG6', 1),
('g7', 1, 'DORNOM8', 4),
('h30', 2, 'DOLRIL7', 2),
('h35', 1, 'DEPRIL9', 2),
('h40', 1, 'CARTION6', 4),
('j45', 1, 'DORNOM8', 4),
('j50', 1, 'EVILR7', 2),
('j50', 2, 'DEPRIL9', 1),
('k4', 1, 'LITHOR12', 2),
('k53', 1, 'LITHOR12', 2),
('l14', 1, 'POMDI20', 2),
('l23', 1, 'BACTIV13', 2),
('l23', 3, 'LIDOXY23', 4),
('l23', 5, 'LIDOXY23', 4),
('l46', 1, 'AMOXIG12', 1),
('l56', 1, 'AMOX45', 2),
('l56', 3, 'PARMOL16', 2),
('l56', 4, 'URIEG6', 1),
('m45', 1, 'CARTION6', 4),
('n42', 2, 'URIEG6', 4),
('n58', 1, 'DEPRIL9', 1),
('n59', 1, 'ADIMOL9', 3),
('n59', 1, 'DEPRIL9', 1),
('n59', 3, 'CLAZER6', 4),
('n59', 5, 'CLAZER6', 4),
('o26', 1, 'ADIMOL9', 4),
('p32', 1, 'LITHOR12', 1),
('p40', 1, 'DIMIRTAM6', 3),
('p40', 2, 'DIMIRTAM6', 2),
('p40', 3, 'BITALV', 4),
('p40', 4, 'BACTIG10', 4),
('p41', 1, 'PARMOL16', 1),
('p42', 1, 'AMOPIL7', 2),
('p49', 1, 'LIDOXY23', 2),
('p6', 1, 'APATOUX22', 1),
('p7', 1, '3MYC7', 4),
('p8', 1, 'DOLRIL7', 3),
('r24', 1, '3MYC7', 1),
('r58', 1, 'ADIMOL9', 1),
('s10', 1, 'DEPRIL9', 3),
('s21', 1, 'PIRIZ8', 4),
('t43', 1, 'DIMIRTAM6', 4),
('t47', 1, 'TXISOL22', 2),
('t55', 1, 'LIDOXY23', 1);

-- --------------------------------------------------------

--
-- Structure de la table `parametre`
--

CREATE TABLE `parametre` (
  `pType` varchar(7) NOT NULL,
  `pIndice` smallint(6) NOT NULL,
  `pLibelle` varchar(110) DEFAULT NULL,
  `pCategorie` varchar(1) DEFAULT NULL,
  `pPlancher` smallint(6) DEFAULT NULL,
  `pPlafond` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `parametre`
--

INSERT INTO `parametre` (`pType`, `pIndice`, `pLibelle`, `pCategorie`, `pPlancher`, `pPlafond`) VALUES
('autreFi', 0, '_', 'a', NULL, NULL),
('autresC', 0, 'valeur à déterminer …', 'a', NULL, NULL),
('autresC', 1, 'Bénéficiaire \r\ndes mima sociaux', 'a', NULL, NULL),
('autresC', 2, 'Participant bénéficiant d\'un contrat aidé', 'a', NULL, NULL),
('autresC', 3, 'Jeunes de 16 à 25 ans révolus', 'a', NULL, NULL),
('autresC', 4, 'Jeunes de 16 à 25 ans révolus résidant en ZUS', 'a', NULL, NULL),
('autresC', 5, 'Jeunes de 16 à 25 ans révolus handicapés', 'a', NULL, NULL),
('autresC', 7, 'Sénior', 'a', NULL, NULL),
('autresC', 8, 'Mère isolée', 'a', NULL, NULL),
('autresC', 9, 'Grossesse', 'a', NULL, NULL),
('avCreat', 0, 'Sans activité', 'a', NULL, NULL),
('avCreat', 1, 'Etudiant', 'a', NULL, NULL),
('avCreat', 2, 'STAGIAIRE FORMATION', 'a', NULL, NULL),
('avCreat', 3, 'MERE AU FOYER', 'a', NULL, NULL),
('avCreat', 4, 'SALARIEE EN CDD', 'a', NULL, NULL),
('avCreat', 5, 'Salarié', 'a', NULL, NULL),
('avCreat', 6, 'Licenciement', 'a', NULL, NULL),
('avCreat', 7, 'Demandeur d\'emploi', 'a', NULL, NULL),
('avCreat', 8, 'BENEF RSA/DE NON IND', 'a', NULL, NULL),
('avCreat', 9, 'RMI', 'a', NULL, NULL),
('avCreat', 10, 'AUTO ENTREPRENEUR', 'a', NULL, NULL),
('avCreat', 11, 'EI', 'a', NULL, NULL),
('avCreat', 12, 'ETI', 'a', NULL, NULL),
('avCreat', 13, 'FRANCHISE', 'a', NULL, NULL),
('avCreat', 14, 'HORS DEPARTEMENT', 'a', NULL, NULL),
('avCreat', 15, 'LOUEUR DE GITE PARTICULIER', 'a', NULL, NULL),
('avCreat', 16, 'MICROENTREPRISE', 'a', NULL, NULL),
('catProf', 0, 'valeur à déterminer …', NULL, NULL, NULL),
('catProf', 1, 'Agent commercial', 'a', NULL, NULL),
('catProf', 2, 'Agriculteurs exploitants', 'a', NULL, NULL),
('catProf', 3, 'Artisans', 'a', NULL, NULL),
('catProf', 4, 'Artiste', 'a', NULL, NULL),
('catProf', 5, 'Cadres et professions intellectuelles supérieures', 'a', NULL, NULL),
('catProf', 6, 'Colporteurs de presse', 'a', NULL, NULL),
('catProf', 7, 'Commerçants', 'a', NULL, NULL),
('catProf', 8, 'Commerçants ambulants', 'a', NULL, NULL),
('catProf', 9, 'Conjoint collaborateur', 'a', NULL, NULL),
('catProf', 10, 'Créateurs', 'a', NULL, NULL),
('catProf', 11, 'Employé', 'a', NULL, NULL),
('catProf', 12, 'Ouvrier', 'a', NULL, NULL),
('catProf', 13, 'Professions intermédiaires', 'a', NULL, NULL),
('catProf', 14, 'Professions libérales', 'a', NULL, NULL),
('catProf', 15, 'Retraité', 'a', NULL, NULL),
('catProf', 16, 'Sans activité professionelle', 'a', NULL, NULL),
('catProf', 17, 'Travailleur Indépendant', 'a', NULL, NULL),
('catProf', 18, 'Vendeur à domicile indépendant', 'a', NULL, NULL),
('conv', 0, '_', NULL, NULL, NULL),
('conv', 1, 'CG 21', 'a', NULL, NULL),
('conv', 2, 'CG 58', 'a', NULL, NULL),
('conv', 3, 'CG 89', 'a', NULL, NULL),
('conv', 4, 'CG 71', 'a', NULL, NULL),
('conv', 5, 'CG 21 + FSE', 'a', NULL, NULL),
('conv', 6, 'CG 58 + FSE', 'a', NULL, NULL),
('conv', 7, 'CG 89 + FSE', 'a', NULL, NULL),
('conv', 8, 'CG 71 + FSE', 'a', NULL, NULL),
('conv', 9, 'CCI 58', 'a', NULL, NULL),
('conv', 10, 'CCI 21', 'a', NULL, NULL),
('conv', 11, 'CCI71', 'a', NULL, NULL),
('conv', 12, 'CMA', 'a', NULL, NULL),
('conv', 13, 'Adrea MUTUELLE', 'a', NULL, NULL),
('conv', 14, 'ARPAD', 'a', NULL, NULL),
('conv', 15, 'Harmonie', 'a', NULL, NULL),
('conv', 16, 'Ville de Dijon', 'a', NULL, NULL),
('fiMutue', 0, '_', 'a', NULL, NULL),
('fiMutue', 1, 'Adrea MUTUELLE', 'a', NULL, NULL),
('fiMutue', 2, 'AXA', 'a', NULL, NULL),
('fiMutue', 3, 'GAN', 'a', NULL, NULL),
('fiMutue', 4, 'Mutuelle bleue', 'a', NULL, NULL),
('fiMutue', 5, 'Prevadies/ Relaya', 'a', NULL, NULL),
('fiMutue', 6, 'Pro BTP', 'a', NULL, NULL),
('fiMutue', 7, 'Radiance', 'a', NULL, NULL),
('fiMutue', 8, 'RAM', 'a', NULL, NULL),
('fiMutue', 9, 'État', 'a', NULL, NULL),
('fiMutue', 10, 'GRM', 'a', NULL, NULL),
('fiMutue', 11, 'MNT', 'a', NULL, NULL),
('fiMutue', 12, 'Côte d\'Or', 'a', NULL, NULL),
('fiMutue', 13, 'Harmonie Mutuelle', 'a', NULL, NULL),
('fiMutue', 14, 'Mutuelle de Poitier', 'a', NULL, NULL),
('fiMutue', 15, 'Thélem', 'a', NULL, NULL),
('fiMutue', 16, 'ARCCO', 'a', NULL, NULL),
('fiMutue', 17, 'APREA', 'a', NULL, NULL),
('fiMutue', 18, 'APRIL', 'a', NULL, NULL),
('fiMutue', 19, 'CCMA', 'a', NULL, NULL),
('grpAct', 1, 'Stage créateurs 58 animation)', 'a', NULL, NULL),
('grpAct', 2, 'Ateliers innovants animation)', 'a', NULL, NULL),
('grpAct', 3, 'Réunion GDV 89 animation)', 'a', NULL, NULL),
('grpAct', 4, 'Réunion GDV 58 animation)', 'a', NULL, NULL),
('grpAct', 5, 'Stage créateurs 21 animation)', 'a', NULL, NULL),
('grpAct', 6, 'Administratif préparation, bilan, réunion ...)', 'a', NULL, NULL),
('grpAct', 7, 'Réunion thématique animation)', 'a', NULL, NULL),
('grpAct', 8, 'Autre réunion collective', 'a', NULL, NULL),
('grpAct', 9, 'Instruction RSA', 'a', NULL, NULL),
('grpAct', 10, 'Maintien RSA', 'a', NULL, NULL),
('grpAct', 11, 'Audit RSA - DSP', 'a', NULL, NULL),
('grpAct', 12, 'CER - CI', 'a', NULL, NULL),
('grpAct', 13, 'Suivi mensuel RSA', 'a', NULL, NULL),
('grpAct', 14, 'Demande APRE', 'a', NULL, NULL),
('grpAct', 15, 'Saisine EPL réorientation, suspension ...)', 'a', NULL, NULL),
('grpAct', 16, 'Bilan fin d’accompagnement', 'a', NULL, NULL),
('grpAct', 17, 'Problème RSA', 'a', NULL, NULL),
('grpAct', 18, 'Déclaration annuelle CAF', 'a', NULL, NULL),
('grpAct', 19, 'Déclaration trimestrielle CAF', 'a', NULL, NULL),
('grpAct', 20, 'Administratif RSA', 'a', NULL, NULL),
('grpAct', 21, 'Charges Sociales / ACCRE', 'a', NULL, NULL),
('grpAct', 22, 'Déclaration RSI AE', 'a', NULL, NULL),
('grpAct', 23, 'Instruction / renouvellement CMU', 'a', NULL, NULL),
('grpAct', 24, 'Problème liés à la santé', 'a', NULL, NULL),
('grpAct', 25, 'Dossier action sociale RSI', 'a', NULL, NULL),
('grpAct', 26, 'Retraite / indemnité de départ', 'a', NULL, NULL),
('grpAct', 27, 'Dégrévement d’impôt', 'a', NULL, NULL),
('grpAct', 28, 'Autres démarches fiscales', 'a', NULL, NULL),
('grpAct', 29, 'Cessation de paiement', 'a', NULL, NULL),
('grpAct', 30, 'Autres démarches juridiques', 'a', NULL, NULL),
('grpAct', 31, 'Administratif', 'a', NULL, NULL),
('grpAct', 32, 'Aide au logement', 'a', NULL, NULL),
('grpAct', 33, 'Echanges SASTI / Partenaire sur usager', 'a', NULL, NULL),
('grpAct', 34, 'Autre action d’accompagnement', 'a', NULL, NULL),
('modeInt', 1, 'Sur dossier', 'a', NULL, NULL),
('modeInt', 2, 'En présence', 'a', NULL, NULL),
('modeInt', 3, 'Dans l’entreprise', 'a', NULL, NULL),
('modeInt', 4, 'A distance', 'a', NULL, NULL),
('motifEn', 0, 'valeur à déterminer …', 'a', NULL, NULL),
('motifEn', 1, 'demande RSA', 'a', NULL, NULL),
('motifEn', 2, 'maintien RSA', 'a', NULL, NULL),
('motifEn', 3, 'reorientation', 'a', NULL, NULL),
('motifEn', 4, 'Réorientation CG', 'a', NULL, NULL),
('motifEn', 5, 'Réorientation Pôle Emploi', 'a', NULL, NULL),
('motifEn', 6, 'Réorientation Coallia', 'a', NULL, NULL),
('motifEn', 7, 'Retour socle', 'a', NULL, NULL),
('motifSo', 0, '_', 'a', NULL, NULL),
('motifSo', 1, 'Réorientation', 'a', NULL, NULL),
('motifSo', 2, 'Revenu suffisant', 'a', NULL, NULL),
('motifSo', 3, 'Création d’activité', 'a', NULL, NULL),
('motifSo', 4, 'Emploi temporaire ou saisonnier <=6 mois', 'a', NULL, NULL),
('motifSo', 5, 'Accès à un contrat aidé', 'a', NULL, NULL),
('motifSo', 6, 'Accès à un emploi durable (de plus de 6 mois)', 'a', NULL, NULL),
('motifSo', 7, 'Accès à une formation qualifiante', 'a', NULL, NULL),
('motifSo', 8, 'Formation certifié', 'a', NULL, NULL),
('motifSo', 9, 'Accès à une procédure VAE', 'a', NULL, NULL),
('motifSo', 10, 'Retour en formation scolaire', 'a', NULL, NULL),
('motifSo', 11, 'Déménagement', 'a', NULL, NULL),
('motifSo', 12, 'Décès', 'a', NULL, NULL),
('motifSo', 13, 'RSA activité', 'a', NULL, NULL),
('motifSo', 14, 'Autre prestation', 'a', NULL, NULL),
('motifSo', 15, 'Demande de la personne', 'a', NULL, NULL),
('motifSo', 16, 'autres types de sorties positives (de nature non précisées)', 'a', NULL, NULL),
('motifSo', 17, 'Cessation d\'activité', 'a', NULL, NULL),
('motifSo', 18, 'Réorientation CG', 'a', NULL, NULL),
('motifSo', 19, 'Réorientation CCAS', 'a', NULL, NULL),
('motifSo', 20, 'Réorientation Pôle Emploi', 'a', NULL, NULL),
('motifSo', 21, 'Réorientation Coallia', 'a', NULL, NULL),
('motifSo', 22, 'Réorientation PFO', 'u', NULL, NULL),
('motifSo', 25, 'Sortie d\'instruction', NULL, NULL, NULL),
('mutuell', 0, '_', 'a', NULL, NULL),
('mutuell', 1, 'Adrea MUTUELLE', 'a', NULL, NULL),
('mutuell', 2, 'AXA', 'a', NULL, NULL),
('mutuell', 3, 'GAN', 'a', NULL, NULL),
('mutuell', 4, 'Mutuelle bleue', 'a', NULL, NULL),
('mutuell', 5, 'Prevadies/ Relaya', 'a', NULL, NULL),
('mutuell', 6, 'Pro BTP', 'a', NULL, NULL),
('mutuell', 7, 'Radiance', 'a', NULL, NULL),
('mutuell', 8, 'RAM', 'a', NULL, NULL),
('mutuell', 9, 'État', 'a', NULL, NULL),
('mutuell', 10, 'GRM', 'a', NULL, NULL),
('mutuell', 11, 'MNT', 'a', NULL, NULL),
('mutuell', 12, 'Côte d\'Or', 'a', NULL, NULL),
('mutuell', 13, 'Harmonie Mutuelle', 'a', NULL, NULL),
('mutuell', 14, 'Mutuelle de Poitier', 'a', NULL, NULL),
('mutuell', 15, 'Thélem', 'a', NULL, NULL),
('mutuell', 16, 'ARCCO', 'a', NULL, NULL),
('mutuell', 17, 'APREA', 'a', NULL, NULL),
('mutuell', 18, 'APRIL', 'a', NULL, NULL),
('mutuell', 19, 'CCMA', 'a', NULL, NULL),
('mutuell', 20, 'Mutuelles du Mans', 'u', NULL, NULL),
('mutuell', 21, 'MNH', 'u', NULL, NULL),
('mutuell', 22, 'Alliance', 'u', NULL, NULL),
('mutuell', 23, 'Mutuelle Carrefour', 'u', NULL, NULL),
('mutuell', 24, 'Pacifica', 'u', NULL, NULL),
('mutuell', 25, 'AVIVA', 'u', NULL, NULL),
('mutuell', 26, 'MGTBL', 'u', NULL, NULL),
('nivEtud', 0, 'valeur à déterminer …', 'u', NULL, NULL),
('nivEtud', 1, 'Illettrisme', 'a', NULL, NULL),
('nivEtud', 2, 'Niveau VI - 6ème à  4ème ou formation préprofessionnelle de 1 an', 'a', NULL, NULL),
('nivEtud', 3, 'Niveau V - Abandon avant terminale', 'a', NULL, NULL),
('nivEtud', 4, 'Niveau Vbis - 3ème ou 4ème-3ème techno', 'a', NULL, NULL),
('nivEtud', 5, 'Niveau IV - Classe terminale, abandon post bac', 'a', NULL, NULL),
('nivEtud', 6, 'Niveau III - Diplôme BAC+2', 'a', NULL, NULL),
('nivEtud', 7, 'Niveau II et I - Diplôme supèrieur à bac +2', 'a', NULL, NULL),
('orgConv', 0, '_', 'a', NULL, NULL),
('orgConv', 1, 'Adrea MUTUELLE', 'a', NULL, NULL),
('orgConv', 2, 'Harmonie Mutuelle', 'a', NULL, NULL),
('orgConv', 3, 'mutuelle de l’est', 'a', NULL, NULL),
('orgConv', 4, 'Radiance', 'a', NULL, NULL),
('orgConv', 5, 'RAM', 'a', NULL, NULL),
('orgConv', 6, 'RAM PL', 'a', NULL, NULL),
('parcour', 0, '_', 'c', NULL, NULL),
('parcour', 1, 'A', 'c', NULL, NULL),
('parcour', 2, 'B', 'c', NULL, NULL),
('parcour', 3, 'C', 'c', NULL, NULL),
('regFisc', 0, '_', 'a', NULL, NULL),
('regFisc', 1, 'Auto Entrepreneur', 'a', NULL, NULL),
('regFisc', 2, 'Forfait agricole', 'a', NULL, NULL),
('regFisc', 3, '??????', 'a', NULL, NULL),
('regFisc', 4, 'Récépissé', 'a', NULL, NULL),
('regFisc', 5, 'bic / reel', 'a', NULL, NULL),
('regFisc', 6, 'bic / micro', 'a', NULL, NULL),
('regFisc', 7, 'bnc / reel', 'a', NULL, NULL),
('regFisc', 8, 'bnc / micro', 'a', NULL, NULL),
('secteur', 21, 'Côte d’or', 's', NULL, NULL),
('secteur', 58, 'Nièvre', 's', NULL, NULL),
('secteur', 71, 'Saône et Loire', 's', NULL, NULL),
('secteur', 89, 'Yonne', 's', NULL, NULL),
('sexe', 0, 'Femme', 'u', NULL, NULL),
('sexe', 1, 'Homme', 'u', NULL, NULL),
('sitFami', 0, 'valeur à déterminer …', 'a', NULL, NULL),
('sitFami', 1, 'Célibataire', 'a', NULL, NULL),
('sitFami', 2, 'Divorcé', 'a', NULL, NULL),
('sitFami', 3, 'Isolé après vie maritale', 'u', NULL, NULL),
('sitFami', 4, 'Marié', 'a', NULL, NULL),
('sitFami', 5, 'Pacsé', 'a', NULL, NULL),
('sitFami', 6, 'Séparé', 'a', NULL, NULL),
('sitFami', 7, 'Veuf', 'a', NULL, NULL),
('sitFami', 8, 'Vie maritale', 'a', NULL, NULL),
('staEmpl', 0, '_', 'u', NULL, NULL),
('staEmpl', 1, 'Actifs non indépendants (salariés)', 'u', NULL, NULL),
('staEmpl', 2, 'Actifs indépendants (artisans, commerçants, entrepreneurs, artistes, …)', 'u', NULL, NULL),
('staEmpl', 3, 'Chômeurs (hors longue durée)', 'u', NULL, NULL),
('staEmpl', 4, 'Chômeurs de longue durée (inscrits depuis plus de 12 mois)', 'u', NULL, NULL),
('staEmpl', 5, 'Conjoint collaborateur', 'u', NULL, NULL),
('staEmpl', 6, 'Inactifs (hors \"en formation\"), scolaires, retraités', 'u', NULL, NULL),
('staEmpl', 7, 'Inactifs en formation', 'u', NULL, NULL),
('statAgt', 0, 'Super administrateur', NULL, NULL, NULL),
('statAgt', 1, 'administrateur', NULL, NULL, NULL),
('statAgt', 2, 'agent', NULL, NULL, NULL),
('statAgt', 5, 'partenaire', NULL, NULL, NULL),
('statAgt', 6, 'partenaire hors convention', NULL, NULL, NULL),
('statJur', 0, 'valeur à déterminer …', 'a', NULL, NULL),
('statJur', 1, 'Auto-entrepreneur', 'a', NULL, NULL),
('statJur', 2, 'EARL (exploitation Agricole à Responsabilité limitée)', 'a', NULL, NULL),
('statJur', 3, 'EIRL (Entrepreneur Individuel à Responsabilité Limité)', 'a', NULL, NULL),
('statJur', 4, 'Entreprise Individuelle', 'a', NULL, NULL),
('statJur', 5, 'EURL (entreprise unipersonnelle à responsabilité limitée)', 'a', NULL, NULL),
('statJur', 6, 'SARL (société à responsabilité limitée)', 'a', NULL, NULL),
('statJur', 7, 'SAS (société par actions simplifiée)', 'a', NULL, NULL),
('statJur', 8, 'SNC (société en nom collectif)', 'a', NULL, NULL),
('statJur', 9, 'Société de Fait', 'a', NULL, NULL),
('statJur', 10, 'Profession Intermédiaire', 'a', NULL, NULL),
('statJur', 11, 'Artiste', NULL, NULL, NULL),
('statJur', 12, 'Profession libérale', 'a', NULL, NULL),
('suivi', 0, 'en instruction', 'u', NULL, NULL),
('suivi', 1, 'Suivi', 'u', NULL, NULL),
('suivi', 2, 'Sortie', 'u', NULL, NULL),
('suivi', 3, 'Réorientation', 'u', NULL, NULL),
('tranAge', 1, 'Participants de moins de 15 ans', 'u', 0, 15),
('tranAge', 2, 'Participants de 15 à 25 ans', 'u', 15, 25),
('tranAge', 3, 'Participants de 25 à à 45 ans', 'u', 25, 45),
('tranAge', 4, 'Participants de 45 à à 55 ans', 'u', 45, 55),
('tranAge', 5, 'Participants de 55 à 65 ans', 'u', 55, 65),
('tranAge', 6, 'Participants de  65 ans et plus', 'u', 65, 999),
('typeCer', -1, '_', 'c', NULL, NULL),
('typeCer', 0, 'R0', 'c', NULL, NULL),
('typeCer', 1, 'R1', 'c', NULL, NULL),
('typeCer', 2, 'R2', 'c', NULL, NULL),
('typeCer', 3, 'R3', 'c', NULL, NULL),
('typeCer', 4, 'R4', 'c', NULL, NULL),
('typeCer', 5, 'R5', 'c', NULL, NULL),
('typeCer', 6, 'R6', 'c', NULL, NULL),
('typeCer', 7, 'R7', 'c', NULL, NULL),
('typeCer', 8, 'R8', 'c', NULL, NULL),
('typeCer', 9, 'R9', 'c', NULL, NULL),
('typeCer', 10, 'R10', 'c', NULL, NULL),
('typeCer', 11, 'R11', 'c', NULL, NULL),
('typeCer', 12, 'R12', 'c', NULL, NULL),
('typeCer', 13, 'R13', 'c', NULL, NULL),
('typeCer', 17, 'R17', NULL, NULL, NULL),
('typeCer', 18, 'R18', 'c', NULL, NULL),
('typeCer', 22, 'R22', 'c', NULL, NULL),
('vulnera', 0, 'valeur à déterminer …', 'u', NULL, NULL),
('vulnera', 1, 'Migrants (nés de nationalité non-française à l\'étranger, résidant en France)', 'u', NULL, NULL),
('vulnera', 2, 'Minorités', 'u', NULL, NULL),
('vulnera', 3, 'Personnes handicapées', 'u', NULL, NULL),
('vulnera', 4, 'Autres personnes défavorisées', 'u', NULL, NULL),
('', 1, 'kgf', NULL, 0, 0),
('', 1, 'kgf', NULL, 0, 0),
('', 1, 'kgf', NULL, 0, 0),
('', 1, 'kgf', NULL, 0, 0),
('', 1, 'kgf', NULL, 0, 0),
('', 1, 'kgf', NULL, 0, 0),
('', 1, 'kgf', NULL, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `praticien`
--

CREATE TABLE `praticien` (
  `pNum` int(11) NOT NULL,
  `pNom` varchar(25) DEFAULT NULL,
  `pPrenom` varchar(30) DEFAULT NULL,
  `pRue` varchar(50) DEFAULT NULL,
  `pCP` varchar(5) DEFAULT NULL,
  `pVille` varchar(32) DEFAULT NULL,
  `pCoefNotoriete` float DEFAULT NULL,
  `pCode` varchar(2) NOT NULL,
  `pRegion` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `praticien`
--

INSERT INTO `praticien` (`pNum`, `pNom`, `pPrenom`, `pRue`, `pCP`, `pVille`, `pCoefNotoriete`, `pCode`, `pRegion`) VALUES
(1, 'Notini', 'Alain', '114 rue Authie', '85000', 'LA ROCHE SUR YON', 290.03, 'MH', 52),
(2, 'Gosselin', 'Albert', '13 rue Devon', '41000', 'BLOIS', 307.49, 'MV', 24),
(3, 'Delahaye', 'André', '36 av 6 Juin', '25000', 'BESANCON', 185.79, 'PS', 27),
(4, 'Leroux', 'André', '47 av Robert Schuman', '60000', 'BEAUVAIS', 172.04, 'PH', 32),
(5, 'Desmoulins', 'Anne', '31 rue St Jean', '30000', 'NIMES', 94.75, 'PO', 76),
(6, 'Mouel', 'Anne', '27 rue Auvergne', '80000', 'AMIENS', 45.2, 'MH', 32),
(7, 'Desgranges-Lentz', 'Antoine', '1 rue Albert de Mun', '29000', 'MORLAIX', 20.07, 'MV', 53),
(8, 'Marcouiller', 'Arnaud', '31 rue St Jean', '68000', 'MULHOUSE', 396.52, 'PS', 44),
(9, 'Dupuy', 'Benoit', '9 rue Demolombe', '34000', 'MONTPELLIER', 395.66, 'PH', 76),
(10, 'Lerat', 'Bernard', '31 rue St Jean', '59000', 'LILLE', 257.79, 'PO', 32),
(11, 'Marçais-Lefebvre', 'Bertrand', '86Bis rue Basse', '67000', 'STRASBOURG', 450.96, 'MH', 44),
(12, 'Boscher', 'Bruno', '94 rue Falaise', '10000', 'TROYES', 356.14, 'MV', 44),
(13, 'Morel', 'Catherine', '21 rue Chateaubriand', '75000', 'PARIS', 379.57, 'PS', 11),
(14, 'Guivarch', 'Chantal', '4 av Gén Laperrine', '45000', 'ORLEANS', 114.56, 'PH', 24),
(15, 'Bessin-Grosdoit', 'Christophe', '92 rue Falaise', '6000', 'NICE', 222.06, 'PO', 93),
(16, 'Rossa', 'Claire', '14 av Thiès', '6000', 'NICE', 529.78, 'MH', 93),
(17, 'Cauchy', 'Denis', '5 av Ste Thérèse', '11000', 'NARBONNE', 458.82, 'MV', 76),
(18, 'Gaffé', 'Dominique', '9 av 1ère Armée Française', '35000', 'RENNES', 213.4, 'PS', 53),
(19, 'Guenon', 'Dominique', '98 bd Mar Lyautey', '44000', 'NANTES', 175.89, 'PH', 52),
(20, 'Prévot', 'Dominique', '29 rue Lucien Nelle', '87000', 'LIMOGES', 151.36, 'PO', 75),
(21, 'Houchard', 'Eliane', '9 rue Demolombe', '49100', 'ANGERS', 436.96, 'MH', 52),
(22, 'Desmons', 'Elisabeth', '51 rue Bernières', '29000', 'QUIMPER', 281.17, 'MV', 53),
(23, 'Flament', 'Elisabeth', '11 rue Pasteur', '35000', 'RENNES', 315.6, 'PS', 53),
(24, 'Goussard', 'Emmanuel', '9 rue Demolombe', '41000', 'BLOIS', 40.72, 'PH', 24),
(25, 'Desprez', 'Eric', '9 rue Vaucelles', '33000', 'BORDEAUX', 406.85, 'PO', 75),
(26, 'Coste', 'Evelyne', '29 rue Lucien Nelle', '19000', 'TULLE', 441.87, 'MH', 75),
(27, 'Lefebvre', 'Frédéric', '2 pl Wurzburg', '55000', 'VERDUN', 573.63, 'MV', 44),
(28, 'Lemée', 'Frédéric', '29 av 6 Juin', '56000', 'VANNES', 326.4, 'PS', 53),
(29, 'Martin', 'Frédéric', 'Bât A 90 rue Bayeux', '70000', 'VESOUL', 506.06, 'PH', 27),
(30, 'Marie', 'Frédérique', '172 rue Caponière', '70000', 'VESOUL', 313.31, 'PO', 27),
(31, 'Rosenstech', 'Geneviève', '27 rue Auvergne', '75000', 'PARIS', 366.82, 'MH', 11),
(32, 'Pontavice', 'Ghislaine', '8 rue Gaillon', '86000', 'POITIERS', 265.58, 'MV', 75),
(33, 'Leveneur-Mosquet', 'Guillaume', '47 av Robert Schuman', '64000', 'PAU', 184.97, 'PS', 75),
(34, 'Blanchais', 'Guy', '30 rue Authie', '8000', 'SEDAN', 502.48, 'PH', 44),
(35, 'Leveneur', 'Hugues', '7 pl St Gilles', '62000', 'ARRAS', 7.39, 'PO', 32),
(36, 'Mosquet', 'Isabelle', '22 rue Jules Verne', '76000', 'ROUEN', 77.1, 'MH', 28),
(37, 'Giraudon', 'Jean-Christophe', '1 rue Albert de Mun', '38100', 'VIENNE', 92.62, 'MV', 84),
(38, 'Marie', 'Jean-Claude', '26 rue Hérouville', '69000', 'LYON', 120.1, 'PS', 84),
(39, 'Maury', 'Jean-François', '5 rue Pierre Girard', '71000', 'CHALON SUR SAONE', 13.73, 'PH', 27),
(40, 'Dennel', 'Jean-Louis', '7 pl St Gilles', '28000', 'CHARTRES', 550.69, 'PO', 24),
(41, 'Ain', 'Jean-Pierre', '4 résid Olympia', '2000', 'LAON', 5.59, 'MH', 32),
(42, 'Chemery', 'Jean-Pierre', '51 pl Ancienne Boucherie', '14000', 'CAEN', 396.58, 'MV', 28),
(43, 'Comoz', 'Jean-Pierre', '35 rue Auguste Lechesne', '18000', 'BOURGES', 340.35, 'PS', 24),
(44, 'Desfaudais', 'Jean-Pierre', '7 pl St Gilles', '29000', 'BREST', 71.76, 'PH', 53),
(45, 'Phan', 'JérÃ´me', '9 rue Clos Caillet', '79000', 'NIORT', 451.61, 'PO', 75),
(46, 'Riou', 'Line', '43 bd Gén Vanier', '77000', 'MARNE LA VALLEE', 193.25, 'MH', 11),
(47, 'Chubilleau', 'Louis', '46 rue Eglise', '17000', 'SAINTES', 202.07, 'MV', 75),
(48, 'Lebrun', 'Lucette', '178 rue Auge', '54000', 'NANCY', 410.41, 'PS', 44),
(49, 'Goessens', 'Marc', '6 av 6 Juin', '39000', 'DOLE', 548.57, 'PH', 27),
(50, 'Laforge', 'Marc', '5 résid Prairie', '50000', 'SAINT LO', 265.05, 'PO', 28),
(51, 'Millereau', 'Marc', '36 av 6 Juin', '72000', 'LA FERTE BERNARD', 430.42, 'MH', 52),
(52, 'Dauverne', 'Marie-Christine', '69 av Charlemagne', '21000', 'DIJON', 281.05, 'MV', 27),
(53, 'Vittorio', 'Myriam', '3 pl Champlain', '94000', 'BOISSY SAINT LEGER', 356.23, 'PS', 11),
(54, 'Lapasset', 'Nhieu', '31 av 6 Juin', '52000', 'CHAUMONT', 107, 'PH', 44),
(55, 'Plantet-Besnier', 'Nicole', '10 av 1ère Armée Française', '86000', 'CHATELLEREAULT', 369.94, 'PO', 75),
(56, 'Chubilleau', 'Pascal', '3 rue Hastings', '15000', 'AURRILLAC', 290.75, 'MH', 84),
(57, 'Robert', 'Pascal', '31 rue St Jean', '93000', 'BOBIGNY', 162.41, 'MV', 11),
(58, 'Jean', 'Pascale', '114 rue Authie', '49100', 'SAUMUR', 375.52, 'PS', 52),
(59, 'Chanteloube', 'Patrice', '14 av Thiès', '13000', 'MARSEILLE', 478.01, 'PH', 93),
(60, 'Lecuirot', 'Patrice', 'résid St Pères 55 rue Pigacière', '54000', 'NANCY', 239.66, 'PO', 44),
(61, 'Gandon', 'Patrick', '47 av Robert Schuman', '37000', 'TOURS', 599.06, 'MH', 24),
(62, 'Mirouf', 'Patrick', '22 rue Puits Picard', '74000', 'ANNECY', 458.42, 'MV', 84),
(63, 'Boireaux', 'Philippe', '14 av Thiès', '10000', 'CHALON EN CHAMPAGNE', 454.48, 'PS', 44),
(64, 'Cendrier', 'Philippe', '7 pl St Gilles', '12000', 'RODEZ', 164.16, 'PH', 76),
(65, 'Duhamel', 'Philippe', '114 rue Authie', '34000', 'MONTPELLIER', 98.62, 'PO', 76),
(66, 'Grigy', 'Philippe', '15 rue Mélingue', '44000', 'CLISSON', 285.1, 'MH', 52),
(67, 'Linard', 'Philippe', '1 rue Albert de Mun', '81000', 'ALBI', 486.3, 'MV', 76),
(68, 'Lozier', 'Philippe', '8 rue Gaillon', '31000', 'TOULOUSE', 48.4, 'PS', 76),
(69, 'Dechâtre', 'Pierre', '63 av Thiès', '23000', 'MONTLUCON', 253.75, 'PH', 75),
(70, 'Goessens', 'Pierre', '22 rue Jean Romain', '40000', 'MONT DE MARSAN', 426.19, 'PO', 75),
(71, 'Leménager', 'Pierre', '39 av 6 Juin', '57000', 'METZ', 118.7, 'MH', 44),
(72, 'Née', 'Pierre', '39 av 6 Juin', '82000', 'MONTAUBAN', 72.54, 'MV', 76),
(73, 'Guyot', 'Pierre-Laurent', '43 bd Gén Vanier', '48000', 'MENDE', 352.31, 'PS', 76),
(74, 'Chauchard', 'Roger', '9 rue Vaucelles', '13000', 'MARSEILLE', 552.19, 'PH', 93),
(75, 'Mabire', 'Roland', '11 rue Boutiques', '67000', 'STRASBOURG', 422.39, 'PO', 44),
(76, 'Leroy', 'Soazig', '45 rue Boutiques', '61000', 'ALENCON', 570.67, 'MH', 28),
(77, 'Guyot', 'Stéphane', '26 rue Hérouville', '46000', 'FIGEAC', 28.85, 'MV', 76),
(78, 'Delposen', 'Sylvain', '39 av 6 Juin', '27000', 'DREUX', 292.01, 'PS', 28),
(79, 'Rault', 'Sylvie', '15 bd Richemond', '2000', 'SOISSON', 526.6, 'PH', 32),
(80, 'Renouf', 'Sylvie', '98 bd Mar Lyautey', '88000', 'EPINAL', 425.24, 'PO', 44),
(81, 'Alliet-Grach', 'Thierry', '14 av Thiès', '7000', 'PRIVAS', 451.31, 'MH', 84),
(82, 'Bayard', 'Thierry', '92 rue Falaise', '42000', 'SAINT ETIENNE', 271.71, 'MV', 84),
(83, 'Gauchet', 'Thierry', '7 rue Desmoueux', '38100', 'GRENOBLE', 406.1, 'PS', 84),
(84, 'Bobichon', 'Tristan', '219 rue Caponière', '9000', 'FOIX', 218.36, 'PH', 76),
(85, 'Duchemin-Laniel', 'Véronique', '130 rue St Jean', '33000', 'LIBOURNE', 265.61, 'PO', 75),
(86, 'Laurent', 'Younès', '34 rue Demolombe', '53000', 'MAYENNE', 496.1, 'MH', 52);

-- --------------------------------------------------------

--
-- Structure de la table `region`
--

CREATE TABLE `region` (
  `rCode` smallint(6) NOT NULL,
  `sCode` varchar(1) NOT NULL,
  `rNom` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `region`
--

INSERT INTO `region` (`rCode`, `sCode`, `rNom`) VALUES
(1, 'P', 'GUADELOUPE'),
(2, 'P', 'MARTINIQUE'),
(3, 'P', 'GUYANE'),
(4, 'P', 'LA REUNION'),
(6, 'P', 'MAYOTTE'),
(11, 'P', 'ILE-DE-FRANCE'),
(24, 'P', 'CENTRE-VAL DE LOIRE'),
(27, 'E', 'BOURGOGNE-FRANCHE-COMTE'),
(28, 'O', 'NORMANDIE'),
(32, 'N', 'HAUTS-DE-FRANCE'),
(44, 'E', 'ALSACE-CHAMPAGNE-ARDENNE-LORRAINE'),
(52, 'O', 'PAYS DE LA LOIRE'),
(53, 'O', 'BRETAGNE'),
(75, 'S', 'AQUITAINE-LIMOUSIN-POITOU-CHARENTES'),
(76, 'S', 'LANGUEDOC-ROUSSILLON-MIDI-PYRENEES'),
(84, 'E', 'AUVERGNE-RHONE-ALPES'),
(93, 'S', 'PROVENCE-ALPES-COTE D\'AZUR'),
(94, 'S', 'CORSE');

-- --------------------------------------------------------

--
-- Structure de la table `secteur`
--

CREATE TABLE `secteur` (
  `sCode` varchar(1) NOT NULL,
  `sLibelle` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `secteur`
--

INSERT INTO `secteur` (`sCode`, `sLibelle`) VALUES
('E', 'Est'),
('N', 'Nord'),
('O', 'Ouest'),
('P', 'Paris centre'),
('S', 'Sud');

-- --------------------------------------------------------

--
-- Structure de la table `typeParametre`
--

CREATE TABLE `typeParametre` (
  `tlId` varchar(7) NOT NULL,
  `tlBooleen` tinyint(1) DEFAULT NULL,
  `tlChoixMultiple` tinyint(1) DEFAULT NULL,
  `tlCumul` tinyint(1) DEFAULT NULL,
  `tlLibelle` varchar(70) DEFAULT NULL,
  `tlTable` varchar(20) DEFAULT NULL,
  `tlChamp` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `typeParametre`
--

INSERT INTO `typeParametre` (`tlId`, `tlBooleen`, `tlChoixMultiple`, `tlCumul`, `tlLibelle`, `tlTable`, `tlChamp`) VALUES
('autreFi', 0, 1, 1, 'Autres financeurs', 'accompagnement', 'acAutreFi'),
('autresC', 0, 1, 1, 'Autres caractéristiques', 'accompagnement', 'acAutresCas'),
('avCreat', 0, 1, 1, 'Situation avant création TI', 'accompagnement', 'acAvCreat'),
('catProf', 0, 1, 1, 'Catégorie Socioprofessionnelle', 'accompagnement', 'acCategSocPro'),
('conv', 0, 1, 1, NULL, NULL, NULL),
('fiMutue', 0, 1, 1, 'Mutuelle partenaire', 'accompagnement', 'acFiMutuelle'),
('grpAct', 0, 1, 1, 'groupe d\'activité', 'intervention', 'iGrpActiv'),
('modeInt', 0, 1, 1, 'mode d\'intervention', 'intervention', 'iMode'),
('motifEn', 0, 1, 1, 'motif d\'entrée', 'accompagnement', 'acMotifEntree'),
('motifSo', 0, 1, 1, 'motif de sortie', 'accompagnement', 'acMotifSortie'),
('mutuell', 0, 1, 1, 'mutuelle', 'accompagnement', 'acMutuelle'),
('nivEtud', 0, 1, 1, 'niveau d\'étude', 'accompagnement', 'acNivEtude'),
('nomPays', 0, 1, 1, 'Nom du pays', 'usager', 'uPaysNaissance'),
('orgConv', 0, 1, 1, 'organisme conventionné', 'accompagnement', 'acOrgConv'),
('parcour', 0, 1, 1, 'type de parcours', 'engagement', 'ceParcoursPropose'),
('regFisc', 0, 1, 1, 'régime fiscal', 'accompagnement', 'acRegFisc'),
('secteur', 0, 1, 1, 'secteur (localisation de l\'usager)', 'usager', 'uSecteur'),
('sexe', 1, 1, 1, 'sexe', 'usager', 'uHomme'),
('sitFami', 0, 1, 1, 'situation de famille', 'accompagnement', 'acSitFami'),
('staEmpl', 0, 1, 1, 'Statut sur le marché de l\'emploi', 'accompagnement', 'acStaEmpl'),
('statAgt', 0, 1, 1, 'statut de l\'agent ou du partenaire', 'agent', 'agStatut'),
('statJur', 0, 1, 1, 'statut juridique', 'accompagnement', 'acStrucJur'),
('statutV', NULL, NULL, NULL, 'statut de l\'utilisateur', NULL, NULL),
('suivi', 0, 1, 1, 'suivi de l\'usager', 'usager', 'uSuivi'),
('tranAge', 0, 0, 1, 'tranche d\'age', 'usager', 'uDateNaissance'),
('typeCer', 0, 1, 1, 'Type de contrat d\'engagement réciproque', 'engagement', 'ceType'),
('typeVis', NULL, NULL, NULL, 'motif de la visite', NULL, NULL),
('vulnera', 0, 1, 1, 'personne vulnérable', 'usager', 'uVulnerable');

-- --------------------------------------------------------

--
-- Structure de la table `typePraticien`
--

CREATE TABLE `typePraticien` (
  `tCode` varchar(2) NOT NULL,
  `tLibelle` varchar(31) DEFAULT NULL,
  `tLieu` varchar(31) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `typePraticien`
--

INSERT INTO `typePraticien` (`tCode`, `tLibelle`, `tLieu`) VALUES
('MH', 'Médecin Hospitalier', 'Hopital ou clinique'),
('MV', 'Médecine de Ville', 'Cabinet'),
('PH', 'Pharmacien Hospitalier', 'Hopital ou clinique'),
('PO', 'Pharmacien Officine', 'Pharmacie'),
('PS', 'Personnel de santé', 'Centre paramédical');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `uId` varchar(4) NOT NULL,
  `uNom` varchar(25) DEFAULT NULL,
  `uPrenom` varchar(25) DEFAULT NULL,
  `uLogin` varchar(12) DEFAULT NULL,
  `uMdp` varchar(12) DEFAULT NULL,
  `uAdresse` varchar(50) DEFAULT NULL,
  `uCP` varchar(5) DEFAULT NULL,
  `uVille` varchar(32) DEFAULT NULL,
  `uDateEmbauche` datetime DEFAULT NULL,
  `uSecteur` varchar(1) DEFAULT NULL,
  `uLabo` varchar(2) NOT NULL,
  `uStatut` varchar(1) DEFAULT NULL,
  `uPuissance` varchar(20) DEFAULT NULL,
  `uMotorisation` varchar(20) DEFAULT NULL,
  `region` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `utilisateur`
--

INSERT INTO `utilisateur` (`uId`, `uNom`, `uPrenom`, `uLogin`, `uMdp`, `uAdresse`, `uCP`, `uVille`, `uDateEmbauche`, `uSecteur`, `uLabo`, `uStatut`, `uPuissance`, `uMotorisation`, `region`) VALUES
('a131', 'Villechalane', 'Louis', 'vl', 'vl', '8 cours Lafontaine', '29000', 'BREST', '1992-12-11 00:00:00', NULL, 'SW', 'V', 'jusqu\'à 4CV', 'diesel', 53),
('a17', 'Andre', 'David', 'ad', 'ad', '1 rue Aimon de Chissée', '38100', 'GRENOBLE', '1991-08-26 00:00:00', NULL, 'GY', 'V', 'jusqu\'à 4CV', 'diesel', 84),
('a55', 'Bedos', 'Christian', 'bc', 'bc', '1 rue Bénédictins', '65000', 'TARBES', '1987-07-17 00:00:00', NULL, 'GY', 'V', 'jusqu\'à 4CV', 'diesel', 76),
('a93', 'Tusseau', 'Louis', 'tl', 'tl', '22 rue Renou', '86000', 'POITIERS', '1999-01-02 00:00:00', NULL, 'SW', 'V', 'jusqu\'à 4CV', 'diesel', 75),
('b13', 'Bentot', 'Aline', 'ba', 'ba', '11 av 6 Juin', '67000', 'STRASBOURG', '1996-03-11 00:00:00', NULL, 'GY', 'V', 'jusqu\'à 4CV', 'diesel', 44),
('b16', 'Bioret', 'Luc', 'bl', 'bl', '1 rue Linne', '35000', 'RENNES', '1997-03-21 00:00:00', NULL, 'SW', 'V', 'jusqu\'à 4CV', 'essence', 53),
('b19', 'Bunisset', 'Francis', 'bf', 'bf', '10 rue Nicolas Chorier', '85000', 'LA ROCHE SUR YON', '1999-01-31 00:00:00', NULL, 'GY', 'V', '5 CV et au-delà', 'essence', 52),
('b25', 'Bunisset', 'Denise', 'bd', 'bd', '1 rue Lionne', '49100', 'ANGERS', '1994-07-03 00:00:00', NULL, 'SW', 'V', '5 CV et au-delà', 'diesel', 52),
('b28', 'Cacheux', 'Bernard', 'cb', 'cb', '114 rue Authie', '34000', 'MONTPELLIER', '2000-08-02 00:00:00', NULL, 'GY', 'V', 'jusqu\'à 4CV', 'diesel', 76),
('b34', 'Cadic', 'Eric', 'ce', 'ce', '123 rue Caponière', '41000', 'BLOIS', '1993-12-06 00:00:00', 'P', 'SW', 'V', 'jusqu\'à 4CV', 'essence', 24),
('b4', 'Charoze', 'Lucile', 'cl', 'cl', '100 pl Géants', '33000', 'BORDEAUX', '1997-09-25 00:00:00', NULL, 'SW', 'V', 'jusqu\'à 4CV', 'diesel', 75),
('b50', 'Clepkens', 'Christophe', 'cc', 'cc', '12 rue Fédérico Garcia Lorca', '13000', 'MARSEILLE', '1998-01-18 00:00:00', NULL, 'SW', 'V', 'jusqu\'à 4CV', 'diesel', 93),
('b59', 'Cottin', 'Vincenne', 'cv', 'cv', '36 sq Capucins', '5000', 'GAP', '1995-10-21 00:00:00', NULL, 'GY', 'V', '5 CV et au-delà', 'diesel', 93),
('bp', 'Blain', 'Pascal', 'bp', 'bp', 'Rue du Mortier', NULL, 'MENOTEY', '2012-12-12 00:00:00', NULL, 'SW', 'C', 'jusqu\'à 4CV', 'diesel', 27),
('c14', 'Daburon', 'Louis', 'dl', 'dl', '13 rue Champs Elysées', '6000', 'NICE', '1989-02-01 00:00:00', 'S', 'SW', 'V', 'jusqu\'à 4CV', 'diesel', 93),
('c3', 'De', 'Philippe', 'dp', 'dp', '13 rue Charles Peguy', '10000', 'TROYES', '1992-05-05 00:00:00', NULL, 'SW', 'V', 'jusqu\'à 4CV', 'diesel', 44),
('c54', 'Debelle', 'Michel', 'dm', 'dm', '181 rue Caponière', '88000', 'EPINAL', '1991-04-09 00:00:00', NULL, 'SW', 'V', 'jusqu\'à 4CV', 'essence', 44),
('d13', 'Debelle', 'Jeanne', 'dj', 'dj', '134 rue Stalingrad', '44000', 'NANTES', '1991-12-05 00:00:00', NULL, 'SW', 'V', 'jusqu\'à 4CV', 'diesel', 52),
('d51', 'Debroise', 'Odon', 'do', 'do', '2 av 6 Juin', '70000', 'VESOUL', '1997-11-18 00:00:00', 'E', 'GY', 'V', '5 CV et au-delà', 'diesel', 27),
('e22', 'Desmarquest', 'Nathalie', 'dn', 'dn', '14 rue Fédérico Garcia Lorca', '54000', 'NANCY', '1989-03-24 00:00:00', NULL, 'GY', 'V', 'jusqu\'à 4CV', 'diesel', 44),
('e24', 'Desnost', 'Robert', 'dr', 'dr', '16 rue Barral de Montferrat', '55000', 'VERDUN', '1993-05-17 00:00:00', 'E', 'SW', 'V', '5 CV et au-delà', 'diesel', 44),
('e39', 'Dudouit', 'Frédéric', 'df', 'df', '18 quai Xavier Jouvin', '75000', 'PARIS', '1988-04-26 00:00:00', NULL, 'GY', 'V', 'jusqu\'à 4CV', 'diesel', 11),
('e49', 'Duncombe', 'Claude', 'dc', 'dc', '19 av Alsace Lorraine', '9000', 'FOIX', '1996-02-19 00:00:00', NULL, 'GY', 'V', '5 CV et au-delà', 'diesel', 76),
('e5', 'Enault-Pascreau', 'Céline', 'ec', 'ec', '25B rue Stalingrad', '40000', 'MONT DE MARSAN', '1990-11-27 00:00:00', 'S', 'GY', 'V', '5 CV et au-delà', 'diesel', 75),
('e52', 'Eynde', 'Valérie', 'ev', 'ev', '3 rue Henri Moissan', '76000', 'ROUEN', '1991-10-31 00:00:00', NULL, 'GY', 'V', '5 CV et au-delà', 'essence', 28),
('f21', 'Finck', 'Jacques', 'fj', 'fj', 'rte Montreuil Bellay', '74000', 'ANNECY', '1993-06-08 00:00:00', NULL, 'SW', 'V', '5 CV et au-delà', 'diesel', 84),
('f39', 'Frémont', 'Fernande', 'ff', 'ff', '4 rue Jean Giono', '69000', 'LYON', '1997-02-15 00:00:00', NULL, 'GY', 'V', 'jusqu\'à 4CV', 'diesel', 84),
('f4', 'Gest', 'Alain', 'ga', 'ga', '30 rue Authie', '46000', 'FIGEAC', '1994-05-03 00:00:00', NULL, 'GY', 'V', '5 CV et au-delà', 'essence', 76),
('g19', 'Gheysen', 'Galassus', 'gg', 'gg', '32 bd Mar Foch', '75000', 'PARIS', '1996-01-18 00:00:00', NULL, 'SW', 'V', 'jusqu\'à 4CV', 'diesel', 11),
('g30', 'Girard', 'Yvon', 'gy', 'gy', '31 av 6 Juin', '80000', 'AMIENS', '1999-03-27 00:00:00', 'N', 'GY', 'V', 'jusqu\'à 4CV', 'diesel', 32),
('g53', 'Gombert', 'Luc', 'gl', 'gl', '32 rue Emile Gueymard', '56000', 'VANNES', '1985-10-02 00:00:00', NULL, 'GY', 'V', 'jusqu\'à 4CV', 'diesel', 53),
('g7', 'Guindon', 'Caroline', 'gc', 'gc', '40 rue Mar Montgomery', '87000', 'LIMOGES', '1996-01-13 00:00:00', NULL, 'GY', 'V', 'jusqu\'à 4CV', 'diesel', 75),
('h13', 'Guindon', 'François', 'gf', 'gf', '44 rue Picotière', '19000', 'TULLE', '1993-05-08 00:00:00', NULL, 'SW', 'V', 'jusqu\'à 4CV', 'diesel', 75),
('h30', 'Igigabel', 'Guy', 'ig', 'ig', '33 gal Arlequin', '94000', 'CRETEIL', '1998-04-26 00:00:00', NULL, 'SW', 'V', 'jusqu\'à 4CV', 'essence', 11),
('h35', 'Jourdren', 'Jacques', 'jj', 'jj', '34 av Jean Perrot', '15000', 'AURRILLAC', '1993-08-26 00:00:00', NULL, 'GY', 'V', '5 CV et au-delà', 'essence', 84),
('h40', 'Juttard', 'Pierre-Raoul', 'jp', 'jp', '34 cours Jean Jaurès', '8000', 'SEDAN', '1992-11-01 00:00:00', NULL, 'GY', 'V', '5 CV et au-delà', 'diesel', 44),
('j45', 'Labouré-Morel', 'Imane', 'li', 'li', '38 cours Berriat', '52000', 'CHAUMONT', '1998-02-25 00:00:00', 'N', 'SW', 'V', 'jusqu\'à 4CV', 'diesel', 44),
('j50', 'Landré', 'Philippe', 'lp', 'lp', '4 av Gén Laperrine', '59000', 'LILLE', '1992-12-16 00:00:00', NULL, 'GY', 'V', 'jusqu\'à 4CV', 'essence', 32),
('j8', 'Langeard', 'Hugues', 'lh', 'lh', '39 av Jean Perrot', '93000', 'BAGNOLET', '1998-06-18 00:00:00', 'P', 'GY', 'V', 'jusqu\'à 4CV', 'diesel', 11),
('k4', 'Lanne', 'Bernard', 'lb', 'lb', '4 rue Bayeux', '30000', 'NIMES', '1996-11-21 00:00:00', NULL, 'SW', 'V', 'jusqu\'à 4CV', 'diesel', 76),
('k53', 'Le', 'Noël', 'ln', 'ln', '4 av Beauvert', '68000', 'MULHOUSE', '1983-03-23 00:00:00', NULL, 'SW', 'V', '5 CV et au-delà', 'diesel', 44),
('l14', 'Le', 'Rémi', 'lr', 'lr', '39 rue Raspail', '53000', 'LAVAL', '1995-02-02 00:00:00', NULL, 'SW', 'V', 'jusqu\'à 4CV', 'diesel', 52),
('l23', 'Leclercq', 'Toinette', 'lt', 'lt', '11 rue Quinconce', '18000', 'BOURGES', '1995-06-05 00:00:00', NULL, 'SW', 'V', 'jusqu\'à 4CV', 'diesel', 24),
('l46', 'Lecornu', 'Jean-Bernard', 'lj', 'lj', '4 bd Mar Foch', '72000', 'LA FERTE BERNARD', '1997-01-24 00:00:00', NULL, 'GY', 'V', 'jusqu\'à 4CV', 'essence', 52),
('l56', 'Lecornu', 'Ludovic', 'll', 'll', '4 rue Abel Servien', '25000', 'BESANCON', '1996-02-27 00:00:00', NULL, 'SW', 'V', 'jusqu\'à 4CV', 'diesel', 27),
('m35', 'Lejard', 'Agnès', 'la', 'la', '4 rue Anthoard', '82000', 'MONTAUBAN', '1987-10-06 00:00:00', NULL, 'SW', 'V', '5 CV et au-delà', 'diesel', 76),
('m45', 'Lesaulnier', 'Charlotte', 'lc', 'lc', '47 rue Thiers', '57000', 'METZ', '1990-10-13 00:00:00', NULL, 'SW', 'V', 'jusqu\'à 4CV', 'diesel', 44),
('n42', 'Letessier', 'Stéphane', 'ls', 'ls', '5 chem Capuche', '27000', 'EVREUX', '1996-03-06 00:00:00', NULL, 'GY', 'V', '5 CV et au-delà', 'diesel', 28),
('n58', 'Loirat', 'Didier', 'ld', 'ld', 'Les Pêchers cité Bourg la Croix', '45000', 'ORLEANS', '1992-08-30 00:00:00', NULL, 'GY', 'V', 'jusqu\'à 4CV', 'diesel', 24),
('n59', 'Maffezzoli', 'Thibaud', 'mt', 'mt', '5 rue Chateaubriand', '2000', 'LAON', '1994-12-19 00:00:00', NULL, 'SW', 'V', '5 CV et au-delà', 'diesel', 32),
('o26', 'Mancini', 'Anne', 'ma', 'ma', '5 rue D’Agier', '48000', 'MENDE', '1995-01-05 00:00:00', NULL, 'GY', 'V', '5 CV et au-delà', 'diesel', 76),
('p32', 'Marcouiller', 'Gérard', 'mg', 'mg', '7 pl St Gilles', '91000', 'ISSY LES MOULINEAUX', '1992-12-24 00:00:00', NULL, 'GY', 'V', '5 CV et au-delà', 'essence', 11),
('p40', 'Michel', 'Jean-Claude', 'mj', 'mj', '5 rue Gabriel Péri', '61000', 'FLERS', '1992-12-14 00:00:00', 'O', 'SW', 'V', '5 CV et au-delà', 'diesel', 28),
('p41', 'Montecot', 'Françoise', 'mf', 'mf', '6 rue Paul Valéry', '17000', 'SAINTES', '1998-07-27 00:00:00', NULL, 'GY', 'V', 'jusqu\'à 4CV', 'diesel', 75),
('p42', 'Notini', 'Veronique', 'nv', 'nv', '5 rue Lieut Chabal', '60000', 'BEAUVAIS', '1994-12-12 00:00:00', NULL, 'SW', 'V', '5 CV et au-delà', 'essence', 32),
('p49', 'Onfroy', 'Den', 'od', 'od', '5 rue Sidonie Jacolin', '37000', 'TOURS', '1977-10-03 00:00:00', NULL, 'GY', 'V', 'jusqu\'à 4CV', 'diesel', 24),
('p6', 'Pascreau', 'Bernard', 'pb', 'pb', '57 bd Mar Foch', '64000', 'PAU', '1997-03-30 00:00:00', NULL, 'SW', 'V', 'jusqu\'à 4CV', 'diesel', 75),
('p7', 'Pernot', 'Claude-Noël', 'pc', 'pc', '6 rue Alexandre 1 de Yougoslavie', '11000', 'NARBONNE', '1990-03-01 00:00:00', NULL, 'SW', 'V', 'jusqu\'à 4CV', 'diesel', 76),
('p8', 'Perrier', 'Maître', 'pm', 'pm', '6 rue Aubert Dubayet', '71000', 'CHALON SUR SAONE', '1991-06-23 00:00:00', NULL, 'GY', 'V', 'jusqu\'à 4CV', 'diesel', 27),
('q17', 'Petit', 'Jean-Louis', 'pj', 'pj', '7 rue Ernest Renan', '50000', 'SAINT LO', '1997-09-06 00:00:00', NULL, 'GY', 'V', 'jusqu\'à 4CV', 'diesel', 28),
('r24', 'Piquery', 'Patrick', 'pp', 'pp', '9 rue Vaucelles', '14000', 'CAEN', '1984-07-29 00:00:00', 'O', 'GY', 'V', 'jusqu\'à 4CV', 'essence', 28),
('r58', 'Quiquandon', 'Joël', 'qj', 'qj', '7 rue Ernest Renan', '29000', 'QUIMPER', '1990-06-30 00:00:00', NULL, 'GY', 'V', '5 CV et au-delà', 'essence', 53),
('s10', 'Retailleau', 'Josselin', 'rj', 'rj', '88Bis rue Saumuroise', '39000', 'DOLE', '1995-11-14 00:00:00', NULL, 'SW', 'V', '5 CV et au-delà', 'diesel', 27),
('s21', 'Retailleau', 'Pascal', 'rp', 'rp', '32 bd Ayrault', '23000', 'MONTLUCON', '1992-09-25 00:00:00', NULL, 'SW', 'V', 'jusqu\'à 4CV', 'diesel', 75),
('t43', 'Souron', 'Maryse', 'sm', 'sm', '7B rue Gay Lussac', '21000', 'DIJON', '1995-03-09 00:00:00', NULL, 'SW', 'V', 'jusqu\'à 4CV', 'essence', 27),
('t47', 'Tiphagne', 'Patrick', 'tp', 'tp', '7B rue Gay Lussac', '62000', 'ARRAS', '1997-08-29 00:00:00', NULL, 'SW', 'V', 'jusqu\'à 4CV', 'diesel', 32),
('t55', 'Tréhet', 'Alain', 'ta', 'ta', '7D chem Barral', '12000', 'RODEZ', '1994-11-29 00:00:00', NULL, 'SW', 'V', 'jusqu\'à 4CV', 'diesel', 76),
('t60', 'Tusseau', 'Josselin', 'tj', 'tj', '63 rue Bon Repos', '28000', 'CHARTRES', '1991-03-29 00:00:00', NULL, 'GY', 'V', '5 CV et au-delà', 'diesel', 24);

-- --------------------------------------------------------

--
-- Structure de la table `visite`
--

CREATE TABLE `visite` (
  `uId` varchar(4) NOT NULL,
  `vNum` smallint(6) NOT NULL,
  `pNum` int(11) NOT NULL,
  `vDate` datetime DEFAULT NULL,
  `vRapport` varchar(255) DEFAULT NULL,
  `vMotif` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `visite`
--

INSERT INTO `visite` (`uId`, `vNum`, `pNum`, `vDate`, `vRapport`, `vMotif`) VALUES
('a131', 1, 22, '2016-02-15 00:00:00', 'RAS.', 'Actualisation annuelle'),
('a131', 2, 22, '2016-03-25 00:00:00', 'à recontacter pour réunion', 'Actualisation annuelle'),
('a131', 3, 41, '2017-03-23 00:00:00', 'RAS. Changement de tel : 05 89 89 89 89', 'Rapport Annuel'),
('a131', 4, 23, '2017-04-18 00:00:00', 'Médecin curieux, à recontacter en décembre pour réunion', 'Actualisation annuelle'),
('a17', 1, 37, '2016-02-03 00:00:00', 'à recontacter pour réunion', 'Actualisation annuelle'),
('a17', 2, 83, '2016-02-21 00:00:00', 'à recontacter pour réunion', 'Actualisation annuelle'),
('a17', 3, 37, '2016-02-24 00:00:00', 'RAS.', 'Actualisation annuelle'),
('a17', 4, 82, '2016-03-04 00:00:00', 'RAS.', 'Actualisation annuelle'),
('a17', 5, 83, '2016-03-20 00:00:00', 'RAS.', 'Actualisation annuelle'),
('a17', 6, 82, '2016-03-25 00:00:00', 'RAS.', 'Actualisation annuelle'),
('a17', 7, 4, '2017-05-21 00:00:00', 'Changement de direction, redéfinition de la politique médicamenteuse, recours au générique', 'Baisse activité'),
('a55', 1, 9, '2016-01-03 00:00:00', 'RAS.', 'Actualisation annuelle'),
('a55', 2, 67, '2016-01-03 00:00:00', 'RAS.', 'Actualisation annuelle'),
('a55', 3, 9, '2016-01-12 00:00:00', 'RAS.', 'Actualisation annuelle'),
('a55', 4, 72, '2016-02-18 00:00:00', 'RAS.', 'Actualisation annuelle'),
('a55', 5, 72, '2016-03-02 00:00:00', 'RAS.', 'Actualisation annuelle'),
('a55', 6, 67, '2016-03-08 00:00:00', 'à recontacter pour réunion', 'Actualisation annuelle'),
('a93', 1, 25, '2016-01-28 00:00:00', 'à recontacter pour réunion', 'Actualisation annuelle'),
('a93', 2, 26, '2016-02-05 00:00:00', 'RAS.', 'Actualisation annuelle'),
('a93', 3, 26, '2016-02-11 00:00:00', 'RAS.', 'Actualisation annuelle'),
('a93', 4, 47, '2016-02-15 00:00:00', 'RAS.', 'Actualisation annuelle'),
('a93', 5, 47, '2016-03-08 00:00:00', 'RAS.', 'Actualisation annuelle'),
('a93', 6, 25, '2016-03-10 00:00:00', 'à recontacter pour réunion', 'Actualisation annuelle'),
('b13', 1, 8, '2016-01-16 00:00:00', 'RAS.', 'Actualisation annuelle'),
('b13', 2, 8, '2016-02-21 00:00:00', 'RAS.', 'Actualisation annuelle'),
('b13', 3, 75, '2016-02-29 00:00:00', 'RAS.', 'Actualisation annuelle'),
('b13', 4, 75, '2016-04-02 00:00:00', 'RAS.', 'Actualisation annuelle'),
('b16', 1, 23, '2016-01-13 00:00:00', 'RAS.', 'Actualisation annuelle'),
('b16', 2, 23, '2016-01-13 00:00:00', 'RAS.', 'Actualisation annuelle'),
('b16', 3, 7, '2016-02-10 00:00:00', 'RAS.', 'Actualisation annuelle'),
('b16', 4, 18, '2016-02-28 00:00:00', 'RAS.', 'Actualisation annuelle'),
('b16', 5, 7, '2016-04-04 00:00:00', 'RAS.', 'Actualisation annuelle'),
('b16', 6, 18, '2016-04-05 00:00:00', 'RAS.', 'Actualisation annuelle'),
('b19', 1, 52, '2016-03-20 00:00:00', 'RAS.', 'Actualisation annuelle'),
('b25', 1, 19, '2016-01-10 00:00:00', 'RAS.', 'Actualisation annuelle'),
('b25', 2, 58, '2016-01-17 00:00:00', 'RAS.', 'Actualisation annuelle'),
('b25', 3, 86, '2016-02-11 00:00:00', 'RAS.', 'Actualisation annuelle'),
('b25', 4, 58, '2016-02-18 00:00:00', 'RAS.', 'Actualisation annuelle'),
('b25', 5, 19, '2016-02-22 00:00:00', 'RAS.', 'Actualisation annuelle'),
('b25', 6, 66, '2016-03-20 00:00:00', 'RAS.', 'Actualisation annuelle'),
('b25', 7, 86, '2016-03-21 00:00:00', 'RAS.', 'Actualisation annuelle'),
('b25', 8, 1, '2016-03-22 00:00:00', 'RAS.', 'Actualisation annuelle'),
('b25', 9, 1, '2016-03-22 00:00:00', 'RAS.', 'Actualisation annuelle'),
('b25', 10, 66, '2016-04-04 00:00:00', 'RAS.', 'Actualisation annuelle'),
('b28', 1, 77, '2016-01-16 00:00:00', 'RAS.', 'Actualisation annuelle'),
('b28', 2, 64, '2016-01-22 00:00:00', 'RAS.', 'Actualisation annuelle'),
('b28', 3, 17, '2016-01-31 00:00:00', 'RAS.', 'Actualisation annuelle'),
('b28', 4, 77, '2016-02-24 00:00:00', 'RAS.', 'Actualisation annuelle'),
('b28', 5, 17, '2016-03-06 00:00:00', 'RAS.', 'Actualisation annuelle'),
('b28', 6, 64, '2016-03-19 00:00:00', 'à recontacter pour réunion', 'Actualisation annuelle'),
('b34', 1, 24, '2016-01-30 00:00:00', 'RAS.', 'Actualisation annuelle'),
('b34', 2, 40, '2016-02-27 00:00:00', 'à recontacter pour réunion', 'Actualisation annuelle'),
('b34', 3, 24, '2016-03-03 00:00:00', 'RAS.', 'Actualisation annuelle'),
('b34', 4, 40, '2016-03-10 00:00:00', 'RAS.', 'Actualisation annuelle'),
('b4', 1, 85, '2016-01-23 00:00:00', 'RAS.', 'Actualisation annuelle'),
('b4', 2, 32, '2016-02-08 00:00:00', 'RAS.', 'Actualisation annuelle'),
('b4', 3, 85, '2016-02-24 00:00:00', 'RAS.', 'Actualisation annuelle'),
('b4', 4, 32, '2016-03-07 00:00:00', 'RAS.', 'Actualisation annuelle'),
('b50', 1, 16, '2016-02-12 00:00:00', 'à recontacter pour réunion', 'Actualisation annuelle'),
('b50', 2, 16, '2016-03-19 00:00:00', 'RAS.', 'Actualisation annuelle'),
('b59', 1, 53, '2016-02-15 00:00:00', 'RAS.', 'Actualisation annuelle'),
('bp', 1, 3, '2016-01-17 00:00:00', 'RAS.', 'Actualisation annuelle'),
('bp', 2, 52, '2016-01-22 00:00:00', 'RAS.', 'Actualisation annuelle'),
('bp', 3, 30, '2016-02-08 00:00:00', 'RAS.', 'Actualisation annuelle'),
('bp', 4, 52, '2016-02-18 00:00:00', 'RAS.', 'Actualisation annuelle'),
('bp', 5, 30, '2016-02-26 00:00:00', 'RAS.', 'Actualisation annuelle'),
('bp', 6, 3, '2016-03-25 00:00:00', 'RAS.', 'Actualisation annuelle'),
('c14', 1, 74, '2016-01-08 00:00:00', 'RAS.', 'Actualisation annuelle'),
('c14', 2, 59, '2016-01-10 00:00:00', 'RAS.', 'Actualisation annuelle'),
('c14', 3, 15, '2016-02-12 00:00:00', 'RAS.', 'Actualisation annuelle'),
('c14', 4, 74, '2016-03-04 00:00:00', 'RAS.', 'Actualisation annuelle'),
('c14', 5, 15, '2016-03-19 00:00:00', 'RAS.', 'Actualisation annuelle'),
('c14', 6, 59, '2016-03-27 00:00:00', 'RAS.', 'Actualisation annuelle'),
('c3', 1, 80, '2016-01-03 00:00:00', 'à recontacter pour réunion', 'Actualisation annuelle'),
('c3', 2, 80, '2016-01-06 00:00:00', 'RAS.', 'Actualisation annuelle'),
('c3', 3, 34, '2016-01-16 00:00:00', 'RAS.', 'Actualisation annuelle'),
('c3', 4, 12, '2016-01-30 00:00:00', 'RAS.', 'Actualisation annuelle'),
('c3', 5, 11, '2016-02-06 00:00:00', 'à recontacter pour réunion', 'Actualisation annuelle'),
('c3', 6, 71, '2016-02-08 00:00:00', 'RAS.', 'Actualisation annuelle'),
('c3', 7, 34, '2016-02-20 00:00:00', 'à recontacter pour réunion', 'Actualisation annuelle'),
('c3', 8, 11, '2016-02-26 00:00:00', 'RAS.', 'Actualisation annuelle'),
('c3', 9, 12, '2016-03-05 00:00:00', 'RAS.', 'Actualisation annuelle'),
('c3', 10, 54, '2016-03-11 00:00:00', 'RAS.', 'Actualisation annuelle'),
('c3', 11, 71, '2016-03-17 00:00:00', 'RAS.', 'Actualisation annuelle'),
('c3', 12, 54, '2016-03-27 00:00:00', 'RAS.', 'Actualisation annuelle'),
('c54', 1, 48, '2016-01-17 00:00:00', 'RAS.', 'Actualisation annuelle'),
('c54', 2, 60, '2016-01-24 00:00:00', 'RAS.', 'Actualisation annuelle'),
('c54', 3, 60, '2016-02-01 00:00:00', 'RAS.', 'Actualisation annuelle'),
('c54', 4, 27, '2016-02-06 00:00:00', 'RAS.', 'Actualisation annuelle'),
('c54', 5, 48, '2016-02-16 00:00:00', 'RAS.', 'Actualisation annuelle'),
('c54', 6, 63, '2016-02-19 00:00:00', 'RAS.', 'Actualisation annuelle'),
('c54', 7, 27, '2016-03-03 00:00:00', 'RAS.', 'Actualisation annuelle'),
('c54', 8, 63, '2016-03-12 00:00:00', 'RAS.', 'Actualisation annuelle'),
('d13', 1, 21, '2016-01-16 00:00:00', 'RAS.', 'Actualisation annuelle'),
('d13', 2, 51, '2016-03-03 00:00:00', 'RAS.', 'Actualisation annuelle'),
('d13', 3, 21, '2016-03-09 00:00:00', 'RAS.', 'Actualisation annuelle'),
('d13', 4, 51, '2016-03-14 00:00:00', 'RAS.', 'Actualisation annuelle'),
('d51', 1, 39, '2016-01-05 00:00:00', 'à recontacter pour réunion', 'Actualisation annuelle'),
('d51', 2, 39, '2016-01-22 00:00:00', 'RAS.', 'Actualisation annuelle'),
('e22', 1, 54, '2016-02-21 00:00:00', 'RAS.', 'Actualisation annuelle'),
('e24', 1, 55, '2016-02-02 00:00:00', 'RAS.', 'Actualisation annuelle'),
('e39', 1, 57, '2016-01-02 00:00:00', 'Médecin curieux, à recontacter pour réunion', 'Actualisation annuelle'),
('e39', 2, 53, '2016-01-06 00:00:00', 'RAS.', 'Actualisation annuelle'),
('e39', 3, 57, '2016-02-23 00:00:00', 'RAS.', 'Actualisation annuelle'),
('e39', 4, 53, '2016-02-28 00:00:00', 'RAS.', 'Actualisation annuelle'),
('e49', 1, 68, '2016-01-04 00:00:00', 'RAS.', 'Actualisation annuelle'),
('e49', 2, 5, '2016-01-10 00:00:00', 'RAS.', 'Actualisation annuelle'),
('e49', 3, 65, '2016-01-12 00:00:00', 'RAS.', 'Actualisation annuelle'),
('e49', 4, 84, '2016-01-18 00:00:00', 'RAS.', 'Actualisation annuelle'),
('e49', 5, 65, '2016-01-18 00:00:00', 'RAS.', 'Actualisation annuelle'),
('e49', 6, 84, '2016-01-25 00:00:00', 'RAS.', 'Actualisation annuelle'),
('e49', 7, 73, '2016-01-27 00:00:00', 'RAS.', 'Actualisation annuelle'),
('e49', 8, 5, '2016-02-02 00:00:00', 'RAS.', 'Actualisation annuelle'),
('e49', 9, 73, '2016-03-08 00:00:00', 'RAS.', 'Actualisation annuelle'),
('e49', 10, 68, '2016-03-22 00:00:00', 'RAS.', 'Actualisation annuelle'),
('e5', 1, 70, '2016-01-05 00:00:00', 'RAS.', 'Actualisation annuelle'),
('e5', 2, 45, '2016-01-14 00:00:00', 'RAS.', 'Actualisation annuelle'),
('e5', 3, 33, '2016-01-16 00:00:00', 'RAS.', 'Actualisation annuelle'),
('e5', 4, 20, '2016-01-17 00:00:00', 'RAS.', 'Actualisation annuelle'),
('e5', 5, 70, '2016-01-22 00:00:00', 'RAS.', 'Actualisation annuelle'),
('e5', 6, 69, '2016-01-25 00:00:00', 'à recontacter pour réunion', 'Actualisation annuelle'),
('e5', 7, 33, '2016-01-30 00:00:00', 'RAS.', 'Actualisation annuelle'),
('e5', 8, 69, '2016-02-06 00:00:00', 'RAS.', 'Actualisation annuelle'),
('e5', 9, 45, '2016-02-18 00:00:00', 'RAS.', 'Actualisation annuelle'),
('e5', 10, 20, '2016-02-22 00:00:00', 'RAS.', 'Actualisation annuelle'),
('e5', 11, 55, '2016-02-29 00:00:00', 'RAS.', 'Actualisation annuelle'),
('e5', 12, 55, '2016-03-18 00:00:00', 'RAS.', 'Actualisation annuelle'),
('e52', 1, 36, '2016-01-26 00:00:00', 'RAS.', 'Actualisation annuelle'),
('e52', 2, 78, '2016-02-01 00:00:00', 'RAS.', 'Actualisation annuelle'),
('e52', 3, 36, '2016-02-10 00:00:00', 'RAS.', 'Actualisation annuelle'),
('e52', 4, 78, '2016-02-21 00:00:00', 'RAS.', 'Actualisation annuelle'),
('f21', 1, 81, '2016-01-10 00:00:00', 'RAS.', 'Actualisation annuelle'),
('f21', 2, 81, '2016-02-11 00:00:00', 'RAS.', 'Actualisation annuelle'),
('f39', 1, 62, '2016-02-13 00:00:00', 'RAS.', 'Actualisation annuelle'),
('f39', 2, 38, '2016-02-18 00:00:00', 'RAS.', 'Actualisation annuelle'),
('f39', 3, 56, '2016-03-05 00:00:00', 'RAS.', 'Actualisation annuelle'),
('f39', 4, 38, '2016-03-20 00:00:00', 'RAS.', 'Actualisation annuelle'),
('f39', 5, 56, '2016-03-25 00:00:00', 'RAS.', 'Actualisation annuelle'),
('f39', 6, 62, '2016-04-01 00:00:00', 'RAS.', 'Actualisation annuelle'),
('f4', 1, 56, '2016-04-08 00:00:00', 'RAS.', 'Actualisation annuelle'),
('g19', 1, 31, '2016-01-24 00:00:00', 'RAS.', 'Actualisation annuelle'),
('g19', 2, 46, '2016-02-10 00:00:00', 'RAS.', 'Actualisation annuelle'),
('g19', 3, 46, '2016-02-16 00:00:00', 'RAS.', 'Actualisation annuelle'),
('g19', 4, 31, '2016-02-27 00:00:00', 'RAS.', 'Actualisation annuelle'),
('g30', 1, 4, '2016-01-28 00:00:00', 'RAS.', 'Actualisation annuelle'),
('g30', 2, 79, '2016-02-15 00:00:00', 'à recontacter pour réunion', 'Actualisation annuelle'),
('g30', 3, 79, '2016-04-05 00:00:00', 'RAS.', 'Actualisation annuelle'),
('g30', 4, 4, '2016-04-07 00:00:00', 'RAS.', 'Actualisation annuelle'),
('g53', 1, 44, '2016-01-19 00:00:00', 'RAS.', 'Actualisation annuelle'),
('g53', 2, 28, '2016-02-02 00:00:00', 'RAS.', 'Actualisation annuelle'),
('g53', 3, 28, '2016-02-19 00:00:00', 'RAS.', 'Actualisation annuelle'),
('g53', 4, 44, '2016-03-11 00:00:00', 'RAS.', 'Actualisation annuelle'),
('g7', 1, 57, '2016-02-02 00:00:00', 'RAS.', 'Actualisation annuelle'),
('h13', 1, 58, '2016-04-01 00:00:00', 'RAS.', 'Actualisation annuelle'),
('h30', 1, 13, '2016-02-25 00:00:00', 'RAS.', 'Actualisation annuelle'),
('h30', 2, 13, '2016-03-25 00:00:00', 'RAS.', 'Actualisation annuelle'),
('h35', 1, 59, '2016-03-11 00:00:00', 'RAS.', 'Actualisation annuelle'),
('h40', 1, 60, '2016-02-13 00:00:00', 'RAS.', 'Actualisation annuelle'),
('j45', 1, 61, '2016-02-25 00:00:00', 'RAS.', 'Actualisation annuelle'),
('j50', 1, 10, '2016-01-11 00:00:00', 'à recontacter pour réunion', 'Actualisation annuelle'),
('j50', 2, 10, '2016-01-11 00:00:00', 'RAS.', 'Actualisation annuelle'),
('j8', 1, 62, '2016-04-04 00:00:00', 'RAS.', 'Actualisation annuelle'),
('k4', 1, 63, '2016-03-14 00:00:00', 'RAS.', 'Actualisation annuelle'),
('k53', 1, 64, '2016-03-02 00:00:00', 'RAS.', 'Actualisation annuelle'),
('l14', 1, 65, '2016-02-11 00:00:00', 'RAS.', 'Actualisation annuelle'),
('l23', 1, 2, '2016-01-13 00:00:00', 'RAS.', 'Actualisation annuelle'),
('l23', 2, 61, '2016-01-20 00:00:00', 'RAS.', 'Actualisation annuelle'),
('l23', 3, 14, '2016-02-19 00:00:00', 'RAS.', 'Actualisation annuelle'),
('l23', 4, 14, '2016-03-11 00:00:00', 'RAS.', 'Actualisation annuelle'),
('l23', 5, 61, '2016-03-15 00:00:00', 'RAS.', 'Actualisation annuelle'),
('l23', 6, 2, '2016-04-02 00:00:00', 'RAS.', 'Actualisation annuelle'),
('l46', 1, 66, '2016-03-06 00:00:00', 'RAS.', 'Actualisation annuelle'),
('l56', 1, 49, '2016-01-15 00:00:00', 'RAS.', 'Actualisation annuelle'),
('l56', 2, 29, '2016-01-20 00:00:00', 'RAS.', 'Actualisation annuelle'),
('l56', 3, 29, '2016-02-15 00:00:00', 'RAS.', 'Actualisation annuelle'),
('l56', 4, 49, '2016-03-15 00:00:00', 'RAS.', 'Actualisation annuelle'),
('m35', 1, 67, '2016-03-14 00:00:00', 'RAS.', 'Actualisation annuelle'),
('m45', 1, 68, '2016-04-03 00:00:00', 'RAS.', 'Actualisation annuelle'),
('n42', 1, 76, '2016-02-02 00:00:00', 'RAS.', 'Actualisation annuelle'),
('n42', 2, 76, '2016-02-20 00:00:00', 'RAS.', 'Actualisation annuelle'),
('n58', 1, 43, '2016-01-08 00:00:00', 'RAS.', 'Actualisation annuelle'),
('n58', 2, 43, '2016-03-17 00:00:00', 'à recontacter pour réunion', 'Actualisation annuelle'),
('n59', 1, 35, '2016-01-17 00:00:00', 'à recontacter pour réunion', 'Actualisation annuelle'),
('n59', 2, 6, '2016-01-19 00:00:00', 'RAS.', 'Actualisation annuelle'),
('n59', 3, 6, '2016-01-31 00:00:00', 'RAS.', 'Actualisation annuelle'),
('n59', 4, 41, '2016-02-05 00:00:00', 'RAS.', 'Actualisation annuelle'),
('n59', 5, 41, '2016-03-18 00:00:00', 'RAS.', 'Actualisation annuelle'),
('n59', 6, 35, '2016-04-09 00:00:00', 'RAS.', 'Actualisation annuelle'),
('o26', 1, 69, '2016-01-08 00:00:00', 'RAS.', 'Actualisation annuelle'),
('p32', 1, 70, '2016-03-27 00:00:00', 'RAS.', 'Actualisation annuelle'),
('p40', 1, 42, '2016-01-04 00:00:00', 'RAS.', 'Actualisation annuelle'),
('p40', 2, 50, '2016-01-15 00:00:00', 'à recontacter pour réunion', 'Actualisation annuelle'),
('p40', 3, 42, '2016-01-19 00:00:00', 'RAS.', 'Actualisation annuelle'),
('p40', 4, 50, '2016-02-12 00:00:00', 'RAS.', 'Actualisation annuelle'),
('p41', 1, 71, '2016-02-01 00:00:00', 'RAS.', 'Actualisation annuelle'),
('p42', 1, 72, '2016-03-11 00:00:00', 'RAS.', 'Actualisation annuelle'),
('p49', 1, 73, '2016-02-17 00:00:00', 'RAS.', 'Actualisation annuelle'),
('p6', 1, 74, '2016-03-31 00:00:00', 'à recontacter pour réunion', 'Actualisation annuelle'),
('p7', 1, 75, '2016-03-30 00:00:00', 'RAS.', 'Actualisation annuelle'),
('p8', 1, 76, '2016-03-12 00:00:00', 'RAS.', 'Actualisation annuelle'),
('q17', 1, 77, '2016-02-24 00:00:00', 'RAS.', 'Actualisation annuelle'),
('r24', 1, 78, '2016-01-08 00:00:00', 'RAS.', 'Actualisation annuelle'),
('r58', 1, 79, '2016-01-18 00:00:00', 'RAS.', 'Actualisation annuelle'),
('s10', 1, 80, '2016-03-21 00:00:00', 'RAS.', 'Actualisation annuelle'),
('s21', 1, 81, '2016-01-12 00:00:00', 'RAS.', 'Actualisation annuelle'),
('t43', 1, 82, '2016-01-06 00:00:00', 'RAS.', 'Actualisation annuelle'),
('t47', 1, 83, '2016-02-27 00:00:00', 'RAS.', 'Actualisation annuelle'),
('t55', 1, 84, '2016-02-07 00:00:00', 'RAS.', 'Actualisation annuelle'),
('t60', 1, 85, '2016-03-07 00:00:00', 'RAS.', 'Actualisation annuelle');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `affectation`
--
ALTER TABLE `affectation`
  ADD PRIMARY KEY (`uId`,`aDate`),
  ADD KEY `rCode` (`rCode`);

--
-- Index pour la table `commentaires`
--
ALTER TABLE `commentaires`
  ADD PRIMARY KEY (`comNum`);

--
-- Index pour la table `famille`
--
ALTER TABLE `famille`
  ADD PRIMARY KEY (`fCode`);

--
-- Index pour la table `labo`
--
ALTER TABLE `labo`
  ADD PRIMARY KEY (`lCode`);

--
-- Index pour la table `medicament`
--
ALTER TABLE `medicament`
  ADD PRIMARY KEY (`mDepotLegal`),
  ADD KEY `fCode` (`fCode`),
  ADD KEY `mNum` (`mNum`);

--
-- Index pour la table `observation`
--
ALTER TABLE `observation`
  ADD PRIMARY KEY (`oNum`),
  ADD KEY `mDepotLegal` (`mDepotLegal`),
  ADD KEY `pNum` (`pNum`);

--
-- Index pour la table `offrir`
--
ALTER TABLE `offrir`
  ADD PRIMARY KEY (`uId`,`vNum`,`mDepotLegal`),
  ADD KEY `mDepotLegal` (`mDepotLegal`);

--
-- Index pour la table `praticien`
--
ALTER TABLE `praticien`
  ADD PRIMARY KEY (`pNum`),
  ADD KEY `tCode` (`pCode`);

--
-- Index pour la table `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`rCode`),
  ADD KEY `sCode` (`sCode`);

--
-- Index pour la table `secteur`
--
ALTER TABLE `secteur`
  ADD PRIMARY KEY (`sCode`);

--
-- Index pour la table `typeParametre`
--
ALTER TABLE `typeParametre`
  ADD PRIMARY KEY (`tlId`);

--
-- Index pour la table `typePraticien`
--
ALTER TABLE `typePraticien`
  ADD PRIMARY KEY (`tCode`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`uId`),
  ADD KEY `uLabo` (`uLabo`),
  ADD KEY `uSecteur` (`uSecteur`);

--
-- Index pour la table `visite`
--
ALTER TABLE `visite`
  ADD PRIMARY KEY (`uId`,`vNum`),
  ADD KEY `pNum` (`pNum`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `medicament`
--
ALTER TABLE `medicament`
  MODIFY `mNum` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `affectation`
--
ALTER TABLE `affectation`
  ADD CONSTRAINT `affectation_ibfk_1` FOREIGN KEY (`rCode`) REFERENCES `region` (`rCode`) ON UPDATE CASCADE,
  ADD CONSTRAINT `affectation_ibfk_2` FOREIGN KEY (`uId`) REFERENCES `utilisateur` (`uId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `medicament`
--
ALTER TABLE `medicament`
  ADD CONSTRAINT `medicament_ibfk_1` FOREIGN KEY (`fCode`) REFERENCES `famille` (`fCode`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `observation`
--
ALTER TABLE `observation`
  ADD CONSTRAINT `observation_ibfk_1` FOREIGN KEY (`mDepotLegal`) REFERENCES `medicament` (`mDepotLegal`) ON UPDATE CASCADE,
  ADD CONSTRAINT `observation_ibfk_2` FOREIGN KEY (`pNum`) REFERENCES `praticien` (`pNum`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `offrir`
--
ALTER TABLE `offrir`
  ADD CONSTRAINT `offrir_ibfk_1` FOREIGN KEY (`mDepotLegal`) REFERENCES `medicament` (`mDepotLegal`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `offrir_ibfk_2` FOREIGN KEY (`uId`,`vNum`) REFERENCES `visite` (`uId`, `vNum`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `praticien`
--
ALTER TABLE `praticien`
  ADD CONSTRAINT `praticien_ibfk_1` FOREIGN KEY (`pCode`) REFERENCES `typePraticien` (`tCode`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `region`
--
ALTER TABLE `region`
  ADD CONSTRAINT `region_ibfk_1` FOREIGN KEY (`sCode`) REFERENCES `secteur` (`sCode`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD CONSTRAINT `utilisateur_ibfk_1` FOREIGN KEY (`uLabo`) REFERENCES `labo` (`lCode`) ON UPDATE CASCADE,
  ADD CONSTRAINT `utilisateur_ibfk_2` FOREIGN KEY (`uSecteur`) REFERENCES `secteur` (`sCode`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `visite`
--
ALTER TABLE `visite`
  ADD CONSTRAINT `visite_ibfk_1` FOREIGN KEY (`pNum`) REFERENCES `praticien` (`pNum`) ON UPDATE CASCADE,
  ADD CONSTRAINT `visite_ibfk_2` FOREIGN KEY (`uId`) REFERENCES `utilisateur` (`uId`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
