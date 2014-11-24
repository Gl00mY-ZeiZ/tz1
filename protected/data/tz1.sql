-- phpMyAdmin SQL Dump
-- version 4.2.8
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Ноя 24 2014 г., 10:03
-- Версия сервера: 5.6.19-log
-- Версия PHP: 5.5.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `tz1`
--

-- --------------------------------------------------------

--
-- Структура таблицы `subscribe`
--

CREATE TABLE IF NOT EXISTS `subscribe` (
`id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `subscribe`
--

INSERT INTO `subscribe` (`id`, `email`, `created`) VALUES
(1, 'zeiz@rambler.ru', '2014-11-24 08:52:35'),
(2, 'test@site.com', '2014-11-24 08:52:46'),
(3, 'smth@demo.com', '2014-11-24 08:55:00'),
(4, 'test2@site.com', '2014-11-24 09:03:04');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `subscribe`
--
ALTER TABLE `subscribe`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `subscribe`
--
ALTER TABLE `subscribe`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
