-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-07-2021 a las 23:28:55
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `challenge`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrera`
--

CREATE TABLE `carrera` (
  `id` int(11) NOT NULL,
  `nombre_corredor` varchar(30) NOT NULL,
  `pista_id` tinyint(3) NOT NULL,
  `carro_id` tinyint(3) NOT NULL,
  `recorrido` smallint(5) NOT NULL,
  `codigo` varchar(50) NOT NULL,
  `puesto` tinyint(2) NOT NULL,
  `veces_ganadas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `carrera`
--

INSERT INTO `carrera` (`id`, `nombre_corredor`, `pista_id`, `carro_id`, `recorrido`, `codigo`, `puesto`, `veces_ganadas`) VALUES
(460, '1', 1, 1, 2400, 'hxf7r8i5m016kbu', 1, 21),
(461, '2', 1, 2, 2300, 'hxf7r8i5m016kbu', 2, 18),
(462, '1', 1, 1, 2400, 'f9odnk1e7tx45wl', 2, 21),
(463, '2', 1, 2, 2700, 'f9odnk1e7tx45wl', 1, 18),
(464, '1', 1, 1, 2300, 'urkw4y5mtha3vce', 2, 21),
(465, '2', 1, 2, 2300, 'urkw4y5mtha3vce', 1, 18),
(466, '1', 1, 1, 2400, 'xrpk7o4qjbsm3cz', 1, 21),
(467, '2', 1, 2, 2300, 'xrpk7o4qjbsm3cz', 2, 18),
(468, '1', 1, 1, 2400, 'cvo2mfky3bdj607', 2, 21),
(469, '2', 1, 2, 2300, 'cvo2mfky3bdj607', 1, 18),
(470, '1', 1, 1, 2400, 'lto8cng6zhk3b51', 2, 21),
(471, '2', 1, 2, 2600, 'lto8cng6zhk3b51', 1, 18),
(472, '1', 1, 1, 2700, 'el0mjyzcu489qf7', 2, 21),
(473, '2', 1, 2, 2400, 'el0mjyzcu489qf7', 1, 18),
(474, '1', 1, 1, 2600, '0tcbra6fwphn1mk', 1, 21),
(475, '2', 1, 2, 2400, '0tcbra6fwphn1mk', 2, 18),
(476, '1', 1, 1, 2300, 'wr9mj7vtue0cgbl', 1, 21),
(477, '2', 1, 2, 2600, 'wr9mj7vtue0cgbl', 2, 18),
(478, '1', 1, 1, 2400, 'nopu7ex4rcs1kld', 1, 21),
(479, '2', 1, 2, 2400, 'nopu7ex4rcs1kld', 2, 18),
(480, '1', 1, 1, 2300, 's1cg5y7wzidu9rm', 1, 21),
(481, '2', 1, 2, 2400, 's1cg5y7wzidu9rm', 2, 18),
(482, '1', 1, 1, 2400, 'v09mod7gkrh3i21', 2, 21),
(483, '2', 1, 2, 2700, 'v09mod7gkrh3i21', 1, 18),
(484, '1', 1, 1, 2500, '3ihx9201bq7em5d', 2, 21),
(485, '2', 1, 2, 2600, '3ihx9201bq7em5d', 1, 18),
(486, '1', 1, 1, 2600, '3ezobnjlau9qx2r', 1, 21),
(487, '2', 1, 2, 2500, '3ezobnjlau9qx2r', 2, 18),
(488, '1', 1, 1, 2300, '2sf1nydp9boag6h', 2, 21),
(489, '2', 1, 2, 2400, '2sf1nydp9boag6h', 1, 18),
(490, '1', 1, 1, 2300, '9yft2bcz7s0quwe', 1, 21),
(491, '2', 1, 2, 2300, '9yft2bcz7s0quwe', 2, 18),
(492, '1', 1, 1, 2500, 'r4uix0opqgktsjz', 2, 21),
(493, '2', 1, 2, 2300, 'r4uix0opqgktsjz', 1, 18),
(494, '1', 1, 1, 2600, 'sa894l26ey30njg', 2, 21),
(495, '2', 1, 2, 2400, 'sa894l26ey30njg', 1, 18),
(496, '1', 1, 1, 2500, 'yg1ant5ksdcwol2', 1, 21),
(497, '2', 1, 2, 2600, 'yg1ant5ksdcwol2', 2, 18),
(498, '1', 1, 1, 2300, 'cr4hs95o0fyept1', 3, 21),
(499, '2', 1, 2, 2400, 'cr4hs95o0fyept1', 4, 18),
(500, '3', 1, 3, 2600, 'cr4hs95o0fyept1', 1, 1),
(501, '4', 1, 4, 2300, 'cr4hs95o0fyept1', 2, 1),
(502, '5', 1, 5, 2300, 'cr4hs95o0fyept1', 5, 0),
(503, '1', 2, 1, 3900, '9upxn4zea1dmjh7', 5, 0),
(504, '2', 2, 2, 3600, '9upxn4zea1dmjh7', 1, 2),
(505, '3', 2, 3, 4000, '9upxn4zea1dmjh7', 2, 0),
(506, '4', 2, 4, 3700, '9upxn4zea1dmjh7', 3, 0),
(507, '5', 2, 5, 4100, '9upxn4zea1dmjh7', 4, 0),
(508, '1', 2, 1, 3600, 'obhjzcxv6prayfl', 5, 0),
(509, '2', 2, 2, 4100, 'obhjzcxv6prayfl', 1, 2),
(510, '3', 2, 3, 3700, 'obhjzcxv6prayfl', 2, 0),
(511, '4', 2, 4, 4000, 'obhjzcxv6prayfl', 3, 0),
(512, '5', 2, 5, 4000, 'obhjzcxv6prayfl', 4, 0),
(513, '1', 1, 1, 400, 'wv6boet8ldr7ujs', 0, 21),
(514, '2', 1, 2, 500, 'wv6boet8ldr7ujs', 0, 18),
(515, '1', 1, 1, 300, 'ru8sld37ib9n5tj', 0, 21),
(516, '2', 1, 2, 300, 'ru8sld37ib9n5tj', 0, 18),
(517, '1', 1, 1, 2600, 'mid3ro0efn4kbyz', 2, 21),
(518, '2', 1, 2, 2300, 'mid3ro0efn4kbyz', 1, 18),
(519, '1', 1, 1, 500, 'l62w8ty75ivkdch', 0, 21),
(520, '2', 1, 2, 200, 'l62w8ty75ivkdch', 0, 18),
(521, '1', 1, 1, 1100, 'lrscb48p05dqf1o', 0, 21),
(522, '2', 1, 2, 900, 'lrscb48p05dqf1o', 0, 18),
(523, '1', 1, 1, 300, '9mxch1e7ronq2yw', 0, 21),
(524, '2', 1, 2, 100, '9mxch1e7ronq2yw', 0, 18),
(525, '1', 1, 1, 400, 'lcpu8hatyzo6mij', 0, 21),
(526, '2', 1, 2, 300, 'lcpu8hatyzo6mij', 0, 18),
(527, '1', 1, 1, 100, 't3zrgysnb9o1cq5', 0, 21),
(528, '2', 1, 2, 400, 't3zrgysnb9o1cq5', 0, 18),
(529, '1', 1, 1, 400, '2rbjyghkznw74ls', 0, 21),
(530, '2', 1, 2, 100, '2rbjyghkznw74ls', 0, 18),
(531, '1', 1, 1, 100, '8nkw6ziuosqdhcx', 0, 21),
(532, '2', 1, 2, 400, '8nkw6ziuosqdhcx', 0, 18),
(533, '1', 1, 1, 300, 'g29rl3ie14xvf50', 0, 21),
(534, '2', 1, 2, 400, 'g29rl3ie14xvf50', 0, 18),
(535, '1', 1, 1, 600, '6ntaim7lw8bsgyf', 0, 21),
(536, '2', 1, 2, 100, '6ntaim7lw8bsgyf', 0, 18),
(537, '1', 1, 1, 400, 'q74ycplk25hriv1', 0, 21),
(538, '2', 1, 2, 200, 'q74ycplk25hriv1', 0, 18),
(539, '1', 1, 1, 2400, 'q67opjmzcr9kg3w', 1, 21),
(540, '2', 1, 2, 2600, 'q67opjmzcr9kg3w', 2, 18),
(541, '1', 1, 1, 2300, 'z751wsto0lxjd86', 1, 21),
(542, '2', 1, 2, 2500, 'z751wsto0lxjd86', 2, 18),
(543, '1', 1, 1, 2300, 'etc7g8fmb52dh3s', 1, 21),
(544, '2', 1, 2, 2600, 'etc7g8fmb52dh3s', 2, 18),
(545, '1', 1, 1, 2500, 'g403dxhlijm9fkp', 2, 21),
(546, '2', 1, 2, 2500, 'g403dxhlijm9fkp', 1, 18),
(547, '1', 1, 1, 1100, 'zuycil31mxjvsk7', 0, 21),
(548, '2', 1, 2, 1600, 'zuycil31mxjvsk7', 0, 18),
(549, '1', 1, 1, 2300, '49gfsey8zmql7j5', 1, 21),
(550, '2', 1, 2, 2500, '49gfsey8zmql7j5', 2, 18),
(551, '1', 3, 1, 7400, '1tmo5pk2gszxvyh', 2, 0),
(552, '2', 3, 2, 7400, '1tmo5pk2gszxvyh', 1, 1),
(553, '1', 3, 1, 1200, '1auyqbdph6mlr52', 0, 0),
(554, '2', 3, 2, 1600, '1auyqbdph6mlr52', 0, 0),
(555, '1', 1, 1, 500, '1eufpbrnlo4597s', 0, 21),
(556, '2', 1, 2, 600, '1eufpbrnlo4597s', 0, 18),
(557, '1', 1, 1, 300, '3gzrktopyj7q9vd', 0, 21),
(558, '2', 1, 2, 300, '3gzrktopyj7q9vd', 0, 18),
(559, '1', 1, 1, 600, 'jqmdg7pcv6eyb9a', 0, 21),
(560, '2', 1, 2, 600, 'jqmdg7pcv6eyb9a', 0, 18),
(561, '1', 1, 1, 600, 'mrey07spgt368qj', 0, 21),
(562, '2', 1, 2, 600, 'mrey07spgt368qj', 0, 18),
(563, '1', 1, 1, 600, 'sp9f3tluzcmib1d', 0, 21),
(564, '2', 1, 2, 500, 'sp9f3tluzcmib1d', 0, 18),
(565, '1', 1, 1, 2300, 'sv9ne63mj47ik82', 1, 21),
(566, '2', 1, 2, 2300, 'sv9ne63mj47ik82', 2, 18),
(567, '1', 1, 1, 2500, 'eqhk2570l63f9uw', 2, 21),
(568, '2', 1, 2, 2700, 'eqhk2570l63f9uw', 1, 18),
(569, '1', 1, 1, 2400, 'xobd74wvjcey5la', 2, 21),
(570, '2', 1, 2, 2300, 'xobd74wvjcey5la', 1, 18),
(571, '1', 1, 1, 2300, 'nlhscqzi6v34xu5', 1, 21),
(572, '2', 1, 2, 2700, 'nlhscqzi6v34xu5', 2, 18),
(573, '1', 5, 1, 6400, 'o9z8h1qumvclxei', 2, 0),
(574, '2', 5, 2, 6600, 'o9z8h1qumvclxei', 1, 2),
(575, '3', 5, 3, 6600, 'o9z8h1qumvclxei', 4, 0),
(576, '4', 5, 4, 6500, 'o9z8h1qumvclxei', 3, 1),
(577, '1', 5, 1, 6400, 'z1wmjb4t83h6gls', 2, 0),
(578, '2', 5, 2, 6600, 'z1wmjb4t83h6gls', 3, 2),
(579, '3', 5, 3, 6600, 'z1wmjb4t83h6gls', 4, 0),
(580, '4', 5, 4, 6400, 'z1wmjb4t83h6gls', 1, 1),
(581, '1', 5, 1, 6400, 'ai3l160vks5udmn', 3, 0),
(582, '2', 5, 2, 6400, 'ai3l160vks5udmn', 1, 2),
(583, '3', 5, 3, 6400, 'ai3l160vks5udmn', 4, 0),
(584, '4', 5, 4, 6600, 'ai3l160vks5udmn', 2, 1),
(585, '1', 1, 1, 500, 'i0j2lt8mw36bxvd', 0, 21),
(586, '2', 1, 2, 100, 'i0j2lt8mw36bxvd', 0, 18),
(587, '1', 1, 1, 100, 'uol1gp9icqz630h', 0, 21),
(588, '2', 1, 2, 500, 'uol1gp9icqz630h', 0, 18),
(589, '1', 1, 1, 300, 'aws1c4qgnid2yxm', 0, 21),
(590, '2', 1, 2, 600, 'aws1c4qgnid2yxm', 0, 18),
(591, '1', 1, 1, 300, '7oxbql4s9hrumvi', 0, 21),
(592, '2', 1, 2, 500, '7oxbql4s9hrumvi', 0, 18),
(593, '1', 1, 1, 600, 'b2ay9lgejvwi6ks', 0, 21),
(594, '2', 1, 2, 200, 'b2ay9lgejvwi6ks', 0, 18),
(595, '1', 1, 1, 100, '67yvne2bjwdlms0', 0, 21),
(596, '2', 1, 2, 600, '67yvne2bjwdlms0', 0, 18),
(597, '1', 1, 1, 300, 'vpen4af3zs791gm', 0, 21),
(598, '2', 1, 2, 600, 'vpen4af3zs791gm', 0, 18),
(599, '1', 1, 1, 600, '3kexmiyntdlab02', 0, 21),
(600, '2', 1, 2, 100, '3kexmiyntdlab02', 0, 18),
(601, '1', 1, 1, 100, 'u2qsh3fv149w6gn', 0, 21),
(602, '2', 1, 2, 400, 'u2qsh3fv149w6gn', 0, 18),
(603, '1', 1, 1, 2300, 'zj0ehlp4mkvf65n', 2, 21),
(604, '2', 1, 2, 2400, 'zj0ehlp4mkvf65n', 1, 18),
(605, '1', 1, 1, 2300, '5edvwf76a3ymuqg', 1, 21),
(606, '2', 1, 2, 2800, '5edvwf76a3ymuqg', 2, 18),
(607, '1', 1, 1, 100, 'xg7f60hkd39wz2o', 0, 21),
(608, '2', 1, 2, 600, 'xg7f60hkd39wz2o', 0, 18),
(609, '1', 1, 1, 200, '9iryfapel3b6x7n', 0, 21),
(610, '2', 1, 2, 100, '9iryfapel3b6x7n', 0, 18),
(611, '1', 1, 1, 300, 'qxt17em9ap8nfw6', 0, 21),
(612, '2', 1, 2, 200, 'qxt17em9ap8nfw6', 0, 18),
(613, '1', 1, 1, 600, 'bqy3mr4zih70u5g', 0, 21),
(614, '2', 1, 2, 400, 'bqy3mr4zih70u5g', 0, 18),
(615, '1', 1, 1, 100, 'hfg18n2i50rvtom', 0, 21),
(616, '2', 1, 2, 500, 'hfg18n2i50rvtom', 0, 18),
(617, '1', 1, 1, 600, 'k4l0ahug2sy8owj', 0, 21),
(618, '2', 1, 2, 600, 'k4l0ahug2sy8owj', 0, 18),
(619, '1', 1, 1, 400, 'r4wje50q6scnml9', 0, 21),
(620, '2', 1, 2, 400, 'r4wje50q6scnml9', 0, 18),
(621, '1', 1, 1, 600, '14vu6aksyb2gx5q', 0, 21),
(622, '2', 1, 2, 600, '14vu6aksyb2gx5q', 0, 18),
(623, '1', 1, 1, 200, 'kmigxlbzahw875r', 0, 21),
(624, '2', 1, 2, 300, 'kmigxlbzahw875r', 0, 18),
(625, '1', 1, 1, 400, 'g9dobkyul0ftpi4', 0, 21),
(626, '2', 1, 2, 100, 'g9dobkyul0ftpi4', 0, 18),
(627, '3', 1, 3, 600, 'g9dobkyul0ftpi4', 0, 1),
(628, '4', 1, 4, 200, 'g9dobkyul0ftpi4', 0, 1),
(629, '1', 1, 1, 100, '3js4ky1vwez5obn', 0, 21),
(630, '2', 1, 2, 500, '3js4ky1vwez5obn', 0, 18),
(631, '1', 1, 1, 500, 'zw6ur4tp3aye1i0', 0, 21),
(632, '2', 1, 2, 500, 'zw6ur4tp3aye1i0', 0, 18),
(633, '1', 1, 1, 600, 'k3s1o9mt4xcalyh', 0, 21),
(634, '2', 1, 2, 300, 'k3s1o9mt4xcalyh', 0, 18),
(635, '1', 1, 1, 500, 'ka0x6l2eftygnmw', 0, 21),
(636, '2', 1, 2, 500, 'ka0x6l2eftygnmw', 0, 18),
(637, '1', 1, 1, 200, 'zl86hn75bamprd1', 0, 21),
(638, '2', 1, 2, 200, 'zl86hn75bamprd1', 0, 18),
(639, '1', 1, 1, 300, 'psioq4t37nylxua', 0, 21),
(640, '2', 1, 2, 500, 'psioq4t37nylxua', 0, 18),
(641, '1', 1, 1, 2300, 'b36skj9z48e1arm', 1, 21),
(642, '2', 1, 2, 2300, 'b36skj9z48e1arm', 2, 18),
(643, '1', 1, 1, 1100, '6cn83rjzwsoflui', 0, 21),
(644, '2', 1, 2, 1000, '6cn83rjzwsoflui', 0, 18),
(645, '1', 1, 1, 1100, '9b3aju2o84qpdkz', 0, 21),
(646, '2', 1, 2, 900, '9b3aju2o84qpdkz', 0, 18),
(647, '1', 1, 1, 300, 'kb26i15hj93gdq8', 0, 21),
(648, '2', 1, 2, 400, 'kb26i15hj93gdq8', 0, 18),
(649, '1', 1, 1, 600, '0phatiwzokn48xq', 0, 21),
(650, '2', 1, 2, 100, '0phatiwzokn48xq', 0, 18),
(651, '1', 1, 1, 2600, '827akb1jimyvq3p', 1, 21),
(652, '2', 1, 2, 2700, '827akb1jimyvq3p', 2, 18),
(653, '1', 1, 1, 2600, 'yiruofpe1n7kc4a', 1, 21),
(654, '2', 1, 2, 2400, 'yiruofpe1n7kc4a', 2, 18),
(655, '1', 1, 1, 2500, 's7iq0u9n8jka4vt', 1, 21),
(656, '2', 1, 2, 2800, 's7iq0u9n8jka4vt', 2, 18),
(657, '1', 1, 1, 2300, 'pu2xz4rflwqjmas', 1, 21),
(658, '2', 1, 2, 2800, 'pu2xz4rflwqjmas', 2, 18),
(659, '1', 1, 1, 800, 'fpv3qox27hcyt6w', 0, 21),
(660, '2', 1, 2, 700, 'fpv3qox27hcyt6w', 0, 18),
(661, '1', 1, 1, 2400, 'ksaz543xhvmcftu', 6, 21),
(662, '2', 1, 2, 2500, 'ksaz543xhvmcftu', 3, 18),
(663, '3', 1, 3, 2400, 'ksaz543xhvmcftu', 4, 1),
(664, '4', 1, 4, 2700, 'ksaz543xhvmcftu', 1, 1),
(665, '5', 1, 5, 2400, 'ksaz543xhvmcftu', 2, 0),
(666, '6', 1, 6, 2400, 'ksaz543xhvmcftu', 5, 0),
(667, '1', 1, 1, 2500, 'p3dg5wkfyqvlr72', 2, 21),
(668, '2', 1, 2, 2300, 'p3dg5wkfyqvlr72', 1, 18),
(669, '1', 1, 1, 2300, '5nwfqtdmerx28yj', 2, 21),
(670, '2', 1, 2, 2400, '5nwfqtdmerx28yj', 1, 18),
(671, '1', 1, 1, 2600, '8fgjksnwtm0qbd2', 2, 21),
(672, '2', 1, 2, 2600, '8fgjksnwtm0qbd2', 1, 18);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carro`
--

CREATE TABLE `carro` (
  `id` tinyint(3) NOT NULL,
  `direccion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `carro`
