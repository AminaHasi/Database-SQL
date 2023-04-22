-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Час створення: Квт 22 2023 р., 12:37
-- Версія сервера: 10.4.27-MariaDB
-- Версія PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `updatebase`
--

-- --------------------------------------------------------

--
-- Структура таблиці `category`
--

CREATE TABLE `category` (
  `id_category` int(11) NOT NULL,
  `category_` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп даних таблиці `category`
--

INSERT INTO `category` (`id_category`, `category_`) VALUES
(1, 'Підручники'),
(2, 'Апаратні засоби ПК'),
(3, 'Захист і безпека ПК'),
(4, 'Інші книги'),
(5, 'Windows 2000'),
(6, 'Linux'),
(7, 'Unix'),
(8, 'Інші операційні системи'),
(9, 'C&C++'),
(10, 'SQL'),
(11, 'Підручники'),
(12, 'Апаратні засоби ПК'),
(13, 'Захист і безпека ПК'),
(14, 'Інші книги'),
(15, 'Windows 2000'),
(16, 'Linux'),
(17, 'Unix'),
(18, 'Інші операційні системи'),
(19, 'C&C++'),
(20, 'SQL'),
(21, 'Підручники'),
(22, 'Апаратні засоби ПК'),
(23, 'Захист і безпека ПК'),
(24, 'Інші книги'),
(25, 'Windows 2000'),
(26, 'Linux'),
(27, 'Unix'),
(28, 'Інші операційні системи'),
(29, 'C&C++'),
(30, 'SQL');

-- --------------------------------------------------------

--
-- Структура таблиці `edition_public`
--

CREATE TABLE `edition_public` (
  `id_edition` int(11) NOT NULL,
  `edition_` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп даних таблиці `edition_public`
--

INSERT INTO `edition_public` (`id_edition`, `edition_`) VALUES
(1, 'Видавнича група BHV'),
(2, 'Вільямс'),
(3, 'МикроАрт'),
(4, 'DiaSoft'),
(5, 'ДМК'),
(6, 'Триумф'),
(7, 'Эком'),
(8, 'Києво-Могилянська академія'),
(9, 'Університет \"Україна\"'),
(10, 'Вінниця: ВДТУ'),
(11, 'Видавнича група BHV'),
(12, 'Вільямс'),
(13, 'МикроАрт'),
(14, 'DiaSoft'),
(15, 'ДМК'),
(16, 'Триумф'),
(17, 'Эком'),
(18, 'Києво-Могилянська академія'),
(19, 'Університет \"Україна\"'),
(20, 'Вінниця: ВДТУ'),
(21, 'Видавнича група BHV'),
(22, 'Вільямс'),
(23, 'МикроАрт'),
(24, 'DiaSoft'),
(25, 'ДМК'),
(26, 'Триумф'),
(27, 'Эком'),
(28, 'Києво-Могилянська академія'),
(29, 'Університет \"Україна\"'),
(30, 'Вінниця: ВДТУ'),
(31, 'Видавнича група BHV'),
(32, 'Вільямс'),
(33, 'МикроАрт'),
(34, 'DiaSoft'),
(35, 'ДМК'),
(36, 'Триумф'),
(37, 'Эком'),
(38, 'Києво-Могилянська академія'),
(39, 'Університет \"Україна\"'),
(40, 'Вінниця: ВДТУ'),
(41, 'Видавнича група BHV'),
(42, 'Вільямс'),
(43, 'МикроАрт'),
(44, 'DiaSoft'),
(45, 'ДМК'),
(46, 'Триумф'),
(47, 'Эком'),
(48, 'Києво-Могилянська академія'),
(49, 'Університет \"Україна\"'),
(50, 'Вінниця: ВДТУ'),
(51, 'Видавнича група BHV'),
(52, 'Вільямс'),
(53, 'МикроАрт'),
(54, 'DiaSoft'),
(55, 'ДМК'),
(56, 'Триумф'),
(57, 'Эком'),
(58, 'Києво-Могилянська академія'),
(59, 'Університет \"Україна\"'),
(60, 'Вінниця: ВДТУ');

-- --------------------------------------------------------

--
-- Структура таблиці `first_work`
--

CREATE TABLE `first_work` (
  `number` int(11) NOT NULL,
  `cipher` int(11) DEFAULT NULL,
  `new` tinyint(1) NOT NULL DEFAULT 1,
  `title` varchar(255) NOT NULL,
  `price` float NOT NULL DEFAULT 0 CHECK (`price` >= 0),
  `id_edition` int(11) NOT NULL,
  `pages` int(11) NOT NULL DEFAULT 0 CHECK (`pages` >= 0),
  `format` varchar(255) DEFAULT NULL,
  `datee` date DEFAULT NULL,
  `circulation` int(11) NOT NULL DEFAULT 0 CHECK (`circulation` >= 0),
  `id_topic` int(11) NOT NULL,
  `id_category` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп даних таблиці `first_work`
--

INSERT INTO `first_work` (`number`, `cipher`, `new`, `title`, `price`, `id_edition`, `pages`, `format`, `datee`, `circulation`, `id_topic`, `id_category`) VALUES
(1, 5110, 0, 'Апаратні засоби мультимедіа. Відеосистема РС', 15.51, 1, 400, '70х100/16', '2000-07-24', 5000, 1, 1),
(2, 4985, 0, 'Засвой самостійно модернізацію та ремонт ПК за 24 години, 2-ге вид.', 18.9, 2, 288, '70х100/16', '2000-07-07', 5000, 1, 1),
(3, 5141, 0, 'Структури даних та алгоритми', 37.8, 2, 384, '70х100/16', '2000-09-29', 5000, 1, 1),
(4, 5127, 0, 'Автоматизація інженерно-графічних робіт', 11.58, 1, 256, '70х100/16', '2000-06-15', 5000, 1, 1),
(5, 5110, 0, 'Апаратні засоби мультимедіа. Відеосистема РС', 15.51, 1, 400, '70х100/16', '2000-07-24', 5000, 1, 2),
(6, 5199, 0, 'Залізо IBM 2001', 30.07, 3, 368, '70х100/16', '2000-12-02', 5000, 1, 2),
(7, 3851, 0, 'Захист інформації та безпека комп\'ютерних систем', 26, 4, 480, '84х108/16', NULL, 5000, 1, 3),
(8, 3932, 0, 'Як перетворити персональний комп\'ютер на вимірювальний комплекс', 7.65, 5, 144, '60х88/16', '1999-06-09', 5000, 1, 4),
(9, 4713, 0, 'Plug-ins. Додаткові програми для музичних програм', 11.41, 5, 144, '70х100/16', '2000-02-22', 5000, 1, 4),
(10, 5217, 0, 'Windows МЕ. Найновіші версії програм', 16.57, 6, 320, '70х100/16', '2000-08-25', 5000, 2, 5),
(11, 4829, 0, 'Windows 2000 Professional крок за кроком з CD', 27.25, 7, 320, '70х100/16', '2000-04-28', 5000, 2, 5),
(12, 5170, 0, 'Linux версії', 24.43, 5, 346, '70х100/16', '2000-09-29', 5000, 2, 6),
(13, 860, 0, 'Операційна система UNIX', 3.5, 1, 395, '84х100\\16', '1997-05-05', 5000, 2, 7),
(14, 44, 0, 'Відповіді на актуальні запитання щодо OS/2 Warp', 5, 4, 352, '60х84/16', '1996-03-20', 5000, 2, 8),
(15, 5176, 0, 'Windows Ме. Супутник користувача', 12.79, 1, 306, '', '2000-10-10', 5000, 2, 8),
(16, 5462, 0, 'Мова програмування С++. Лекції та вправи', 29, 4, 656, '84х108/16', '2000-12-12', 5000, 3, 9),
(17, 4982, 0, 'Мова програмування С. Лекції та вправи', 29, 4, 432, '84х108/16', '2000-07-12', 5000, 3, 9),
(18, 4687, 0, 'Ефективне використання C++ .50 рекомендацій щодо покращення ваших програм та проектів', 17.6, 5, 240, '70х100/16', '2000-02-03', 5000, 3, 9),
(19, 235, 0, 'Інформаційні системи і структури даних', 0, 8, 288, '60х90/16', NULL, 400, 1, 4),
(20, 8746, 0, 'Бази даних в інформаційних системах', 0, 9, 418, '60х84/16', '0000-00-00', 100, 3, 10),
(21, 2154, 0, 'Сервер на основі операційної системи FreeBSD 6.1', 0, 9, 216, '60х84/16', '2015-03-11', 500, 3, 8),
(22, 2662, 0, 'Організація баз даних та знань', 0, 10, 208, '60х90/16', '2001-10-10', 1000, 3, 10),
(23, 5641, 0, 'Організація баз даних та знань', 0, 1, 384, '70х100/16', '0000-00-00', 5000, 3, 10);

-- --------------------------------------------------------

--
-- Структура таблиці `topic`
--

CREATE TABLE `topic` (
  `id_topic` int(11) NOT NULL,
  `topic_` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп даних таблиці `topic`
--

INSERT INTO `topic` (`id_topic`, `topic_`) VALUES
(1, 'Використання ПК в цілому'),
(2, 'Операційні системи'),
(3, 'Програмування');

-- --------------------------------------------------------

--
-- Дублююча структура для представлення `view_name`
-- (Див. нижче для фактичного подання)
--
CREATE TABLE `view_name` (
`number` int(11)
,`cipher` int(11)
,`new` tinyint(1)
,`title` varchar(255)
,`price` float
,`id_edition` int(11)
,`pages` int(11)
,`format` varchar(255)
,`datee` date
,`circulation` int(11)
,`id_topic` int(11)
,`id_category` int(11)
);

-- --------------------------------------------------------

--
-- Структура для представлення `view_name`
--
DROP TABLE IF EXISTS `view_name`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_name`  AS SELECT DISTINCT `first_work`.`number` AS `number`, `first_work`.`cipher` AS `cipher`, `first_work`.`new` AS `new`, `first_work`.`title` AS `title`, `first_work`.`price` AS `price`, `first_work`.`id_edition` AS `id_edition`, `first_work`.`pages` AS `pages`, `first_work`.`format` AS `format`, `first_work`.`datee` AS `datee`, `first_work`.`circulation` AS `circulation`, `first_work`.`id_topic` AS `id_topic`, `first_work`.`id_category` AS `id_category` FROM (((`first_work` join `edition_public` on(`edition_public`.`id_edition` = `first_work`.`id_edition`)) join `category` on(`category`.`id_category` = `first_work`.`id_category`)) join `topic` on(`topic`.`id_topic` = `first_work`.`id_topic`))  ;

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id_category`);

--
-- Індекси таблиці `edition_public`
--
ALTER TABLE `edition_public`
  ADD PRIMARY KEY (`id_edition`);

--
-- Індекси таблиці `first_work`
--
ALTER TABLE `first_work`
  ADD PRIMARY KEY (`number`),
  ADD KEY `id_edition` (`id_edition`),
  ADD KEY `id_category` (`id_category`),
  ADD KEY `id_topic` (`id_topic`);

--
-- Індекси таблиці `topic`
--
ALTER TABLE `topic`
  ADD PRIMARY KEY (`id_topic`),
  ADD UNIQUE KEY `topic_Index` (`topic_`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `category`
--
ALTER TABLE `category`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблиці `edition_public`
--
ALTER TABLE `edition_public`
  MODIFY `id_edition` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT для таблиці `first_work`
--
ALTER TABLE `first_work`
  MODIFY `number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT для таблиці `topic`
--
ALTER TABLE `topic`
  MODIFY `id_topic` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Обмеження зовнішнього ключа збережених таблиць
--

--
-- Обмеження зовнішнього ключа таблиці `first_work`
--
ALTER TABLE `first_work`
  ADD CONSTRAINT `id_category` FOREIGN KEY (`id_category`) REFERENCES `category` (`id_category`),
  ADD CONSTRAINT `id_edition` FOREIGN KEY (`id_edition`) REFERENCES `edition_public` (`id_edition`),
  ADD CONSTRAINT `id_topic` FOREIGN KEY (`id_topic`) REFERENCES `topic` (`id_topic`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
