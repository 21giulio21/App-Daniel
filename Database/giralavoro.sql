-- phpMyAdmin SQL Dump
-- version 4.4.15.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Creato il: Lug 12, 2017 alle 16:29
-- Versione del server: 5.5.24-log
-- Versione PHP: 5.3.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `giralavoro`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `clienti_citta`
--

CREATE TABLE IF NOT EXISTS `clienti_citta` (
  `citta_id` int(3) NOT NULL,
  `citta_regione` int(3) NOT NULL DEFAULT '0',
  `citta_nome` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dump dei dati per la tabella `clienti_citta`
--

INSERT INTO `clienti_citta` (`citta_id`, `citta_regione`, `citta_nome`) VALUES
(1, 10, 'Ancona'),
(2, 19, 'Aosta'),
(3, 4, 'Avellino'),
(4, 9, 'Bergamo'),
(5, 9, 'Brescia'),
(6, 15, 'Caltanissetta'),
(7, 4, 'Caserta'),
(8, 16, 'Firenze'),
(9, 8, 'Imperia'),
(10, 8, 'La Spezia'),
(11, 16, 'Lucca'),
(12, 9, 'Milano'),
(13, 4, 'Napoli'),
(14, 15, 'Palermo'),
(15, 10, 'Pesaro e Urbino'),
(16, 6, 'Pordenone'),
(17, 7, 'Roma'),
(18, 4, 'Salerno'),
(19, 12, 'Torino'),
(20, 20, 'Venezia'),
(21, 9, 'Monza e Brianza'),
(22, 16, 'Massa Carrara'),
(23, 3, 'Crotone'),
(24, 12, 'Cuneo'),
(25, 13, 'Bari'),
(26, 10, 'Ascoli Piceno'),
(27, 12, 'Alessandria'),
(29, 20, 'Padova'),
(30, 15, 'Agrigento'),
(31, 16, 'Arezzo'),
(32, 12, 'Asti'),
(33, 13, 'Barletta-Andria-Trani'),
(34, 20, 'Belluno'),
(35, 4, 'Benevento'),
(36, 12, 'Biella'),
(37, 5, 'Bologna'),
(38, 17, 'Bolzano'),
(39, 13, 'Brindisi'),
(40, 14, 'Cagliari'),
(41, 11, 'Campobasso'),
(42, 14, 'Carbonia-Iglesias'),
(43, 15, 'Catania'),
(44, 3, 'Catanzaro'),
(45, 1, 'Chieti'),
(46, 9, 'Como'),
(47, 3, 'Cosenza'),
(48, 9, 'Cremona'),
(49, 15, 'Enna'),
(50, 10, 'Fermo'),
(51, 5, 'Ferrara'),
(52, 13, 'Foggia'),
(53, 5, 'Forlì-Cesena'),
(54, 7, 'Frosinone'),
(55, 8, 'Genova'),
(56, 6, 'Gorizia'),
(57, 16, 'Grosseto'),
(58, 11, 'Isernia'),
(59, 1, 'L''Aquila'),
(60, 7, 'Latina'),
(61, 13, 'Lecce'),
(62, 9, 'Lecco'),
(63, 16, 'Livorno'),
(64, 9, 'Lodi'),
(65, 10, 'Macerata'),
(66, 9, 'Mantova'),
(67, 2, 'Matera'),
(68, 15, 'Messina'),
(69, 5, 'Modena'),
(70, 12, 'Novara'),
(71, 14, 'Nuoro'),
(72, 14, 'Olbia-Tempio'),
(73, 14, 'Oristano'),
(74, 5, 'Parma'),
(75, 9, 'Pavia'),
(76, 18, 'Perugia'),
(77, 1, 'Pescara'),
(78, 5, 'Piacenza'),
(79, 16, 'Pisa'),
(80, 16, 'Pistoia'),
(81, 2, 'Potenza'),
(82, 16, 'Prato'),
(83, 15, 'Ragusa'),
(84, 5, 'Ravenna'),
(85, 3, 'Reggio Calabria'),
(86, 5, 'Reggio Emilia'),
(87, 7, 'Rieti'),
(88, 5, 'Rimini'),
(89, 20, 'Rovigo'),
(90, 14, 'Medio Campidano'),
(91, 14, 'Sassari'),
(92, 8, 'Savona'),
(93, 16, 'Siena'),
(94, 15, 'Siracusa'),
(95, 9, 'Sondrio'),
(96, 13, 'Taranto'),
(97, 1, 'Teramo'),
(98, 18, 'Terni'),
(99, 14, 'Ogliastra'),
(100, 15, 'Trapani'),
(101, 17, 'Trento'),
(102, 20, 'Treviso'),
(103, 6, 'Trieste'),
(104, 6, 'Udine'),
(105, 9, 'Varese'),
(106, 12, 'Verbano-Cusio-Ossola'),
(107, 12, 'Vercelli'),
(108, 20, 'Verona'),
(109, 3, 'Vibo Valentia'),
(110, 20, 'Vicenza'),
(111, 7, 'Viterbo');

-- --------------------------------------------------------

--
-- Struttura della tabella `clienti_clienti`
--

CREATE TABLE IF NOT EXISTS `clienti_clienti` (
  `cliente_id` int(5) NOT NULL,
  `cliente_nome` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `cliente_cognome` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `cliente_email` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `cliente_password` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '',
  `cliente_annodinascita` year(4) NOT NULL DEFAULT '1901',
  `cliente_foto` varchar(200) COLLATE utf8_bin NOT NULL,
  `cliente_citta` int(3) NOT NULL,
  `cliente_localita` varchar(100) COLLATE utf8_bin NOT NULL,
  `cliente_indirizzo` varchar(200) COLLATE utf8_bin NOT NULL,
  `cliente_presentazione` text COLLATE utf8_bin NOT NULL,
  `cliente_cellulare` varchar(50) COLLATE utf8_bin NOT NULL,
  `cliente_offerta1` int(3) NOT NULL,
  `cliente_offerta2` int(3) NOT NULL,
  `cliente_offerta3` int(3) NOT NULL,
  `cliente_professione` int(2) NOT NULL,
  `cliente_lingua` int(2) NOT NULL,
  `cliente_patente` varchar(2) COLLATE utf8_bin NOT NULL,
  `cliente_disponibilita` int(1) NOT NULL,
  `cliente_tokenmail` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `cliente_confermamail` int(1) NOT NULL DEFAULT '0',
  `cliente_tokencel` int(6) unsigned zerofill NOT NULL,
  `cliente_confermacel` int(1) NOT NULL DEFAULT '0',
  `cliente_testimonial` int(1) NOT NULL DEFAULT '0',
  `cliente_bloccato` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dump dei dati per la tabella `clienti_clienti`
--

INSERT INTO `clienti_clienti` (`cliente_id`, `cliente_nome`, `cliente_cognome`, `cliente_email`, `cliente_password`, `cliente_annodinascita`, `cliente_foto`, `cliente_citta`, `cliente_localita`, `cliente_indirizzo`, `cliente_presentazione`, `cliente_cellulare`, `cliente_offerta1`, `cliente_offerta2`, `cliente_offerta3`, `cliente_professione`, `cliente_lingua`, `cliente_patente`, `cliente_disponibilita`, `cliente_tokenmail`, `cliente_confermamail`, `cliente_tokencel`, `cliente_confermacel`, `cliente_testimonial`, `cliente_bloccato`) VALUES
(32, 'Matteo', 'Siri', 'matteo@am002.com', 'Password123', 1977, 'koala', 55, 'Rossiglione', 'Via Passo Nuovo, 16', 'Presentazione', '+393478188492', 24, 27, 19, 5, 1, 'C', 3, 'jSTFkLOA8U9lFxSByZmbDhXCAH64q4', 1, 154403, 1, 0, 0),
(34, 'Matteo 2', 'Siri 2', 'matteo2@am002.com', 'Password123', 1977, '', 64, 'San Pancrazio', '', 'Ciao, sono Matteo 2', '+393478188492', 5, 4, 0, 4, 3, 'B', 2, 'wZsgmEhpDrWaXMl0PzTPiiXVD4PJf9', 1, 392995, 0, 0, 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `clienti_newsletter`
--

CREATE TABLE IF NOT EXISTS `clienti_newsletter` (
  `newsletter_id` int(5) NOT NULL,
  `newsletter_email` varchar(200) COLLATE utf8_bin NOT NULL,
  `newsletter_citta` int(3) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dump dei dati per la tabella `clienti_newsletter`
--

INSERT INTO `clienti_newsletter` (`newsletter_id`, `newsletter_email`, `newsletter_citta`) VALUES
(1, 'matteo@am002.com', 55),
(2, 'matteosiri@yahoo.it', 55);

-- --------------------------------------------------------

--
-- Struttura della tabella `clienti_offerte`
--

CREATE TABLE IF NOT EXISTS `clienti_offerte` (
  `offerta_id` int(3) NOT NULL,
  `offerta_nome` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dump dei dati per la tabella `clienti_offerte`
--

INSERT INTO `clienti_offerte` (`offerta_id`, `offerta_nome`) VALUES
(1, 'Accompagnamento con auto propria'),
(2, 'Compagnia Anziani'),
(3, 'Consulente d’immagine'),
(4, 'Commissioni e spesa a casa'),
(5, 'Cucina bio salutista'),
(6, 'Cucina vegetariana vegana'),
(7, 'Cucina “senza”'),
(8, 'Baby sitter'),
(9, 'Dog sitter/Pet sitter'),
(10, 'Dream Trainer'),
(11, 'Estetica casalinga capelli'),
(12, 'Estetica casalinga unghie'),
(13, 'Feste: Barman'),
(14, 'Feste: Cameriere'),
(15, 'Feste: DJ'),
(16, 'Feste: Magia'),
(17, 'Feste: Animazione'),
(18, 'Feste: Organizzazione evento'),
(19, 'Fotografo'),
(20, 'Lavori di casa'),
(21, 'Lavori di falegnameria'),
(22, 'Lavori in giardino'),
(23, 'Lezioni di musica'),
(24, 'Lezioni di informatica'),
(25, 'Pulizia saltuaria'),
(26, 'Riparazioni giochi meccanici e biciclette'),
(27, 'Riparazioni PC'),
(28, 'Ripetizioni'),
(29, 'Svolgimento conti e pratiche'),
(30, 'Traduzioni'),
(31, 'Trasloco di oggetti o mobilio'),
(32, 'Volantinaggio');

-- --------------------------------------------------------

--
-- Struttura della tabella `clienti_professioni`
--

CREATE TABLE IF NOT EXISTS `clienti_professioni` (
  `professione_id` int(3) NOT NULL,
  `professione_nome` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dump dei dati per la tabella `clienti_professioni`
--

INSERT INTO `clienti_professioni` (`professione_id`, `professione_nome`) VALUES
(1, 'studente'),
(2, 'disoccupato'),
(3, 'impiegato'),
(4, 'operaio'),
(5, 'libero professionista\n'),
(6, 'imprenditore'),
(7, 'altro');

-- --------------------------------------------------------

--
-- Struttura della tabella `clienti_regioni`
--

CREATE TABLE IF NOT EXISTS `clienti_regioni` (
  `regione_id` int(3) NOT NULL,
  `regione_nome` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dump dei dati per la tabella `clienti_regioni`
--

INSERT INTO `clienti_regioni` (`regione_id`, `regione_nome`) VALUES
(1, 'Abruzzo'),
(2, 'Basilicata'),
(3, 'Calabria'),
(4, 'Campania'),
(5, 'Emilia Romagna'),
(6, 'Friuli Venezia Giulia'),
(7, 'Lazio'),
(8, 'Liguria'),
(9, 'Lombardia'),
(10, 'Marche'),
(11, 'Molise'),
(12, 'Piemonte'),
(13, 'Puglia'),
(14, 'Sardegna'),
(15, 'Sicilia'),
(16, 'Toscana'),
(17, 'Trentino Alto Adige'),
(18, 'Umbria'),
(19, 'Valle d''Aosta'),
(20, 'Veneto');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `clienti_citta`
--
ALTER TABLE `clienti_citta`
  ADD PRIMARY KEY (`citta_id`);

--
-- Indici per le tabelle `clienti_clienti`
--
ALTER TABLE `clienti_clienti`
  ADD PRIMARY KEY (`cliente_id`);

--
-- Indici per le tabelle `clienti_newsletter`
--
ALTER TABLE `clienti_newsletter`
  ADD PRIMARY KEY (`newsletter_id`);

--
-- Indici per le tabelle `clienti_offerte`
--
ALTER TABLE `clienti_offerte`
  ADD PRIMARY KEY (`offerta_id`);

--
-- Indici per le tabelle `clienti_professioni`
--
ALTER TABLE `clienti_professioni`
  ADD PRIMARY KEY (`professione_id`);

--
-- Indici per le tabelle `clienti_regioni`
--
ALTER TABLE `clienti_regioni`
  ADD PRIMARY KEY (`regione_id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `clienti_citta`
--
ALTER TABLE `clienti_citta`
  MODIFY `citta_id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=112;
--
-- AUTO_INCREMENT per la tabella `clienti_clienti`
--
ALTER TABLE `clienti_clienti`
  MODIFY `cliente_id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT per la tabella `clienti_newsletter`
--
ALTER TABLE `clienti_newsletter`
  MODIFY `newsletter_id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT per la tabella `clienti_offerte`
--
ALTER TABLE `clienti_offerte`
  MODIFY `offerta_id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT per la tabella `clienti_professioni`
--
ALTER TABLE `clienti_professioni`
  MODIFY `professione_id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT per la tabella `clienti_regioni`
--
ALTER TABLE `clienti_regioni`
  MODIFY `regione_id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
