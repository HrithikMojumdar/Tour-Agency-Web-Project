-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2021 at 01:31 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2017-05-13 11:18:49');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `BookingId` int(11) NOT NULL,
  `PackageId` int(11) DEFAULT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `FromDate` varchar(100) DEFAULT NULL,
  `ToDate` varchar(100) DEFAULT NULL,
  `Comment` mediumtext,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL,
  `CancelledBy` varchar(5) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`BookingId`, `PackageId`, `UserEmail`, `FromDate`, `ToDate`, `Comment`, `RegDate`, `status`, `CancelledBy`, `UpdationDate`) VALUES
(12, 9, 'ashik15-1728@diu.edu.bd', '2021-04-18', '2021-04-22', 'I want to go.', '2021-04-16 23:21:34', 1, NULL, '2021-04-16 23:27:22');

-- --------------------------------------------------------

--
-- Table structure for table `tblenquiry`
--

CREATE TABLE `tblenquiry` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `MobileNumber` char(11) DEFAULT NULL,
  `Subject` varchar(100) DEFAULT NULL,
  `Description` mediumtext,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblenquiry`
--

INSERT INTO `tblenquiry` (`id`, `FullName`, `EmailId`, `MobileNumber`, `Subject`, `Description`, `PostingDate`, `Status`) VALUES
(5, 'Md. Al - Amin', 'amin15-1951@diu.edu.bd', '01920162766', 'I want to Sponsor your bussiness.', 'I am a YouTube VLOGER . I want to sponsor your Tour Agency . Hope you will contact with me.', '2021-04-16 23:29:56', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblissues`
--

CREATE TABLE `tblissues` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `Issue` varchar(100) DEFAULT NULL,
  `Description` mediumtext,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `AdminRemark` mediumtext,
  `AdminremarkDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblissues`
--

INSERT INTO `tblissues` (`id`, `UserEmail`, `Issue`, `Description`, `PostingDate`, `AdminRemark`, `AdminremarkDate`) VALUES
(8, NULL, NULL, NULL, '2021-04-16 23:15:59', NULL, NULL),
(9, 'ashik15-1728@diu.edu.bd', 'Booking Issues', 'I want to go within this week !!!!', '2021-04-16 23:24:29', 'OK. We will contact with you soon...', '2021-04-16 23:28:05');

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT '',
  `detail` longtext
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbltourpackages`
--

CREATE TABLE `tbltourpackages` (
  `PackageId` int(11) NOT NULL,
  `PackageName` varchar(200) DEFAULT NULL,
  `PackageType` varchar(150) DEFAULT NULL,
  `PackageLocation` varchar(100) DEFAULT NULL,
  `PackagePrice` int(11) DEFAULT NULL,
  `PackageFetures` varchar(255) DEFAULT NULL,
  `PackageDetails` mediumtext,
  `PackageImage` varchar(100) DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltourpackages`
--

