-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 10, 2018 at 09:50 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `musicdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `musics`
--

CREATE TABLE `musics` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `musics`
--

INSERT INTO `musics` (`id`, `name`, `path`) VALUES
(1, 'test1', 'test1'),
(2, 'test2', 'test2'),
(3, 'i cant get no satisfaction', 'the rolling stones'),
(4, 'you were on my mind', 'we five'),
(5, 'youve lost that lovin feelin', 'the righteous brothers'),
(6, 'downtown', 'petula clark'),
(7, 'help', 'the beatles'),
(8, 'cant you hear my heart beat', 'hermans hermits'),
(9, 'crying in the chapel', 'elvis presley'),
(10, 'my girl', 'the temptations'),
(11, 'help me rhonda', 'the beach boys'),
(12, 'king of the road', 'roger miller'),
(13, 'the birds and the bees', 'jewel akens'),
(14, 'hold me thrill me kiss me', 'mel carter'),
(15, 'shotgun', 'junior walker  the all stars'),
(16, 'i got you babe', 'sonny  cher'),
(17, 'this diamond ring', 'gary lewis  the playboys'),
(18, 'the in crowd', 'ramsey lewis trio'),
(19, 'mrs brown youve got a lovely daughter', 'hermans hermits'),
(20, 'stop in the name of love', 'the supremes'),
(21, 'unchained melody', 'the righteous brothers'),
(22, 'silhouettes', 'hermans hermits'),
(23, 'ill never find another you', 'the seekers'),
(24, 'cara mia', 'jay and the americans'),
(25, 'mr tambourine man', 'the byrds'),
(26, 'cast your fate to the wind', 'sounds orchestral'),
(27, 'yes im ready', 'barbara mason'),
(28, 'whats new pussycat', 'tom jones'),
(29, 'eve of destruction', 'barry mcguire'),
(30, 'hang on sloopy', 'the mccoys'),
(31, 'ticket to ride', 'the beatles'),
(32, 'red roses for a blue lady', 'bert kaempfert'),
(33, 'papas got a brand new bag', 'james brown'),
(34, 'game of love', 'wayne fontana  the mindbenders'),
(35, 'the name game', 'shirley ellis'),
(36, 'i know a place', 'petula clark'),
(37, 'back in my arms again', 'the supremes'),
(38, 'baby im yours', 'barbara lewis'),
(39, 'the jolly green giant', 'the kingsmen'),
(40, 'hush hush sweet charlotte', 'patti page'),
(41, 'like a rolling stone', 'bob dylan'),
(42, 'im telling you now', 'freddie and the dreamers'),
(43, 'ferry cross the mersey', 'gerry and the pacemakers'),
(44, 'just once in my life', 'the righteous brothers'),
(45, 'the seventh son', 'johnny rivers'),
(46, 'im henery the eighth i am', 'hermans hermits'),
(47, 'a walk in the black forest', 'horst jankowski'),
(48, 'for your love', 'the yardbirds'),
(49, 'california girls', 'the beach boys'),
(50, 'go now', 'the moody blues'),
(51, 'goldfinger', 'shirley bassey'),
(52, 'down in the boondocks', 'billy joe royal'),
(53, 'baby the rain must fall', 'glenn yarbrough'),
(54, 'catch us if you can', 'the dave clark five'),
(55, 'eight days a week', 'the beatles'),
(56, 'just a little', 'the beau brummels'),
(57, 'you turn me on', 'ian whitcomb'),
(58, 'ill be doggone', 'marvin gaye'),
(59, 'save your heart for me', 'gary lewis  the playboys'),
(60, 'tired of waiting for you', 'the kinks'),
(61, 'count me in', 'gary lewis  the playboys'),
(62, 'all day and all of the night', 'the kinks'),
(63, 'what the world needs now is love', 'jackie deshannon'),
(64, 'its not unusual', 'tom jones'),
(65, 'shes about a mover', 'sir douglas quintet'),
(66, 'shake', 'sam cooke'),
(67, 'wonderful world', 'hermans hermits'),
(68, 'nowhere to run', 'martha and the vandellas'),
(69, 'heart full of soul', 'the yardbirds'),
(70, 'love potion no 9', 'the searchers'),
(71, 'laurie strange things happen', 'dickey lee'),
(72, 'baby dont go', 'sonny  cher'),
(73, 'it aint me babe', 'the turtles'),
(74, 'tell her no', 'the zombies'),
(75, 'i go to pieces', 'peter and gordon'),
(76, 'red roses for a blue lady', 'vic dana'),
(77, 'dont just stand there', 'patty duke'),
(78, 'the tracks of my tears', 'the miracles'),
(79, 'too many rivers', 'brenda lee'),
(80, 'i like it like that', 'the dave clark five'),
(81, 'little things', 'bobby goldsboro'),
(82, 'true love ways', 'peter and gordon'),
(83, 'its the same old song', 'four tops'),
(84, 'youve got your troubles', 'the fortunes'),
(85, 'hold what youve got', 'joe tex'),
(86, 'we gotta get out of this place', 'the animals'),
(87, 'laugh laugh', 'the beau brummels'),
(88, 'the last time', 'the rolling stones'),
(89, 'do you believe in magic', 'the lovin spoonful'),
(90, 'all i really want to do', 'cher'),
(91, 'take me back', 'little anthony and the imperials'),
(92, 'i want candy', 'the strangeloves'),
(93, 'ooo baby baby', 'the miracles'),
(94, 'laugh at me', 'sonny bono'),
(95, 'treat her right', 'roy head'),
(96, 'the race is on', 'jack jones'),
(97, 'im a fool', 'dino desi  billy'),
(98, 'the boy from new york city', 'the ad libs'),
(99, 'keep searchin well follow the sun', 'del shannon'),
(100, 'how sweet it is to be loved by you', 'marvin gaye');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `musics`
--
ALTER TABLE `musics`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `musics`
--
ALTER TABLE `musics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
