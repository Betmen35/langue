-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 20 Ara 2021, 20:44:52
-- Sunucu sürümü: 10.1.21-MariaDB
-- PHP Sürümü: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `phpcalismam`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ingilizce`
--

CREATE TABLE `ingilizce` (
  `id` int(11) NOT NULL,
  `kelime` varchar(200) COLLATE utf8_turkish_ci NOT NULL,
  `karsiligi` varchar(200) COLLATE utf8_turkish_ci NOT NULL,
  `ingilizce` varchar(200) COLLATE utf8_turkish_ci NOT NULL,
  `sayfa` varchar(200) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `ingilizce`
--

INSERT INTO `ingilizce` (`id`, `kelime`, `karsiligi`, `ingilizce`, `sayfa`) VALUES
(1, 'home', 'home', 'home', 'home'),
(2, 'contact', 'contact', 'contact', 'contact');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sayfalar`
--

CREATE TABLE `sayfalar` (
  `id` int(11) NOT NULL,
  `sayfa` varchar(200) COLLATE utf8_turkish_ci NOT NULL,
  `turkce` varchar(200) COLLATE utf8_turkish_ci NOT NULL,
  `karsiligi` varchar(200) COLLATE utf8_turkish_ci NOT NULL,
  `ingilizce` varchar(200) COLLATE utf8_turkish_ci NOT NULL,
  `verisi` varchar(200) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `sayfalar`
--

INSERT INTO `sayfalar` (`id`, `sayfa`, `turkce`, `karsiligi`, `ingilizce`, `verisi`) VALUES
(1, 'anasayfa', 'home', 'anasayfa', 'home', 'home'),
(2, 'iletisim', 'contact', 'iletisim', 'contact', 'contact');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `turkce`
--

CREATE TABLE `turkce` (
  `id` int(11) NOT NULL,
  `kelime` varchar(200) COLLATE utf8_turkish_ci NOT NULL,
  `karsiligi` varchar(200) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `turkce`
--

INSERT INTO `turkce` (`id`, `kelime`, `karsiligi`) VALUES
(1, 'home', 'anasayfa'),
(2, 'contact', 'iletisim');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `ingilizce`
--
ALTER TABLE `ingilizce`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `sayfalar`
--
ALTER TABLE `sayfalar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `turkce`
--
ALTER TABLE `turkce`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `ingilizce`
--
ALTER TABLE `ingilizce`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Tablo için AUTO_INCREMENT değeri `sayfalar`
--
ALTER TABLE `sayfalar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Tablo için AUTO_INCREMENT değeri `turkce`
--
ALTER TABLE `turkce`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
