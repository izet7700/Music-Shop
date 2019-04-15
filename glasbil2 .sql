-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2018 at 10:27 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `glasbil2`
--

-- --------------------------------------------------------

--
-- Table structure for table `barve`
--

CREATE TABLE `barve` (
  `id` int(11) NOT NULL,
  `ime` varchar(50) COLLATE utf8_croatian_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;

--
-- Dumping data for table `barve`
--

INSERT INTO `barve` (`id`, `ime`) VALUES
(1, 'bež'),
(2, 'rdeča'),
(3, 'zelena'),
(4, 'siva'),
(5, 'rjava'),
(6, 'oranžna'),
(7, 'violčna'),
(8, 'rumena'),
(9, 'roza'),
(10, 'zlatna'),
(11, 'črna'),
(12, 'modra'),
(13, 'bela');

-- --------------------------------------------------------

--
-- Table structure for table `instrumenti`
--

CREATE TABLE `instrumenti` (
  `id` int(11) NOT NULL,
  `model_id` int(11) NOT NULL,
  `material_id` int(11) NOT NULL,
  `barva_id` int(11) NOT NULL,
  `leto_proiz` int(11) NOT NULL,
  `velicina` varchar(50) COLLATE utf8_croatian_ci DEFAULT NULL,
  `garancija` int(11) NOT NULL,
  `cena_eur` int(11) NOT NULL,
  `kolicina` int(11) DEFAULT NULL,
  `opis` text COLLATE utf8_croatian_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;

--
-- Dumping data for table `instrumenti`
--

INSERT INTO `instrumenti` (`id`, `model_id`, `material_id`, `barva_id`, `leto_proiz`, `velicina`, `garancija`, `cena_eur`, `kolicina`, `opis`) VALUES
(1, 1, 4, 11, 2017, NULL, 3, 750, NULL, NULL),
(2, 10, 11, 11, 2017, NULL, 5, 422, NULL, 'Elektronski bobni'),
(3, 2, 10, 5, 2017, NULL, 3, 700, NULL, 'YDP-143'),
(4, 3, 7, 11, 2017, NULL, 3, 580, NULL, NULL),
(5, 4, 4, 2, 2017, NULL, 4, 1800, NULL, '6D 61'),
(6, 4, 4, 2, 2017, NULL, 4, 2500, NULL, 'Nord Electro 6 HP'),
(7, 5, 3, 12, 2017, NULL, 3, 500, NULL, 'SSE13'),
(8, 6, 3, 5, 2017, NULL, 3, 1150, NULL, 'Force Stage 3'),
(9, 8, 3, 5, 2017, NULL, 4, 1500, NULL, 'JAZZ'),
(10, 9, 4, 2, 2017, NULL, 2, 300, NULL, NULL),
(11, 7, 5, 10, 2017, NULL, 3, 570, NULL, NULL),
(12, 11, 2, 13, 2017, NULL, 2, 200, NULL, NULL),
(13, 12, 5, 6, 2017, NULL, 3, 310, NULL, NULL),
(14, 13, 9, 8, 2017, NULL, 3, 500, NULL, 'T3'),
(15, 14, 1, 1, 2017, NULL, 4, 249, NULL, 'CD100CE'),
(16, 15, 2, 1, 2017, NULL, 3, 110, NULL, NULL),
(17, 16, 6, 2, 2017, NULL, 2, 200, NULL, NULL),
(18, 17, 2, 5, 2017, NULL, 3, 125, NULL, NULL),
(19, 18, 1, 1, 2017, NULL, 3, 80, NULL, '4/4 šolska'),
(20, 19, 1, 8, 2017, NULL, 3, 75, NULL, 'DBT12 1/2'),
(21, 20, 10, 5, 2017, NULL, 4, 740, NULL, 'Collection QI'),
(22, 20, 2, 5, 2017, NULL, 4, 450, NULL, 'Concert'),
(23, 21, 2, 5, 2017, NULL, 2, 80, NULL, NULL),
(24, 22, 2, 6, 2017, NULL, 3, 130, NULL, 'Composer'),
(25, 23, 2, 1, 2017, NULL, 4, 400, NULL, NULL),
(26, 24, 9, 11, 2017, NULL, 3, 125, NULL, 'Plus EXP'),
(27, 25, 2, 1, 2013, NULL, 5, 670, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kosarice`
--

CREATE TABLE `kosarice` (
  `id` int(11) NOT NULL,
  `oprema_id` int(11) DEFAULT NULL,
  `instrument_id` int(11) DEFAULT NULL,
  `uporabnik_id` int(11) NOT NULL,
  `datum_trans` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `skupna_cena` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;

--
-- Dumping data for table `kosarice`
--

INSERT INTO `kosarice` (`id`, `oprema_id`, `instrument_id`, `uporabnik_id`, `datum_trans`, `skupna_cena`) VALUES
(25, NULL, 9, 12, '2018-06-06 08:17:16', 1500),
(22, NULL, 4, 7, '2018-06-05 22:55:52', 580),
(29, NULL, 24, 12, '2018-06-06 08:23:48', 130),
(20, NULL, 1, 7, '2018-06-05 22:46:49', 750),
(19, 2, NULL, 7, '2018-06-05 22:46:29', 300);

-- --------------------------------------------------------

--
-- Table structure for table `kraji`
--

CREATE TABLE `kraji` (
  `id` int(11) NOT NULL,
  `ime` varchar(50) COLLATE utf8_croatian_ci NOT NULL,
  `posta` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;

--
-- Dumping data for table `kraji`
--

INSERT INTO `kraji` (`id`, `ime`, `posta`) VALUES
(1, 'Velenje', 3320),
(2, 'Celje', 3000),
(3, 'Ljubljana', 1000),
(4, 'Kranj', 4000),
(5, 'Maribor', 2000),
(6, 'Slovanj Gradec', 2380),
(7, 'Novo Mesto', 8000),
(8, 'Nova Gorica', 5000),
(9, 'Brežice', 8250),
(10, 'Krško', 8270);

-- --------------------------------------------------------

--
-- Table structure for table `material`
--

CREATE TABLE `material` (
  `id` int(11) NOT NULL,
  `ime` varchar(50) COLLATE utf8_croatian_ci NOT NULL,
  `opis` text COLLATE utf8_croatian_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;

--
-- Dumping data for table `material`
--

INSERT INTO `material` (`id`, `ime`, `opis`) VALUES
(1, 'smreka', NULL),
(2, 'mahagonij', NULL),
(3, 'les-membrana', NULL),
(4, 'kovina(jeklo)', NULL),
(5, 'javor', NULL),
(6, 'češnja', NULL),
(7, 'oreh', NULL),
(8, 'kost', NULL),
(9, 'jelša', NULL),
(10, 'cedra', NULL),
(11, 'plastika', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `modeli`
--

CREATE TABLE `modeli` (
  `id` int(11) NOT NULL,
  `proizvodjac_id` int(11) NOT NULL,
  `ime` varchar(50) COLLATE utf8_croatian_ci NOT NULL,
  `tip_instrument_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;

--
-- Dumping data for table `modeli`
--

INSERT INTO `modeli` (`id`, `proizvodjac_id`, `ime`, `tip_instrument_id`) VALUES
(1, 21, 'Sonata', 7),
(2, 3, 'Arius', 7),
(3, 21, 'Etude', 7),
(4, 13, 'Electro', 8),
(5, 14, 'Martini', 5),
(6, 14, 'Essential', 5),
(7, 22, 'Messina', 6),
(8, 14, 'Ascent Beach', 5),
(9, 13, 'Pad', 5),
(10, 15, 'XD80USB', 5),
(11, 10, 'Affinity', 1),
(12, 9, 'LP-100', 1),
(13, 11, 'Delta Pro', 1),
(14, 1, 'CD100', 3),
(15, 1, 'ESC 105', 2),
(16, 4, 'JT-50', 1),
(17, 6, 'C40', 2),
(18, 8, 'VC204', 2),
(19, 5, 'Discovery', 2),
(20, 7, 'LaPatrie', 2),
(21, 3, 'C40', 2),
(22, 12, 'Parlor', 3),
(23, 6, 'WD10S12', 4),
(24, 12, 'Raptor', 1),
(25, 7, 'Progression', 1);

-- --------------------------------------------------------

--
-- Table structure for table `opreme`
--

CREATE TABLE `opreme` (
  `id` int(11) NOT NULL,
  `proizvajalec_id` int(11) NOT NULL,
  `vrsta_op_id` int(11) NOT NULL,
  `opis` text COLLATE utf8_croatian_ci,
  `cena` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;

--
-- Dumping data for table `opreme`
--

INSERT INTO `opreme` (`id`, `proizvajalec_id`, `vrsta_op_id`, `opis`, `cena`) VALUES
(1, 15, 2, 'Behringer kitarski ojačevalnik AC108', 79),
(2, 18, 2, 'Line 6 Spider V, kitarski ojačevalnik 60 W', 300),
(3, 16, 2, 'Marshall MG 15 DFX', 159),
(4, 12, 2, 'Peavey Backstage TransTube', 60),
(5, 17, 2, 'Vox AD100VT XL', 555),
(6, 12, 1, 'Peavey Abalon 351', 1),
(7, 12, 1, 'Peavey Thump za palec', 2),
(8, 19, 5, 'D\'addario EXP 15 10-47, Light, Phosphore-Bronze', 11),
(9, 19, 4, 'D\'addario EXL 120 Super Light 09-42, Nickel Round', 6),
(10, 7, 3, 'Godin NTC naylon string 28-43', 8),
(11, 15, 8, 'Behringer DD600 Digital delay', 50),
(12, 18, 8, 'Line 6 Space Chorus', 85),
(13, 20, 8, 'DigiTech Drop', 110),
(14, 6, 9, 'Washburn GC 70', 67),
(15, 15, 6, 'Behringer XM8500 Ultra Voice', 25),
(16, 15, 6, 'Behringer XM1800S 3pcs', 50),
(17, 12, 7, 'Peavey Pv25 7,6 metrov ', 20),
(18, 12, 7, 'Peavey Low Z mic cable', 13);

-- --------------------------------------------------------

--
-- Table structure for table `proizvajaleci`
--

CREATE TABLE `proizvajaleci` (
  `id` int(11) NOT NULL,
  `ime` varchar(50) COLLATE utf8_croatian_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;

--
-- Dumping data for table `proizvajaleci`
--

INSERT INTO `proizvajaleci` (`id`, `ime`) VALUES
(1, 'Fender'),
(2, 'Gibson'),
(3, 'Yamaha'),
(4, 'Jay Turser'),
(5, 'Tanglewood'),
(6, 'Washburn'),
(7, 'Godin'),
(8, 'Valenica'),
(9, 'Epiphone'),
(10, 'Squier'),
(11, 'Blade'),
(12, 'Peavey'),
(13, 'Nord'),
(14, 'Sonor'),
(15, 'Behhringer'),
(16, 'Marshall'),
(17, 'Vox'),
(18, 'Line 6'),
(19, 'D\'addario'),
(20, 'DigiTech'),
(21, 'Standorf'),
(22, 'Stentor');

-- --------------------------------------------------------

--
-- Table structure for table `slike`
--

CREATE TABLE `slike` (
  `id` int(11) NOT NULL,
  `oprema_id` int(11) DEFAULT NULL,
  `instrument_id` int(11) DEFAULT NULL,
  `url` varchar(300) COLLATE utf8_croatian_ci NOT NULL,
  `ime` varchar(50) COLLATE utf8_croatian_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;

--
-- Dumping data for table `slike`
--

INSERT INTO `slike` (`id`, `oprema_id`, `instrument_id`, `url`, `ime`) VALUES
(2, 1, NULL, 'Memory-pics\\Behringer_AC108_gitarsko_pojačalo.jpg', 'Behringer ojačevalnik'),
(3, 2, NULL, 'Memory-pics\\Line_6_Spider_V_60_gitarsko_pojačalo_60W.jpg', 'Line 6 ojačevalnik'),
(4, 3, NULL, 'Memory-pics\\marshall-mg15dfx.png', 'Marshall ojačevalnik'),
(5, 4, NULL, 'Memory-pics\\Peavey_Backstage_TransTube.jpg', 'Peavey ojačevalnik'),
(6, 5, NULL, 'Memory-pics\\vox_ojacevalnik.jpg', 'Vox ojačevalnik'),
(7, 6, NULL, 'Memory-pics\\Peavey_Abalon_351,_trzalice.jpg', 'Peavey trzalice'),
(8, 7, NULL, 'Memory-pics\\Peavey_Thump_trzalica_za_palac.jpg', 'Peavey trzalice'),
(9, 8, NULL, 'Memory-pics\\D_Addario_EXP15_Coated_Phosphor_Bronze,_Extra_Light.jpg', 'D\'addario žice'),
(10, 9, NULL, 'Memory-pics\\daddarioEXL120.jpg', 'D\'addario žice'),
(11, 10, NULL, 'Memory-pics\\Godin_NTC_najlonske_žice_normal_tenzija.jpg', 'Godin žice'),
(12, 11, NULL, 'Memory-pics\\Behringer_DD600_digital_delay.jpg', 'Behringer delay'),
(13, 12, NULL, 'Memory-pics\\Line_6_Space_Chorus_Pedal.jpg', 'Line 6 pedal'),
(14, 13, NULL, 'Memory-pics\\DigiTech_Drop.jpg', 'DigiTech drop'),
(15, 14, NULL, 'Memory-pics\\Washburn_GC_70_kofer_za_akustičnu.jpg', 'Washburn torba'),
(16, 15, NULL, 'Memory-pics\\Behringer_XM8500UV.jpg', 'Behringer mic'),
(17, 16, NULL, 'Memory-pics\\Behringer_XM1800S.jpg', 'Behringer mic'),
(18, 17, NULL, 'Memory-pics\\peavey_pv25.jpg', 'Peavey kabl'),
(19, 18, NULL, 'Memory-pics\\Peavey_Low_Z_mikrofonski_kabl.jpg', 'Peavey kabl'),
(20, NULL, 1, 'Memory-pics\\Standorf_Sonata.jpg', 'Standorf klavir'),
(21, NULL, 4, 'Memory-pics\\Standorf_Etude.jpg', 'Standford klavir'),
(22, NULL, 3, 'Memory-pics\\Yamaha_YDP-143_Arius.jpg', 'Yamaha klavir'),
(23, NULL, 2, 'Memory-pics\\Behringer_XD80USB_elektronski_bubanj.jpg', 'Behringer bobni'),
(24, NULL, 5, 'Memory-pics\\Nord_Electro_6D_61.jpg', 'Nord klavijature'),
(26, NULL, 6, 'Memory-pics\\Nord_Electro_6_HP.jpg', 'Nord klavijature'),
(27, NULL, 7, 'Memory-pics\\Sonor_Sonor_SSE13_Martini_4pc_Turquois.jpg', 'Sonor bobni'),
(28, NULL, 8, 'Memory-pics\\Sonor_Essential_Force_Stage3.jpg', 'Sonor bobni'),
(29, NULL, 9, 'Memory-pics\\Sonor_Ascent_Beech_JAZZ.jpg', 'Sonor bobni'),
(30, NULL, 10, 'Memory-pics\\Nord_Pad.jpg', 'Nord Pad'),
(31, NULL, 11, 'Memory-pics\\Stentor_Messina_violina.jpg', 'Stentor violina'),
(32, NULL, 12, 'Memory-pics\\Affinity.jpg', 'Squier kitara'),
(33, NULL, 13, 'Memory-pics\\Epiphone_LP100_heritage_sunburst.jpg', 'Epiphone kitara'),
(34, NULL, 14, 'Memory-pics\\Blade_Delta_Pro_T3.jpg', 'Blade kitara'),
(35, NULL, 15, 'Memory-pics\\Fender_CD-100CE.jpg', 'Fender kitara'),
(36, NULL, 16, 'Memory-pics\\Fender_ESC_105.jpg', 'Fender kitara'),
(37, NULL, 17, 'Memory-pics\\Jay_Turser_električna_gitara_JT-50.jpg', 'Jay Turser kitara '),
(38, NULL, 18, 'Memory-pics\\Washburn_C40.jpg', 'Washburn kitara'),
(39, NULL, 19, 'Memory-pics\\Valencia_VC204_4_4_školska_gitara.jpg', 'Valencia kitara'),
(40, NULL, 20, 'Memory-pics\\Tanglewood_Discovery_Classical_DBT12.jpg', 'Tanglewood kitara'),
(41, NULL, 21, 'Memory-pics\\Godin_LaPatrie_Collection_QI.jpg', 'Godin kitara'),
(42, NULL, 22, 'Memory-pics\\Godin_La_Patrie_Concert.jpg', 'Godin kitara'),
(43, NULL, 23, 'Memory-pics\\Yamaha_C-40.jpg', 'Yamaha kitara'),
(44, NULL, 24, 'Memory-pics\\Peavey_Parlor_Composer.jpg', 'Peavey kitara'),
(45, NULL, 25, 'Memory-pics\\Washburn_WD10S12_dvanaesterac.jpg', 'Washburn kitara'),
(46, NULL, 26, 'Memory-pics\\Peavey_Raptor_Plus_EXP.jpg', 'Peavey kitara'),
(47, NULL, 27, 'Memory-pics\\Godin_Progression_2013.jpg', 'Godin kitara');

-- --------------------------------------------------------

--
-- Table structure for table `tip_instrumenata`
--

CREATE TABLE `tip_instrumenata` (
  `id` int(11) NOT NULL,
  `oprema_id` int(11) DEFAULT NULL,
  `ime` varchar(50) COLLATE utf8_croatian_ci NOT NULL,
  `tip_zica` int(11) DEFAULT NULL,
  `opis` text COLLATE utf8_croatian_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;

--
-- Dumping data for table `tip_instrumenata`
--

INSERT INTO `tip_instrumenata` (`id`, `oprema_id`, `ime`, `tip_zica`, `opis`) VALUES
(1, NULL, 'električna kitara', 6, NULL),
(2, NULL, 'klasična kitara', 6, NULL),
(3, NULL, 'akustična kitara', 6, NULL),
(4, NULL, 'akustična kitara(12)', 12, NULL),
(5, NULL, 'bobni', NULL, NULL),
(6, NULL, 'violina', 4, NULL),
(7, NULL, 'klavir', NULL, NULL),
(8, NULL, 'sintisajzer', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tip_opreme`
--

CREATE TABLE `tip_opreme` (
  `id` int(11) NOT NULL,
  `ime` varchar(30) COLLATE utf8_croatian_ci NOT NULL,
  `opis` text COLLATE utf8_croatian_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;

--
-- Dumping data for table `tip_opreme`
--

INSERT INTO `tip_opreme` (`id`, `ime`, `opis`) VALUES
(1, 'trzalica', 'trzalica za kitaro'),
(2, 'ojačevalnik', 'ojačevalnik za el.kitare, bobne in nekatere sintisajzere.'),
(3, 'žice', 'žice za klasično kitaro (plastične/kovinske).'),
(4, 'žice', 'kovinske žice za el. kitaro.'),
(5, 'žice', 'kovinske žice za ak. kitaro.'),
(6, 'mikrofoni', NULL),
(7, 'kabli', 'kabli za povezovanje ojačevalnika ipd.'),
(8, 'pedale', 'pedale za dodatne možnosti na kitarah ali na bobnih.'),
(9, 'torbe', 'torbe za instrumente');

-- --------------------------------------------------------

--
-- Table structure for table `uporabniki`
--

CREATE TABLE `uporabniki` (
  `id` int(11) NOT NULL,
  `kraj_id` int(11) NOT NULL,
  `nickname` varchar(50) COLLATE utf8_croatian_ci NOT NULL,
  `password` varchar(120) COLLATE utf8_croatian_ci NOT NULL,
  `first_name` varchar(50) COLLATE utf8_croatian_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8_croatian_ci NOT NULL,
  `naslov` varchar(50) COLLATE utf8_croatian_ci DEFAULT NULL,
  `telefon` varchar(20) COLLATE utf8_croatian_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;

--
-- Dumping data for table `uporabniki`
--

INSERT INTO `uporabniki` (`id`, `kraj_id`, `nickname`, `password`, `first_name`, `last_name`, `naslov`, `telefon`) VALUES
(12, 1, 'izetmm', 'izetmm', 'Izet', 'Muminović', 'Efenkova 61a', NULL),
(7, 2, 'sdsdsd', 'dule98', 'Dušan', 'sdsdsd', 'sdsd', NULL),
(11, 1, 'izzym', 'izetm', 'Izet', 'Muminović', 'Efenkova 61a', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barve`
--
ALTER TABLE `barve`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `instrumenti`
--
ALTER TABLE `instrumenti`
  ADD PRIMARY KEY (`id`),
  ADD KEY `model_id` (`model_id`),
  ADD KEY `barva_id` (`barva_id`),
  ADD KEY `material_id` (`material_id`);

--
-- Indexes for table `kosarice`
--
ALTER TABLE `kosarice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `instrument_id` (`instrument_id`),
  ADD KEY `oprema_id` (`oprema_id`),
  ADD KEY `uporabnik_id` (`uporabnik_id`);

--
-- Indexes for table `kraji`
--
ALTER TABLE `kraji`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `material`
--
ALTER TABLE `material`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modeli`
--
ALTER TABLE `modeli`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tip_instrument_id` (`tip_instrument_id`),
  ADD KEY `proizvodjac_id` (`proizvodjac_id`);

--
-- Indexes for table `opreme`
--
ALTER TABLE `opreme`
  ADD PRIMARY KEY (`id`),
  ADD KEY `proizvajalec_id` (`proizvajalec_id`),
  ADD KEY `vrsta_op_id` (`vrsta_op_id`);

--
-- Indexes for table `proizvajaleci`
--
ALTER TABLE `proizvajaleci`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slike`
--
ALTER TABLE `slike`
  ADD PRIMARY KEY (`id`),
  ADD KEY `instrument_id` (`instrument_id`),
  ADD KEY `oprema_id` (`oprema_id`);

--
-- Indexes for table `tip_instrumenata`
--
ALTER TABLE `tip_instrumenata`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oprema_id` (`oprema_id`);

--
-- Indexes for table `tip_opreme`
--
ALTER TABLE `tip_opreme`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uporabniki`
--
ALTER TABLE `uporabniki`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kraj_id` (`kraj_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barve`
--
ALTER TABLE `barve`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `instrumenti`
--
ALTER TABLE `instrumenti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `kosarice`
--
ALTER TABLE `kosarice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `kraji`
--
ALTER TABLE `kraji`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `material`
--
ALTER TABLE `material`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `modeli`
--
ALTER TABLE `modeli`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `opreme`
--
ALTER TABLE `opreme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `proizvajaleci`
--
ALTER TABLE `proizvajaleci`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `slike`
--
ALTER TABLE `slike`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `tip_instrumenata`
--
ALTER TABLE `tip_instrumenata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tip_opreme`
--
ALTER TABLE `tip_opreme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `uporabniki`
--
ALTER TABLE `uporabniki`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
