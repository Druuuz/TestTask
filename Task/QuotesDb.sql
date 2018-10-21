-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 21 2018 г., 21:06
-- Версия сервера: 5.7.16
-- Версия PHP: 5.6.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `QuotesDb`
--

-- --------------------------------------------------------

--
-- Структура таблицы `Quote`
--

CREATE TABLE `Quote` (
  `id` int(11) NOT NULL,
  `Open` double NOT NULL,
  `High` double NOT NULL,
  `Low` double NOT NULL,
  `Close` double NOT NULL,
  `DateTime` datetime NOT NULL,
  `Volume` int(11) NOT NULL,
  `Symbol_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Quote`
--

INSERT INTO `Quote` (`id`, `Open`, `High`, `Low`, `Close`, `DateTime`, `Volume`, `Symbol_id`) VALUES
(1, 0.7144, 0.7222, 0.7111, 0.7154, '2018-10-09 00:00:00', 50, 1),
(2, 0.6132, 0.6245, 0.6101, 0.611, '2018-10-10 00:00:00', 40, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `Symbol`
--

CREATE TABLE `Symbol` (
  `id` int(11) NOT NULL,
  `Name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Symbol`
--

INSERT INTO `Symbol` (`id`, `Name`) VALUES
(1, 'NASDAQ:AAPL'),
(2, 'BITFINEX:BTCUSD');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `Quote`
--
ALTER TABLE `Quote`
  ADD PRIMARY KEY (`id`,`Symbol_id`),
  ADD KEY `fk_Quote_Symbol_idx` (`Symbol_id`);

--
-- Индексы таблицы `Symbol`
--
ALTER TABLE `Symbol`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `Quote`
--
ALTER TABLE `Quote`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `Symbol`
--
ALTER TABLE `Symbol`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `Quote`
--
ALTER TABLE `Quote`
  ADD CONSTRAINT `fk_Quote_Symbol` FOREIGN KEY (`Symbol_id`) REFERENCES `Symbol` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
