-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 03 May 2020, 23:31:53
-- Sunucu sürümü: 10.4.11-MariaDB
-- PHP Sürümü: 7.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `site`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `siteajanda`
--

CREATE TABLE `siteajanda` (
  `islemid` int(11) NOT NULL,
  `Aciklama` varchar(250) DEFAULT NULL,
  `hakedis` decimal(10,2) DEFAULT 0.00,
  `hatirlat` date DEFAULT NULL,
  `personeladisoyadi` varchar(200) DEFAULT NULL,
  `islemtarihi` date DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `siteajanda`
--

INSERT INTO `siteajanda` (`islemid`, `Aciklama`, `hakedis`, `hatirlat`, `personeladisoyadi`, `islemtarihi`) VALUES
(6, 'PLANLAMA YAPILDI OK', '0.00', '2020-05-05', 'TUM DEVELOPER EKIBIMIZ', '2020-04-28'),
(7, 'ANALIZ SUNUMU YAPILDI OK', '0.00', '2020-05-06', 'TUM DEVELOPER EKIBIMIZ', '2020-04-28'),
(8, 'TASARIM SUNUMU YAPILDI OK', '0.00', '2020-05-07', 'TUM DEVELOPER EKIBIMIZ', '2020-04-28'),
(9, 'UYGULAMA SUNUMU HAZIRLANIYOR OK', '1.00', '2020-05-10', 'TUM DEVELOPER EKIBIMIZ', '2020-04-28'),
(10, 'RAPORLAMA MODULU HAZIRLANIYOR... OK', '1.00', '2020-05-11', 'MUSTAFA ALTUNDAG', '2020-04-28'),
(11, 'YETKILENDIRME HAZIRLANIYOR.. OK', '1.00', '2020-05-12', 'MUSTAFA ALTUNDAG', '2020-04-28'),
(12, 'KULLANIM KILAVUZU OK', '0.00', '2020-05-08', 'ZERRIN CERKES', '2020-04-28'),
(13, 'UAT SON KULL TESTLERI OK', '1.00', '2020-05-13', 'TUM DEVELOPER EKIBIMIZ', '2020-04-28'),
(14, 'GENEL BUGFIX VE DEFECT YAPILACAK OK', '1.00', '2020-05-09', 'YILMAZ OLMEZ', '2020-04-28'),
(15, 'ALPAY HOCAYA  SUNUM HAZIRLANIYOR...', '1.00', '2020-05-15', 'TUM DEVELOPER EKIBIMIZ', '2020-04-28'),
(16, 'URUN FIRMADA CANLIYA ALMA...', '1.00', '2020-05-16', 'TUM DEVELOPER EKIBIMIZ', '2020-04-28'),
(17, 'SETUP HAZIRLANIYOR... OK', '1.00', '2020-05-14', 'YILMAZ OLMEZ', '2020-04-28');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sitebilgi`
--

CREATE TABLE `sitebilgi` (
  `Siteid` int(11) NOT NULL,
  `Siteadi` varchar(200) DEFAULT NULL,
  `Siteadres` varchar(200) DEFAULT NULL,
  `Sitesehir` varchar(45) DEFAULT NULL,
  `Sitevergino` varchar(45) DEFAULT NULL,
  `Sitevergidairesi` varchar(45) DEFAULT NULL,
  `Sitebaskani` varchar(45) DEFAULT NULL,
  `Sitebaskanyardimcisi` varchar(100) DEFAULT NULL,
  `Sitebloksayisi` varchar(45) DEFAULT NULL,
  `Siteortakelektriktesisatno` varchar(45) DEFAULT NULL,
  `Siteortaksutesisatno` varchar(45) DEFAULT NULL,
  `Siteortakdogalgazno` varchar(45) DEFAULT NULL,
  `Sitebelediyeruhsatno` varchar(45) DEFAULT NULL,
  `Siteuyeikametsayisi` int(11) DEFAULT NULL,
  `Sitepersonelsayisi` int(11) DEFAULT NULL,
  `Siteiletisimtelefon` varchar(20) DEFAULT NULL,
  `siteeposta` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `sitebilgi`
--

INSERT INTO `sitebilgi` (`Siteid`, `Siteadi`, `Siteadres`, `Sitesehir`, `Sitevergino`, `Sitevergidairesi`, `Sitebaskani`, `Sitebaskanyardimcisi`, `Sitebloksayisi`, `Siteortakelektriktesisatno`, `Siteortaksutesisatno`, `Siteortakdogalgazno`, `Sitebelediyeruhsatno`, `Siteuyeikametsayisi`, `Sitepersonelsayisi`, `Siteiletisimtelefon`, `siteeposta`) VALUES
(1, '1', '1', '1', '1', '1', '1', '1', '2', '1', '1', '1', '1', 1, 1, '1', '1'),
(2, '2', '2\n', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', 2, 2, '2', '2');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `siteblokbilgi`
--

CREATE TABLE `siteblokbilgi` (
  `BlokID` int(11) NOT NULL,
  `Blokdiskapino` varchar(10) DEFAULT NULL,
  `Blokadi` varchar(45) NOT NULL,
  `Bloksorumlusu` varchar(45) DEFAULT NULL,
  `Blokadres` varchar(200) DEFAULT NULL,
  `Blokilce` varchar(45) DEFAULT NULL,
  `Bloksehir` varchar(100) DEFAULT NULL,
  `Bloksiteadi` varchar(100) DEFAULT NULL,
  `Blokortakelektriktesisatno` varchar(45) DEFAULT NULL,
  `Blokortaksutesisatno` varchar(45) DEFAULT NULL,
  `Blokortakdogalgaztesisatno` varchar(45) DEFAULT NULL,
  `Blokaciklama` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `siteblokbilgi`
--

INSERT INTO `siteblokbilgi` (`BlokID`, `Blokdiskapino`, `Blokadi`, `Bloksorumlusu`, `Blokadres`, `Blokilce`, `Bloksehir`, `Bloksiteadi`, `Blokortakelektriktesisatno`, `Blokortaksutesisatno`, `Blokortakdogalgaztesisatno`, `Blokaciklama`) VALUES
(2, '100', 'A', 'Mustafa ALTUNDAG', '', '', '', '', '100', '100', '100', '100'),
(3, '123', 'B', 'YILMAZ OLMEZ', '', '', '', '', '123', '123', '123', '123');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sitebolumbilgi`
--

CREATE TABLE `sitebolumbilgi` (
  `BolumId` int(11) NOT NULL,
  `Blokadi` varchar(45) NOT NULL,
  `Blokbolumadi` varchar(45) NOT NULL,
  `Bolumsahibi` varchar(60) DEFAULT NULL,
  `Bolumoturankisi` varchar(50) DEFAULT NULL,
  `Bolumaciklama` varchar(100) DEFAULT NULL,
  `Bolumkati` int(11) DEFAULT NULL,
  `Bolumaktiflik` varchar(45) DEFAULT NULL,
  `Bolumotopark1` varchar(45) DEFAULT NULL,
  `Bolumotopark2` varchar(45) DEFAULT NULL,
  `Bolumotopark3` varchar(45) DEFAULT NULL,
  `Bolumelektriktesisatno` varchar(45) DEFAULT NULL,
  `Bolumsutesisatno` varchar(45) DEFAULT NULL,
  `Bolumdogalgaztesisatno` varchar(45) DEFAULT NULL,
  `Bolumpaftano` varchar(45) DEFAULT NULL,
  `Bolumoturansayisi` int(11) DEFAULT NULL,
  `Bolumsahibitelefon` varchar(20) DEFAULT NULL,
  `Bolumoturankisitelefon` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `sitebolumbilgi`
--

INSERT INTO `sitebolumbilgi` (`BolumId`, `Blokadi`, `Blokbolumadi`, `Bolumsahibi`, `Bolumoturankisi`, `Bolumaciklama`, `Bolumkati`, `Bolumaktiflik`, `Bolumotopark1`, `Bolumotopark2`, `Bolumotopark3`, `Bolumelektriktesisatno`, `Bolumsutesisatno`, `Bolumdogalgaztesisatno`, `Bolumpaftano`, `Bolumoturansayisi`, `Bolumsahibitelefon`, `Bolumoturankisitelefon`) VALUES
(1, 'B', 'B1', 'B', '', '', 0, 'DOLU', '', '', '', '', '', '', '', 0, '', ''),
(4, 'A', 'A1', '', '', '', 0, 'BOS', '', '', '', '', '', '', '', 0, '', ''),
(5, 'B', 'B BLOK AYSE', '', '', '', 0, 'BOS', '', '', '', 'B', '', '', '', 0, '', ''),
(6, 'B', 'B BLOK YESIM', '', '', '', 0, 'BOS', '', '', '', '', '', '', '', 0, '', ''),
(7, 'A', 'A2', '', '', '', 0, 'BOS', '', '', '', '', '', '', '', 0, '', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sitebolumcarihareket`
--

CREATE TABLE `sitebolumcarihareket` (
  `Bolumcarihareketid` int(11) NOT NULL,
  `Bolumcarihareketborctutari` decimal(10,2) DEFAULT 0.00,
  `Blokbolumadi` varchar(45) NOT NULL,
  `Aciklama` varchar(200) DEFAULT NULL,
  `Bolumcarihareketalacaktutari` decimal(10,2) DEFAULT 0.00,
  `hatirlat` date DEFAULT NULL,
  `hakedis` decimal(10,2) DEFAULT 0.00,
  `harekettarihi` date DEFAULT NULL,
  `logkullaniciadi` varchar(100) DEFAULT NULL,
  `logzamani` datetime DEFAULT current_timestamp(),
  `logaciklama` varchar(100) DEFAULT NULL,
  `logkullaniciyetkisi` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `sitebolumcarihareket`
--

INSERT INTO `sitebolumcarihareket` (`Bolumcarihareketid`, `Bolumcarihareketborctutari`, `Blokbolumadi`, `Aciklama`, `Bolumcarihareketalacaktutari`, `hatirlat`, `hakedis`, `harekettarihi`, `logkullaniciadi`, `logzamani`, `logaciklama`, `logkullaniciyetkisi`) VALUES
(6, '0.00', 'B1', 'Blok Bolum Cari Hareketi', '0.00', '2020-05-03', '0.00', '2020-05-03', '1', '2020-05-03 23:13:52', 'Bolum Cari Islemi Guncelledi...', 'YONETICI');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sitebolumsakinbilgi`
--

CREATE TABLE `sitebolumsakinbilgi` (
  `Bolumsakinid` int(11) NOT NULL,
  `Bolumsakinadsoyad` varchar(100) DEFAULT NULL,
  `Bolumsakintcno` varchar(20) DEFAULT NULL,
  `Bolumsakintelefon` varchar(11) DEFAULT NULL,
  `Bolumsakinepostaadresi` varchar(100) DEFAULT NULL,
  `Bolumsakinkayittarihi` date DEFAULT current_timestamp(),
  `Blokbolumadi` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `sitebolumsakinbilgi`
--

INSERT INTO `sitebolumsakinbilgi` (`Bolumsakinid`, `Bolumsakinadsoyad`, `Bolumsakintcno`, `Bolumsakintelefon`, `Bolumsakinepostaadresi`, `Bolumsakinkayittarihi`, `Blokbolumadi`) VALUES
(1, 'B1 SAKINI 1', '123123', '', '', '2020-04-25', 'B1'),
(3, 'B1 2', '', '', '', '2020-04-25', 'B1'),
(4, 'A1 AHMET', '', '', '', '2020-05-03', 'A1'),
(5, 'A1 MEHMET', '', '', '', '2020-05-03', 'A1'),
(6, 'A2 HANDE', '', '', '', '2020-05-03', 'A2');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sitebolumziyaretci`
--

CREATE TABLE `sitebolumziyaretci` (
  `Ziyaretciid` int(11) NOT NULL,
  `Ziyaretciadsoyad` varchar(100) DEFAULT NULL,
  `Ziyaretcicikiszamani` date DEFAULT NULL,
  `Ziyaretcigiriszamani` date DEFAULT NULL,
  `Blokbolumadi` varchar(45) NOT NULL,
  `Ziyaretciaracplaka1` varchar(45) DEFAULT NULL,
  `Ziyaretciaracplaka2` varchar(45) DEFAULT NULL,
  `Ziyaretciaciklama` varchar(100) DEFAULT NULL,
  `girissaati` varchar(45) DEFAULT NULL,
  `cikissaati` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `sitebolumziyaretci`
--

INSERT INTO `sitebolumziyaretci` (`Ziyaretciid`, `Ziyaretciadsoyad`, `Ziyaretcicikiszamani`, `Ziyaretcigiriszamani`, `Blokbolumadi`, `Ziyaretciaracplaka1`, `Ziyaretciaracplaka2`, `Ziyaretciaciklama`, `girissaati`, `cikissaati`) VALUES
(1, 'zdasda', '2020-04-26', '2020-04-26', 'B1', '', '', '1414', '1515', '1616'),
(2, '12312', '2020-04-26', '2020-04-26', 'B1', '123123', '123', '', '', ''),
(3, 'AAAAA', '2020-04-26', '2020-04-26', 'A1', 'AA', '', '', '', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sitekullanicibilgi`
--

CREATE TABLE `sitekullanicibilgi` (
  `kullaniciid` int(11) NOT NULL,
  `yetki` varchar(45) NOT NULL,
  `sifresi` varbinary(100) NOT NULL,
  `kullaniciadi` varchar(100) NOT NULL,
  `aciklama` varchar(100) NOT NULL,
  `sifrehatirlatmasoru` varchar(100) NOT NULL,
  `sifrehatirlatmacevap` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `sitekullanicibilgi`
--

INSERT INTO `sitekullanicibilgi` (`kullaniciid`, `yetki`, `sifresi`, `kullaniciadi`, `aciklama`, `sifrehatirlatmasoru`, `sifrehatirlatmacevap`) VALUES
(4, 'YONETICI', 0x071106071d84c4f5cc9e3886a95705d9, 'admin', 'admin', 'admin', 'admin'),
(10, 'YONETICI', 0x5e40880a10e32c707929360f012e15ab, '2', 'Sare OZKAN', '2', '2'),
(11, 'YONETICI', 0x4dc9b3cdedda6be453ed3ac4709e5296, '3', 'Yunus MAZOOGLU', '3', '3'),
(12, 'YONETICI', 0xe2819bdd173a0cffe73397de68c85353, '4', 'Yilmaz OLMEZ', '4', '4'),
(14, 'YONETICI', 0x185089b04209025a22e4f2e3c5d6bc1c, '5', 'MEHMET SALIH OZTURK', '5', '5'),
(15, 'YONETICI', 0x94e05bc3a994210cdbe31e8874a371d4, '6', 'DEVRIM GUNES', '6', '6'),
(16, 'YONETICI', 0x4ce5a936f6c5668346e930c71ea3d50e, '7', 'MUHAMMED BEYYUD', '7', '7'),
(17, 'YONETICI', 0xbc593e1f85cd69d59997de181227d4a7, '8', 'HASAN HACISULEYMAN', '8', '8'),
(18, 'YONETICI', 0xc0d29ad793b5ec88b7f6367b23c3ee11, '9', 'DONE ATES', '9', '9'),
(19, 'YONETICI', 0xdf1f31799caa8973e3a01b0f864e2e03, '10', 'MUSTAFA ALTUNDAG', '10', '10'),
(20, 'GUVENLIK', 0x5abc31343c8e7d456d549ac44db8b53c, '12', 'GUVENLIK', '12', '12'),
(21, 'SEKRETER', 0x405a8d787c27768ed952a3e389a68920, '13', 'SEKRETER', '13', '13'),
(22, 'YONETICI', 0x212cf3cfb410317aeda27d22afc76a8f, '1', 'Zerrin CERKES', '1', '1'),
(26, 'SITESAKINI', 0x7f99824835d7f615542300a5c85465b1, '14', '14', '14', '14');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sitelog`
--

CREATE TABLE `sitelog` (
  `logid` int(11) NOT NULL,
  `logkullaniciadi` varchar(100) DEFAULT NULL,
  `logdatetime` datetime DEFAULT current_timestamp(),
  `logkullaniciyetkisi` varchar(100) DEFAULT NULL,
  `logsunucuparametre` varchar(200) DEFAULT NULL,
  `logaksiyon` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `sitelog`
--

INSERT INTO `sitelog` (`logid`, `logkullaniciadi`, `logdatetime`, `logkullaniciyetkisi`, `logsunucuparametre`, `logaksiyon`) VALUES
(1, 'admin', '2020-03-25 22:25:55', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', ''),
(2, 'admin', '2020-03-25 22:47:23', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', ''),
(3, 'admin', '2020-03-25 22:56:49', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', ''),
(4, 'admin', '2020-03-25 22:58:42', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', ''),
(5, '1', '2020-03-25 23:00:17', 'SEKRETER', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', ''),
(6, '1', '2020-03-25 23:01:39', 'SEKRETER', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', ''),
(7, '1', '2020-03-25 23:02:21', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', ''),
(8, '5', '2020-03-25 23:05:28', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', ''),
(9, '1', '2020-03-25 23:25:42', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', ''),
(10, '1', '2020-03-25 23:27:04', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', ''),
(11, '1', '2020-03-25 23:29:09', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', ''),
(12, '1', '2020-03-25 23:30:08', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', ''),
(13, '1', '2020-03-25 23:31:45', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', ''),
(14, '1', '2020-03-25 23:33:53', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', ''),
(15, '2', '2020-03-25 23:34:54', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', ''),
(16, '3', '2020-03-25 23:35:32', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', ''),
(17, '1', '2020-03-25 23:38:19', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', ''),
(18, '1', '2020-03-25 23:41:24', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', ''),
(19, '1', '2020-03-25 23:46:31', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', ''),
(20, '1', '2020-03-25 23:48:10', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', ''),
(21, '2', '2020-03-25 23:48:24', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', ''),
(22, '1', '2020-03-26 00:01:00', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', ''),
(23, '1', '2020-03-26 00:20:33', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', ''),
(24, '1', '2020-03-29 02:25:29', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', ''),
(25, '1', '2020-03-29 02:26:53', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', ''),
(26, '1', '2020-03-30 01:27:34', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', ''),
(27, '1', '2020-03-31 02:56:00', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', ''),
(28, '1', '2020-04-01 22:07:05', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(29, '2', '2020-04-01 22:08:38', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(30, '2', '2020-04-01 22:08:45', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(31, '2', '2020-04-01 22:08:53', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(32, '2', '2020-04-01 22:09:01', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(33, '1', '2020-04-02 04:13:47', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(34, '1', '2020-04-02 04:13:57', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(35, '1', '2020-04-02 04:14:50', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(36, '1', '2020-04-02 04:15:34', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(37, '1', '2020-04-02 04:15:39', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(38, '1', '2020-04-02 04:15:48', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(39, '2', '2020-04-02 04:16:11', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(40, '2', '2020-04-02 04:16:18', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(41, '1', '2020-04-03 06:53:01', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(42, '1', '2020-04-04 01:50:18', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(43, '1', '2020-04-04 01:50:46', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(44, '1', '2020-04-04 02:05:33', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(45, '1', '2020-04-04 02:05:48', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(46, '1', '2020-04-04 02:07:36', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(47, '1', '2020-04-04 02:07:47', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(48, '1', '2020-04-04 02:12:21', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(49, '1', '2020-04-04 02:12:40', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(50, '1', '2020-04-04 06:29:40', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(51, '1', '2020-04-04 06:29:46', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(52, '1', '2020-04-04 06:31:25', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(53, '1', '2020-04-04 06:32:51', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(54, '1', '2020-04-04 06:41:13', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(55, '1', '2020-04-04 06:41:27', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(56, '1', '2020-04-04 06:44:55', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(57, '1', '2020-04-04 06:45:31', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(58, '1', '2020-04-04 06:50:54', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(59, '1', '2020-04-04 06:50:59', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(60, '1', '2020-04-04 06:51:58', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(61, '1', '2020-04-04 06:52:06', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(62, '1', '2020-04-04 06:55:48', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(63, '1', '2020-04-04 06:56:14', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(64, '1', '2020-04-04 06:58:09', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(65, '1', '2020-04-04 06:58:38', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(66, '1', '2020-04-14 15:32:19', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(67, '1', '2020-04-14 15:32:39', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(68, '1', '2020-04-14 15:33:23', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(69, '1', '2020-04-14 15:33:40', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(70, '1', '2020-04-14 16:02:57', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(71, '1', '2020-04-14 16:03:12', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(72, '1', '2020-04-14 16:18:46', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(73, '1', '2020-04-14 16:18:56', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(74, '1', '2020-04-14 16:22:07', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(75, '1', '2020-04-14 16:22:15', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(76, '1', '2020-04-14 16:27:19', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(77, '1', '2020-04-14 16:27:33', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(78, '1', '2020-04-14 16:33:09', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(79, '1', '2020-04-14 16:33:12', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(80, '1', '2020-04-14 22:25:36', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(81, '1', '2020-04-14 22:25:50', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(82, '1', '2020-04-14 22:28:18', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(83, '1', '2020-04-14 22:29:02', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(84, '1', '2020-04-14 23:20:14', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(85, '1', '2020-04-14 23:20:39', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(86, '1', '2020-04-14 23:22:22', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(87, '1', '2020-04-14 23:22:56', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(88, '1', '2020-04-14 23:24:40', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(89, '1', '2020-04-14 23:24:49', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(90, '1', '2020-04-15 01:03:17', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(91, '1', '2020-04-15 01:03:50', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(92, '1', '2020-04-15 01:07:23', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(93, '1', '2020-04-15 01:07:43', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(94, '2', '2020-04-15 01:08:51', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(95, '2', '2020-04-15 01:09:06', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(96, '1', '2020-04-15 01:09:47', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(97, '1', '2020-04-15 01:10:01', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(98, '1', '2020-04-15 01:54:12', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(99, '1', '2020-04-15 01:54:41', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(100, '1', '2020-04-15 01:55:11', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(101, '1', '2020-04-15 01:55:18', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(102, '2', '2020-04-15 01:56:36', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(103, '2', '2020-04-15 01:56:46', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(104, '1', '2020-04-15 13:54:05', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(105, '1', '2020-04-15 13:55:35', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(106, '1', '2020-04-15 13:55:59', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(107, '1', '2020-04-15 13:56:03', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(108, '1', '2020-04-15 13:56:32', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(109, '1', '2020-04-15 13:57:41', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(110, '1', '2020-04-23 16:33:45', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(111, '1', '2020-04-23 16:36:50', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(112, '1', '2020-04-23 16:56:37', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(113, '1', '2020-04-23 16:57:07', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(114, '1', '2020-04-23 19:02:53', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(115, '1', '2020-04-23 19:03:01', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(116, '1', '2020-04-23 19:03:35', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(117, '1', '2020-04-23 19:05:31', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(118, '1', '2020-04-23 19:10:46', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(119, '1', '2020-04-23 19:13:09', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(120, '1', '2020-04-23 19:13:14', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(121, '1', '2020-04-23 19:13:44', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(122, '1', '2020-04-23 20:09:46', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(123, '1', '2020-04-23 20:09:52', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(124, '1', '2020-04-23 20:10:07', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(125, '1', '2020-04-23 20:10:13', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(126, '1', '2020-04-23 20:10:27', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(127, '1', '2020-04-23 20:10:32', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(128, '1', '2020-04-23 20:10:42', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(129, '1', '2020-04-23 20:10:48', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(130, '1', '2020-04-23 20:11:01', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(131, '1', '2020-04-23 20:11:07', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(132, '1', '2020-04-23 20:22:50', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(133, '1', '2020-04-23 20:23:09', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(134, '1', '2020-04-23 20:24:39', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(135, '1', '2020-04-23 20:25:25', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(136, '1', '2020-04-23 20:28:00', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(137, '1', '2020-04-23 20:28:15', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(138, '1', '2020-04-23 23:15:50', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(139, '1', '2020-04-23 23:17:29', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(140, '1', '2020-04-23 23:18:07', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(141, '1', '2020-04-23 23:20:32', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(142, '1', '2020-04-23 23:21:42', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(143, '1', '2020-04-23 23:22:09', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(144, '1', '2020-04-23 23:22:15', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(145, '1', '2020-04-23 23:22:34', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(146, '1', '2020-04-23 23:27:17', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(147, '1', '2020-04-23 23:27:28', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(148, '1', '2020-04-23 23:27:53', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(149, '1', '2020-04-23 23:27:57', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(150, '1', '2020-04-23 23:54:50', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(151, '1', '2020-04-23 23:55:04', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(152, '1', '2020-04-24 01:44:14', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(153, '1', '2020-04-24 01:45:40', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(154, '1', '2020-04-24 01:52:04', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(155, '1', '2020-04-24 01:56:10', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(156, '1', '2020-04-24 02:01:41', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(157, '1', '2020-04-24 02:02:28', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(158, '1', '2020-04-24 02:05:08', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(159, '1', '2020-04-24 02:05:51', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(160, '1', '2020-04-24 02:06:20', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(161, '1', '2020-04-24 02:06:39', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(162, '1', '2020-04-24 02:07:34', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(163, '1', '2020-04-24 02:08:40', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(164, '1', '2020-04-25 01:27:22', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(165, '1', '2020-04-25 01:28:06', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(166, '1', '2020-04-25 01:31:39', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(167, '1', '2020-04-25 01:31:44', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(168, '1', '2020-04-25 01:32:12', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(169, '1', '2020-04-25 01:34:20', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(170, '1', '2020-04-25 01:43:52', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(171, '1', '2020-04-25 01:52:41', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(172, '1', '2020-04-25 01:54:35', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(173, '1', '2020-04-25 01:55:05', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(174, '1', '2020-04-25 01:57:00', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(175, '1', '2020-04-25 01:57:12', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(176, '1', '2020-04-25 02:48:58', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(177, '1', '2020-04-25 02:49:30', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(178, '1', '2020-04-25 02:53:58', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(179, '1', '2020-04-25 02:54:29', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(180, '1', '2020-04-25 02:54:51', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(181, '1', '2020-04-25 02:55:27', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(182, '1', '2020-04-25 03:32:55', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(183, '1', '2020-04-25 03:33:16', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(184, '1', '2020-04-25 03:35:38', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(185, '1', '2020-04-25 03:37:04', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(186, '1', '2020-04-25 03:38:28', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(187, '1', '2020-04-25 03:38:51', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(188, '1', '2020-04-25 03:41:21', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(189, '1', '2020-04-25 03:41:59', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(190, '1', '2020-04-25 03:42:13', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(191, '1', '2020-04-25 03:43:36', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(192, '1', '2020-04-25 04:07:34', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(193, '1', '2020-04-25 04:08:53', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(194, '1', '2020-04-25 04:09:55', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(195, '1', '2020-04-25 04:28:22', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(196, '1', '2020-04-25 04:29:39', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(197, '1', '2020-04-25 04:32:14', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(198, '1', '2020-04-25 04:32:33', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(199, '1', '2020-04-25 04:35:59', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(200, '1', '2020-04-25 04:36:38', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(201, '1', '2020-04-25 04:39:01', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(202, '1', '2020-04-25 04:39:55', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(203, '1', '2020-04-25 04:40:57', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(204, '1', '2020-04-25 04:41:16', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(205, '1', '2020-04-25 04:42:43', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(206, '1', '2020-04-25 04:43:22', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(207, '1', '2020-04-25 04:46:02', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(208, '1', '2020-04-25 04:47:12', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(209, '1', '2020-04-25 04:47:47', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(210, '1', '2020-04-25 04:53:25', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(211, '1', '2020-04-25 04:56:02', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(212, '1', '2020-04-25 04:56:44', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(213, '1', '2020-04-25 05:00:02', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(214, '1', '2020-04-25 05:01:21', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(215, '1', '2020-04-25 05:03:00', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(216, '1', '2020-04-25 05:06:11', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(217, '1', '2020-04-25 05:12:15', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(218, '1', '2020-04-25 05:15:51', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(219, '1', '2020-04-25 05:25:39', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(220, '1', '2020-04-25 05:30:45', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(221, '1', '2020-04-25 05:31:48', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(222, '1', '2020-04-25 05:39:14', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(223, '1', '2020-04-25 05:40:13', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(224, '2', '2020-04-25 05:47:24', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(225, '2', '2020-04-25 05:48:18', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(226, '1', '2020-04-25 05:52:02', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(227, '1', '2020-04-25 05:53:25', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(228, '1', '2020-04-25 05:54:04', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(229, '1', '2020-04-25 05:55:31', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(230, '1', '2020-04-25 05:56:01', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(231, '1', '2020-04-26 01:03:47', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(232, '1', '2020-04-26 01:05:10', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(233, '1', '2020-04-26 01:06:48', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(234, '1', '2020-04-26 01:11:58', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(235, '1', '2020-04-26 01:13:12', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(236, '1', '2020-04-26 02:16:22', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(237, '1', '2020-04-26 02:24:02', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(238, '1', '2020-04-26 02:28:24', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(239, '1', '2020-04-26 02:31:02', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(240, '1', '2020-04-26 02:32:15', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(241, '1', '2020-04-26 02:34:34', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(242, '1', '2020-04-26 02:35:28', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(243, '1', '2020-04-26 02:37:40', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(244, '1', '2020-04-26 02:39:19', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(245, '1', '2020-04-26 02:41:02', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(246, '1', '2020-04-26 03:14:05', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(247, '1', '2020-04-26 03:15:52', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(248, '1', '2020-04-26 03:17:25', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(249, '1', '2020-04-26 03:31:25', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(250, '1', '2020-04-26 03:48:04', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(251, '1', '2020-04-26 03:51:23', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(252, '1', '2020-04-26 04:28:36', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(253, '1', '2020-04-26 04:29:22', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(254, '1', '2020-04-26 04:34:46', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(255, '1', '2020-04-26 04:36:44', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(256, '1', '2020-04-26 04:38:47', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(257, '1', '2020-04-26 04:48:17', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(258, '1', '2020-04-26 04:50:05', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(259, '1', '2020-04-26 04:51:56', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(260, '1', '2020-04-26 04:52:35', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(261, '1', '2020-04-26 04:58:22', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(262, '1', '2020-04-26 05:11:04', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(263, '1', '2020-04-26 05:11:39', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(264, '1', '2020-04-26 05:44:07', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(265, '1', '2020-04-26 05:44:41', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(266, '1', '2020-04-27 15:58:10', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(267, '1', '2020-04-27 16:01:05', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(268, '1', '2020-04-27 16:03:25', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(269, '1', '2020-04-27 16:16:29', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(270, '1', '2020-04-27 16:19:38', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(271, '1', '2020-04-27 16:20:32', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(272, '1', '2020-04-27 16:20:39', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(273, '1', '2020-04-27 16:31:28', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(274, '1', '2020-04-27 16:32:42', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(275, '1', '2020-04-27 16:34:03', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(276, '1', '2020-04-27 16:35:11', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(277, '1', '2020-04-27 16:42:42', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(278, '1', '2020-04-27 16:43:14', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(279, '1', '2020-04-27 16:47:59', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(280, '1', '2020-04-27 17:01:59', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(281, '1', '2020-04-27 17:05:56', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(282, '1', '2020-04-27 17:09:21', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(283, '1', '2020-04-27 17:12:14', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(284, '1', '2020-04-27 17:30:03', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(285, '1', '2020-04-27 17:31:02', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(286, '1', '2020-04-27 17:31:25', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(287, '1', '2020-04-27 17:54:47', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(288, '1', '2020-04-27 18:11:36', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(289, '1', '2020-04-27 18:20:34', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(290, '2', '2020-04-27 18:31:40', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(291, '1', '2020-04-27 18:35:40', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(292, '1', '2020-04-27 18:37:27', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(293, '1', '2020-04-27 18:53:12', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(294, '1', '2020-04-27 18:56:08', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(295, '1', '2020-04-27 18:57:01', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(296, '1', '2020-04-27 18:57:55', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(297, '1', '2020-04-27 18:59:59', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(298, '1', '2020-04-27 19:02:25', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(299, '1', '2020-04-27 19:03:01', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(300, '1', '2020-04-27 19:03:49', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(301, '1', '2020-04-27 19:05:24', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(302, '1', '2020-04-27 19:11:40', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(303, '1', '2020-04-27 19:43:27', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(304, '1', '2020-04-27 19:55:01', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(305, '1', '2020-04-27 19:58:18', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(306, '1', '2020-04-27 19:59:11', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(307, '1', '2020-04-27 20:01:00', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(308, '1', '2020-04-27 21:05:00', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(309, '1', '2020-04-27 21:07:08', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(310, '1', '2020-04-27 21:08:38', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(311, '1', '2020-04-27 21:12:54', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(312, '1', '2020-04-27 21:14:48', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(313, '1', '2020-04-27 21:16:18', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(314, '1', '2020-04-27 21:16:36', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(315, '1', '2020-04-27 21:17:02', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(316, '1', '2020-04-27 21:17:19', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(317, '1', '2020-04-27 21:17:48', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(318, '1', '2020-04-27 21:18:08', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(319, '1', '2020-04-27 21:18:26', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(320, '1', '2020-04-27 21:18:44', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(321, '1', '2020-04-27 21:19:02', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(322, '1', '2020-04-27 21:21:20', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(323, '1', '2020-04-27 21:49:24', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(324, '1', '2020-04-27 23:19:41', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(325, '1', '2020-04-27 23:22:44', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(326, '1', '2020-04-28 02:10:27', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(327, '1', '2020-04-28 16:21:32', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(328, '1', '2020-04-28 16:29:15', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(329, '1', '2020-04-28 16:31:34', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(330, '1', '2020-04-28 16:42:13', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(331, '1', '2020-04-28 17:17:23', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(332, '1', '2020-04-28 18:21:24', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(333, '1', '2020-04-28 18:24:28', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(334, '1', '2020-04-28 18:25:22', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(335, '1', '2020-04-28 18:27:34', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(336, '1', '2020-04-28 19:09:56', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(337, '1', '2020-04-28 19:51:42', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(338, '1', '2020-04-28 19:52:07', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(339, '1', '2020-04-28 19:54:17', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(340, '1', '2020-04-28 19:58:34', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(341, '1', '2020-04-28 20:10:42', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(342, '1', '2020-04-28 20:12:02', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(343, '1', '2020-04-28 20:17:26', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(344, '1', '2020-04-28 20:19:05', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(345, '1', '2020-04-28 20:26:04', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(346, '1', '2020-04-28 20:26:36', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(347, '1', '2020-04-28 20:55:50', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(348, '1', '2020-04-28 21:05:23', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(349, '1', '2020-04-28 21:06:58', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(350, '1', '2020-04-28 21:12:20', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(351, '1', '2020-04-28 21:32:26', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(352, '1', '2020-04-28 21:35:48', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(353, '1', '2020-04-28 21:37:54', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(354, '1', '2020-04-28 21:41:14', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(355, '1', '2020-04-28 21:45:01', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(356, '1', '2020-04-28 21:45:30', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(357, '1', '2020-04-30 04:33:54', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(358, '1', '2020-05-02 00:42:39', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(359, '2', '2020-05-02 23:59:17', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti');
INSERT INTO `sitelog` (`logid`, `logkullaniciadi`, `logdatetime`, `logkullaniciyetkisi`, `logsunucuparametre`, `logaksiyon`) VALUES
(360, '2', '2020-05-02 23:59:29', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(361, '2', '2020-05-02 23:59:40', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(362, '2', '2020-05-03 00:00:02', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(363, '2', '2020-05-03 00:00:06', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(364, '2', '2020-05-03 00:00:15', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(365, '1', '2020-05-03 00:46:17', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(366, '1', '2020-05-03 01:08:49', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(367, '1', '2020-05-03 02:25:31', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(368, '1', '2020-05-03 02:27:42', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(369, '1', '2020-05-03 02:29:02', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(370, '1', '2020-05-03 02:30:43', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(371, '1', '2020-05-03 02:34:51', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(372, '1', '2020-05-03 02:37:09', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(373, '2', '2020-05-03 02:41:11', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(374, '12', '2020-05-03 02:42:30', 'GUVENLIK', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(375, '12', '2020-05-03 02:43:23', 'GUVENLIK', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(376, '12', '2020-05-03 02:43:31', 'GUVENLIK', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(377, 'admin', '2020-05-03 02:44:41', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(378, '1', '2020-05-03 02:47:08', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(379, '1', '2020-05-03 02:47:49', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(380, '1', '2020-05-03 02:48:38', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(381, '1', '2020-05-03 02:49:09', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(382, '1', '2020-05-03 02:49:59', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(383, '1', '2020-05-03 02:52:31', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(384, '1', '2020-05-03 03:36:31', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(385, '1', '2020-05-03 03:36:53', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(386, '14', '2020-05-03 03:39:03', 'SITESAKINI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(387, '1', '2020-05-03 03:39:46', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(388, '14', '2020-05-03 03:39:56', 'SITESAKINI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(389, '14', '2020-05-03 03:44:33', 'SITESAKINI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(390, '14', '2020-05-03 03:44:58', 'SITESAKINI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(391, '12', '2020-05-03 03:45:04', 'GUVENLIK', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(392, '1', '2020-05-03 03:55:19', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(393, '1', '2020-05-03 03:57:03', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(394, '1', '2020-05-03 05:37:19', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(395, '1', '2020-05-03 05:40:39', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(396, '14', '2020-05-03 05:40:46', 'SITESAKINI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(397, '14', '2020-05-03 05:40:53', 'SITESAKINI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(398, '13', '2020-05-03 05:40:59', 'SEKRETER', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(399, '13', '2020-05-03 05:41:27', 'SEKRETER', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(400, '1', '2020-05-03 05:42:03', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(401, '1', '2020-05-03 05:53:35', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(402, '1', '2020-05-03 05:55:00', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(403, '1', '2020-05-03 05:55:12', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(404, '1', '2020-05-03 05:55:18', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(405, '1', '2020-05-03 05:55:23', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(406, '1', '2020-05-03 05:56:33', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(407, '12', '2020-05-03 05:56:58', 'GUVENLIK', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(408, '12', '2020-05-03 05:57:04', 'GUVENLIK', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(409, '1', '2020-05-03 06:01:15', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(410, '1', '2020-05-03 19:59:30', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(411, '1', '2020-05-03 20:00:36', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(412, '1', '2020-05-03 20:02:52', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(413, '1', '2020-05-03 20:03:48', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(414, '1', '2020-05-03 20:20:18', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(415, '1', '2020-05-03 20:21:10', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(416, '1', '2020-05-03 20:23:42', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(417, '1', '2020-05-03 20:38:05', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(418, '1', '2020-05-03 20:39:06', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(419, '1', '2020-05-03 21:46:53', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(420, '1', '2020-05-03 21:54:31', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(421, '1', '2020-05-03 21:57:17', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(422, '1', '2020-05-03 21:57:55', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(423, '1', '2020-05-03 22:21:51', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(424, '1', '2020-05-03 22:51:00', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(425, '1', '2020-05-03 23:06:30', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(426, '1', '2020-05-03 23:07:56', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(427, '1', '2020-05-03 23:11:50', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(428, '1', '2020-05-03 23:14:51', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(429, '1', '2020-05-03 23:18:33', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(430, '1', '2020-05-03 23:21:45', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(431, '1', '2020-05-03 23:25:05', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(432, '1', '2020-05-03 23:25:20', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(433, '1', '2020-05-03 23:25:24', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(434, '1', '2020-05-03 23:25:30', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(435, '1', '2020-05-03 23:25:59', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(436, '2', '2020-05-03 23:26:04', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(437, '2', '2020-05-03 23:26:14', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(438, '2', '2020-05-03 23:26:33', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(439, '1', '2020-05-03 23:26:39', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(440, '1', '2020-05-03 23:26:51', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(441, '1', '2020-05-03 23:29:58', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(442, '1', '2020-05-03 23:30:07', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(443, '1', '2020-05-03 23:32:45', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(444, '1', '2020-05-03 23:32:50', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(445, '1', '2020-05-03 23:39:25', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(446, '1', '2020-05-03 23:39:38', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(447, '1', '2020-05-03 23:41:27', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(448, '1', '2020-05-03 23:41:31', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(449, '1', '2020-05-03 23:42:01', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(450, '1', '2020-05-03 23:44:11', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(451, '1', '2020-05-03 23:48:16', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(452, '1', '2020-05-03 23:52:00', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(453, '5', '2020-05-03 23:52:10', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(454, '5', '2020-05-03 23:52:13', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(455, '1', '2020-05-03 23:53:03', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(456, '1', '2020-05-03 23:53:59', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(457, '1', '2020-05-03 23:54:45', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(458, '1', '2020-05-03 23:55:02', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(459, '1', '2020-05-04 00:19:12', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(460, '1', '2020-05-04 00:19:38', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(461, '1', '2020-05-04 00:21:06', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(462, '1', '2020-05-04 00:21:37', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(463, '1', '2020-05-04 00:21:58', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(464, '1', '2020-05-04 00:22:35', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(465, '1', '2020-05-04 00:24:47', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(466, '1', '2020-05-04 00:24:55', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(467, '1', '2020-05-04 00:26:11', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(468, '1', '2020-05-04 00:26:47', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(469, '1', '2020-05-04 00:27:23', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(470, '1', '2020-05-04 00:28:09', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti'),
(471, '1', '2020-05-04 00:29:01', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sisteme Giris Yapti'),
(472, '1', '2020-05-04 00:29:19', 'YONETICI', 'jdbc:mysql://localhost:3306/site?useTimezone=true&serverTimezone=UTC', 'Sistemden Cikis Yapti');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sitelogislem`
--

CREATE TABLE `sitelogislem` (
  `islemid` int(11) NOT NULL,
  `islemzamani` datetime DEFAULT current_timestamp(),
  `kullaniciadi` varchar(100) DEFAULT NULL,
  `Aciklama` varchar(100) DEFAULT NULL,
  `kullaniciyetki` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `sitelogislem`
--

INSERT INTO `sitelogislem` (`islemid`, `islemzamani`, `kullaniciadi`, `Aciklama`, `kullaniciyetki`) VALUES
(1, '2020-04-27 18:11:41', '1', 'Site Bilgi Ana Ekranina gidildi...', 'YONETICI'),
(2, '2020-04-27 18:20:45', '1', 'Site Bilgi Ana Ekranina gitti...', 'YONETICI'),
(3, '2020-04-27 18:20:48', '1', 'Site Ortak Cari Hareketler Ekranina gitti...', 'YONETICI'),
(4, '2020-04-27 18:20:52', '1', 'Site Blok Bilgi Ana Ekranına gitti...', 'YONETICI'),
(5, '2020-04-27 18:20:56', '1', 'Site Kullanici Yonetimi Ana Ekranina gitti...', 'YONETICI'),
(6, '2020-04-27 18:20:59', '1', 'Site Log Yonetimi Ana Ekranina gitti...', 'YONETICI'),
(7, '2020-04-27 18:35:46', '1', 'Site Bilgi Ana Ekranina gitti...', 'YONETICI'),
(8, '2020-04-27 18:35:53', '1', 'Site Log Yonetimi Ana Ekranina gitti...', 'YONETICI'),
(9, '2020-04-27 18:36:02', '1', 'Site Log Yonetimi Ana Ekranina gitti...', 'YONETICI'),
(10, '2020-04-27 18:37:38', '1', 'Site Ortak Cari Hareketler Ekranina gitti...', 'YONETICI'),
(11, '2020-04-27 18:37:48', '1', 'Site Log Yonetimi Ana Ekranina gitti...', 'YONETICI'),
(12, '2020-04-27 18:57:10', '1', 'Site Ortak Cari Hareketler Ekranina gitti...', 'YONETICI'),
(13, '2020-04-27 18:57:23', '1', 'Site Log Yonetimi Ana Ekranina gitti...', 'YONETICI'),
(14, '2020-04-27 18:57:35', '1', 'Site Kullanici Yonetimi Ana Ekranina gitti...', 'YONETICI'),
(15, '2020-04-27 18:57:41', '1', 'Site Sikayet Ana Ekranina gitti...', 'YONETICI'),
(16, '2020-04-27 18:58:06', '1', 'Site Bilgi Ana Ekranina gitti...', 'YONETICI'),
(17, '2020-04-27 19:02:32', '1', 'Site Sikayet Ana Ekranina gitti...', 'YONETICI'),
(18, '2020-04-27 19:03:06', '1', 'Site Blok Bilgi Ana Ekranına gitti...', 'YONETICI'),
(19, '2020-04-27 19:03:56', '1', 'Site Bilgi Ana Ekranina gitti...', 'YONETICI'),
(20, '2020-04-27 19:05:55', '1', 'Site Blok Bilgi Ana Ekranına gitti...', 'YONETICI'),
(21, '2020-04-27 19:06:07', '1', 'Site Log Yonetimi Ana Ekranina gitti...', 'YONETICI'),
(22, '2020-04-27 19:12:10', '1', 'Site Ajanda ve Hatirlatma Ana Ekranina gitti...', 'YONETICI'),
(23, '2020-04-27 19:12:39', '1', 'Site Ajanda ve Hatirlatma Ana Ekranina gitti...', 'YONETICI'),
(24, '2020-04-27 19:43:38', '1', 'Site Bilgi Ana Ekranina gitti...', 'YONETICI'),
(25, '2020-04-27 19:55:06', '1', 'Site Log Yonetimi Ana Ekranina gitti...', 'YONETICI'),
(26, '2020-04-27 19:55:30', '1', 'Site Sikayet Ana Ekranina gitti...', 'YONETICI'),
(27, '2020-04-27 19:55:36', '1', 'Site Bilgi Ana Ekranina gitti...', 'YONETICI'),
(28, '2020-04-27 21:07:23', '1', 'Site Ajanda ve Hatirlatma Ana Ekranina gitti...', 'YONETICI'),
(29, '2020-04-27 21:08:42', '1', 'Site Ajanda ve Hatirlatma Ana Ekranina gitti...', 'YONETICI'),
(30, '2020-04-27 21:13:08', '1', 'Site Log Yonetimi Ana Ekranina gitti...', 'YONETICI'),
(31, '2020-04-27 21:15:05', '1', 'Site Bilgi Ana Ekranina gitti...', 'YONETICI'),
(32, '2020-04-27 21:16:22', '1', 'Site Bilgi Ana Ekranina gitti...', 'YONETICI'),
(33, '2020-04-27 21:16:41', '1', 'Site Bilgi Ana Ekranina gitti...', 'YONETICI'),
(34, '2020-04-27 21:17:06', '1', 'Site Bilgi Ana Ekranina gitti...', 'YONETICI'),
(35, '2020-04-27 21:17:23', '1', 'Site Bilgi Ana Ekranina gitti...', 'YONETICI'),
(36, '2020-04-27 21:17:55', '1', 'Site Bilgi Ana Ekranina gitti...', 'YONETICI'),
(37, '2020-04-27 21:18:13', '1', 'Site Bilgi Ana Ekranina gitti...', 'YONETICI'),
(38, '2020-04-27 21:18:31', '1', 'Site Bilgi Ana Ekranina gitti...', 'YONETICI'),
(39, '2020-04-27 21:18:48', '1', 'Site Bilgi Ana Ekranina gitti...', 'YONETICI'),
(40, '2020-04-27 21:19:07', '1', 'Site Bilgi Ana Ekranina gitti...', 'YONETICI'),
(41, '2020-04-27 21:21:34', '1', 'Site Log Yonetimi Ana Ekranina gitti...', 'YONETICI'),
(42, '2020-04-27 21:49:30', '1', 'Site Ajanda ve Hatirlatma Ana Ekranina gitti...', 'YONETICI'),
(43, '2020-04-27 23:19:46', '1', 'Site Bilgi Ana Ekranina gitti...', 'YONETICI'),
(44, '2020-04-27 23:19:57', '1', 'Site Ortak Cari Hareketler Ekranina gitti...', 'YONETICI'),
(45, '2020-04-27 23:20:09', '1', 'Site Blok Bilgi Ana Ekranına gitti...', 'YONETICI'),
(46, '2020-04-27 23:20:17', '1', 'Site Sikayet Ana Ekranina gitti...', 'YONETICI'),
(47, '2020-04-27 23:22:49', '1', 'Site Sikayet Ana Ekranina gitti...', 'YONETICI'),
(48, '2020-04-28 02:10:32', '1', 'Site Sikayet Ana Ekranina gitti...', 'YONETICI'),
(49, '2020-04-28 16:21:40', '1', 'Site Blok Bilgi Ana Ekranına gitti...', 'YONETICI'),
(50, '2020-04-28 16:31:46', '1', 'Site Sikayet Ana Ekranina gitti...', 'YONETICI'),
(51, '2020-04-28 19:10:13', '1', 'Site Ajanda ve Hatirlatma Ana Ekranina gitti...', 'YONETICI'),
(52, '2020-04-28 19:52:13', '1', 'Site Ajanda ve Hatirlatma Ana Ekranina gitti...', 'YONETICI'),
(53, '2020-04-28 19:52:39', '1', 'Site Ajanda ve Hatirlatma Ana Ekranina gitti...', 'YONETICI'),
(54, '2020-04-28 19:52:54', '1', 'Site Ortak Cari Hareketler Ekranina gitti...', 'YONETICI'),
(55, '2020-04-28 19:53:04', '1', 'Site Personel Ana Ekranina gitti...', 'YONETICI'),
(56, '2020-04-28 19:53:25', '1', 'Site Sikayet Ana Ekranina gitti...', 'YONETICI'),
(57, '2020-04-28 19:53:41', '1', 'Site Ajanda ve Hatirlatma Ana Ekranina gitti...', 'YONETICI'),
(58, '2020-04-28 19:53:45', '1', 'Site Blok Bilgi Ana Ekranına gitti...', 'YONETICI'),
(59, '2020-04-28 19:54:13', '1', 'Site Ajanda ve Hatirlatma Ana Ekranina gitti...', 'YONETICI'),
(60, '2020-04-28 19:58:38', '1', 'Site Ajanda ve Hatirlatma Ana Ekranina gitti...', 'YONETICI'),
(61, '2020-04-28 19:58:48', '1', 'Site Personel Ana Ekranina gitti...', 'YONETICI'),
(62, '2020-04-28 20:10:47', '1', 'Site Personel Ana Ekranina gitti...', 'YONETICI'),
(63, '2020-04-28 20:12:06', '1', 'Site Personel Ana Ekranina gitti...', 'YONETICI'),
(64, '2020-04-28 20:17:32', '1', 'Site Personel Ana Ekranina gitti...', 'YONETICI'),
(65, '2020-04-28 20:19:10', '1', 'Site Personel Ana Ekranina gitti...', 'YONETICI'),
(66, '2020-04-28 20:26:08', '1', 'Site Personel Ana Ekranina gitti...', 'YONETICI'),
(67, '2020-04-28 20:26:41', '1', 'Site Personel Ana Ekranina gitti...', 'YONETICI'),
(68, '2020-04-28 20:55:54', '1', 'Site Ajanda ve Hatirlatma Ana Ekranina gitti...', 'YONETICI'),
(69, '2020-04-28 20:56:05', '1', 'Site Personel Ana Ekranina gitti...', 'YONETICI'),
(70, '2020-04-28 20:56:39', '1', 'Site Ajanda ve Hatirlatma Ana Ekranina gitti...', 'YONETICI'),
(71, '2020-04-28 21:04:47', '1', 'Site Ajanda ve Hatirlatma Ana Ekranina gitti...', 'YONETICI'),
(72, '2020-04-28 21:05:35', '1', 'Site Ajanda ve Hatirlatma Ana Ekranina gitti...', 'YONETICI'),
(73, '2020-04-28 21:09:55', '1', 'Site Ajanda ve Hatirlatma Ana Ekranina gitti...', 'YONETICI'),
(74, '2020-04-28 21:33:06', '1', 'Site Bilgi Ana Ekranina gitti...', 'YONETICI'),
(75, '2020-04-28 21:33:27', '1', 'Site Ortak Cari Hareketler Ekranina gitti...', 'YONETICI'),
(76, '2020-04-28 21:33:46', '1', 'Site Blok Bilgi Ana Ekranına gitti...', 'YONETICI'),
(77, '2020-04-28 21:34:08', '1', 'Site Sikayet Ana Ekranina gitti...', 'YONETICI'),
(78, '2020-04-28 21:34:48', '1', 'Site Ajanda ve Hatirlatma Ana Ekranina gitti...', 'YONETICI'),
(79, '2020-04-28 21:35:07', '1', 'Site Kullanici Yonetimi Ana Ekranina gitti...', 'YONETICI'),
(80, '2020-04-28 21:35:53', '1', 'Site Kullanici Yonetimi Ana Ekranina gitti...', 'YONETICI'),
(81, '2020-04-28 21:37:59', '1', 'Site Kullanici Yonetimi Ana Ekranina gitti...', 'YONETICI'),
(82, '2020-04-28 21:38:36', '1', 'Site Log Yonetimi Ana Ekranina gitti...', 'YONETICI'),
(83, '2020-04-28 21:38:41', '1', 'Site Personel Ana Ekranina gitti...', 'YONETICI'),
(84, '2020-04-28 21:41:17', '1', 'Site Kullanici Yonetimi Ana Ekranina gitti...', 'YONETICI'),
(85, '2020-04-28 21:45:05', '1', 'Site Kullanici Yonetimi Ana Ekranina gitti...', 'YONETICI'),
(86, '2020-04-28 21:45:34', '1', 'Site Kullanici Yonetimi Ana Ekranina gitti...', 'YONETICI'),
(87, '2020-04-28 21:45:54', '1', 'Site Log Yonetimi Ana Ekranina gitti...', 'YONETICI'),
(88, '2020-05-03 00:46:27', '1', 'Site Bilgi Ana Ekranina gitti...', 'YONETICI'),
(89, '2020-05-03 00:46:30', '1', 'Site Blok Bilgi Ana Ekranına gitti...', 'YONETICI'),
(90, '2020-05-03 00:46:34', '1', 'Site Kullanici Yonetimi Ana Ekranina gitti...', 'YONETICI'),
(91, '2020-05-03 01:08:54', '1', 'Site Bilgi Ana Ekranina gitti...', 'YONETICI'),
(92, '2020-05-03 01:09:13', '1', 'Site Ortak Cari Hareketler Ekranina gitti...', 'YONETICI'),
(93, '2020-05-03 01:09:20', '1', 'Site Sikayet Ana Ekranina gitti...', 'YONETICI'),
(94, '2020-05-03 02:25:36', '1', 'Site Personel Ana Ekranina gitti...', 'YONETICI'),
(95, '2020-05-03 02:25:41', '1', 'Site Kullanici Yonetimi Ana Ekranina gitti...', 'YONETICI'),
(96, '2020-05-03 02:27:48', '1', 'Site Kullanici Yonetimi Ana Ekranina gitti...', 'YONETICI'),
(97, '2020-05-03 02:29:07', '1', 'Site Kullanici Yonetimi Ana Ekranina gitti...', 'YONETICI'),
(98, '2020-05-03 02:30:49', '1', 'Site Kullanici Yonetimi Ana Ekranina gitti...', 'YONETICI'),
(99, '2020-05-03 02:34:56', '1', 'Site Kullanici Yonetimi Ana Ekranina gitti...', 'YONETICI'),
(100, '2020-05-03 02:37:14', '1', 'Site Kullanici Yonetimi Ana Ekranina gitti...', 'YONETICI'),
(101, '2020-05-03 02:41:17', '2', 'Site Personel Ana Ekranina gitti...', 'YONETICI'),
(102, '2020-05-03 02:42:43', '12', 'Site Personel Ana Ekranina gitti...', 'GUVENLIK'),
(103, '2020-05-03 02:42:47', '12', 'Site Kullanici Yonetimi Ana Ekranina gitti...', 'GUVENLIK'),
(104, '2020-05-03 02:43:38', '12', 'Site Kullanici Yonetimi Ana Ekranina gitti...', 'GUVENLIK'),
(105, '2020-05-03 02:44:46', 'admin', 'Site Kullanici Yonetimi Ana Ekranina gitti...', 'YONETICI'),
(106, '2020-05-03 02:47:13', '1', 'Site Kullanici Yonetimi Ana Ekranina gitti...', 'YONETICI'),
(107, '2020-05-03 02:47:54', '1', 'Site Kullanici Yonetimi Ana Ekranina gitti...', 'YONETICI'),
(108, '2020-05-03 02:48:46', '1', 'Site Kullanici Yonetimi Ana Ekranina gitti...', 'YONETICI'),
(109, '2020-05-03 02:50:04', '1', 'Site Kullanici Yonetimi Ana Ekranina gitti...', 'YONETICI'),
(110, '2020-05-03 02:52:36', '1', 'Site Kullanici Yonetimi Ana Ekranina gitti...', 'YONETICI'),
(111, '2020-05-03 03:36:36', '1', 'Site Bilgi Ana Ekranina gitti...', 'YONETICI'),
(112, '2020-05-03 03:36:39', '1', 'Site Kullanici Yonetimi Ana Ekranina gitti...', 'YONETICI'),
(113, '2020-05-03 03:40:05', '14', 'Site Sikayet Ana Ekranina gitti...', 'SITESAKINI'),
(114, '2020-05-03 03:44:38', '14', 'Site Sikayet Ana Ekranina gitti...', 'SITESAKINI'),
(115, '2020-05-03 03:45:09', '12', 'Site Bilgi Ana Ekranina gitti...', 'GUVENLIK'),
(116, '2020-05-03 03:45:16', '12', 'Site Ortak Cari Hareketler Ekranina gitti...', 'GUVENLIK'),
(117, '2020-05-03 03:45:37', '12', 'Site Blok Bilgi Ana Ekranına gitti...', 'GUVENLIK'),
(118, '2020-05-03 03:46:11', '12', 'Site Kullanici Yonetimi Ana Ekranina gitti...', 'GUVENLIK'),
(119, '2020-05-03 03:46:38', '12', 'Site Kullanici Yonetimi Ana Ekranina gitti...', 'GUVENLIK'),
(120, '2020-05-03 03:46:44', '12', 'Site Sikayet Ana Ekranina gitti...', 'GUVENLIK'),
(121, '2020-05-03 03:55:23', '1', 'Site Ajanda ve Hatirlatma Ana Ekranina gitti...', 'YONETICI'),
(122, '2020-05-03 03:57:09', '1', 'Site Ajanda ve Hatirlatma Ana Ekranina gitti...', 'YONETICI'),
(123, '2020-05-03 05:37:29', '1', 'Site Ajanda ve Hatirlatma Ana Ekranina gitti...', 'YONETICI'),
(124, '2020-05-03 05:37:42', '1', 'Site Ajanda ve Hatirlatma Ana Ekranina gitti...', 'YONETICI'),
(125, '2020-05-03 05:37:54', '1', 'Site Blok Bilgi Ana Ekranına gitti...', 'YONETICI'),
(126, '2020-05-03 05:38:42', '1', 'Site Ortak Cari Hareketler Ekranina gitti...', 'YONETICI'),
(127, '2020-05-03 05:38:48', '1', 'Site Sikayet Ana Ekranina gitti...', 'YONETICI'),
(128, '2020-05-03 05:39:01', '1', 'Site Bilgi Ana Ekranina gitti...', 'YONETICI'),
(129, '2020-05-03 05:39:13', '1', 'Site Ajanda ve Hatirlatma Ana Ekranina gitti...', 'YONETICI'),
(130, '2020-05-03 05:40:09', '1', 'Site Ajanda ve Hatirlatma Ana Ekranina gitti...', 'YONETICI'),
(131, '2020-05-03 05:40:27', '1', 'Site Log Yonetimi Ana Ekranina gitti...', 'YONETICI'),
(132, '2020-05-03 05:41:04', '13', 'Site Kullanici Yonetimi Ana Ekranina gitti...', 'SEKRETER'),
(133, '2020-05-03 05:41:16', '13', 'Site Bilgi Ana Ekranina gitti...', 'SEKRETER'),
(134, '2020-05-03 05:42:12', '1', 'Site Bilgi Ana Ekranina gitti...', 'YONETICI'),
(135, '2020-05-03 05:42:15', '1', 'Site Ortak Cari Hareketler Ekranina gitti...', 'YONETICI'),
(136, '2020-05-03 05:42:20', '1', 'Site Sikayet Ana Ekranina gitti...', 'YONETICI'),
(137, '2020-05-03 19:59:39', '1', 'Site Bilgi Ana Ekranina gitti...', 'YONETICI'),
(138, '2020-05-03 19:59:43', '1', 'Site Blok Bilgi Ana Ekranına gitti...', 'YONETICI'),
(139, '2020-05-03 20:00:42', '1', 'Site Blok Bilgi Ana Ekranına gitti...', 'YONETICI'),
(140, '2020-05-03 20:03:00', '1', 'Site Blok Bilgi Ana Ekranına gitti...', 'YONETICI'),
(141, '2020-05-03 20:03:53', '1', 'Site Sikayet Ana Ekranina gitti...', 'YONETICI'),
(142, '2020-05-03 20:03:56', '1', 'Site Blok Bilgi Ana Ekranına gitti...', 'YONETICI'),
(143, '2020-05-03 20:20:22', '1', 'Site Ortak Cari Hareketler Ekranina gitti...', 'YONETICI'),
(144, '2020-05-03 20:21:15', '1', 'Site Ortak Cari Hareketler Ekranina gitti...', 'YONETICI'),
(145, '2020-05-03 20:21:37', '1', 'Ortak Cari Hareket Kaydetti...', 'YONETICI'),
(146, '2020-05-03 20:23:53', '1', 'Site Blok Bilgi Ana Ekranına gitti...', 'YONETICI'),
(147, '2020-05-03 20:38:10', '1', 'Site Blok Bilgi Ana Ekranına gitti...', 'YONETICI'),
(148, '2020-05-03 20:38:14', '1', 'Site Ortak Cari Hareketler Ekranina gitti...', 'YONETICI'),
(149, '2020-05-03 20:38:26', '1', ' Numarali Ortak Cari Hareketi Kaydetti...', 'YONETICI'),
(150, '2020-05-03 20:38:36', '1', 'Site Ortak Cari Hareketler Ekranina gitti...', 'YONETICI'),
(151, '2020-05-03 20:38:44', '1', '8 Numarali Ortak Cari Hareketi Kaydetti...', 'YONETICI'),
(152, '2020-05-03 21:46:57', '1', 'Site Ortak Cari Hareketler Ekranina gitti...', 'YONETICI'),
(153, '2020-05-03 21:58:25', '1', 'Site Sikayet Ana Ekranina gitti...', 'YONETICI'),
(154, '2020-05-03 21:58:39', '1', 'Site Ortak Cari Hareketler Ekranina gitti...', 'YONETICI'),
(155, '2020-05-03 21:58:48', '1', '10 Numarali Ortak Cari Hareketi Kaydetti...', 'YONETICI'),
(156, '2020-05-03 21:59:45', '1', '10 Numarali Ortak Cari Hareketi Kaydetti...', 'YONETICI'),
(157, '2020-05-03 22:21:56', '1', 'Site Ortak Cari Hareketler Ekranina gitti...', 'YONETICI'),
(158, '2020-05-03 22:22:08', '1', '10 Numarali Ortak Cari Hareketi Kaydetti...', 'YONETICI'),
(159, '2020-05-03 22:22:18', '1', '10 Numarali Ortak Cari Hareketi Kaydetti...', 'YONETICI'),
(160, '2020-05-03 22:51:50', '1', 'Site Personel Ana Ekranina gitti...', 'YONETICI'),
(161, '2020-05-03 22:52:58', '1', 'Site Personel Ana Ekranina gitti...', 'YONETICI'),
(162, '2020-05-03 23:08:08', '1', 'Site Personel Ana Ekranina gitti...', 'YONETICI'),
(163, '2020-05-03 23:08:48', '1', 'Site Ortak Cari Hareketler Ekranina gitti...', 'YONETICI'),
(164, '2020-05-03 23:11:58', '1', 'Site Blok Bilgi Ana Ekranına gitti...', 'YONETICI'),
(165, '2020-05-03 23:12:39', '1', 'Site Log Yonetimi Ana Ekranina gitti...', 'YONETICI'),
(166, '2020-05-03 23:12:59', '1', 'Site Blok Bilgi Ana Ekranına gitti...', 'YONETICI'),
(167, '2020-05-03 23:13:38', '1', 'Site Blok Bilgi Ana Ekranına gitti...', 'YONETICI'),
(168, '2020-05-03 23:13:48', '1', 'Blok Bolum Cari hareketi isledi...', 'YONETICI'),
(169, '2020-05-03 23:13:53', '1', 'Blok Bolum Cari hareketi isledi...', 'YONETICI'),
(170, '2020-05-03 23:15:05', '1', 'Site Personel Ana Ekranina gitti...', 'YONETICI'),
(171, '2020-05-03 23:15:32', '1', 'Site Personel Ana Ekranina gitti...', 'YONETICI'),
(172, '2020-05-03 23:18:37', '1', 'Site Log Yonetimi Ana Ekranina gitti...', 'YONETICI'),
(173, '2020-05-03 23:21:50', '1', 'Site Log Yonetimi Ana Ekranina gitti...', 'YONETICI'),
(174, '2020-05-03 23:22:20', '1', 'Site Ortak Cari Hareketler Ekranina gitti...', 'YONETICI'),
(175, '2020-05-03 23:22:30', '1', 'Site Log Yonetimi Ana Ekranina gitti...', 'YONETICI'),
(176, '2020-05-03 23:25:36', '1', 'Site Log Yonetimi Ana Ekranina gitti...', 'YONETICI'),
(177, '2020-05-03 23:26:19', '2', 'Site Log Yonetimi Ana Ekranina gitti...', 'YONETICI'),
(178, '2020-05-03 23:26:44', '1', 'Site Log Yonetimi Ana Ekranina gitti...', 'YONETICI'),
(179, '2020-05-03 23:39:29', '1', 'Site Log Yonetimi Ana Ekranina gitti...', 'YONETICI'),
(180, '2020-05-03 23:42:09', '1', 'Site Log Yonetimi Ana Ekranina gitti...', 'YONETICI'),
(181, '2020-05-03 23:48:20', '1', 'Site Sikayet Ana Ekranina gitti...', 'YONETICI'),
(182, '2020-05-03 23:48:43', '1', 'Site Blok Bilgi Ana Ekranına gitti...', 'YONETICI'),
(183, '2020-05-03 23:49:42', '1', 'Site Sikayet Ana Ekranina gitti...', 'YONETICI'),
(184, '2020-05-03 23:49:53', '1', 'Site Blok Bilgi Ana Ekranına gitti...', 'YONETICI'),
(185, '2020-05-03 23:51:05', '1', 'Site Sikayet Ana Ekranina gitti...', 'YONETICI'),
(186, '2020-05-03 23:53:07', '1', 'Site Log Yonetimi Ana Ekranina gitti...', 'YONETICI'),
(187, '2020-05-03 23:53:15', '1', 'Site Log Yonetimi Ana Ekranina gitti...', 'YONETICI'),
(188, '2020-05-03 23:54:50', '1', 'Site Sikayet Ana Ekranina gitti...', 'YONETICI'),
(189, '2020-05-04 00:19:17', '1', 'Site Sikayet Ana Ekranina gitti...', 'YONETICI'),
(190, '2020-05-04 00:21:11', '1', 'Site Sikayet Ana Ekranina gitti...', 'YONETICI'),
(191, '2020-05-04 00:22:16', '1', 'Site Sikayet Ana Ekranina gitti...', 'YONETICI'),
(192, '2020-05-04 00:26:23', '1', 'Site Sikayet Ana Ekranina gitti...', 'YONETICI'),
(193, '2020-05-04 00:26:35', '1', 'Site Sikayet Ana Ekranina gitti...', 'YONETICI'),
(194, '2020-05-04 00:27:27', '1', 'Site Sikayet Ana Ekranina gitti...', 'YONETICI'),
(195, '2020-05-04 00:27:58', '1', 'Site Log Yonetimi Ana Ekranina gitti...', 'YONETICI');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `siteortakcarihareket`
--

CREATE TABLE `siteortakcarihareket` (
  `Ortakcarihareketid` int(11) NOT NULL,
  `Aciklama` varchar(200) DEFAULT NULL,
  `Ortakharekettarih` date DEFAULT NULL,
  `Ortakodemetutari` decimal(10,2) DEFAULT 0.00,
  `Ortaktahsilattutari` decimal(10,2) DEFAULT 0.00,
  `Ortakhareketsaati` varchar(45) DEFAULT NULL,
  `hatirlat` date DEFAULT NULL,
  `hakedis` decimal(10,2) DEFAULT 0.00,
  `personeladi` varchar(45) DEFAULT NULL,
  `logkullaniciadi` varchar(100) DEFAULT NULL,
  `logaciklama` varchar(100) DEFAULT NULL,
  `logzamani` datetime NOT NULL DEFAULT current_timestamp(),
  `logkullaniciyetkisi` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `siteortakcarihareket`
--

INSERT INTO `siteortakcarihareket` (`Ortakcarihareketid`, `Aciklama`, `Ortakharekettarih`, `Ortakodemetutari`, `Ortaktahsilattutari`, `Ortakhareketsaati`, `hatirlat`, `hakedis`, `personeladi`, `logkullaniciadi`, `logaciklama`, `logzamani`, `logkullaniciyetkisi`) VALUES
(7, 'Site Ortak Cari Hareketi', '2020-05-03', '111.00', '111.00', '1212', '2020-05-03', '0.00', 'ZERRIN CERKES', NULL, NULL, '2020-05-03 21:30:57', NULL),
(8, 'Site Ortak Cari Hareketi', '2020-05-03', '444.00', '444.00', 'örnek= 12:12:12', '2020-05-03', '0.00', 'YILMAZ OLMEZ', NULL, NULL, '2020-05-03 21:30:57', NULL),
(9, 'Site Ortak Cari Hareketi', '2020-05-03', '1212.00', '1212.00', 'örnek= 12:12:12', '2020-05-03', '0.00', 'YILMAZ OLMEZ', '1', 'Ortak Cari Islem Kaydetti', '2020-05-03 21:47:14', 'YONETICI'),
(10, 'Site Ortak Cari Hareketi', '2020-05-03', '12.00', '121.00', 'örnek= 12:12:12', '2020-05-03', '4.00', 'YUNUS MAZOOGLU', '1', 'Ortak Cari Islem Kaydetti', '2020-05-03 22:22:17', 'YONETICI'),
(11, 'Site Ortak Cari Hareketi', '2020-05-03', '0.00', '0.00', 'örnek= 12:12:12', '2020-05-03', '0.00', 'YILMAZ OLMEZ', '1', 'Ortak Cari Islem Ekledi...', '2020-05-03 23:08:58', 'YONETICI'),
(12, 'Site Ortak Cari Hareketi', '2020-05-03', '0.00', '0.00', 'örnek= 12:12:12', '2020-05-03', '0.00', 'YILMAZ OLMEZ', '1', 'Ortak Cari Islem Ekledi...', '2020-05-03 23:22:24', 'YONETICI');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sitepersonelbilgi`
--

CREATE TABLE `sitepersonelbilgi` (
  `PersonelID` int(11) NOT NULL,
  `Personeladsoyad` varchar(60) DEFAULT NULL,
  `Personeltcno` varchar(20) NOT NULL,
  `Personeltelefonno` varchar(45) DEFAULT NULL,
  `Personelepostaadresi` varchar(30) DEFAULT NULL,
  `Personelyetki` varchar(45) DEFAULT NULL,
  `Personelisegiristarihi` date DEFAULT NULL,
  `Personelistencikistarihi` date DEFAULT NULL,
  `Personeldepartman` varchar(45) DEFAULT NULL,
  `Personeladres` varchar(100) DEFAULT NULL,
  `Personelsskno` varchar(45) DEFAULT NULL,
  `Personelmaasi` decimal(10,2) DEFAULT 0.00,
  `Personelvardiyasi` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `sitepersonelbilgi`
--

INSERT INTO `sitepersonelbilgi` (`PersonelID`, `Personeladsoyad`, `Personeltcno`, `Personeltelefonno`, `Personelepostaadresi`, `Personelyetki`, `Personelisegiristarihi`, `Personelistencikistarihi`, `Personeldepartman`, `Personeladres`, `Personelsskno`, `Personelmaasi`, `Personelvardiyasi`) VALUES
(4, 'YILMAZ OLMEZ', '11111111111', '', '', 'YONETICI', '2020-04-28', '2099-01-01', 'IDARI ISLER', '', '', '0.00', ''),
(5, 'ZERRIN CERKES', '22222222222', '', '', 'YONETICI', '2020-04-28', '2099-01-01', 'IDARI ISLER', '', '', '0.00', ''),
(6, 'YUNUS MAZOOGLU', '33333333333', '', '', 'YONETICI', '2020-04-28', '2099-01-01', 'IDARI ISLER', '', '', '0.00', ''),
(7, 'DEVRIM GUNES', '44444444444', '', '', 'YONETICI', '2020-04-28', '2099-01-01', 'IDARI ISLER', '', '', '0.00', ''),
(8, 'DONE ATES', '55555555555', '', '', 'YONETICI', '2020-04-28', '2099-01-01', 'IDARI ISLER', '', '', '0.00', ''),
(9, 'MUHAMMED BEYYUD', '66666666666', '', '', 'YONETICI', '2020-04-28', '2099-01-01', 'IDARI ISLER', '', '', '0.00', ''),
(10, 'SARE OZKAN', '77777777777', '', '', 'YONETICI', '2020-04-28', '2099-01-01', 'IDARI ISLER', '', '', '0.00', ''),
(11, 'MEHMET SALIH OZTURK', '88888888888', '', '', 'YONETICI', '2020-04-28', '2099-01-01', 'IDARI ISLER', '', '', '0.00', ''),
(12, 'HASAN HACISULEYMAN', '99999999999', '', '', 'YONETICI', '2020-04-28', '2099-01-01', 'IDARI ISLER', '', '', '0.00', ''),
(20, 'MUSTAFA ALTUNDAG', '99999999998', '', '', 'YONETICI', '2020-04-28', '2099-01-01', 'IDARI ISLER', '', '', '0.00', ''),
(21, 'TUM DEVELOPER EKIBIMIZ', '99999999997', '', '', 'YONETICI', '2020-04-28', '2099-01-01', 'IDARI ISLER', '', '', '0.00', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sitepersonelcarihareket`
--

CREATE TABLE `sitepersonelcarihareket` (
  `Personelhareketid` int(11) NOT NULL,
  `Personeltcno` varchar(20) NOT NULL,
  `Personeladsoyad` varchar(60) DEFAULT NULL,
  `Personelborctutari` decimal(10,2) DEFAULT 0.00,
  `Personelalacaktutari` decimal(10,2) DEFAULT 0.00,
  `Aciklama` varchar(200) DEFAULT NULL,
  `Personelharekettarihi` date DEFAULT NULL,
  `hatirlat` date DEFAULT NULL,
  `hakedis` decimal(10,2) DEFAULT 0.00,
  `logkullaniciyetkisi` varchar(100) DEFAULT NULL,
  `logkullaniciadi` varchar(100) DEFAULT NULL,
  `logaciklama` varchar(100) DEFAULT NULL,
  `logzamani` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `sitepersonelcarihareket`
--

INSERT INTO `sitepersonelcarihareket` (`Personelhareketid`, `Personeltcno`, `Personeladsoyad`, `Personelborctutari`, `Personelalacaktutari`, `Aciklama`, `Personelharekettarihi`, `hatirlat`, `hakedis`, `logkullaniciyetkisi`, `logkullaniciadi`, `logaciklama`, `logzamani`) VALUES
(10, '99999999999', 'HASAN HACISULEYMAN', '123.00', '123.00', 'Personel Cari Hareketi', '2020-05-03', '2020-05-03', '0.00', 'YONETICI', '1', 'Personel Cari Islemi Guncelledi...', '2020-05-03 23:15:12'),
(11, '99999999999', 'HASAN HACISULEYMAN', '0.00', '0.00', 'Personel Cari Hareketi  ', '2020-05-03', '2020-05-03', '0.00', 'YONETICI', '1', 'Personel Cari Islemi Guncelledi...', '2020-05-03 23:15:51');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sitesikayetbilgihareket`
--

CREATE TABLE `sitesikayetbilgihareket` (
  `sikayetid` int(11) NOT NULL,
  `Blokbolumadi` varchar(45) DEFAULT NULL,
  `sikayetedensakinbilgi` varchar(100) DEFAULT NULL,
  `Aciklama` varchar(200) DEFAULT NULL,
  `sikayetzamani` date DEFAULT NULL,
  `sikayetilgilenen` varchar(100) DEFAULT NULL,
  `sikayetsondurum` varchar(100) DEFAULT NULL,
  `sikayetalinanaksiyon` varchar(200) DEFAULT NULL,
  `sikayetirtibatbilgisi` varchar(100) DEFAULT NULL,
  `hatirlat` date DEFAULT NULL,
  `hakedis` decimal(10,2) DEFAULT 0.00,
  `Blokadi` varchar(45) DEFAULT NULL,
  `logkullaniciadi` varchar(100) DEFAULT NULL,
  `logzamani` datetime DEFAULT current_timestamp(),
  `logaciklama` varchar(100) DEFAULT NULL,
  `logkullaniciyetkisi` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `sitesikayetbilgihareket`
--

INSERT INTO `sitesikayetbilgihareket` (`sikayetid`, `Blokbolumadi`, `sikayetedensakinbilgi`, `Aciklama`, `sikayetzamani`, `sikayetilgilenen`, `sikayetsondurum`, `sikayetalinanaksiyon`, `sikayetirtibatbilgisi`, `hatirlat`, `hakedis`, `Blokadi`, `logkullaniciadi`, `logzamani`, `logaciklama`, `logkullaniciyetkisi`) VALUES
(7, 'A1', 'A1 AHMET', 'qweqweqwe', '2020-05-03', 'Personel Secimi Henuz Yapilmadi', 'SIKAYET ACIK', '', '', '2020-05-03', '0.00', 'A', '1', '2020-05-04 00:21:32', 'Personel Cari Islemi Guncelledi...', 'YONETICI'),
(8, 'B1', 'B1 SAKINI 1', '1123123', '2020-05-04', 'Personel Secimi Henuz Yapilmadi', 'SIKAYET ACIK', '', '', '2020-05-04', '0.00', 'A', '1', '2020-05-04 00:22:27', 'Personel Cari Islemi Guncelledi...', 'YONETICI'),
(9, 'B1', 'B1 SAKINI 1', '123123213', '2020-05-04', 'Personel Secimi Henuz Yapilmadi', 'SIKAYET ACIK', '', '', '2020-05-04', '0.00', 'A', '1', '2020-05-04 00:26:39', 'Personel Cari Islemi Guncelledi...', 'YONETICI'),
(10, 'B1', 'B1 SAKINI 1', '55555', '2020-05-04', 'Personel Secimi Henuz Yapilmadi', 'SIKAYET ACIK', '', '', '2020-05-04', '0.00', 'A', '1', '2020-05-04 00:27:41', 'Sikayet Islemi Guncelledi...', 'YONETICI');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `siteversionbilgi`
--

CREATE TABLE `siteversionbilgi` (
  `versionid` int(11) NOT NULL,
  `versionuygulama` varchar(45) DEFAULT NULL,
  `versiondb` varchar(45) DEFAULT NULL,
  `versionadi` varchar(200) DEFAULT 'Site Otomasyonu v '
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `siteversionbilgi`
--

INSERT INTO `siteversionbilgi` (`versionid`, `versionuygulama`, `versiondb`, `versionadi`) VALUES
(1, 'App 01.04.20', 'Db 01.04.20', 'Site Otomasyonu v '),
(2, 'App 02.04.20', 'Db 02.04.20', 'Site Otomasyonu v '),
(3, 'App 11.04.20', 'Db 11.04.20', 'Site Otomasyonu v '),
(4, 'App 15.04.20', 'Db 15.04.20', 'Site Otomasyonu v '),
(5, 'App 28.04.20', 'Db 28.04.20', 'Site Otomasyonu v '),
(6, 'App 03.05.20', 'Db 03.05.20', 'Site Otomasyonu v '),
(7, 'App 04.05.20', 'Db 04.05.20', 'Site Otomasyonu v ');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `siteajanda`
--
ALTER TABLE `siteajanda`
  ADD PRIMARY KEY (`islemid`);

--
-- Tablo için indeksler `sitebilgi`
--
ALTER TABLE `sitebilgi`
  ADD PRIMARY KEY (`Siteid`);

--
-- Tablo için indeksler `siteblokbilgi`
--
ALTER TABLE `siteblokbilgi`
  ADD PRIMARY KEY (`BlokID`),
  ADD UNIQUE KEY `Blokadi` (`Blokadi`);

--
-- Tablo için indeksler `sitebolumbilgi`
--
ALTER TABLE `sitebolumbilgi`
  ADD PRIMARY KEY (`BolumId`),
  ADD KEY `Blokadi` (`Blokadi`),
  ADD KEY `Blokbolumadi` (`Blokbolumadi`);

--
-- Tablo için indeksler `sitebolumcarihareket`
--
ALTER TABLE `sitebolumcarihareket`
  ADD PRIMARY KEY (`Bolumcarihareketid`),
  ADD KEY `Blokbolumadi` (`Blokbolumadi`);

--
-- Tablo için indeksler `sitebolumsakinbilgi`
--
ALTER TABLE `sitebolumsakinbilgi`
  ADD PRIMARY KEY (`Bolumsakinid`),
  ADD KEY `Blokbolumadi` (`Blokbolumadi`);

--
-- Tablo için indeksler `sitebolumziyaretci`
--
ALTER TABLE `sitebolumziyaretci`
  ADD PRIMARY KEY (`Ziyaretciid`),
  ADD KEY `Blokbolumadi` (`Blokbolumadi`);

--
-- Tablo için indeksler `sitekullanicibilgi`
--
ALTER TABLE `sitekullanicibilgi`
  ADD PRIMARY KEY (`kullaniciid`),
  ADD UNIQUE KEY `kullaniciadi` (`kullaniciadi`);

--
-- Tablo için indeksler `sitelog`
--
ALTER TABLE `sitelog`
  ADD PRIMARY KEY (`logid`);

--
-- Tablo için indeksler `sitelogislem`
--
ALTER TABLE `sitelogislem`
  ADD PRIMARY KEY (`islemid`);

--
-- Tablo için indeksler `siteortakcarihareket`
--
ALTER TABLE `siteortakcarihareket`
  ADD PRIMARY KEY (`Ortakcarihareketid`);

--
-- Tablo için indeksler `sitepersonelbilgi`
--
ALTER TABLE `sitepersonelbilgi`
  ADD PRIMARY KEY (`PersonelID`),
  ADD UNIQUE KEY `Personeltcno` (`Personeltcno`) USING BTREE;

--
-- Tablo için indeksler `sitepersonelcarihareket`
--
ALTER TABLE `sitepersonelcarihareket`
  ADD PRIMARY KEY (`Personelhareketid`),
  ADD KEY `Personeltcno` (`Personeltcno`);

--
-- Tablo için indeksler `sitesikayetbilgihareket`
--
ALTER TABLE `sitesikayetbilgihareket`
  ADD PRIMARY KEY (`sikayetid`);

--
-- Tablo için indeksler `siteversionbilgi`
--
ALTER TABLE `siteversionbilgi`
  ADD PRIMARY KEY (`versionid`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `siteajanda`
--
ALTER TABLE `siteajanda`
  MODIFY `islemid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Tablo için AUTO_INCREMENT değeri `sitebilgi`
--
ALTER TABLE `sitebilgi`
  MODIFY `Siteid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `siteblokbilgi`
--
ALTER TABLE `siteblokbilgi`
  MODIFY `BlokID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `sitebolumbilgi`
--
ALTER TABLE `sitebolumbilgi`
  MODIFY `BolumId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Tablo için AUTO_INCREMENT değeri `sitebolumcarihareket`
--
ALTER TABLE `sitebolumcarihareket`
  MODIFY `Bolumcarihareketid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `sitebolumsakinbilgi`
--
ALTER TABLE `sitebolumsakinbilgi`
  MODIFY `Bolumsakinid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `sitebolumziyaretci`
--
ALTER TABLE `sitebolumziyaretci`
  MODIFY `Ziyaretciid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `sitekullanicibilgi`
--
ALTER TABLE `sitekullanicibilgi`
  MODIFY `kullaniciid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Tablo için AUTO_INCREMENT değeri `sitelog`
--
ALTER TABLE `sitelog`
  MODIFY `logid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=473;

--
-- Tablo için AUTO_INCREMENT değeri `sitelogislem`
--
ALTER TABLE `sitelogislem`
  MODIFY `islemid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=196;

--
-- Tablo için AUTO_INCREMENT değeri `siteortakcarihareket`
--
ALTER TABLE `siteortakcarihareket`
  MODIFY `Ortakcarihareketid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Tablo için AUTO_INCREMENT değeri `sitepersonelbilgi`
--
ALTER TABLE `sitepersonelbilgi`
  MODIFY `PersonelID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Tablo için AUTO_INCREMENT değeri `sitepersonelcarihareket`
--
ALTER TABLE `sitepersonelcarihareket`
  MODIFY `Personelhareketid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Tablo için AUTO_INCREMENT değeri `sitesikayetbilgihareket`
--
ALTER TABLE `sitesikayetbilgihareket`
  MODIFY `sikayetid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `siteversionbilgi`
--
ALTER TABLE `siteversionbilgi`
  MODIFY `versionid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `sitebolumbilgi`
--
ALTER TABLE `sitebolumbilgi`
  ADD CONSTRAINT `sitebolumbilgi_ibfk_1` FOREIGN KEY (`Blokadi`) REFERENCES `siteblokbilgi` (`Blokadi`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Tablo kısıtlamaları `sitebolumcarihareket`
--
ALTER TABLE `sitebolumcarihareket`
  ADD CONSTRAINT `sitebolumcarihareket_ibfk_1` FOREIGN KEY (`Blokbolumadi`) REFERENCES `sitebolumbilgi` (`Blokbolumadi`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Tablo kısıtlamaları `sitebolumsakinbilgi`
--
ALTER TABLE `sitebolumsakinbilgi`
  ADD CONSTRAINT `sitebolumsakinbilgi_ibfk_1` FOREIGN KEY (`Blokbolumadi`) REFERENCES `sitebolumbilgi` (`Blokbolumadi`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Tablo kısıtlamaları `sitebolumziyaretci`
--
ALTER TABLE `sitebolumziyaretci`
  ADD CONSTRAINT `sitebolumziyaretci_ibfk_1` FOREIGN KEY (`Blokbolumadi`) REFERENCES `sitebolumbilgi` (`Blokbolumadi`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Tablo kısıtlamaları `sitepersonelcarihareket`
--
ALTER TABLE `sitepersonelcarihareket`
  ADD CONSTRAINT `sitepersonelcarihareket_ibfk_1` FOREIGN KEY (`Personeltcno`) REFERENCES `sitepersonelbilgi` (`Personeltcno`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
