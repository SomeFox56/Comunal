-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Ноя 21 2022 г., 18:01
-- Версия сервера: 5.7.29
-- Версия PHP: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `toursite`
--

-- --------------------------------------------------------

--
-- Структура таблицы `best_tours`
--

CREATE TABLE `best_tours` (
  `tour_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `best_tours`
--

INSERT INTO `best_tours` (`tour_id`) VALUES
(13),
(14);

-- --------------------------------------------------------

--
-- Структура таблицы `carts`
--

CREATE TABLE `carts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `tour_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `tour_id`) VALUES
(77, 2, 13),
(78, 2, 14);

-- --------------------------------------------------------

--
-- Структура таблицы `tours`
--

CREATE TABLE `tours` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `author_id` int(11) NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `tours`
--

INSERT INTO `tours` (`id`, `title`, `content`, `price`, `created_at`, `updated_at`, `is_deleted`, `author_id`, `image_path`) VALUES
(12, 'Тунис', '5 дней в Тунисе', 80000, '2022-10-17 14:19:09', '2022-11-21 13:14:02', 0, 7, '634d645d62e8e.jpg'),
(13, 'Доминика', 'Неделя отдыха', 120000, '2022-10-17 14:25:46', '2022-10-17 14:25:46', 0, 7, '634d65ea8127c.jpeg'),
(14, 'Мальдивы', 'Мале', 120000, '2022-10-24 12:30:12', '2022-11-21 13:14:26', 0, 2, '6356855465d8f.jpg'),
(15, 'Аляска', 'Анкоридж.', 140000, '2022-10-24 14:58:54', '2022-11-21 13:14:03', 0, 2, '63725bdd4288d.jpg'),
(16, 'qwertyuioЧЕ', '234346hjjh', 545445, '2022-11-14 14:01:32', '2022-11-21 13:15:56', 1, 2, '637b6ad3ee2f0.jpg'),
(17, 'Коморы', 'Коморские острова', 200000, '2022-11-21 13:15:42', '2022-11-21 13:15:42', 0, 2, '637b79fe9a3c7.jpg'),
(18, 'Кокосовые острова', 'Возле Австралии', 180000, '2022-11-21 13:17:32', '2022-11-21 13:17:32', 0, 2, '637b7a6c502fb.jpg'),
(19, 'Реюньон', 'Франция', 210000, '2022-11-21 13:20:28', '2022-11-21 13:20:28', 0, 2, '637b7b1ceab28.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `tours_comments`
--

CREATE TABLE `tours_comments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `tour_id` int(11) NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `tours_comments`
--

INSERT INTO `tours_comments` (`id`, `user_id`, `tour_id`, `text`, `created_at`, `updated_at`, `is_deleted`) VALUES
(1, 7, 12, 'dfdf', '2022-10-17 16:41:47', '2022-10-17 16:41:47', 0),
(3, 7, 12, '3434', '2022-10-17 16:53:31', '2022-10-17 16:53:31', 0),
(4, 2, 14, 'або2ба', '2022-10-24 12:37:37', '2022-10-24 12:38:00', 0),
(5, 2, 14, '34534535', '2022-10-24 12:42:22', '2022-10-24 13:18:08', 0),
(6, 2, 14, 'df', '2022-10-24 12:42:30', '2022-10-24 12:42:30', 0),
(7, 2, 14, 'абоба', '2022-10-24 13:06:35', '2022-10-24 13:06:35', 0),
(12, 2, 13, '0', '2022-10-24 13:39:02', '2022-11-14 13:04:00', 1),
(13, 2, 13, 'like', '2022-10-24 13:40:21', '2022-11-14 13:02:31', 1),
(14, 2, 14, 'МПашщлумавмс ', '2022-10-24 13:40:33', '2022-10-24 13:40:33', 0),
(15, 2, 12, 'ывапрнголдж', '2022-10-24 13:40:50', '2022-10-24 13:40:50', 0),
(16, 2, 12, '<br>f', '2022-10-24 13:41:03', '2022-10-24 13:41:03', 0),
(17, 2, 12, '<?php echo\"dsdfkdf\";?>', '2022-10-24 13:41:24', '2022-11-14 12:56:24', 1),
(18, 2, 12, 'jkjkku23490', '2022-10-24 13:41:33', '2022-11-14 12:56:55', 1),
(19, 2, 12, '<?php var_dump($all_comments);;?>', '2022-10-24 13:42:07', '2022-10-24 13:42:07', 0),
(20, 2, 12, '<h2>dfdefdf</h2>', '2022-10-24 13:42:39', '2022-11-14 12:56:18', 1),
(21, 2, 12, '<p color=\"red\">dfdfdfd</p>', '2022-10-24 13:46:11', '2022-10-24 13:46:11', 0),
(22, 2, 12, '<p><font color=\"red\">dfdfdfd</font></p>', '2022-10-24 13:46:54', '2022-10-24 13:46:54', 0),
(23, 2, 12, '<h2><font color=\"red\">dfdfdfd</font></h2>', '2022-10-24 13:47:29', '2022-10-24 13:47:29', 0),
(24, 2, 12, '<?php var_dump($all_comments);?>', '2022-10-24 13:57:28', '2022-10-24 13:57:28', 0),
(25, 2, 12, '<?php phpinfo()?>', '2022-10-24 13:57:50', '2022-10-24 13:57:50', 0),
(26, 2, 12, '<?php phpinfo();?>', '2022-10-24 13:58:11', '2022-10-24 13:58:11', 0),
(30, 2, 12, '<input type=\"text\">', '2022-10-24 14:01:33', '2022-10-24 14:01:33', 0),
(31, 2, 12, '<input type=\"color\">', '2022-10-24 14:02:01', '2022-10-24 14:02:01', 0),
(32, 2, 12, '<input type=\"password\">', '2022-10-24 14:02:57', '2022-10-24 14:02:57', 0),
(33, 2, 12, '<input type=\"date\">', '2022-10-24 14:03:40', '2022-10-24 14:03:40', 0),
(34, 2, 12, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/focmBpMl1TY\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '2022-10-24 14:04:17', '2022-10-24 14:04:17', 0),
(35, 2, 12, '<a href=\"https://24timezones.com\" class=\"clock24\" id=\"tz24-1666620423-c1354-eyJob3VydHlwZSI6IjI0Iiwic2hvd2RhdGUiOiIwIiwic2hvd3NlY29uZHMiOiIxIiwic2hvd3RpbWV6b25lIjoiMCIsInR5cGUiOiJkIiwibGFuZyI6InJ1In0=\" title=\"местное время\" target=\"_blank\" rel=\"nofollow\"></a> <script type=\"text/javascript\" src=\"//w.24timezones.com/l.js\" async></script>', '2022-10-24 14:07:26', '2022-10-24 14:07:26', 0),
(36, 2, 12, '<a href=\"https://24timezones.com\" class=\"clock24\" id=\"tz24-1666620423-c1354-eyJob3VydHlwZSI6IjI0Iiwic2hvd2RhdGUiOiIwIiwic2hvd3NlY29uZHMiOiIxIiwic2hvd3RpbWV6b25lIjoiMCIsInR5cGUiOiJkIiwibGFuZyI6InJ1In0=\" title=\"местное время\" target=\"_blank\" rel=\"nofollow\"></a> <script type=\"text/javascript\" src=\"//w.24timezones.com/l.js\" async></script>', '2022-10-24 14:08:10', '2022-10-24 14:08:10', 0),
(37, 2, 12, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/focmBpMl1TY\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe><iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/focmBpMl1TY\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '2022-10-24 14:09:54', '2022-10-24 14:09:54', 0),
(38, 2, 12, '<iframe width=\"960\" height=\"815\" src=\"https://www.youtube.com/embed/focmBpMl1TY\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '2022-10-24 14:10:33', '2022-10-24 14:10:33', 0),
(39, 2, 12, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d8016382.86481176!2d13.283417168076808!3d-11.169157556928857!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x1a51f24ecaad8b27%3A0x590a289d0d4a4e3d!2z0JDQvdCz0L7Qu9Cw!5e0!3m2!1sru!2sru!4v1666620678396!5m2!1sru!2sru\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', '2022-10-24 14:11:23', '2022-10-24 14:11:23', 0),
(40, 2, 12, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15997055.922459047!2d4.862996219107145!3d-19.627503945828323!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x1931a4e706b17161%3A0xa1c0385fc5cbbfee!2z0JfQuNC80LHQsNCx0LLQtQ!5e0!3m2!1sru!2sru!4v1666620702804!5m2!1sru!2sru\" width=\"1200\" height=\"950\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', '2022-10-24 14:12:02', '2022-11-14 12:56:12', 1),
(41, 2, 12, '', '2022-10-24 14:32:15', '2022-10-24 14:32:15', 0),
(42, 2, 12, '', '2022-10-24 14:46:27', '2022-10-24 14:46:27', 0),
(43, 2, 12, '', '2022-10-31 12:31:31', '2022-10-31 12:31:31', 0),
(44, 2, 12, '', '2022-10-31 12:31:31', '2022-10-31 12:31:31', 0),
(45, 2, 12, '7887', '2022-10-31 12:31:32', '2022-11-07 15:09:15', 0),
(46, 2, 15, '', '2022-10-31 12:31:52', '2022-11-14 12:56:04', 1),
(47, 2, 13, '0', '2022-10-31 12:32:41', '2022-10-31 12:32:41', 0),
(48, 2, 13, '', '2022-10-31 12:33:02', '2022-10-31 12:33:02', 0),
(49, 2, 15, '=69', '2022-11-07 12:25:51', '2022-11-14 12:53:36', 1),
(50, 2, 13, 'w', '2022-11-07 12:28:43', '2022-11-14 13:00:46', 1),
(51, 2, 13, '2', '2022-11-07 12:29:01', '2022-11-14 13:00:19', 1),
(52, 9, 12, '676767457567', '2022-11-07 13:47:56', '2022-11-14 12:52:30', 1),
(53, 9, 14, 'gtggg', '2022-11-07 14:39:02', '2022-11-14 12:50:59', 1),
(54, 2, 15, '900', '2022-11-14 12:27:52', '2022-11-14 12:53:00', 1),
(55, 9, 13, 'hfg', '2022-11-14 12:58:14', '2022-11-14 12:59:57', 1),
(56, 9, 13, 'fg', '2022-11-14 13:01:42', '2022-11-14 13:01:44', 1),
(57, 9, 13, 'fg', '2022-11-14 13:03:48', '2022-11-14 13:04:20', 1),
(58, 9, 13, 'dfdfdfdf', '2022-11-14 13:04:23', '2022-11-14 13:04:23', 0),
(59, 9, 15, 'fgfgfggf', '2022-11-14 13:09:33', '2022-11-14 13:09:44', 1),
(60, 9, 15, 'gffgfg', '2022-11-14 13:10:24', '2022-11-14 13:13:02', 1),
(61, 9, 15, 'fgfgfgfg34', '2022-11-14 13:10:26', '2022-11-14 13:10:39', 1),
(62, 9, 15, 'dfgffgh', '2022-11-14 13:12:51', '2022-11-14 13:26:25', 1),
(63, 9, 15, '343443', '2022-11-14 13:13:14', '2022-11-14 13:20:16', 1),
(64, 9, 15, '4545', '2022-11-14 13:13:16', '2022-11-14 13:13:25', 1),
(65, 9, 15, '454545', '2022-11-14 13:13:18', '2022-11-14 13:22:18', 1),
(66, 9, 15, 'fgfgfg', '2022-11-14 13:14:36', '2022-11-14 13:37:23', 1),
(67, 2, 15, '234567890oikmggfgfffffffffffffff1111', '2022-11-14 13:15:42', '2022-11-14 13:43:10', 1),
(68, 9, 15, 'fgfg3', '2022-11-14 13:27:09', '2022-11-14 13:45:01', 1),
(69, 9, 15, 'dfgdf', '2022-11-14 13:33:32', '2022-11-14 13:33:47', 1),
(70, 9, 15, 'dgffg', '2022-11-14 13:39:37', '2022-11-14 13:39:45', 1),
(71, 2, 15, '565656', '2022-11-14 13:43:13', '2022-11-14 13:45:05', 1),
(72, 3, 15, '234567890', '2022-11-14 13:45:12', '2022-11-14 13:45:24', 0),
(73, 2, 15, '[[', '2022-11-14 13:48:38', '2022-11-14 13:49:04', 0),
(74, 2, 16, 'ахах... че?...', '2022-11-21 12:58:24', '2022-11-21 12:58:24', 0),
(75, 2, 17, 'Что?', '2022-11-21 13:22:20', '2022-11-21 13:22:20', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` enum('Мужской','Женский') COLLATE utf8mb4_unicode_ci NOT NULL,
  `born_date` date NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_banned` tinyint(1) NOT NULL DEFAULT '0',
  `role` enum('user','seller','admin') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `gender`, `born_date`, `email`, `password`, `created_at`, `updated_at`, `is_banned`, `role`) VALUES
(2, 'Максим', 'Назмутдинов', 'Мужской', '2022-10-03', 'maxim@gmail.com', '95ac3c545fa3f9c81939f8fa4d0511ca', '2022-10-03 14:23:51', '2022-11-21 13:49:49', 0, 'admin'),
(3, '343434', '45', 'Мужской', '2022-10-15', '4545', 'fdc28f6e8c10b3be71d23d78fe1bba5f', '2022-10-03 14:38:50', '2022-10-03 14:38:50', 0, 'user'),
(4, '3422345r3e', '4534534', 'Мужской', '2001-12-12', '34435', 'b2746b2478de7af694405a667ecea3fa', '2022-10-03 14:45:00', '2022-10-03 14:45:00', 0, 'user'),
(5, '2323', '232323', 'Женский', '2001-12-12', '3434345345', 'dee5d14c0382c4885d0cb57f8a4cb8bf', '2022-10-03 14:50:47', '2022-10-03 14:50:47', 0, 'user'),
(6, '232312', '2323232121', 'Женский', '2001-12-12', '343434534512', '2000f6325dfc4fc3201fc45ed01c7a5d', '2022-10-03 14:51:15', '2022-10-03 14:51:15', 0, 'user'),
(7, 'Максим', 'Низамов', 'Мужской', '2009-06-13', 'imamax@gmail.com', '2ffe4e77325d9a7152f7086ea7aa5114', '2022-10-03 14:57:34', '2022-11-07 14:05:06', 0, 'user'),
(8, 'Олег', 'Филинов', 'Мужской', '2022-04-12', 'oleg@gmail.com', '045b9e4d8b96dce053950297a8a39665', '2022-10-03 15:06:47', '2022-10-03 15:06:47', 0, 'user'),
(9, 'Камиля', 'Низамова', 'Женский', '1981-10-29', 'kamilya@gmail.com', '13be177dbf966b571188bb96ee215036', '2022-10-31 14:51:58', '2022-11-14 13:41:10', 0, 'user');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tour_id` (`tour_id`),
  ADD KEY `carts_ibfk_2` (`user_id`);

--
-- Индексы таблицы `tours`
--
ALTER TABLE `tours`
  ADD PRIMARY KEY (`id`),
  ADD KEY `author_id` (`author_id`) USING BTREE;

--
-- Индексы таблицы `tours_comments`
--
ALTER TABLE `tours_comments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT для таблицы `tours`
--
ALTER TABLE `tours`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT для таблицы `tours_comments`
--
ALTER TABLE `tours_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_ibfk_1` FOREIGN KEY (`tour_id`) REFERENCES `tours` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `carts_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `tours`
--
ALTER TABLE `tours`
  ADD CONSTRAINT `tours_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
