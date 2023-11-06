-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: mariadb
-- Generation Time: Nov 01, 2023 at 03:06 PM
-- Server version: 10.11.3-MariaDB-1:10.11.3+maria~ubu2204
-- PHP Version: 8.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Bakery`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `intro` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `ingrediënts` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `slug`, `title`, `intro`, `description`, `img`, `ingrediënts`) VALUES
(1, 'aardbeienslof', 'Aardbeienslof', 'Een romige koekbodem, smeuïge banketbakkersroom en rijkelijk versierd met verse aardbeien. Een lust voor het oog en een streling voor de smaakpapillen.', 'description', 'aardbeienslof.jpg', 'Zeeuwse Bloem, Patent bloem, Suiker, Koolzuur, Heelei, Citroenrasp, Zout, Amandelspijs, Geleroom'),
(2, 'brownie', 'Brownie', 'Een makkelijk recept om zelf smeuïge chocolade brownies te maken. Brownies met een intense chocolade smaak en die heerlijk klef zijn.', 'Een makkelijk recept om zelf smeuïge chocolade brownies te maken. Brownies met een intense chocolade smaak en die heerlijk klef zijn.', 'brownies.jpg', '60 gram ongezouten roomboter\r\n150 gram fijne kristalsuiker\r\n75 gram donkerbruine basterdsuiker\r\n125 gram pure chocolade\r\n1 el stroop (pannenkoekenstroop)\r\n2 eieren\r\n1 tl vanille extract\r\n100 gram bloem\r\n20 gram cacaopoeder\r\n1 tl bakpoeder'),
(4, 'cheesecake', 'Cheesecake', 'Met dit mini cheesecakes basisrecept kun je eindeloos variëren en alle cheesecakes die je lekker vindt in klein formaat maken.', 'Deze mini cheesecakes zijn een ideaal formaatje en zijn erg leuk om uit te delen op verjaardagen. Ik maakte voor mijn verjaardag afgelopen september bijvoorbeeld allerlei mini cheesecakes en die werden erg enthousiast ontvangen.', 'cheesecake.webp', 'CHEESECAKES\r\n120 gram biscuitjes\r\n80 gram ongezouten roomboter\r\n450 gram roomkaas\r\n130 gram fijne kristalsuiker\r\n3 eieren\r\n90 gram zure room\r\n15 gram bloem\r\nTOPPING\r\n1 portie mascarponeroom\r\nrood fruit ter decoratie'),
(5, 'tulpbandjes', 'Tulpband', 'Heb jij de mini tulband bakvorm uit de Lauras Bakery bakproductenlijn? Dan kun je aan de bak met deze schattige en onwijs lekkere mini citroen tulbandjes.', 'Heerlijk smeuïg zijn ze, deze mini citroen tulbandjes. En daarnaast vooral onwijs lekker en simpel om te maken. Ik maakte ze met de mini tulband bakvorm uit mijn laatste bakproductenlijn.', 'tulpbandjes.jpg', 'Ingrediënt\r\n55 gram ongezouten roomboter\r\n50 gram witte basterdsuiker\r\n25 gram Griekse yoghurt\r\n1 citroen rasp en sap\r\n1 ei (M)\r\n0,5 tl bakpoeder of iets meer\r\nsnuf zout\r\n65 gram bloem'),
(8, 'monchou', 'MonChou', 'De klassieke MonChou taart omgetoverd tot soesjes. Dat kan alleen maar lekker zijn.', 'Koekkruimels onderop, gevolgd door de room en als laatst kersen. En dat allemaal in een soes. Een ware smaakexplosie als je een hap neemt, probeer ze zeker eens uit!', 'monchou.jpg', 'Ingrediënt\r\nhalf recept soesjes\r\n12-15 Bastogne koeken\r\n250 ml slagroom\r\n100 gram suiker\r\n200 gram MonChou\r\n1 tl vanille-extract\r\n1 blik kersenvlaaivulling ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
