-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Ноя 12 2021 г., 15:43
-- Версия сервера: 10.1.44-MariaDB
-- Версия PHP: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `newishop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `parent_id`, `slug`) VALUES
(1, 0, 'kompyutery'),
(2, 0, 'planshety'),
(3, 0, 'noutbuki'),
(4, 3, 'mac'),
(5, 3, 'windows'),
(6, 0, 'telefony'),
(7, 0, 'kamery');

-- --------------------------------------------------------

--
-- Структура таблицы `category_description`
--

CREATE TABLE `category_description` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `language_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `category_description`
--

INSERT INTO `category_description` (`category_id`, `language_id`, `title`, `description`, `keywords`, `content`) VALUES
(1, 1, 'Компьютеры', NULL, NULL, '<p>Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать несколько абзацев более менее осмысленного текста рыбы на русском языке, а начинающему оратору отточить навык публичных выступлений в домашних условиях. При создании генератора мы использовали небезизвестный универсальный код речей.</p>'),
(1, 2, 'Computers', NULL, NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla viverra accumsan metus non ullamcorper. Nunc facilisis enim et neque dapibus, at accumsan elit fermentum. Praesent quis ante arcu. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus interdum in tellus quis auctor. In pellentesque congue lacus sed laoreet. Duis imperdiet neque id tempor dictum. Donec volutpat felis et enim consequat, vitae vestibulum turpis eleifend. Integer eget congue lacus. Sed vitae quam tempor, gravida odio in, imperdiet leo. Aenean tincidunt enim vitae sagittis fringilla.</p>'),
(2, 1, 'Планшеты', NULL, NULL, 'Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать несколько абзацев более менее осмысленного текста рыбы на русском языке, а начинающему оратору отточить навык публичных выступлений в домашних условиях. При создании генератора мы использовали небезизвестный универсальный код речей. Текст генерируется абзацами случайным образом от двух до десяти предложений в абзаце, что позволяет сделать текст более привлекательным и живым для визуально-слухового восприятия.'),
(2, 2, 'Tablets', NULL, NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla viverra accumsan metus non ullamcorper. Nunc facilisis enim et neque dapibus, at accumsan elit fermentum. Praesent quis ante arcu. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus interdum in tellus quis auctor. In pellentesque congue lacus sed laoreet. Duis imperdiet neque id tempor dictum. Donec volutpat felis et enim consequat, vitae vestibulum turpis eleifend. Integer eget congue lacus. Sed vitae quam tempor, gravida odio in, imperdiet leo. Aenean tincidunt enim vitae sagittis fringilla.'),
(3, 1, 'Ноутбуки', NULL, NULL, 'Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать несколько абзацев более менее осмысленного текста рыбы на русском языке, а начинающему оратору отточить навык публичных выступлений в домашних условиях. При создании генератора мы использовали небезизвестный универсальный код речей. Текст генерируется абзацами случайным образом от двух до десяти предложений в абзаце, что позволяет сделать текст более привлекательным и живым для визуально-слухового восприятия.'),
(3, 2, 'Notebooks', NULL, NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla viverra accumsan metus non ullamcorper. Nunc facilisis enim et neque dapibus, at accumsan elit fermentum. Praesent quis ante arcu. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus interdum in tellus quis auctor. In pellentesque congue lacus sed laoreet. Duis imperdiet neque id tempor dictum. Donec volutpat felis et enim consequat, vitae vestibulum turpis eleifend. Integer eget congue lacus. Sed vitae quam tempor, gravida odio in, imperdiet leo. Aenean tincidunt enim vitae sagittis fringilla.'),
(4, 1, 'Mac', NULL, NULL, 'Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать несколько абзацев более менее осмысленного текста рыбы на русском языке, а начинающему оратору отточить навык публичных выступлений в домашних условиях. При создании генератора мы использовали небезизвестный универсальный код речей. Текст генерируется абзацами случайным образом от двух до десяти предложений в абзаце, что позволяет сделать текст более привлекательным и живым для визуально-слухового восприятия.'),
(4, 2, 'Mac', NULL, NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla viverra accumsan metus non ullamcorper. Nunc facilisis enim et neque dapibus, at accumsan elit fermentum. Praesent quis ante arcu. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus interdum in tellus quis auctor. In pellentesque congue lacus sed laoreet. Duis imperdiet neque id tempor dictum. Donec volutpat felis et enim consequat, vitae vestibulum turpis eleifend. Integer eget congue lacus. Sed vitae quam tempor, gravida odio in, imperdiet leo. Aenean tincidunt enim vitae sagittis fringilla.'),
(5, 1, 'Windows', NULL, NULL, 'Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать несколько абзацев более менее осмысленного текста рыбы на русском языке, а начинающему оратору отточить навык публичных выступлений в домашних условиях. При создании генератора мы использовали небезизвестный универсальный код речей. Текст генерируется абзацами случайным образом от двух до десяти предложений в абзаце, что позволяет сделать текст более привлекательным и живым для визуально-слухового восприятия.'),
(5, 2, 'Windows', NULL, NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla viverra accumsan metus non ullamcorper. Nunc facilisis enim et neque dapibus, at accumsan elit fermentum. Praesent quis ante arcu. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus interdum in tellus quis auctor. In pellentesque congue lacus sed laoreet. Duis imperdiet neque id tempor dictum. Donec volutpat felis et enim consequat, vitae vestibulum turpis eleifend. Integer eget congue lacus. Sed vitae quam tempor, gravida odio in, imperdiet leo. Aenean tincidunt enim vitae sagittis fringilla.'),
(6, 1, 'Телефоны', NULL, NULL, 'Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать несколько абзацев более менее осмысленного текста рыбы на русском языке, а начинающему оратору отточить навык публичных выступлений в домашних условиях. При создании генератора мы использовали небезизвестный универсальный код речей. Текст генерируется абзацами случайным образом от двух до десяти предложений в абзаце, что позволяет сделать текст более привлекательным и живым для визуально-слухового восприятия.'),
(6, 2, 'Phones', NULL, NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla viverra accumsan metus non ullamcorper. Nunc facilisis enim et neque dapibus, at accumsan elit fermentum. Praesent quis ante arcu. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus interdum in tellus quis auctor. In pellentesque congue lacus sed laoreet. Duis imperdiet neque id tempor dictum. Donec volutpat felis et enim consequat, vitae vestibulum turpis eleifend. Integer eget congue lacus. Sed vitae quam tempor, gravida odio in, imperdiet leo. Aenean tincidunt enim vitae sagittis fringilla.'),
(7, 1, 'Камеры', NULL, NULL, 'Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать несколько абзацев более менее осмысленного текста рыбы на русском языке, а начинающему оратору отточить навык публичных выступлений в домашних условиях. При создании генератора мы использовали небезизвестный универсальный код речей. Текст генерируется абзацами случайным образом от двух до десяти предложений в абзаце, что позволяет сделать текст более привлекательным и живым для визуально-слухового восприятия.'),
(7, 2, 'Cameras', NULL, NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla viverra accumsan metus non ullamcorper. Nunc facilisis enim et neque dapibus, at accumsan elit fermentum. Praesent quis ante arcu. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus interdum in tellus quis auctor. In pellentesque congue lacus sed laoreet. Duis imperdiet neque id tempor dictum. Donec volutpat felis et enim consequat, vitae vestibulum turpis eleifend. Integer eget congue lacus. Sed vitae quam tempor, gravida odio in, imperdiet leo. Aenean tincidunt enim vitae sagittis fringilla.');

-- --------------------------------------------------------

--
-- Структура таблицы `language`
--

CREATE TABLE `language` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `base` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `language`
--

INSERT INTO `language` (`id`, `code`, `title`, `base`) VALUES
(1, 'ru', 'Русский', 1),
(2, 'en', 'English', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `name`
--

CREATE TABLE `name` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `name`
--

INSERT INTO `name` (`id`, `name`) VALUES
(1, 'Иванов'),
(2, 'Петров');

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double NOT NULL DEFAULT '0',
  `old_price` double NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `hit` tinyint(4) NOT NULL DEFAULT '0',
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'uploads/no_image.jpg',
  `is_download` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `category_id`, `slug`, `price`, `old_price`, `status`, `hit`, `img`, `is_download`) VALUES
(1, 7, 'canon-eos-5d', 10, 12, 1, 1, '/public/uploads/2021/11/12/canon_eos_5d_1.jpg', 0),
(2, 4, 'apple-cinema-30', 20, 0, 1, 1, '/public/uploads/2021/11/12/apple_cinema_30.jpg', 0),
(3, 4, 'imac', 25, 0, 1, 1, '/public/uploads/2021/11/12/imac_1.jpg', 0),
(4, 6, 'iphone', 10, 0, 1, 1, '/public/uploads/2021/11/12/iphone_1.jpg', 0),
(5, 5, 'cifrovoj-tovar', 5, 0, 1, 1, '/public/uploads/2021/11/12/hp_1.jpg', 1),
(6, 1, 'cifrovoj-tovar-2', 21, 0, 1, 0, '/public/uploads/no_image.jpg', 1),
(7, 1, 'kompyuter-2', 22, 0, 1, 0, '/public/uploads/no_image.jpg', 0),
(8, 1, 'kompyuter-3', 23, 0, 1, 1, '/public/uploads/no_image.jpg', 0),
(9, 1, 'kompyuter-4', 24, 0, 1, 0, '/public/uploads/no_image.jpg', 0),
(10, 1, 'kompyuter-5', 25, 0, 1, 0, '/public/uploads/no_image.jpg', 0),
(11, 1, 'kompyuter-6', 26, 0, 1, 0, '/public/uploads/no_image.jpg', 0),
(12, 1, 'kompyuter-7', 27, 0, 1, 0, '/public/uploads/no_image.jpg', 0),
(13, 1, 'kompyuter-8', 28, 0, 1, 0, '/public/uploads/no_image.jpg', 0),
(14, 1, 'kompyuter-9', 29, 0, 1, 0, '/public/uploads/no_image.jpg', 0),
(15, 1, 'kompyuter-10', 30, 0, 1, 0, '/public/uploads/no_image.jpg', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `product_description`
--

CREATE TABLE `product_description` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `language_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `exerpt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `product_description`
--

INSERT INTO `product_description` (`product_id`, `language_id`, `title`, `content`, `exerpt`, `keywords`, `description`) VALUES
(1, 1, 'Canon EOS 5D', '<p>Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать несколько абзацев более менее осмысленного текста рыбы на русском языке, а начинающему оратору отточить навык публичных выступлений в домашних условиях. При создании генератора мы использовали небезизвестный универсальный код речей. Текст генерируется абзацами случайным образом от двух до десяти предложений в абзаце, что позволяет сделать текст более привлекательным и живым для визуально-слухового восприятия. По своей сути рыбатекст является альтернативой традиционному lorem ipsum, который вызывает у некторых людей недоумение при попытках прочитать рыбу текст. В отличии от lorem ipsum, текст рыба на русском языке наполнит любой макет непонятным смыслом и придаст неповторимый колорит советских времен.</p>', 'Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать', NULL, NULL),
(1, 2, 'Canon EOS 5D', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam at ligula bibendum, sollicitudin mi ac, auctor urna. Nulla vulputate orci fermentum ante pretium blandit ut sed libero. Donec non feugiat turpis, et faucibus est. Vivamus lacus elit, ornare ultrices accumsan sed, pretium quis velit. Integer vel scelerisque odio. Vestibulum id dignissim urna. Fusce vitae urna vel magna dictum hendrerit in eget quam. Cras convallis metus enim, a iaculis metus scelerisque at. Vivamus vel ultricies est. Vivamus imperdiet tempor suscipit. Duis nibh sapien, feugiat a sagittis at, blandit vitae nulla. Sed rutrum vehicula fringilla. Praesent pretium elementum elit. Ut imperdiet sem vel tempor molestie. Maecenas convallis tortor a tincidunt egestas. In ultrices ornare suscipit. Suspendisse consequat eu felis et mollis. Aliquam viverra gravida est, sit amet venenatis arcu porttitor a. Sed maximus placerat sapien, nec fermentum quam luctus nec. Aenean semper ultrices urna eu fermentum. Nam at leo scelerisque, fermentum leo a, egestas odio. Fusce tincidunt magna mi, non pharetra neque egestas a. Sed sagittis vel nunc sed scelerisque. Pellentesque vestibulum quam ultrices fermentum maximus. In hac habitasse platea dictumst. Cras sit amet ornare mi, at efficitur libero. Morbi venenatis sapien a euismod finibus.</p>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', NULL, NULL),
(2, 1, 'Apple cinema 30\"', 'Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать несколько абзацев более менее осмысленного текста рыбы на русском языке, а начинающему оратору отточить навык публичных выступлений в домашних условиях. При создании генератора мы использовали небезизвестный универсальный код речей. Текст генерируется абзацами случайным образом от двух до десяти предложений в абзаце, что позволяет сделать текст более привлекательным и живым для визуально-слухового восприятия.\r\nПо своей сути рыбатекст является альтернативой традиционному lorem ipsum, который вызывает у некторых людей недоумение при попытках прочитать рыбу текст. В отличии от lorem ipsum, текст рыба на русском языке наполнит любой макет непонятным смыслом и придаст неповторимый колорит советских времен.', 'Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать', NULL, NULL),
(2, 2, 'Apple cinema 30\"', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam at ligula bibendum, sollicitudin mi ac, auctor urna. Nulla vulputate orci fermentum ante pretium blandit ut sed libero. Donec non feugiat turpis, et faucibus est. Vivamus lacus elit, ornare ultrices accumsan sed, pretium quis velit. Integer vel scelerisque odio. Vestibulum id dignissim urna. Fusce vitae urna vel magna dictum hendrerit in eget quam. Cras convallis metus enim, a iaculis metus scelerisque at. Vivamus vel ultricies est. Vivamus imperdiet tempor suscipit. Duis nibh sapien, feugiat a sagittis at, blandit vitae nulla. Sed rutrum vehicula fringilla. Praesent pretium elementum elit.\r\nUt imperdiet sem vel tempor molestie. Maecenas convallis tortor a tincidunt egestas. In ultrices ornare suscipit. Suspendisse consequat eu felis et mollis. Aliquam viverra gravida est, sit amet venenatis arcu porttitor a. Sed maximus placerat sapien, nec fermentum quam luctus nec. Aenean semper ultrices urna eu fermentum. Nam at leo scelerisque, fermentum leo a, egestas odio. Fusce tincidunt magna mi, non pharetra neque egestas a. Sed sagittis vel nunc sed scelerisque. Pellentesque vestibulum quam ultrices fermentum maximus. In hac habitasse platea dictumst. Cras sit amet ornare mi, at efficitur libero. Morbi venenatis sapien a euismod finibus.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', NULL, NULL),
(3, 1, 'iMac', 'Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать несколько абзацев более менее осмысленного текста рыбы на русском языке, а начинающему оратору отточить навык публичных выступлений в домашних условиях. При создании генератора мы использовали небезизвестный универсальный код речей. Текст генерируется абзацами случайным образом от двух до десяти предложений в абзаце, что позволяет сделать текст более привлекательным и живым для визуально-слухового восприятия.\r\nПо своей сути рыбатекст является альтернативой традиционному lorem ipsum, который вызывает у некторых людей недоумение при попытках прочитать рыбу текст. В отличии от lorem ipsum, текст рыба на русском языке наполнит любой макет непонятным смыслом и придаст неповторимый колорит советских времен.', 'Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать', NULL, NULL),
(3, 2, 'iMac', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam at ligula bibendum, sollicitudin mi ac, auctor urna. Nulla vulputate orci fermentum ante pretium blandit ut sed libero. Donec non feugiat turpis, et faucibus est. Vivamus lacus elit, ornare ultrices accumsan sed, pretium quis velit. Integer vel scelerisque odio. Vestibulum id dignissim urna. Fusce vitae urna vel magna dictum hendrerit in eget quam. Cras convallis metus enim, a iaculis metus scelerisque at. Vivamus vel ultricies est. Vivamus imperdiet tempor suscipit. Duis nibh sapien, feugiat a sagittis at, blandit vitae nulla. Sed rutrum vehicula fringilla. Praesent pretium elementum elit.\r\nUt imperdiet sem vel tempor molestie. Maecenas convallis tortor a tincidunt egestas. In ultrices ornare suscipit. Suspendisse consequat eu felis et mollis. Aliquam viverra gravida est, sit amet venenatis arcu porttitor a. Sed maximus placerat sapien, nec fermentum quam luctus nec. Aenean semper ultrices urna eu fermentum. Nam at leo scelerisque, fermentum leo a, egestas odio. Fusce tincidunt magna mi, non pharetra neque egestas a. Sed sagittis vel nunc sed scelerisque. Pellentesque vestibulum quam ultrices fermentum maximus. In hac habitasse platea dictumst. Cras sit amet ornare mi, at efficitur libero. Morbi venenatis sapien a euismod finibus.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', NULL, NULL),
(4, 1, 'iPhone', 'Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать несколько абзацев более менее осмысленного текста рыбы на русском языке, а начинающему оратору отточить навык публичных выступлений в домашних условиях. При создании генератора мы использовали небезизвестный универсальный код речей. Текст генерируется абзацами случайным образом от двух до десяти предложений в абзаце, что позволяет сделать текст более привлекательным и живым для визуально-слухового восприятия.\r\nПо своей сути рыбатекст является альтернативой традиционному lorem ipsum, который вызывает у некторых людей недоумение при попытках прочитать рыбу текст. В отличии от lorem ipsum, текст рыба на русском языке наполнит любой макет непонятным смыслом и придаст неповторимый колорит советских времен.', 'Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать', NULL, NULL),
(4, 2, 'iPhone', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam at ligula bibendum, sollicitudin mi ac, auctor urna. Nulla vulputate orci fermentum ante pretium blandit ut sed libero. Donec non feugiat turpis, et faucibus est. Vivamus lacus elit, ornare ultrices accumsan sed, pretium quis velit. Integer vel scelerisque odio. Vestibulum id dignissim urna. Fusce vitae urna vel magna dictum hendrerit in eget quam. Cras convallis metus enim, a iaculis metus scelerisque at. Vivamus vel ultricies est. Vivamus imperdiet tempor suscipit. Duis nibh sapien, feugiat a sagittis at, blandit vitae nulla. Sed rutrum vehicula fringilla. Praesent pretium elementum elit.\r\nUt imperdiet sem vel tempor molestie. Maecenas convallis tortor a tincidunt egestas. In ultrices ornare suscipit. Suspendisse consequat eu felis et mollis. Aliquam viverra gravida est, sit amet venenatis arcu porttitor a. Sed maximus placerat sapien, nec fermentum quam luctus nec. Aenean semper ultrices urna eu fermentum. Nam at leo scelerisque, fermentum leo a, egestas odio. Fusce tincidunt magna mi, non pharetra neque egestas a. Sed sagittis vel nunc sed scelerisque. Pellentesque vestibulum quam ultrices fermentum maximus. In hac habitasse platea dictumst. Cras sit amet ornare mi, at efficitur libero. Morbi venenatis sapien a euismod finibus.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', NULL, NULL),
(5, 1, 'Цифровой товар', 'Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать несколько абзацев более менее осмысленного текста рыбы на русском языке, а начинающему оратору отточить навык публичных выступлений в домашних условиях. При создании генератора мы использовали небезизвестный универсальный код речей. Текст генерируется абзацами случайным образом от двух до десяти предложений в абзаце, что позволяет сделать текст более привлекательным и живым для визуально-слухового восприятия.\r\nПо своей сути рыбатекст является альтернативой традиционному lorem ipsum, который вызывает у некторых людей недоумение при попытках прочитать рыбу текст. В отличии от lorem ipsum, текст рыба на русском языке наполнит любой макет непонятным смыслом и придаст неповторимый колорит советских времен.', 'Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать', NULL, NULL),
(5, 2, 'Digital product', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam at ligula bibendum, sollicitudin mi ac, auctor urna. Nulla vulputate orci fermentum ante pretium blandit ut sed libero. Donec non feugiat turpis, et faucibus est. Vivamus lacus elit, ornare ultrices accumsan sed, pretium quis velit. Integer vel scelerisque odio. Vestibulum id dignissim urna. Fusce vitae urna vel magna dictum hendrerit in eget quam. Cras convallis metus enim, a iaculis metus scelerisque at. Vivamus vel ultricies est. Vivamus imperdiet tempor suscipit. Duis nibh sapien, feugiat a sagittis at, blandit vitae nulla. Sed rutrum vehicula fringilla. Praesent pretium elementum elit.\r\nUt imperdiet sem vel tempor molestie. Maecenas convallis tortor a tincidunt egestas. In ultrices ornare suscipit. Suspendisse consequat eu felis et mollis. Aliquam viverra gravida est, sit amet venenatis arcu porttitor a. Sed maximus placerat sapien, nec fermentum quam luctus nec. Aenean semper ultrices urna eu fermentum. Nam at leo scelerisque, fermentum leo a, egestas odio. Fusce tincidunt magna mi, non pharetra neque egestas a. Sed sagittis vel nunc sed scelerisque. Pellentesque vestibulum quam ultrices fermentum maximus. In hac habitasse platea dictumst. Cras sit amet ornare mi, at efficitur libero. Morbi venenatis sapien a euismod finibus.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', NULL, NULL),
(6, 1, 'Цифровой товар 2', 'Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать несколько абзацев более менее осмысленного текста рыбы на русском языке, а начинающему оратору отточить навык публичных выступлений в домашних условиях. При создании генератора мы использовали небезизвестный универсальный код речей. Текст генерируется абзацами случайным образом от двух до десяти предложений в абзаце, что позволяет сделать текст более привлекательным и живым для визуально-слухового восприятия.\r\nПо своей сути рыбатекст является альтернативой традиционному lorem ipsum, который вызывает у некторых людей недоумение при попытках прочитать рыбу текст. В отличии от lorem ipsum, текст рыба на русском языке наполнит любой макет непонятным смыслом и придаст неповторимый колорит советских времен.', 'Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать ', NULL, NULL),
(6, 2, 'Digital product 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam at ligula bibendum, sollicitudin mi ac, auctor urna. Nulla vulputate orci fermentum ante pretium blandit ut sed libero. Donec non feugiat turpis, et faucibus est. Vivamus lacus elit, ornare ultrices accumsan sed, pretium quis velit. Integer vel scelerisque odio. Vestibulum id dignissim urna. Fusce vitae urna vel magna dictum hendrerit in eget quam. Cras convallis metus enim, a iaculis metus scelerisque at. Vivamus vel ultricies est. Vivamus imperdiet tempor suscipit. Duis nibh sapien, feugiat a sagittis at, blandit vitae nulla. Sed rutrum vehicula fringilla. Praesent pretium elementum elit.\r\nUt imperdiet sem vel tempor molestie. Maecenas convallis tortor a tincidunt egestas. In ultrices ornare suscipit. Suspendisse consequat eu felis et mollis. Aliquam viverra gravida est, sit amet venenatis arcu porttitor a. Sed maximus placerat sapien, nec fermentum quam luctus nec. Aenean semper ultrices urna eu fermentum. Nam at leo scelerisque, fermentum leo a, egestas odio. Fusce tincidunt magna mi, non pharetra neque egestas a. Sed sagittis vel nunc sed scelerisque. Pellentesque vestibulum quam ultrices fermentum maximus. In hac habitasse platea dictumst. Cras sit amet ornare mi, at efficitur libero. Morbi venenatis sapien a euismod finibus.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', NULL, NULL),
(7, 1, 'Компьютер 2', 'Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать несколько абзацев более менее осмысленного текста рыбы на русском языке, а начинающему оратору отточить навык публичных выступлений в домашних условиях. При создании генератора мы использовали небезизвестный универсальный код речей. Текст генерируется абзацами случайным образом от двух до десяти предложений в абзаце, что позволяет сделать текст более привлекательным и живым для визуально-слухового восприятия.\r\nПо своей сути рыбатекст является альтернативой традиционному lorem ipsum, который вызывает у некторых людей недоумение при попытках прочитать рыбу текст. В отличии от lorem ipsum, текст рыба на русском языке наполнит любой макет непонятным смыслом и придаст неповторимый колорит советских времен.', 'Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать ', NULL, NULL),
(7, 2, 'Computer 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam at ligula bibendum, sollicitudin mi ac, auctor urna. Nulla vulputate orci fermentum ante pretium blandit ut sed libero. Donec non feugiat turpis, et faucibus est. Vivamus lacus elit, ornare ultrices accumsan sed, pretium quis velit. Integer vel scelerisque odio. Vestibulum id dignissim urna. Fusce vitae urna vel magna dictum hendrerit in eget quam. Cras convallis metus enim, a iaculis metus scelerisque at. Vivamus vel ultricies est. Vivamus imperdiet tempor suscipit. Duis nibh sapien, feugiat a sagittis at, blandit vitae nulla. Sed rutrum vehicula fringilla. Praesent pretium elementum elit.\r\nUt imperdiet sem vel tempor molestie. Maecenas convallis tortor a tincidunt egestas. In ultrices ornare suscipit. Suspendisse consequat eu felis et mollis. Aliquam viverra gravida est, sit amet venenatis arcu porttitor a. Sed maximus placerat sapien, nec fermentum quam luctus nec. Aenean semper ultrices urna eu fermentum. Nam at leo scelerisque, fermentum leo a, egestas odio. Fusce tincidunt magna mi, non pharetra neque egestas a. Sed sagittis vel nunc sed scelerisque. Pellentesque vestibulum quam ultrices fermentum maximus. In hac habitasse platea dictumst. Cras sit amet ornare mi, at efficitur libero. Morbi venenatis sapien a euismod finibus.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', NULL, NULL),
(8, 1, 'Компьютер 3', 'Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать несколько абзацев более менее осмысленного текста рыбы на русском языке, а начинающему оратору отточить навык публичных выступлений в домашних условиях. При создании генератора мы использовали небезизвестный универсальный код речей. Текст генерируется абзацами случайным образом от двух до десяти предложений в абзаце, что позволяет сделать текст более привлекательным и живым для визуально-слухового восприятия.\r\nПо своей сути рыбатекст является альтернативой традиционному lorem ipsum, который вызывает у некторых людей недоумение при попытках прочитать рыбу текст. В отличии от lorem ipsum, текст рыба на русском языке наполнит любой макет непонятным смыслом и придаст неповторимый колорит советских времен.', 'Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать ', NULL, NULL),
(8, 2, 'Computer 3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam at ligula bibendum, sollicitudin mi ac, auctor urna. Nulla vulputate orci fermentum ante pretium blandit ut sed libero. Donec non feugiat turpis, et faucibus est. Vivamus lacus elit, ornare ultrices accumsan sed, pretium quis velit. Integer vel scelerisque odio. Vestibulum id dignissim urna. Fusce vitae urna vel magna dictum hendrerit in eget quam. Cras convallis metus enim, a iaculis metus scelerisque at. Vivamus vel ultricies est. Vivamus imperdiet tempor suscipit. Duis nibh sapien, feugiat a sagittis at, blandit vitae nulla. Sed rutrum vehicula fringilla. Praesent pretium elementum elit.\r\nUt imperdiet sem vel tempor molestie. Maecenas convallis tortor a tincidunt egestas. In ultrices ornare suscipit. Suspendisse consequat eu felis et mollis. Aliquam viverra gravida est, sit amet venenatis arcu porttitor a. Sed maximus placerat sapien, nec fermentum quam luctus nec. Aenean semper ultrices urna eu fermentum. Nam at leo scelerisque, fermentum leo a, egestas odio. Fusce tincidunt magna mi, non pharetra neque egestas a. Sed sagittis vel nunc sed scelerisque. Pellentesque vestibulum quam ultrices fermentum maximus. In hac habitasse platea dictumst. Cras sit amet ornare mi, at efficitur libero. Morbi venenatis sapien a euismod finibus.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', NULL, NULL),
(9, 1, 'Компьютер 4', 'Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать несколько абзацев более менее осмысленного текста рыбы на русском языке, а начинающему оратору отточить навык публичных выступлений в домашних условиях. При создании генератора мы использовали небезизвестный универсальный код речей. Текст генерируется абзацами случайным образом от двух до десяти предложений в абзаце, что позволяет сделать текст более привлекательным и живым для визуально-слухового восприятия.\r\nПо своей сути рыбатекст является альтернативой традиционному lorem ipsum, который вызывает у некторых людей недоумение при попытках прочитать рыбу текст. В отличии от lorem ipsum, текст рыба на русском языке наполнит любой макет непонятным смыслом и придаст неповторимый колорит советских времен.', 'Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать ', NULL, NULL),
(9, 2, 'Computer 4', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam at ligula bibendum, sollicitudin mi ac, auctor urna. Nulla vulputate orci fermentum ante pretium blandit ut sed libero. Donec non feugiat turpis, et faucibus est. Vivamus lacus elit, ornare ultrices accumsan sed, pretium quis velit. Integer vel scelerisque odio. Vestibulum id dignissim urna. Fusce vitae urna vel magna dictum hendrerit in eget quam. Cras convallis metus enim, a iaculis metus scelerisque at. Vivamus vel ultricies est. Vivamus imperdiet tempor suscipit. Duis nibh sapien, feugiat a sagittis at, blandit vitae nulla. Sed rutrum vehicula fringilla. Praesent pretium elementum elit.\r\nUt imperdiet sem vel tempor molestie. Maecenas convallis tortor a tincidunt egestas. In ultrices ornare suscipit. Suspendisse consequat eu felis et mollis. Aliquam viverra gravida est, sit amet venenatis arcu porttitor a. Sed maximus placerat sapien, nec fermentum quam luctus nec. Aenean semper ultrices urna eu fermentum. Nam at leo scelerisque, fermentum leo a, egestas odio. Fusce tincidunt magna mi, non pharetra neque egestas a. Sed sagittis vel nunc sed scelerisque. Pellentesque vestibulum quam ultrices fermentum maximus. In hac habitasse platea dictumst. Cras sit amet ornare mi, at efficitur libero. Morbi venenatis sapien a euismod finibus.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', NULL, NULL),
(10, 1, 'Компьютер 5', 'Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать несколько абзацев более менее осмысленного текста рыбы на русском языке, а начинающему оратору отточить навык публичных выступлений в домашних условиях. При создании генератора мы использовали небезизвестный универсальный код речей. Текст генерируется абзацами случайным образом от двух до десяти предложений в абзаце, что позволяет сделать текст более привлекательным и живым для визуально-слухового восприятия.\r\nПо своей сути рыбатекст является альтернативой традиционному lorem ipsum, который вызывает у некторых людей недоумение при попытках прочитать рыбу текст. В отличии от lorem ipsum, текст рыба на русском языке наполнит любой макет непонятным смыслом и придаст неповторимый колорит советских времен.', 'Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать ', NULL, NULL),
(10, 2, 'Computer 5', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam at ligula bibendum, sollicitudin mi ac, auctor urna. Nulla vulputate orci fermentum ante pretium blandit ut sed libero. Donec non feugiat turpis, et faucibus est. Vivamus lacus elit, ornare ultrices accumsan sed, pretium quis velit. Integer vel scelerisque odio. Vestibulum id dignissim urna. Fusce vitae urna vel magna dictum hendrerit in eget quam. Cras convallis metus enim, a iaculis metus scelerisque at. Vivamus vel ultricies est. Vivamus imperdiet tempor suscipit. Duis nibh sapien, feugiat a sagittis at, blandit vitae nulla. Sed rutrum vehicula fringilla. Praesent pretium elementum elit.\r\nUt imperdiet sem vel tempor molestie. Maecenas convallis tortor a tincidunt egestas. In ultrices ornare suscipit. Suspendisse consequat eu felis et mollis. Aliquam viverra gravida est, sit amet venenatis arcu porttitor a. Sed maximus placerat sapien, nec fermentum quam luctus nec. Aenean semper ultrices urna eu fermentum. Nam at leo scelerisque, fermentum leo a, egestas odio. Fusce tincidunt magna mi, non pharetra neque egestas a. Sed sagittis vel nunc sed scelerisque. Pellentesque vestibulum quam ultrices fermentum maximus. In hac habitasse platea dictumst. Cras sit amet ornare mi, at efficitur libero. Morbi venenatis sapien a euismod finibus.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', NULL, NULL),
(11, 1, 'Компьютер 6', 'Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать несколько абзацев более менее осмысленного текста рыбы на русском языке, а начинающему оратору отточить навык публичных выступлений в домашних условиях. При создании генератора мы использовали небезизвестный универсальный код речей. Текст генерируется абзацами случайным образом от двух до десяти предложений в абзаце, что позволяет сделать текст более привлекательным и живым для визуально-слухового восприятия.\r\nПо своей сути рыбатекст является альтернативой традиционному lorem ipsum, который вызывает у некторых людей недоумение при попытках прочитать рыбу текст. В отличии от lorem ipsum, текст рыба на русском языке наполнит любой макет непонятным смыслом и придаст неповторимый колорит советских времен.', 'Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать ', NULL, NULL),
(11, 2, 'Computer 6', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam at ligula bibendum, sollicitudin mi ac, auctor urna. Nulla vulputate orci fermentum ante pretium blandit ut sed libero. Donec non feugiat turpis, et faucibus est. Vivamus lacus elit, ornare ultrices accumsan sed, pretium quis velit. Integer vel scelerisque odio. Vestibulum id dignissim urna. Fusce vitae urna vel magna dictum hendrerit in eget quam. Cras convallis metus enim, a iaculis metus scelerisque at. Vivamus vel ultricies est. Vivamus imperdiet tempor suscipit. Duis nibh sapien, feugiat a sagittis at, blandit vitae nulla. Sed rutrum vehicula fringilla. Praesent pretium elementum elit.\r\nUt imperdiet sem vel tempor molestie. Maecenas convallis tortor a tincidunt egestas. In ultrices ornare suscipit. Suspendisse consequat eu felis et mollis. Aliquam viverra gravida est, sit amet venenatis arcu porttitor a. Sed maximus placerat sapien, nec fermentum quam luctus nec. Aenean semper ultrices urna eu fermentum. Nam at leo scelerisque, fermentum leo a, egestas odio. Fusce tincidunt magna mi, non pharetra neque egestas a. Sed sagittis vel nunc sed scelerisque. Pellentesque vestibulum quam ultrices fermentum maximus. In hac habitasse platea dictumst. Cras sit amet ornare mi, at efficitur libero. Morbi venenatis sapien a euismod finibus.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', NULL, NULL),
(12, 1, 'Компьютер 7', 'Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать несколько абзацев более менее осмысленного текста рыбы на русском языке, а начинающему оратору отточить навык публичных выступлений в домашних условиях. При создании генератора мы использовали небезизвестный универсальный код речей. Текст генерируется абзацами случайным образом от двух до десяти предложений в абзаце, что позволяет сделать текст более привлекательным и живым для визуально-слухового восприятия.\r\nПо своей сути рыбатекст является альтернативой традиционному lorem ipsum, который вызывает у некторых людей недоумение при попытках прочитать рыбу текст. В отличии от lorem ipsum, текст рыба на русском языке наполнит любой макет непонятным смыслом и придаст неповторимый колорит советских времен.', 'Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать ', NULL, NULL),
(12, 2, 'Computer 7', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam at ligula bibendum, sollicitudin mi ac, auctor urna. Nulla vulputate orci fermentum ante pretium blandit ut sed libero. Donec non feugiat turpis, et faucibus est. Vivamus lacus elit, ornare ultrices accumsan sed, pretium quis velit. Integer vel scelerisque odio. Vestibulum id dignissim urna. Fusce vitae urna vel magna dictum hendrerit in eget quam. Cras convallis metus enim, a iaculis metus scelerisque at. Vivamus vel ultricies est. Vivamus imperdiet tempor suscipit. Duis nibh sapien, feugiat a sagittis at, blandit vitae nulla. Sed rutrum vehicula fringilla. Praesent pretium elementum elit.\r\nUt imperdiet sem vel tempor molestie. Maecenas convallis tortor a tincidunt egestas. In ultrices ornare suscipit. Suspendisse consequat eu felis et mollis. Aliquam viverra gravida est, sit amet venenatis arcu porttitor a. Sed maximus placerat sapien, nec fermentum quam luctus nec. Aenean semper ultrices urna eu fermentum. Nam at leo scelerisque, fermentum leo a, egestas odio. Fusce tincidunt magna mi, non pharetra neque egestas a. Sed sagittis vel nunc sed scelerisque. Pellentesque vestibulum quam ultrices fermentum maximus. In hac habitasse platea dictumst. Cras sit amet ornare mi, at efficitur libero. Morbi venenatis sapien a euismod finibus.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', NULL, NULL),
(13, 1, 'Компьютер 8', 'Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать несколько абзацев более менее осмысленного текста рыбы на русском языке, а начинающему оратору отточить навык публичных выступлений в домашних условиях. При создании генератора мы использовали небезизвестный универсальный код речей. Текст генерируется абзацами случайным образом от двух до десяти предложений в абзаце, что позволяет сделать текст более привлекательным и живым для визуально-слухового восприятия.\r\nПо своей сути рыбатекст является альтернативой традиционному lorem ipsum, который вызывает у некторых людей недоумение при попытках прочитать рыбу текст. В отличии от lorem ipsum, текст рыба на русском языке наполнит любой макет непонятным смыслом и придаст неповторимый колорит советских времен.', 'Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать ', NULL, NULL),
(13, 2, 'Computer 8', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam at ligula bibendum, sollicitudin mi ac, auctor urna. Nulla vulputate orci fermentum ante pretium blandit ut sed libero. Donec non feugiat turpis, et faucibus est. Vivamus lacus elit, ornare ultrices accumsan sed, pretium quis velit. Integer vel scelerisque odio. Vestibulum id dignissim urna. Fusce vitae urna vel magna dictum hendrerit in eget quam. Cras convallis metus enim, a iaculis metus scelerisque at. Vivamus vel ultricies est. Vivamus imperdiet tempor suscipit. Duis nibh sapien, feugiat a sagittis at, blandit vitae nulla. Sed rutrum vehicula fringilla. Praesent pretium elementum elit.\r\nUt imperdiet sem vel tempor molestie. Maecenas convallis tortor a tincidunt egestas. In ultrices ornare suscipit. Suspendisse consequat eu felis et mollis. Aliquam viverra gravida est, sit amet venenatis arcu porttitor a. Sed maximus placerat sapien, nec fermentum quam luctus nec. Aenean semper ultrices urna eu fermentum. Nam at leo scelerisque, fermentum leo a, egestas odio. Fusce tincidunt magna mi, non pharetra neque egestas a. Sed sagittis vel nunc sed scelerisque. Pellentesque vestibulum quam ultrices fermentum maximus. In hac habitasse platea dictumst. Cras sit amet ornare mi, at efficitur libero. Morbi venenatis sapien a euismod finibus.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', NULL, NULL),
(14, 1, 'Компьютер 9', 'Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать несколько абзацев более менее осмысленного текста рыбы на русском языке, а начинающему оратору отточить навык публичных выступлений в домашних условиях. При создании генератора мы использовали небезизвестный универсальный код речей. Текст генерируется абзацами случайным образом от двух до десяти предложений в абзаце, что позволяет сделать текст более привлекательным и живым для визуально-слухового восприятия.\r\nПо своей сути рыбатекст является альтернативой традиционному lorem ipsum, который вызывает у некторых людей недоумение при попытках прочитать рыбу текст. В отличии от lorem ipsum, текст рыба на русском языке наполнит любой макет непонятным смыслом и придаст неповторимый колорит советских времен.', 'Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать ', NULL, NULL),
(14, 2, 'Computer 9', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam at ligula bibendum, sollicitudin mi ac, auctor urna. Nulla vulputate orci fermentum ante pretium blandit ut sed libero. Donec non feugiat turpis, et faucibus est. Vivamus lacus elit, ornare ultrices accumsan sed, pretium quis velit. Integer vel scelerisque odio. Vestibulum id dignissim urna. Fusce vitae urna vel magna dictum hendrerit in eget quam. Cras convallis metus enim, a iaculis metus scelerisque at. Vivamus vel ultricies est. Vivamus imperdiet tempor suscipit. Duis nibh sapien, feugiat a sagittis at, blandit vitae nulla. Sed rutrum vehicula fringilla. Praesent pretium elementum elit.\r\nUt imperdiet sem vel tempor molestie. Maecenas convallis tortor a tincidunt egestas. In ultrices ornare suscipit. Suspendisse consequat eu felis et mollis. Aliquam viverra gravida est, sit amet venenatis arcu porttitor a. Sed maximus placerat sapien, nec fermentum quam luctus nec. Aenean semper ultrices urna eu fermentum. Nam at leo scelerisque, fermentum leo a, egestas odio. Fusce tincidunt magna mi, non pharetra neque egestas a. Sed sagittis vel nunc sed scelerisque. Pellentesque vestibulum quam ultrices fermentum maximus. In hac habitasse platea dictumst. Cras sit amet ornare mi, at efficitur libero. Morbi venenatis sapien a euismod finibus.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', NULL, NULL),
(15, 1, 'Компьютер 10', 'Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать несколько абзацев более менее осмысленного текста рыбы на русском языке, а начинающему оратору отточить навык публичных выступлений в домашних условиях. При создании генератора мы использовали небезизвестный универсальный код речей. Текст генерируется абзацами случайным образом от двух до десяти предложений в абзаце, что позволяет сделать текст более привлекательным и живым для визуально-слухового восприятия.\r\nПо своей сути рыбатекст является альтернативой традиционному lorem ipsum, который вызывает у некторых людей недоумение при попытках прочитать рыбу текст. В отличии от lorem ipsum, текст рыба на русском языке наполнит любой макет непонятным смыслом и придаст неповторимый колорит советских времен.', 'Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать ', NULL, NULL),
(15, 2, 'Computer 10', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam at ligula bibendum, sollicitudin mi ac, auctor urna. Nulla vulputate orci fermentum ante pretium blandit ut sed libero. Donec non feugiat turpis, et faucibus est. Vivamus lacus elit, ornare ultrices accumsan sed, pretium quis velit. Integer vel scelerisque odio. Vestibulum id dignissim urna. Fusce vitae urna vel magna dictum hendrerit in eget quam. Cras convallis metus enim, a iaculis metus scelerisque at. Vivamus vel ultricies est. Vivamus imperdiet tempor suscipit. Duis nibh sapien, feugiat a sagittis at, blandit vitae nulla. Sed rutrum vehicula fringilla. Praesent pretium elementum elit.\r\nUt imperdiet sem vel tempor molestie. Maecenas convallis tortor a tincidunt egestas. In ultrices ornare suscipit. Suspendisse consequat eu felis et mollis. Aliquam viverra gravida est, sit amet venenatis arcu porttitor a. Sed maximus placerat sapien, nec fermentum quam luctus nec. Aenean semper ultrices urna eu fermentum. Nam at leo scelerisque, fermentum leo a, egestas odio. Fusce tincidunt magna mi, non pharetra neque egestas a. Sed sagittis vel nunc sed scelerisque. Pellentesque vestibulum quam ultrices fermentum maximus. In hac habitasse platea dictumst. Cras sit amet ornare mi, at efficitur libero. Morbi venenatis sapien a euismod finibus.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `slider`
--

CREATE TABLE `slider` (
  `id` int(10) UNSIGNED NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `slider`
--

INSERT INTO `slider` (`id`, `img`) VALUES
(1, '/public/uploads/slider/1.jpg'),
(2, '/public/uploads/slider/2.jpg'),
(3, '/public/uploads/slider/3.jpg');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slug` (`slug`(191));

--
-- Индексы таблицы `category_description`
--
ALTER TABLE `category_description`
  ADD PRIMARY KEY (`category_id`,`language_id`);

--
-- Индексы таблицы `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `name`
--
ALTER TABLE `name`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slug` (`slug`(191));

--
-- Индексы таблицы `product_description`
--
ALTER TABLE `product_description`
  ADD PRIMARY KEY (`product_id`,`language_id`);

--
-- Индексы таблицы `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `language`
--
ALTER TABLE `language`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `name`
--
ALTER TABLE `name`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
