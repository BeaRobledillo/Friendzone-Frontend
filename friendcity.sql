-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-08-2022 a las 10:50:16
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
  `description` varchar(255) DEFAULT NULL,
  `event_date` date DEFAULT NULL,
  `hour` time DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `user_id,
        nulleable=false` bigint(20) DEFAULT NULL,
  `user_id, nulleable=false` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `event`
--

INSERT INTO `event` (`id`, `budget`, `description`, `event_date`, `hour`, `image`, `location`, `name`, `user_id,
        nulleable=false`, `user_id, nulleable=false`) VALUES
(2, 10, 'Traed pipas y palomitas\nY algún dvd. Lorem fistrum diodenoo a gramenawer llevame al sircoo diodenoo te va a hasé pupitaa fistro caballo blanco caballo negroorl está la cosa muy malar pecador. ', '2022-09-11', '15:00:00', 'https://www.giztele.com/wp-content/uploads/2020/06/ver-estrenos-en-casa-1.jpg', 'Coruña', 'Peliculón en casa', NULL, 1),
(3, 5, 'Jugaremos a juegos de rol frikis. Ese pedazo de a wan jarl diodenoo te voy a borrar el cerito te va a hasé pupitaa se calle ustée. Pecador jarl la caidita condemor diodenoo. ', '2022-08-28', '21:00:00', 'https://us.123rf.com/450wm/luckybusiness/luckybusiness1803/luckybusiness180300046/104216894-feliz-linda-chica-gan%C3%B3-en-el-juego-de-cartas.jpg?ver=6', 'Coruña', 'Noche de juegos de mesa', NULL, 1),
(4, 100, 'Vacaciones de Verano, Don Simón, vacaciones en la playa de la Malagueta. Al ataquerl a peich benemeritaar pupita jarl ese hombree tiene musho peligro al ataquerl está la cosa muy malar ahorarr condemor. ', '2022-09-15', '14:00:00', 'https://th.bing.com/th/id/OIP.ueFta_nVRefwcbGDf87a2AHaEK?pid=ImgDet&rs=1', 'Málaga', 'Vacaciones en Málaga', NULL, 1),
(5, 20, 'Conciertazo del Evaristo.\nPor la gloria de mi madre ese hombree al ataquerl condemor a gramenawer condemor al ataquerl te voy a borrar el cerito. ', '2022-09-24', '20:00:00', 'https://th.bing.com/th/id/OIP.zE-kNqn36TtePMyms_1RswHaE7?pid=ImgDet&rs=1', 'Madriz', 'Concierto', NULL, 1),
(6, 5, 'Visionado de película Acción Mutante, traed bebidas y snacks. Fistro quietooor papaar papaar ese hombree ese pedazo de diodenoo a peich. Fistro se calle ustée diodeno de la pradera por la gloria de mi madre ese que llega.', '2022-09-02', '21:00:00', 'https://i.ytimg.com/vi/U1xOnvq1iVU/sddefault.jpg', 'Spain', 'Acción Mutante', NULL, 1),
(7, 35, 'Mariscada galega y Cerveza Estrella Galizia. Pecador diodenoo condemor hasta luego Lucas ahorarr pupita no te digo trigo por no llamarte Rodrigor. Diodenoo fistro de la pradera ese hombree me cago en tus muelas papaar papaar a peich caballo blanco caballo', '2022-09-04', '21:00:00', 'https://images.unsplash.com/photo-1606850780554-b55ea4dd0b70?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80', 'Restaurante Galego', 'Mariscada entre amigos', NULL, 2),
(8, 10, 'Clases de cocina, aprenderemos a hacer sushi.  Torpedo diodenoo benemeritaar me cago en tus muelas va usté muy cargadoo no te digo trigo por no llamarte Rodrigor caballo blanco caballo negroorl de la pradera', '2022-10-08', '14:00:00', 'https://images.unsplash.com/photo-1579871494447-9811cf80d66c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80', 'Spain', 'Aprender a hacer sushi rico', NULL, 2),
(9, 5, 'Lorem fistrum llevame al sircoo diodenoo adipisicing cillum te voy a borrar el cerito qui está la cosa muy malar eiusmod. A wan ahorarr cillum ut velit tempor papaar papaar. Apetecan aliqua dolor esse.', '2022-09-03', '10:00:00', 'https://images.unsplash.com/photo-1528732262645-b06fa3a79c9e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80', 'Madrid, Spain', 'En el río con amigos', NULL, 2),
(10, 5, 'Elit quis me cago en tus muelas ese que llega. Al ataquerl qui está la cosa muy malar a wan ullamco la caidita. Ex de la pradera ex voluptate aute pecador a wan. Te va a hasé pupitaa de la pradera ', '2022-09-11', '10:00:00', 'https://images.unsplash.com/photo-1505820013142-f86a3439c5b2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1171&q=80', '28410 Manzanares el Real, Madrid, Spain', 'Paseo por el bosque para buscar setas', NULL, 2),
(11, 20, 'Exercitation va usté muy cargadoo ad la caidita te va a hasé pupitaa al ataquerl. Hasta luego Lucas nostrud quis dolore incididunt enim sexuarl te va a hasé pupitaa consectetur. Papaar papaar exercitation hasta luego Lucas ese que llega', '2022-09-17', '20:00:00', 'https://images.unsplash.com/photo-1530103862676-de8c9debad1d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80', 'Toledo, Spain', 'Fiesta fiesta con globos', NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `owner`
--

CREATE TABLE `owner` (
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
(1, 'bearobledillogomez@gmail.com', 'Bea', '$2a$10$1.dhL/VceoVGK.c99zrVNeDoiRCF.dBF5G2bgASoPQa2hLxyfHH72', 'Bea'),
(2, 'otrapersona@gmail.com', 'OtroUsuario', '$2a$10$cqi7SURR5E.4ebH.sd/Uyuj.TXtNv.HBsZSlve5L8MuWEiT7w9Iji', 'Otro'),
(3, 'miguelitodelaroda@gmail.com', 'Migue', '$2a$10$4ftILPnvcqXNWQPu4OspT.Cswvvd042YogpS6VbL8..oUoSu5VJJW', 'Miguel');

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
  ADD KEY `FKf32o4nvesp74h5fhiq8ex778m` (`user_id, nulleable=false`);

--
-- Indices de la tabla `owner`
--
ALTER TABLE `owner`
  ADD KEY `FKalbj45lgfj6w8dsfo4gv8nlgc` (`event_id`),
  ADD KEY `FKd5d9tlal9cc740yoqxn11tk5w` (`user_id`);

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
  ADD CONSTRAINT `FKf32o4nvesp74h5fhiq8ex778m` FOREIGN KEY (`user_id, nulleable=false`) REFERENCES `user` (`id`);

--
-- Filtros para la tabla `owner`
--
ALTER TABLE `owner`
  ADD CONSTRAINT `FKalbj45lgfj6w8dsfo4gv8nlgc` FOREIGN KEY (`event_id`) REFERENCES `event` (`id`),
  ADD CONSTRAINT `FKd5d9tlal9cc740yoqxn11tk5w` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

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
