-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Nov 2018 pada 17.16
-- Versi server: 10.1.31-MariaDB
-- Versi PHP: 7.2.4

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
-- Struktur dari tabel `favorites`
--

CREATE TABLE `favorites` (
  `userid` int(11) NOT NULL,
  `musicid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `musics`
--

CREATE TABLE `musics` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `artist` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `musics`
--

INSERT INTO `musics` (`id`, `name`, `path`, `artist`) VALUES
(1, 'Migikata', '7868eb88-5c8b-47b5-af00-aca1d174e232.mp3', 'Maeda Atsuko'),
(2, 'Altale', '19bcff92-2181-4662-8a80-63b809be32c7.mp3', 'Sakuzyo'),
(3, 'i cant get no satisfaction', 'the rolling stones', ''),
(4, 'you were on my mind', 'we five', ''),
(5, 'youve lost that lovin feelin', 'the righteous brothers', ''),
(6, 'downtown', 'petula clark', ''),
(7, 'help', 'the beatles', ''),
(8, 'cant you hear my heart beat', 'hermans hermits', ''),
(9, 'crying in the chapel', 'elvis presley', ''),
(10, 'my girl', 'the temptations', ''),
(11, 'help me rhonda', 'the beach boys', ''),
(12, 'king of the road', 'roger miller', ''),
(13, 'the birds and the bees', 'jewel akens', ''),
(14, 'hold me thrill me kiss me', 'mel carter', ''),
(15, 'shotgun', 'junior walker  the all stars', ''),
(16, 'i got you babe', 'sonny  cher', ''),
(17, 'this diamond ring', 'gary lewis  the playboys', ''),
(18, 'the in crowd', 'ramsey lewis trio', ''),
(19, 'mrs brown youve got a lovely daughter', 'hermans hermits', ''),
(20, 'stop in the name of love', 'the supremes', ''),
(21, 'unchained melody', 'the righteous brothers', ''),
(22, 'silhouettes', 'hermans hermits', ''),
(23, 'ill never find another you', 'the seekers', ''),
(24, 'cara mia', 'jay and the americans', ''),
(25, 'mr tambourine man', 'the byrds', ''),
(26, 'cast your fate to the wind', 'sounds orchestral', ''),
(27, 'yes im ready', 'barbara mason', ''),
(28, 'whats new pussycat', 'tom jones', ''),
(29, 'eve of destruction', 'barry mcguire', ''),
(30, 'hang on sloopy', 'the mccoys', ''),
(31, 'ticket to ride', 'the beatles', ''),
(32, 'red roses for a blue lady', 'bert kaempfert', ''),
(33, 'papas got a brand new bag', 'james brown', ''),
(34, 'game of love', 'wayne fontana  the mindbenders', ''),
(35, 'the name game', 'shirley ellis', ''),
(36, 'i know a place', 'petula clark', ''),
(37, 'back in my arms again', 'the supremes', ''),
(38, 'baby im yours', 'barbara lewis', ''),
(39, 'the jolly green giant', 'the kingsmen', ''),
(40, 'hush hush sweet charlotte', 'patti page', ''),
(41, 'like a rolling stone', 'bob dylan', ''),
(42, 'im telling you now', 'freddie and the dreamers', ''),
(43, 'ferry cross the mersey', 'gerry and the pacemakers', ''),
(44, 'just once in my life', 'the righteous brothers', ''),
(45, 'the seventh son', 'johnny rivers', ''),
(46, 'im henery the eighth i am', 'hermans hermits', ''),
(47, 'a walk in the black forest', 'horst jankowski', ''),
(48, 'for your love', 'the yardbirds', ''),
(49, 'california girls', 'the beach boys', ''),
(50, 'go now', 'the moody blues', ''),
(51, 'goldfinger', 'shirley bassey', ''),
(52, 'down in the boondocks', 'billy joe royal', ''),
(53, 'baby the rain must fall', 'glenn yarbrough', ''),
(54, 'catch us if you can', 'the dave clark five', ''),
(55, 'eight days a week', 'the beatles', ''),
(56, 'just a little', 'the beau brummels', ''),
(57, 'you turn me on', 'ian whitcomb', ''),
(58, 'ill be doggone', 'marvin gaye', ''),
(59, 'save your heart for me', 'gary lewis  the playboys', ''),
(60, 'tired of waiting for you', 'the kinks', ''),
(61, 'count me in', 'gary lewis  the playboys', ''),
(62, 'all day and all of the night', 'the kinks', ''),
(63, 'what the world needs now is love', 'jackie deshannon', ''),
(64, 'its not unusual', 'tom jones', ''),
(65, 'shes about a mover', 'sir douglas quintet', ''),
(66, 'shake', 'sam cooke', ''),
(67, 'wonderful world', 'hermans hermits', ''),
(68, 'nowhere to run', 'martha and the vandellas', ''),
(69, 'heart full of soul', 'the yardbirds', ''),
(70, 'love potion no 9', 'the searchers', ''),
(71, 'laurie strange things happen', 'dickey lee', ''),
(72, 'baby dont go', 'sonny  cher', ''),
(73, 'it aint me babe', 'the turtles', ''),
(74, 'tell her no', 'the zombies', ''),
(75, 'i go to pieces', 'peter and gordon', ''),
(76, 'red roses for a blue lady', 'vic dana', ''),
(77, 'dont just stand there', 'patty duke', ''),
(78, 'the tracks of my tears', 'the miracles', ''),
(79, 'too many rivers', 'brenda lee', ''),
(80, 'i like it like that', 'the dave clark five', ''),
(81, 'little things', 'bobby goldsboro', ''),
(82, 'true love ways', 'peter and gordon', ''),
(83, 'its the same old song', 'four tops', ''),
(84, 'youve got your troubles', 'the fortunes', ''),
(85, 'hold what youve got', 'joe tex', ''),
(86, 'we gotta get out of this place', 'the animals', ''),
(87, 'laugh laugh', 'the beau brummels', ''),
(88, 'the last time', 'the rolling stones', ''),
(89, 'do you believe in magic', 'the lovin spoonful', ''),
(90, 'all i really want to do', 'cher', ''),
(91, 'take me back', 'little anthony and the imperials', ''),
(92, 'i want candy', 'the strangeloves', ''),
(93, 'ooo baby baby', 'the miracles', ''),
(94, 'laugh at me', 'sonny bono', ''),
(95, 'treat her right', 'roy head', ''),
(96, 'the race is on', 'jack jones', ''),
(97, 'im a fool', 'dino desi  billy', ''),
(98, 'the boy from new york city', 'the ad libs', ''),
(99, 'keep searchin well follow the sun', 'del shannon', ''),
(100, 'how sweet it is to be loved by you', 'marvin gaye', ''),
(101, 'Flower', '8f6c365b-1045-49e8-b35c-d72db404665a.mp3', 'Maeda Atsuko'),
(102, 'One More Time One More Chance', '15558bf9-525d-4180-9de9-6e4dcc1b7c9a.mp3', 'Masayoshi Yamazaki'),
(103, 'Last Scene', '08ca8254-9853-4d97-8b5e-454d459a816b.mp3', 'Ikimono Gakari'),
(104, 'Orange', 'fa3c252c-ed8a-4e32-9b87-7dcc8424384a.mp3', '7!!'),
(105, 'Kimi Dattara', '0a64c712-c549-4419-b4c1-8e0085203065.mp3', 'Happy Birthday'),
(106, 'Uchiage Hanabi', '1f5930a3-4fb1-42b6-ab3a-437f2878b944.mp3', 'Daoko'),
(107, 'Kanade', 'ef410a34-0bb6-4858-a6c6-01b5d4bd99d8.mp3', 'Sora Amamiya'),
(108, 'Uta Ni Katachi Wa Nai Keredo', '82cae0ff-542b-4bbe-b5bc-9e2af6873e28.mp3', 'YURiCa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(1, 'admin', 'admin@admin.com', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_session`
--

CREATE TABLE `user_session` (
  `userid` int(11) NOT NULL,
  `sessionid` varchar(50) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_session`
--

INSERT INTO `user_session` (`userid`, `sessionid`, `timestamp`) VALUES
(1, 'd34c140d-d3d4-434d-b83a-30799fdc31f3', '2018-11-18 15:45:29');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`userid`,`musicid`),
  ADD KEY `favorites_ibfk_1` (`musicid`);

--
-- Indeks untuk tabel `musics`
--
ALTER TABLE `musics`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_session`
--
ALTER TABLE `user_session`
  ADD PRIMARY KEY (`sessionid`),
  ADD KEY `userid` (`userid`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `musics`
--
ALTER TABLE `musics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_ibfk_1` FOREIGN KEY (`musicid`) REFERENCES `musics` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `favorites_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `user_session`
--
ALTER TABLE `user_session`
  ADD CONSTRAINT `user_session_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