INSERT INTO `tbltourpackages` (`PackageId`, `PackageName`, `PackageType`, `PackageLocation`, `PackagePrice`, `PackageFetures`, `PackageDetails`, `PackageImage`, `Creationdate`, `UpdationDate`) VALUES
(7, 'Cox-Bazar\'s Tour', 'Family Pack', 'Cox-Bazar', 10000, 'Free Breakfast , Swimming Pool, Beach View', 'DAY 01: Dhaka To Cox’s Bazar.\r\n\r\nThis morning we will take a flight to Cox’s bazar, after arrival receive and transfer to Hotel, take rest and relax, visit Buddhist town Ramu to see the beautiful wooden Bara Khyang in Lampara, Enjoy the sunset at the longest sea beach, Overnight at Hotel.\r\n\r\nDAY 02: Explore  Moheshkhali Island & Travel Back To Dhaka.\r\n\r\nAfter breakfast we will go for a boat trip to Maheskhali island. There we will visit the historical Hindu Kali temple on a hilltop. Then we will visit a colorful Buddhist temple of the Mogh community, in the late afternoon return to Cox’s Bazar . Free time to spend on the beach to enjoy the sunset or just relax on the beach. In the evening you will fly back to Dhaka.', '1569705652_5.jpg', '2021-04-16 22:56:16', '2021-04-16 23:06:12'),
(8, 'Saint Martin Tour', 'Family Pack', 'Saint Martin', 7000, 'Saint Martin Tour Package 4 Nights 3 Days Details information Saint Martin Package: 4 Nights and 3 Days', 'Duration: 4 Nights and 3 Days\r\nDeparture: Dhaka\r\nDestination: St. Martin’s Island\r\nTransport: Non AC: Bus / ship / boat journeys.\r\nAccommodation: 2 nights at Saint Martin (Shared basis Non AC Room)\r\nBreakfast: Paratha, Vegetable, Egg, Tea / Vuna khichuri, Egg & Tea.\r\nLunch/Dinner: Plain Rice, Chicken/ Fish, Vorta/ Vegetable, Dal, Salad.\r\nTour Itinerary:\r\n\r\nDay – 1:\r\n\r\nOur journey will start from Dhaka to Teknaf at 7.pm by Non Ac Bus (Overnight Journey).\r\n\r\nDay – 2:\r\n\r\nStart from Dhaka to Teknaf by night coach. Overnight journey. Arrive Teknaf at about 8:00am. Then start for St. Martin’s Island by Ship which will take 2 hours. After arrival at St. Martin’s Island check in to the hotel at 2:00pm & take your lunch at restaurant within 2:30pm. This day is free day for your enjoyment. Enjoy sea beach & sunset at St. Martin’s Island. Dinner within 9:30pm. Overnight.\r\n\r\nDay – 3:\r\n\r\nEnjoy the sunrise at St. Martin’s Island for which you have to walk a km from the hotel on the Seashore. Breakfast at 8:00am & start for Chera Dip. Enjoy the most beautiful Coral Island Chera Dip in Saint Martin’s.  Spend approx. 02 hours in Chera Dip & back to hotel for lunch. Afternoon & evening free. Dinner  within 9:30pm. Overnight\r\n\r\nDay – 4:\r\n\r\nWe will take breakfast within 7.30 to 8.00 Am. Lunch time 1:00 Pm. After taking lunch we will get ready with luggage to ride on the Ship for comeback to Dhaka. Ship start journey at 3.00 Pm. Start Journey from Teknaf at evening.\r\n\r\nDay – 5:\r\n\r\nEarly morning we will reach Dhaka. End of the tour.\r\n\r\n \r\n\r\nNote: We will provide food only at Saint Martin. This package is applicable for minimum 6 person\r\n\r\n \r\n\r\nPackage Included :\r\n\r\n2 Nights Accommodation with Standard category Non AC hotel share basis.\r\nDhaka – Teknaf – Dhaka By Non Ac Bus\r\nTeknaf – St.Martin – Teknaf Non AC Ship\r\n2 Breakfast, 3 Lunch, 2 Dinner\r\nPackage Excluded:\r\n• All Personal Expenses\r\n• All kind of Foods, Beverage & Mineral Water which are excluded in Package\r\n• Any kind of Tips and Extra Room or Bed', 'photo_2021-04-17_05-01-02.jpg', '2021-04-16 23:02:10', NULL),
(9, 'Sajek Tour', 'Family Pack', 'Sajek', 10000, '• Cottage/ Resort: Sampari resort/ Obokash resort or similar  • Dhaka-Khagrachori _Dhaka AC Bus Ticket (Business Class)  • 1bed 2person in room (couple package): 7500/- per person  • 2bed 4person in room (family/group): 7000/- per person', 'Who does not want to be lost in a white cloud-like cotton? Sajek Valley, currently the most popular destination for pilgrims/travelers, is located in the biggest union of Bangladesh, Baghaichari Upazila of Rangamati district. It is on the border of Mizoram in the north of Rangamati district. The north side of Sajek is Tripura, Langadu of Rangamati on the south, Mizoram of India on the east, Khigrachori Dighinala on the west. The height of Sajek Valley from sea level is 1800 feet. Though the location of Sajek is in Rangamati district, it is very easy to travel from Dighinala to Khagrachari due to geographical reasons. Sajek is 70km away from Khagrachari district and 40 kilometers from Dighinalala. If you want to go to Sajek, you will have to get permission from the Baghaihat Police or Army camp.', 'photo_2021-04-17_05-02-50.jpg', '2021-04-16 23:04:30', NULL),
(10, 'Bandarban Boga Lake & Keokradong Trekking Tour', 'Tracking Tour', 'Chittagong', 7000, 'After breakfast we will drive back to Chittagong via Bandarban town then fly back to Dhaka.', 'DAY 01: Dhaka To Ruma Bazar Via Chittagong.\r\n\r\nThis morning you will take a flight from Dhaka to Chittagong  than we will drive from Chittagong to Ruma bazar via Bandarban on a smaller hilly road, arrive Ruma Bazar  & check-in the local hotel, late afternoon visit Ruma bazaar,This is a very small market, interesting and ‘relatively’ important riverside market inhabited by Bawm tribal people. In Ruma we’ll stay at a local guest house & will take dinner at the Bawm tribal house. Overnight at the Hotel.\r\n\r\nDAY 02: Ruma To Boga Lake.\r\n\r\nThis morning you’ll take a 5-6 hour trek up a creek valley, on the way we will visit some tribal village. You’ll halt for lunch in Boga Lake & mingle in this small & friendly Bawm village, overnight at the Bawm tribal guest house.\r\n\r\nDAY 03: Boga Lake To Keokradong.\r\n\r\nThis morning we’ll trek to Keokradong which is the 2nd highest peak in Bangladesh. One the way we’ll pass Darjeeling para (one of the highest villages of Bangladesh) will visit some tribal village, tonight we will stay at the tribal house.\r\n\r\nDAY 04: Keokradong To Ruma Bazar.\r\n\r\nToday we will trek 7-8 hours & will go back to Ruma bazar via Boga Lake. One the way we will pass some tribal village, overnight at the Ruma bazar.\r\n\r\nDAY 05:  Ruma Bazar To Dhaka.\r\n\r\nAfter breakfast we will drive back to Chittagong via Bandarban town then fly back to Dhaka.', 'photo_2021-04-17_05-05-37.jpg', '2021-04-16 23:05:51', NULL),
(11, 'Nafakhum – Amiakhum', 'Tracking Tour', 'Nafakhum – Amiakhum', 20000, '3 Nights and 4 Days Availability : Every Weekend Anywhere From Bangladesh Attractive Discount For Group Min Age : 16+ Max People : 100', 'Any food During journey and not mentioned in package.\r\n\r\n  \r\nMedicine or Any Private Expenses\r\n\r\n  \r\nTips, Mini bar, Entry Fees etc. is not included in the cost.\r\n\r\n  \r\nServices of the vehicle on leisure days and for sightseeing not included in the itinerary\r\n\r\n  \r\nVisa fee, Travel Tax, Visa processing fee', 'photo_2021-04-17_05-07-16.jpg', '2021-04-16 23:07:28', NULL),
(12, 'Sundarbans Tour', 'Family Pack', 'Sundarban', 50000, 'Price per person includes accommodation, Complimentary breakfast, All food only in Sundarbans. Sightseeing as per itinerary, Both way Flight tickets, Reserved vehicle/boat for sightseeing as per itinerary, Entry fees and Guide service. Minimum 2 PAX requi', 'DAY 01: Dhaka To Mongla.\r\n\r\nEarly morning you will take a flight from Dhaka to Jessore, after arriving in the Jessore airport we will receive you and drive to Mongla, ,on the way we will visit Sixty dome mosque ( An UNESCO World Heritage Site ) , ( drive for more than 3 hours ) we will start cruising south towards Sundarbans. Following the formalities at the Forest Department Station near Mongla Port the cruise to the south-eastern part of the jungle will continue, reaching Harbariya in the late afternoon and go for a short walking. If time permits your guide will offer some activities in the forest. Overnight on board.\r\n\r\nDAY 02: Explore And Find Wildlife.\r\n\r\nShortly after sunrise we invite you to explore the narrow creeks aboard a wooden rowboat, allowing a close look at the unique mangrove fauna & flora. After a leisurely breakfast the guide will offer a variety of activities, including an easy trek to the pristine beach facing the Bay of Bengal of a hike through the mangroves. In the afternoon there will be more activities for you. Overnight on board in Katka.\r\n\r\nDAY 03: Sundarbans To Dhaka.\r\n\r\nAfter an optional early morning boat trip, the boat will move to Mongla . Here the guide will offer activities according to your interests, tide & weather conditions. After lunch the boat will start the return journey via Supoti towards Mongla. After lunch by 2/3pm you will leave from boat and drive back to Jessore catch flight travel back to Dhaka.', 'photo_2021-04-17_05-08-14.jpg', '2021-04-16 23:08:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `MobileNumber` char(11) DEFAULT NULL,
  `EmailId` varchar(70) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Password`, `RegDate`, `UpdationDate`) VALUES
(12, 'Ashilk Mahamud', '01785320866', 'ashik15-1728@diu.edu.bd', 'e10adc3949ba59abbe56e057f20f883e', '2021-04-16 23:15:59', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`BookingId`);

--
-- Indexes for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblissues`
--
ALTER TABLE `tblissues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  ADD PRIMARY KEY (`PackageId`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`),
  ADD KEY `EmailId_2` (`EmailId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `BookingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblissues`
--
ALTER TABLE `tblissues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  MODIFY `PackageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
