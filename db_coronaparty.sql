-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 11. Apr 2021 um 18:47
-- Server-Version: 10.4.6-MariaDB
-- PHP-Version: 7.3.8
--
-- Datenbank: `db_coronaparty`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tbl_party`
--

CREATE TABLE `tbl_party` (
  `ID` int(11) AUTO_INCREMENT NOT NULL,
  `Name` varchar(30) DEFAULT NULL,
  `Ort` varchar(30) DEFAULT NULL,
  `Anzahl_Leute` int(11) NOT NULL,
  `Zeitpunkt` datetime DEFAULT NULL,
  `Delete` tinyint(1) DEFAULT 0,
  `Passwd` varchar(8) DEFAULT NULL,
  PRIMARY KEY(ID)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `tbl_party`
--

INSERT INTO `tbl_party` (`Name`, `Ort`, `Anzahl_Leute`, `Zeitpunkt`) VALUES
('Party1', 'Wegberg', 20, '2020-02-15 20:00:00'),
('Party2', 'Wegberg', 20, '2020-02-15 20:00:00'),
('Party3', 'Wegberg', 20, '2020-02-15 20:00:00'),
('Party4', 'Wegberg', 20, '2020-02-15 20:00:00'),
('Party5', 'Wegberg', 20, '2020-02-15 20:00:00'),
('Party6', 'Wegberg', 20, '2020-02-15 20:00:00'),
('Party7', 'Wegberg', 20, '2020-02-15 20:00:00'),
('Party8', 'Wegberg', 20, '2020-02-15 20:00:00'),
('Party9', 'Wegberg', 20, '2020-02-15 20:00:00'),
('Party10', 'Wegberg', 20, '2020-02-15 20:00:00'),
('Party11', 'Wegberg', 20, '2020-02-15 20:00:00'),
('Party12', 'Wegberg', 20, '2020-02-15 20:00:00'),
('Party13', 'Wegberg', 20, '2020-02-15 20:00:00'),
('Party14', 'Wegberg', 200, '2020-02-20 20:00:00');