--

INSERT INTO `carro` (`id`, `direccion`) VALUES
(1, '../../Assets/img/car_1.png'),
(2, '../../Assets/img/car_2.png'),
(3, '../../Assets/img/car_3.png'),
(4, '../../Assets/img/car_4.png'),
(5, '../../Assets/img/car_5.png'),
(6, '../../Assets/img/car_6.png'),
(7, '../../Assets/img/car_7.png'),
(8, '../../Assets/img/car_8.png'),
(9, '../../Assets/img/car_9.png'),
(10, '../../Assets/img/car_0.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pista`
--

CREATE TABLE `pista` (
  `id` tinyint(3) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `distancia` smallint(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pista`
--

INSERT INTO `pista` (`id`, `nombre`, `distancia`) VALUES
(1, 'Silverstone', 2210),
(2, 'Nürburgring ', 3510),
(3, 'Watkins Glen', 7400),
(4, 'Reims ', 5090),
(5, 'Zandvoort', 6340);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carrera`
--
ALTER TABLE `carrera`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pista_id` (`pista_id`),
  ADD KEY `carro_id` (`carro_id`);

--
-- Indices de la tabla `carro`
--
ALTER TABLE `carro`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pista`
--
ALTER TABLE `pista`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carrera`
--
ALTER TABLE `carrera`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=673;

--
-- AUTO_INCREMENT de la tabla `carro`
--
ALTER TABLE `carro`
  MODIFY `id` tinyint(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `pista`
--
ALTER TABLE `pista`
  MODIFY `id` tinyint(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `carrera`
--
ALTER TABLE `carrera`
  ADD CONSTRAINT `carrera_ibfk_1` FOREIGN KEY (`pista_id`) REFERENCES `pista` (`id`),
  ADD CONSTRAINT `carrera_ibfk_2` FOREIGN KEY (`carro_id`) REFERENCES `carro` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
