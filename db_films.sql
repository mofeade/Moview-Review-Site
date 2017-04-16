-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 16, 2017 at 04:50 AM
-- Server version: 5.6.35
-- PHP Version: 7.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_films`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cast`
--

CREATE TABLE `tbl_cast` (
  `cast_id` smallint(6) NOT NULL,
  `cast_fname` varchar(50) CHARACTER SET latin1 NOT NULL,
  `cast_lname` varchar(50) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_cast`
--

INSERT INTO `tbl_cast` (`cast_id`, `cast_fname`, `cast_lname`) VALUES
(1, 'Felicity', 'Jones'),
(2, 'Ben ', 'Affleck'),
(3, 'Jennifer', 'Lawrence'),
(4, 'Taraji P.', 'Henson'),
(5, 'Johnny ', 'Depp'),
(6, 'O\'Shea', 'Jackson Jr.'),
(7, 'Andy', 'Serkis'),
(8, 'Aaron', 'Paul'),
(9, 'Dave ', 'Franco'),
(10, 'Channing ', 'Tatum'),
(11, 'Daniel', 'Kaluuya'),
(12, 'Hugh', 'Jackman');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cat`
--

CREATE TABLE `tbl_cat` (
  `cat_id` smallint(6) NOT NULL,
  `cat_name` varchar(400) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_cat`
--

INSERT INTO `tbl_cat` (`cat_id`, `cat_name`) VALUES
(1, 'thriller'),
(2, 'drama'),
(3, 'family'),
(4, 'horror');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_director`
--

CREATE TABLE `tbl_director` (
  `dir_id` smallint(6) NOT NULL,
  `dir_fname` varchar(50) CHARACTER SET latin1 NOT NULL,
  `dir_lname` varchar(50) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_director`
--

INSERT INTO `tbl_director` (`dir_id`, `dir_fname`, `dir_lname`) VALUES
(1, 'Gareth', 'Edwards'),
(2, 'Zack', 'Snyder'),
(3, 'Bryan', 'Singer'),
(4, 'Theodore', 'Melfi'),
(5, 'Scott', 'Cooper'),
(6, 'Felix', 'Gary Gray'),
(7, 'Matt ', 'Matt Reeves'),
(8, 'Scott', 'Waugh'),
(9, 'Louis', 'Leterrier'),
(10, 'Roland', 'Emmerich'),
(11, 'Jordan', 'Peele'),
(12, 'James', 'Mangold');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_films`
--

CREATE TABLE `tbl_films` (
  `film_id` smallint(6) NOT NULL,
  `film_thumb` varchar(50) CHARACTER SET latin1 NOT NULL DEFAULT 'nothumb.jpg',
  `film_fimg` varchar(50) CHARACTER SET latin1 NOT NULL DEFAULT 'nofimg.jpg',
  `film_bimg` varchar(50) CHARACTER SET latin1 NOT NULL DEFAULT 'nobimg.jpg',
  `film_title` varchar(75) CHARACTER SET latin1 NOT NULL,
  `film_year` varchar(20) CHARACTER SET latin1 NOT NULL,
  `film_storyline` text CHARACTER SET latin1 NOT NULL,
  `film_trailer` varchar(50) CHARACTER SET latin1 NOT NULL,
  `film_runtime` varchar(30) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_films`
--

INSERT INTO `tbl_films` (`film_id`, `film_thumb`, `film_fimg`, `film_bimg`, `film_title`, `film_year`, `film_storyline`, `film_trailer`, `film_runtime`) VALUES
(1, 'nothumb.jpg', 'rogue.jpg', 'nobimg.jpg', 'Rogue One: A Star Wars Story', '2016', 'Former scientist Galen Erso lives on a farm with his wife and young daughter Jyn. His peaceful existence comes crashing down when the evil Orson Krennic takes him away from his beloved family. Many years later, Galen is now the Empire\'s lead engineer for the most powerful weapon in the galaxy, the Death Star. Knowing that her father holds the key to its destruction, a vengeful Jyn joins forces with a spy and other resistance fighters to steal the space station\'s plans for the Rebel Alliance.', 'rogue.mp4', '2h 13min'),
(2, 'nothumb.jpg', 'bvss.jpg', 'nobimg.jpg', 'Batman v Superman: Dawn of Justice', '2016', 'It\'s been nearly two years since Superman\'s (Henry Cavill) colossal battle with Zod (Michael Shannon) devastated the city of Metropolis. The loss of life and collateral damage left many feeling angry and helpless, including crime-fighting billionaire Bruce Wayne (Ben Affleck). Convinced that Superman is now a threat to humanity, Batman embarks on a personal vendetta to end his reign on Earth, while the conniving Lex Luthor (Jesse Eisenberg) launches his own crusade against the Man of Steel.', 'bvss.mp4', '3h 3min'),
(3, 'nothumb.jpg', 'xmen.jpg', 'nobimg.jpg', 'X-Men: Apocalypse', '2016', 'Worshiped as a god since the dawn of civilization, the immortal Apocalypse (Oscar Isaac) becomes the first and most powerful mutant. Awakening after thousands of years, he recruits the disheartened Magneto (Michael Fassbender) and other mutants to create a new world order. As the fate of the Earth hangs in the balance, Professor X (James McAvoy) and Raven (Jennifer Lawrence) lead a team of young X-Men to stop their seemingly invincible nemesis from destroying mankind.', 'xmen.mp4', '2h 27min'),
(4, 'nothumb.jpg', 'hidden.jpg', 'nobimg.jpg', 'Hidden Figures', '2016', 'Three brilliant African-American women at NASA -- Katherine Johnson (Taraji P. Henson), Dorothy Vaughan (Octavia Spencer) and Mary Jackson (Janelle Monáe) -- serve as the brains behind one of the greatest operations in history: the launch of astronaut John Glenn (Glen Powell) into orbit, a stunning achievement that restored the nation\'s confidence, turned around the Space Race and galvanized the world.', 'hidden.mp4', '2h 7min'),
(5, 'nothumb.jpg', 'black.jpg', 'nobimg.jpg', 'Black Mass', '2015', 'While his brother Bill (Benedict Cumberbatch) remains a powerful leader in the Massachusetts Senate, Irish hoodlum James \"Whitey\" Bulger (Johnny Depp) continues to pursue a life of crime in 1970s Boston. Approached by FBI agent John Connolly (Joel Edgerton), the lawman convinces Whitey to help the agency fight the Italian mob. As their unholy alliance spirals out of control, Bulger increases his power and evades capture to become one of the most dangerous gangsters in U.S. history.', 'black.mp4', '2h 3min'),
(6, 'nothumb.jpg', 'soc.jpg', 'nobimg.jpg', 'Straight Outta Compton', '2015', 'In 1988, a groundbreaking new group revolutionizes music and pop culture, changing and influencing hip-hop forever. N.W.A\'s first studio album, \"Straight Outta Compton,\" stirs controversy with its brutally honest depiction of life in Southern Los Angeles. With guidance from veteran manager Jerry Heller, band members Ice Cube (O\'Shea Jackson Jr.), Dr. Dre (Corey Hawkins), Eazy-E, DJ Yella and MC Ren navigate their way through the industry, acquiring fame, fortune and a place in history.', 'soc.mp4', '2h 47min'),
(7, 'nothumb.jpg', 'dawn.jpg', 'nobimg.jpg', 'Dawn of the Planet of the Apes', '2015', 'Ten years after simian flu wiped out much of the world\'s homosapiens, genetically enhanced chimpanzee Caesar (Andy Serkis) and his ever-growing band of followers have established a thriving colony just outside San Francisco in Muir Woods. Meanwhile, a small band of human survivors emerges, which forces Caesar -- as leader -- to grapple with the dual challenge of protecting his people and re-establishing a relationship with the remaining human population -- the latter being Caesar\'s secret wish.', 'dawn.mp4', '2h 11min'),
(8, 'nothumb.jpg', 'nfs.jpg', 'nobimg.jpg', 'Need for Speed', '2014', 'Tobey Marshall (Aaron Paul), a mechanic, races muscle cars in an underground circuit. Struggling to keep his business afloat, he reluctantly partners with wealthy but treacherous Dino Brewster (Dominic Cooper). However, Dino frames Tobey for a crime that sends him to prison. Two years later, Tobey is out and bent on revenge; his only chance to take down Dino is to beat him in a high-stakes race. But to get there in time, he must successfully evade an army of cops and bounty hunters.', 'nfs.mp4', '2 h 12min'),
(9, 'nothumb.jpg', 'nysm.jpg', 'nobimg.jpg', 'Now You See Me', '2014', 'Charismatic magician Atlas (Jesse Eisenberg) leads a team of talented illusionists called the Four Horsemen. Atlas and his comrades mesmerize audiences with a pair of amazing magic shows that drain the bank accounts of the corrupt and funnel the money to audience members. A federal agent (Mark Ruffalo) and an Interpol detective (Mélanie Laurent) intend to rein in the Horsemen before their next caper, and they turn to Thaddeus (Morgan Freeman), a famous debunker, for help.', 'nysm.mp4', '2h 5min'),
(10, 'nothumb.jpg', 'white.jpg', 'nobimg.jpg', 'White House Down', '2013', 'Capitol police officer John Cale (Channing Tatum) has just been denied his dream job of protecting President James Sawyer (Jamie Foxx) as a member of the Secret Service. Not wanting to disappoint his young daughter with the bad news, Cale takes her on a tour of the White House. While he and his daughter are there, a heavily armed paramilitary group attacks and seizes control. As the nation\'s government dissolves in chaos, only Cale can save his daughter, the president and the country.', 'white.mp4', '2h 17min'),
(11, 'nothumb.jpg', 'getout.jpg', 'nobimg.jpg', 'Get Out', '2017', 'Now that Chris (Daniel Kaluuya) and his girlfriend, Rose (Allison Williams), have reached the meet-the-parents milestone of dating, she invites him for a weekend getaway upstate with Missy and Dean. At first, Chris reads the family\'s overly accommodating behavior as nervous attempts to deal with their daughter\'s interracial relationship, but as the weekend progresses, a series of increasingly disturbing discoveries lead him to a truth that he never could have imagined.', 'getout.mp4', '2h 10min'),
(12, 'nothumb.jpg', 'logan.jpg', 'nobimg.jpg', 'Logan', '2017', 'In the near future, a weary Logan (Hugh Jackman) cares for an ailing Professor X (Patrick Stewart) at a remote outpost on the Mexican border. His plan to hide from the outside world gets upended when he meets a young mutant (Dafne Keen) who is very much like him. Logan must now protect the girl and battle the dark forces that want to capture her.', 'logan.mp4', '2h 21min');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_L_fc`
--

CREATE TABLE `tbl_L_fc` (
  `fc_id` smallint(6) NOT NULL,
  `film_id` smallint(6) NOT NULL,
  `cat_id` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_L_fc`
--

INSERT INTO `tbl_L_fc` (`fc_id`, `film_id`, `cat_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 2),
(5, 5, 1),
(6, 6, 2),
(7, 7, 2),
(8, 8, 1),
(9, 9, 2),
(10, 10, 2),
(11, 11, 4),
(12, 12, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_L_fd`
--

CREATE TABLE `tbl_L_fd` (
  `fd_id` smallint(6) NOT NULL,
  `film_id` smallint(6) NOT NULL,
  `dir_id` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_L_fd`
--

INSERT INTO `tbl_L_fd` (`fd_id`, `film_id`, `dir_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 11, 11),
(12, 12, 12);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rating`
--

CREATE TABLE `tbl_rating` (
  `rate_id` smallint(6) NOT NULL,
  `rate_desc` varchar(50) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_rating`
--

INSERT INTO `tbl_rating` (`rate_id`, `rate_desc`) VALUES
(1, '1star'),
(2, '2star'),
(3, '3star'),
(4, '4star'),
(5, '5star');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_studio`
--

CREATE TABLE `tbl_studio` (
  `studio_id` smallint(6) NOT NULL,
  `studio_name` varchar(80) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_studio`
--

INSERT INTO `tbl_studio` (`studio_id`, `studio_name`) VALUES
(1, 'Walt Disney Studios'),
(2, 'Warner Bros Pictures'),
(3, '20th Century Fox'),
(4, '20th Century Fox'),
(5, 'Warner Bros Pictures'),
(6, 'Universal Pictures'),
(7, '20th Century Fox'),
(8, 'Walt Disney Studios'),
(9, 'Summit Entertainment'),
(10, 'Columbia Pictures'),
(11, 'Walt Disney Studios'),
(12, '20th Century Fox');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_cast`
--
ALTER TABLE `tbl_cast`
  ADD PRIMARY KEY (`cast_id`);

--
-- Indexes for table `tbl_cat`
--
ALTER TABLE `tbl_cat`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `tbl_director`
--
ALTER TABLE `tbl_director`
  ADD PRIMARY KEY (`dir_id`);

--
-- Indexes for table `tbl_films`
--
ALTER TABLE `tbl_films`
  ADD PRIMARY KEY (`film_id`);

--
-- Indexes for table `tbl_L_fc`
--
ALTER TABLE `tbl_L_fc`
  ADD PRIMARY KEY (`fc_id`);

--
-- Indexes for table `tbl_L_fd`
--
ALTER TABLE `tbl_L_fd`
  ADD PRIMARY KEY (`fd_id`);

--
-- Indexes for table `tbl_rating`
--
ALTER TABLE `tbl_rating`
  ADD PRIMARY KEY (`rate_id`);

--
-- Indexes for table `tbl_studio`
--
ALTER TABLE `tbl_studio`
  ADD PRIMARY KEY (`studio_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
