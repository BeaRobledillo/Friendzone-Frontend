-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-08-2022 a las 20:12:05
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `friendcity`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `event`
--

CREATE TABLE `event` (
  `id` bigint(20) NOT NULL,
  `budget` float NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `event_date` date DEFAULT NULL,
  `hour` time DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `owner_id,
        nullable=false` bigint(20) DEFAULT NULL,
  `owner_id, nullable=false` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `event`
--

INSERT INTO `event` (`id`, `budget`, `description`, `event_date`, `hour`, `image`, `location`, `name`, `owner_id,
        nullable=false`, `owner_id, nullable=false`) VALUES
(2, 5, 'Traed pipas y palomitas y algún DVD. Lorem fistrum de la pradera está la cosa muy malar a gramenawer mamaar te va a hasé pupitaa mamaar diodenoo ese pedazo de qué dise usteer. Qué dise usteer mamaar de la pradera te va a hasé pupitaa. Torpedo va usté muy cargadoo fistro fistro tiene musho peligro tiene musho peligro. Ese que llega apetecan va usté muy cargadoo apetecan diodeno sexuarl. Diodenoo condemor la caidita condemor me cago en tus muelas jarl de la pradera sexuarl se calle ustée. Ese ped', '2022-08-27', '10:00:00', 'https://www.giztele.com/wp-content/uploads/2020/06/ver-estrenos-en-casa-1.jpg', 'Coruña', 'Película en casa', NULL, 2),
(4, 5, 'Jugaremos a juegos de rol frikis. Ese pedazo de a wan jarl diodenoo te voy a borrar el cerito te va a hase pupitaa se calle uste.Pecador fistro tempor ad a wan aliquip qui qui hasta luego Lucas. Al ataquerl tiene musho peligro está la cosa muy malar.Pecador fistro tempor ad a wan aliquip qui qui hasta luego Lucas.', '2022-08-27', '20:00:00', 'https://us.123rf.com/450wm/luckybusiness/luckybusiness1803/luckybusiness180300046/104216894-feliz-linda-chica-gan%C3%B3-en-el-juego-de-cartas.jpg?ver=6', 'Coruña', 'Noche de juegos de mesa', NULL, 2),
(5, 5, 'Jarl adipisicing reprehenderit la caidita a peich a wan duis qué dise usteer te va a hasé pupitaa aliqua tiene musho peligro. Eiusmod a wan fistro te voy a borrar el cerito. Ut enim condemor mamaar por la gloria de mi madre. Aliquip ut minim ullamco caballo blanco caballo negroorl veniam a gramenawer hasta luego Lucas la caidita. Tempor me cago en tus muelas ese hombree aliquip papaar papaar elit.', '2022-09-03', '20:00:00', 'https://images.unsplash.com/photo-1530103862676-de8c9debad1d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80', 'Toledo, Spain', 'Fiesta con globos', NULL, 2),
(6, 100, 'Visita a Jesús con su planning.Pecador fistro tempor ad a wan aliquip qui qui hasta luego Lucas. Al ataquerl tiene musho peligro está la cosa muy malar ex mamaar está la cosa muy malar magna ad está la cosa muy malar. Ut diodeno a gramenawer ex pupita ahorarr enim. Duis dolore exercitation labore a peich cillum consequat nostrud sexuarl occaecat. Eiusmod ese que llega diodenoo sit amet tempor qué dise usteer exercitation te voy a borrar el cerito benemeritaar está la cosa muy malar. ', '2022-08-04', '10:00:00', 'https://images.unsplash.com/photo-1533535280643-f9af97f7d6dc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80', 'Coruña', 'Vacaciones en Coruña', NULL, 1),
(7, 100, 'no en tus muelas me cago en tus muelas fistro va usté muy cargadoo diodeno te va a hasé pupitaa qué dise usteer va usté muy cargadoo pupita está la cosa muy malar. Ahorarr no puedor no puedor a gramenawer. Está la cosa muy malar fistro mamaar a peich jarl condemor no puedor. A peich me cago en tus muelas al ataquerl quietooor. Sexuarl se calle ustée condemor fistro quietooor a peich ese que llega. Benemeritaar te va a hasé pupitaa ese hombree ahorarr diodeno por la gloria de mi madre dioden', '2022-08-12', '10:00:00', 'https://th.bing.com/th/id/OIP.ueFta_nVRefwcbGDf87a2AHaEK?pid=ImgDet&rs=1\'', 'Málaga', 'Vacaciones en Málaga', NULL, 1),
(8, 35, 'Apetecan ese que llega a peich ese hombree te voy a borrar el cerito me cago en tus muelas la caidita está la cosa muy malar amatomaa la caidita. Pecador hasta luego Lucas benemeritaar al ataquerl a wan sexuarl mamaar sexuarl hasta luego Lucas ese hombree llevame al sircoo. Está la cosa muy malar va usté muy cargadoo por la gloria de mi madre apetecan benemeritaar fistro está la cosa muy malar quietooor. Pupita ahorarr caballo blanco caballo negroorl se calle ustée. Ese hombree no te digo trigo ', '2022-08-27', '15:00:00', 'https://images.unsplash.com/photo-1606850780554-b55ea4dd0b70?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80', 'Restaurante Galego', 'Mariscada con amigos', NULL, 1),
(9, 5, 'Diodenoo al ataquerl caballo blanco caballo negroorl pupita benemeritaar. Quietooor de la pradera fistro amatomaa amatomaa va usté muy cargadoo ese que llega a peich diodeno. Diodeno se calle ustée me cago en tus muelas a gramenawer al ataquerl. No te digo trigo por no llamarte Rodrigor diodenoo ese pedazo de apetecan me cago en tus muelas me cago en tus muelas fistro no te digo trigo por no llamarte Rodrigor te voy a borrar el cerito. Sexuarl qué dise usteer condemor te va a hasé pupitaa se cal', '2022-09-17', '21:00:00', 'https://i.ytimg.com/vi/U1xOnvq1iVU/sddefault.jpg', 'Madrid', 'Acción Mutante', NULL, 1),
(10, 5, 'Tiene musho peligro jarl qué dise usteer caballo blanco caballo negroorl quietooor está la cosa muy malar te voy a borrar el cerito. Jarl llevame al sircoo papaar papaar de la pradera ese hombree. Sexuarl te voy a borrar el cerito a peich al ataquerl fistro diodenoo ese hombree condemor benemeritaar. No te digo trigo por no llamarte Rodrigor papaar papaar ese que llega no puedor fistro ahorarr ahorarr caballo blanco caballo negroorl. A gramenawer jarl condemor no te digo trigo por no llamarte Ro', '2022-09-25', '10:00:00', 'https://images.unsplash.com/photo-1505820013142-f86a3439c5b2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1171&q=80', '28410 Manzanares el Real, Madrid, Spain', 'Paseo por el bosque para buscar setas', NULL, 1),
(11, 10, 'Pupita consequat quietooor quietooor quietooor cillum qui tempor va usté muy cargadoo dolor ut. Incididunt no puedor commodo tempor ese pedazo de jarl. Sit amet a gramenawer ex diodenoo labore. Ahorarr cillum officia dolore no te digo trigo por no llamarte Rodrigor ese No puedor amatomaa velit adipisicing ut. Irure consequat minim et elit torpedo. A wan duis por la gloria de mi madre a wan cillum no te digo trigo por no llamarte Rodrigor ut quietooor diodenoo elit.', '2022-10-08', '14:00:00', 'https://images.unsplash.com/photo-1579871494447-9811cf80d66c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80', 'Spain', 'Clases de cocina', NULL, 1),
(12, 5, 'Ut aliqua de la pradera laboris va usté muy cargadoo velit por la gloria de mi madre reprehenderit nisi irure dolor. Caballo blanco caballo negroorl sexuarl incididunt jarl commodo ex minim. Al ataquerl ad ullamco ese hombree al ataquerl nisi. A peich por la gloria de mi madre te voy a borrar el cerito diodeno ahorarr ese pedazo de nisi no puedor la caidita te voy a borrar el cerito pecador. A wan a peich laboris reprehenderit occaecat sit amet te voy a borrar el cerito va usté muy cargadoo sed ', '2022-10-22', '10:00:00', 'https://images.unsplash.com/photo-1528732262645-b06fa3a79c9e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80', 'Madrid, Spain', 'En el río con amigos', NULL, 1),
(13, 35, 'Elit va usté muy cargadoo ese que llega caballo blanco caballo negroorl te voy a borrar el cerito sit amet cillum por la gloria de mi madre. Llevame al sircoo nisi papaar papaar ahorarr nostrud consectetur. Jarl ese pedazo de apetecan velit. Nostrud está la cosa muy malar condemor te va a hasé pupitaa no te digo trigo por no llamarte Rodrigor qui velit adipisicing voluptate. Ese pedazo de velit quietooor laboris aliqua qui ut aliqua amatomaa condemor. Al ataquerl qué dise usteer ese hombree ex e', '2022-11-06', '20:00:00', 'https://th.bing.com/th/id/OIP.zE-kNqn36TtePMyms_1RswHaE7?pid=ImgDet&rs=1', 'Madriz', 'Conci del Evaristo', NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `event_members`
--

CREATE TABLE `event_members` (
  `user_id` bigint(20) NOT NULL,
  `event_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'ROLE_USER');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `email`, `name`, `password`, `username`) VALUES
(1, 'Bea@gmail.com', 'Bea', '$2a$10$usEXnA794jbF..0VRiT0ruSrQyP9FtCz7hNAQd11K/KwT8y.vxGhu', 'Bea'),
(2, 'Otro@email.com', 'Otro', '$2a$10$8FWY5GW/pPOwg1FF6YYlqOtD1GXHWIptKfQVzjDgGSaFmNXCwX4aW', 'Otro'),
(3, 'Miguel@gmail.com', 'Miguel', '$2a$10$0VB8Cmk6Gw18xNumsqjHTeqDbhfYwZiKe8HtCET5cdTNLITe5F8Na', 'Miguel');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKdcu6c2vliy92lil15905nmlel` (`owner_id, nullable=false`);

--
-- Indices de la tabla `event_members`
--
ALTER TABLE `event_members`
  ADD PRIMARY KEY (`user_id`,`event_id`),
  ADD KEY `FKdsnu3vai441uxx65jb04ayea3` (`event_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `FKej3jidxlte0r8flpavhiso3g6` (`role_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `event`
--
ALTER TABLE `event`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `event`
--
ALTER TABLE `event`
  ADD CONSTRAINT `FKdcu6c2vliy92lil15905nmlel` FOREIGN KEY (`owner_id, nullable=false`) REFERENCES `user` (`id`);

--
-- Filtros para la tabla `event_members`
--
ALTER TABLE `event_members`
  ADD CONSTRAINT `FKdsnu3vai441uxx65jb04ayea3` FOREIGN KEY (`event_id`) REFERENCES `event` (`id`),
  ADD CONSTRAINT `FKrg6wggelqk0u5ju3xdehd5sm8` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Filtros para la tabla `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `FK40cm955hgg5oxf1oax8mqw0c4` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FKej3jidxlte0r8flpavhiso3g6` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
