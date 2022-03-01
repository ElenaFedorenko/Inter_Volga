-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Мар 01 2022 г., 20:19
-- Версия сервера: 5.5.25
-- Версия PHP: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `inter_volga`
--

-- --------------------------------------------------------

--
-- Структура таблицы `athletes`
--

CREATE TABLE IF NOT EXISTS `athletes` (
  `id` int(3) NOT NULL,
  `familia` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `father_name` varchar(30) NOT NULL,
  `kind_of_sport` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `competitions`
--

CREATE TABLE IF NOT EXISTS `competitions` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `sorevnovaniya_name` varchar(30) NOT NULL,
  `kind_of_sport` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `results`
--

CREATE TABLE IF NOT EXISTS `results` (
  `id` int(3) NOT NULL,
  `athletes_id` int(5) NOT NULL,
  `competitions_id` int(5) NOT NULL,
  `kind_of_sport` varchar(30) NOT NULL,
  `count_ball` int(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `winners`
--

CREATE TABLE IF NOT EXISTS `winners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kind_of_sport` varchar(30) NOT NULL,
  `competitions_id` int(5) NOT NULL,
  `results_id` int(3) NOT NULL,
  `athletes_id` int(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
