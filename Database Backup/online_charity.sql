-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 18, 2022 at 03:38 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_charity`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `album_id` int(10) NOT NULL,
  `album_title` varchar(50) NOT NULL,
  `album_description` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`album_id`, `album_title`, `album_description`, `status`) VALUES
(1, 'Interior of Charity', 'Interior of Charity', 'Active'),
(2, 'Campus Area', 'Campus Area', 'Active'),
(3, 'Events', 'News & Events', 'Active'),
(5, 'Guest Visit', 'Guest Visited to Abhaya Ashraya Charity', 'Active'),
(6, 'Ladies Block', 'Ladies Block', 'Active'),
(7, 'Gents Block', '', 'Active'),
(8, 'Children Block', '', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `appointment_id` int(10) NOT NULL,
  `appointment_title` varchar(25) NOT NULL,
  `donor_id` int(10) NOT NULL,
  `staff_id` int(10) NOT NULL,
  `reason_for_appoinment` text NOT NULL,
  `appointment_date` date NOT NULL,
  `appointment_time` time NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`appointment_id`, `appointment_title`, `donor_id`, `staff_id`, `reason_for_appoinment`, `appointment_date`, `appointment_time`, `status`) VALUES
(7, 'For Fund Donation', 5, 0, 'Will to donate funds', '2022-02-01', '13:02:00', ''),
(8, 'For Orphanage survey', 8, 0, 'Need to take Orphanage survey', '2022-02-01', '13:02:00', 'Cancelled'),
(9, 'Birthday Party', 4, 0, 'Celebrating with friends at charity', '2020-01-01', '13:00:00', 'Approved'),
(10, 'Birthday', 4, 0, 'Celebrating birthday', '2021-01-01', '01:00:00', 'Cancelled'),
(11, 'Taking appointment to Cel', 7, 0, 'Kindly Grant us permission to celebrate birthday with orphans. We 6 people visit with cakes and chocolates.', '2020-04-01', '11:00:00', 'Pending'),
(12, 'Birthday Party', 7, 0, 'We celebrate Birthday Party with orphans.', '2020-10-15', '15:00:00', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `child_adoption`
--

CREATE TABLE `child_adoption` (
  `child_adoption_id` int(11) NOT NULL,
  `donor_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `child_adoption` text NOT NULL,
  `child_adoption_status` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `child_adoption`
--

INSERT INTO `child_adoption` (`child_adoption_id`, `donor_id`, `member_id`, `child_adoption`, `child_adoption_status`) VALUES
(12, 1, 12, 'a:11:{s:9:\"member_id\";s:2:\"12\";s:13:\"maleapplicant\";s:6:\"Lokesh\";s:15:\"femaleapplicant\";s:8:\"Lolakshi\";s:10:\"workingfor\";s:5:\"Pepsi\";s:12:\"annualincome\";s:6:\"500000\";s:11:\"designation\";s:9:\"Developer\";s:4:\"pfno\";s:9:\"123456789\";s:9:\"childname\";s:6:\"Menaka\";s:22:\"applicationprocessdate\";s:10:\"2022-05-04\";s:17:\"reasonforadoption\";s:6:\"No kid\";s:8:\"anynotes\";s:14:\"Please process\";}', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `donor`
--

CREATE TABLE `donor` (
  `donor_id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(25) NOT NULL,
  `pin_code` varchar(10) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `contact_no` varchar(15) NOT NULL,
  `profile_img` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donor`
--

INSERT INTO `donor` (`donor_id`, `name`, `address`, `city`, `pin_code`, `email_id`, `password`, `contact_no`, `profile_img`, `status`) VALUES
(1, 'Swathi', 'Balmatta Junction, Near Collector\'s Gate', 'Manipal', '464566', 'swathi@gmail.com', '123456', '9745673178', 'Sandip_pic.png', 'Active'),
(3, 'Durga prasad', 'Shiva kripa, Vidya nagar, Post Nehru Nagar', 'Balmatta', '435342', 'durgaprasad@gmail.com', '522222', '9440073178', 'Sandeep-Gangolli-Passport-Size-Photo.jpg', 'Adopted'),
(4, 'Raj kiran', 'Apartment no. 02, 1st Cross Rd, Shastri Nagar', 'Puttur', '575003', 'rajkiran@technopulse.in', 'q1w2e3r4', '08217727968', 'Pooja-Subedi.jpg', 'Active'),
(5, 'prakash', 'Adi-udupi, Karnataka 576102', 'Mangalore', '575003', 'prakash@technopulse.in', '111111', '9740173178', 'UK sperm donor.jpg', 'Active'),
(7, 'sharath kumar', 'Near Syndicate Circle, opp. Domino\'s Pizza, Manipal', 'Bengaluru', '589745', 'sharathkumar@gmail.com', '123456789', '9954545662', 'Pooja-Subedi.jpg', 'Active'),
(8, 'Santhosh Kumar', 'No.52, Jyoti Nivas College, 5th Block, Koramangala', 'Mangalroe', '589674', 'santhoshkumar@yahoo.com', '123456789', '9954545662', 'saiful-bi.jpg', 'Active'),
(9, 'Bhuvish jain', 'Shiva kripa, Vidya nagar, Post Nehru Nagar', 'Balmatta', '435342', 'bhuvishjain@gmail.com', '522222', '9440073178', 'rah.jpg', 'Adopted'),
(10, 'Sharun Dsouza', 'Adi-udupi, Karnataka 576102', 'Mangalore', '575003', 'sharundsouza@technopulse.in', '111111', '9740173178', 'phani_pic11.jpg', 'Active'),
(11, 'Raj kishore', 'Apartment no. 02, 1st Cross Rd, Shastri Nagar', 'Puttur', '575003', 'rajkishore@technopulse.in', 'q1w2e3r4', '08217727968', 'Passport-Size-Pic.jpg', 'Active'),
(12, 'Soumya salian', 'No.52, Jyoti Nivas College, 5th Block, Koramangala', 'Mangalroe', '589674', 'soumyasalian@gmail.com', '123456789', '9954545662', 'Passport_Size_Image_of_Nouman.jpg', 'Active'),
(13, 'Sudhir kumar', 'Near Syndicate Circle, opp. Domino\'s Pizza, Manipal', 'Bengaluru', '589745', 'sudhirkumar@gmail.com', '123456789', '9954545662', 'c53aa684465bc61455fd0d21537752fb.jpg', 'Active'),
(14, 'Bala subramanya', 'Balmatta Junction, Near Collector\'s Gate', 'Manipal', '464566', 'balasubramanya@gmail.com', '123456', '9745673178', '29780cook.jpg', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `food_donor`
--

CREATE TABLE `food_donor` (
  `food_donor_id` int(10) NOT NULL,
  `donor_id` int(10) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(25) NOT NULL,
  `pin_code` varchar(10) NOT NULL,
  `datetime` datetime NOT NULL,
  `food_item_detail` text NOT NULL,
  `quantity` int(10) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `food_donor`
--

INSERT INTO `food_donor` (`food_donor_id`, `donor_id`, `staff_id`, `address`, `city`, `pin_code`, `datetime`, `food_item_detail`, `quantity`, `status`) VALUES
(2, 4, 0, '3rd floor city light\r\nBalmatta', 'Mangalore', '575003', '2020-03-28 00:00:00', 'Test bx', 50, 'Accepted'),
(3, 4, 0, '3rd lfoor, city light mangalore', 'Mangalore', '575002', '2020-03-27 00:00:00', 'Rice items, curry', 100, 'Rejected'),
(5, 3, 0, 'Test address', 'Mangalore', '545687', '2021-03-02 15:01:00', 'This is test record', 45, 'Accepted'),
(6, 3, 0, '3rd floorm c', 'magnalore', '457455', '2021-01-01 01:00:00', 'rice barley', 2, 'Accepted');

-- --------------------------------------------------------

--
-- Table structure for table `fund_collection`
--

CREATE TABLE `fund_collection` (
  `fund_collection_id` int(10) NOT NULL,
  `fund_raiser_id` int(10) NOT NULL,
  `donor_id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `paid_amt` float(10,2) NOT NULL,
  `paid_date` date NOT NULL,
  `payment_type` varchar(25) NOT NULL,
  `payment_detail` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fund_collection`
--

INSERT INTO `fund_collection` (`fund_collection_id`, `fund_raiser_id`, `donor_id`, `name`, `paid_amt`, `paid_date`, `payment_type`, `payment_detail`, `status`) VALUES
(2, 3, 14, 'Amith', 85000.00, '0000-00-00', 'uuggg', 'ttttttttttt', ''),
(3, 5, 9, 'Dyanesh', 75000.00, '0000-00-00', 'jhththjtjhjt', 'jtrjttjtjk', ''),
(8, 8, 1, 'Swathi', 7000.00, '2019-12-03', 'jhththjtjhjt', 'jtrjttjtjk', 'Active'),
(9, 7, 1, 'Swathi', 500.00, '2020-02-26', '', 'a:4:{i:0;s:18:\"$_POST[cardholder]\";i:1;s:17:\"$_POST[cardnumber\";i:2;s:12:\"$_POST[month\";i:3;s:11:\"$_POST[cvv]\";}', 'Active'),
(10, 3, 11, 'Malavika', 500.00, '2020-02-26', '', 'a:4:{i:0;s:18:\"$_POST[cardholder]\";i:1;s:17:\"$_POST[cardnumber\";i:2;s:12:\"$_POST[month\";i:3;s:11:\"$_POST[cvv]\";}', 'Active'),
(11, 4, 4, 'Suraj kumar', 500.00, '2020-02-26', '', 'a:4:{i:0;s:18:\"$_POST[cardholder]\";i:1;s:17:\"$_POST[cardnumber\";i:2;s:12:\"$_POST[month\";i:3;s:11:\"$_POST[cvv]\";}', 'Active'),
(12, 5, 10, 'Hari prasad', 500.00, '2020-02-26', '', 'a:4:{i:0;s:18:\"$_POST[cardholder]\";i:1;s:17:\"$_POST[cardnumber\";i:2;s:12:\"$_POST[month\";i:3;s:11:\"$_POST[cvv]\";}', 'Active'),
(13, 5, 5, 'Surendra kumar', 389.00, '2020-02-26', '', 'a:4:{i:0;s:18:\"$_POST[cardholder]\";i:1;s:17:\"$_POST[cardnumber\";i:2;s:12:\"$_POST[month\";i:3;s:11:\"$_POST[cvv]\";}', 'Active'),
(14, 3, 8, 'Bhuvish Jain', 500.00, '2020-02-26', 'VISA', 'a:4:{i:0;s:18:\"$_POST[cardholder]\";i:1;s:17:\"$_POST[cardnumber\";i:2;s:12:\"$_POST[month\";i:3;s:11:\"$_POST[cvv]\";}', 'Active'),
(15, 4, 5, 'Varshitha', 1000.00, '2020-02-27', 'VISA', 'a:4:{i:0;s:18:\"$_POST[cardholder]\";i:1;s:17:\"$_POST[cardnumber\";i:2;s:12:\"$_POST[month\";i:3;s:11:\"$_POST[cvv]\";}', 'Active'),
(16, 4, 7, 'Kavya', 50000.00, '2020-02-27', 'MASTER CARD', 'a:4:{i:0;s:18:\"$_POST[cardholder]\";i:1;s:17:\"$_POST[cardnumber\";i:2;s:12:\"$_POST[month\";i:3;s:11:\"$_POST[cvv]\";}', 'Active'),
(17, 8, 13, 'Srujan gowda', 100.00, '2020-02-27', 'MASTER CARD', 'a:4:{i:0;s:9:\"Raj kiran\";i:1;s:16:\"1234567890123456\";i:2;s:7:\"2022-01\";i:3;s:3:\"485\";}', 'Active'),
(18, 5, 12, 'pooja', 2500.00, '2020-02-27', 'MASTER CARD', 'a:4:{i:0;s:17:\"12345678901345687\";i:1;s:16:\"1234567890132456\";i:2;s:7:\"2021-01\";i:3;s:3:\"154\";}', 'Active'),
(19, 3, 14, 'Prathima', 25000.00, '2020-03-04', 'VISA', 'a:4:{i:0;s:9:\"Raj kiran\";i:1;s:16:\"1253456789012345\";i:2;s:7:\"2021-01\";i:3;s:3:\"458\";}', 'Active'),
(20, 8, 3, 'Akshatha', 35000.00, '2020-03-05', 'VISA', 'a:4:{i:0;s:9:\"Raj kiran\";i:1;s:16:\"1234567890123456\";i:2;s:7:\"2021-01\";i:3;s:3:\"598\";}', 'Active'),
(21, 8, 3, 'sharath kumar', 2500.00, '2020-03-16', 'VISA', 'a:4:{i:0;s:17:\"Sharath A N Kumar\";i:1;s:16:\"9934567890123456\";i:2;s:7:\"2021-01\";i:3;s:3:\"589\";}', 'Active'),
(22, 10, 11, 'Swathi', 250.00, '2020-08-26', 'VISA', 'a:4:{i:0;s:3:\"Raj\";i:1;s:16:\"1234567890123456\";i:2;s:7:\"2021-02\";i:3;s:3:\"158\";}', 'Active'),
(24, 16, 1, 'Swathi', 0.00, '2022-02-17', '', 'a:4:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";}', 'Active'),
(25, 16, 1, 'Swathi', 0.00, '2022-02-17', '', 'a:4:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";}', 'Active'),
(26, 16, 1, 'Swathi', 5000.00, '2022-02-17', 'VISA', 'a:4:{i:0;s:3:\"Raj\";i:1;s:16:\"1234567890123456\";i:2;s:7:\"2023-01\";i:3;s:3:\"158\";}', 'Active'),
(27, 16, 1, 'Swathi', 0.00, '2022-02-17', '', 'a:4:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";}', 'Active'),
(28, 16, 1, 'Swathi', 100.00, '2022-02-17', 'AMERICAN EXPRESS', 'a:4:{i:0;s:3:\"raj\";i:1;s:16:\"2341234567890148\";i:2;s:7:\"2022-12\";i:3;s:3:\"158\";}', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `fund_raiser`
--

CREATE TABLE `fund_raiser` (
  `fund_raiser_id` int(10) NOT NULL,
  `title` varchar(100) NOT NULL,
  `banner_img` varchar(100) NOT NULL,
  `fund_raiser_description` text NOT NULL,
  `fund_amount` float(10,2) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fund_raiser`
--

INSERT INTO `fund_raiser` (`fund_raiser_id`, `title`, `banner_img`, `fund_raiser_description`, `fund_amount`, `start_date`, `end_date`, `status`) VALUES
(8, 'Sponsor Education & Food of Orphan Children in India\r\n', 'Orphan_Children.jpg', 'This orphanage home aims to provide care, support and protection for 50 orphan & street children. This home has 6 Care Takers, One Teacher. All the orphan children are being provided with 3 times nutritious food, one set of books and 4 sets of uniforms. Every child has opportunity for indoor and out-door recreation and play facilities along with training in crafts and hobbies. All orphan children goes to school every day & progressing good in their studies. Children are studying from I to XII Std', 240000.00, '2020-02-20', '2021-03-16', 'Active'),
(9, 'Help provide basic amenities', 'amenities.jpg', 'The Becoming I Foundation - VIT chapter is a Non-Governmental Organization of roughly 200 students from Vellore Institute of Technology, Vellore, Tamil Nadu. We believe that education is at the forefront of creating productive change and ensuring wellness for our society. Our aim is to contribute, to the best of our abilities, by teaching English and Mathematics to the children of government schools in and around Vellore. Additionally, we provide peer support to children who have been diagnosed with cancer. In doing this, we hope to not only influence the lives of the lesser privileged, but also encourage our fellow peers to realize that change starts with themselves.\r\n\r\nWe aim to make sure that education is within the reach of everyone we can help by making it accessible to them. The best part is that we get to have fun while doing so!\r\n\r\nBIF has organized various events and sessions thoroughout its run, such as\r\nteaching sessions in nearby cancer care centers, government and tribal schools consisting of 4 sessions every week, on-campus events for the school kids and their families - the most popular one being \"Smile\" and \"Umang\", and providing our services and support, just to name a few.\r\n\r\nTo maintain this successful run, we require contributions from your end, and together, we at BIF can continue to shine our light and help out those in need.\r\nDetails for direct bank transfer / UPI', 200000.00, '2020-02-29', '2021-03-01', 'Active'),
(10, 'Shelter, Food and Education for Homeless Street Children', 'streetkids.jpg', 'That’s when Moitrayee and her team started teaching these kids in a temporary shed, they don’t even have a classroom. Initially they were not keen on coming, but once they started providing them with food, the kids started coming regularly. These are not little kids, they are 12-13 year old teens, who have never learned to read and write, and are ashamed to go to schools. They feel they’ll be made fun of and even the schools don’t want to take them in.', 250000.00, '2020-02-29', '2021-03-01', 'Active'),
(11, '1 year old Udhaynidhi Needs Your Help Fight Apert Syndrome', 'syndrome.jpg', 'My name is Shanjeev M and I am here to raise funds for my son Udhaynidhi SH who is 1 year old. I am working as a private employee. I\'m working at a Consulting Service Company.\r\n\r\nUdhaynidhi SH lives in Hosur, Tamil Nadu with us. He is suffering from Apert syndrome for more than a year.\r\n\r\nHe is receiving medication and physiotherapy in Sparsh Children Hospital but not yet admitted. Until now, we\'ve spent about Rs. 250000.\r\n\r\nWe\'ve arranged the amount from savings & selling assets. In the next 30 days, we need Rs.600,000.00 more for operation and treatment.\r\n\r\nPlease come forward to support my cause.\r\n\r\nAny contribution will be of immense help. Do contribute and share this campaign link with your friends and family.\'', 100000.00, '2020-02-19', '2021-02-28', 'Active'),
(12, 'Help The People Of Backward Areas To Rise From Extreme Poverty', 'area.jpg', 'There are nearly 109 districts in India which are backward and underdeveloped. We have started our journey from Bundelkhand region as this region tops among the list. Project Srishtipath aims to develop all these areas by providing them with a self-sustaining model. One campaign is for a single area as we will be covering all the 109 districts in 109 Phases. This is phase 1 of Project Srishtipath. ', 250000.00, '2020-03-04', '2020-11-19', 'Active'),
(13, 'Funds Required For Orphanage Kids For School Books And Supplies', 'boks.jpg', '•Trustees / Management of orphanage arrange funds  for school supplies through their Own funds or Donations from other donors.\r\n•It puts burden on their finances.\r\n• Sometimes Old books / used school bags / dresses are used by orphanage kids.', 550000.00, '2020-03-04', '2021-11-19', 'Active'),
(14, 'Fundraising to help physically disabled children', 'mktg_1456740369.jpg', 'There are nearly 109 districts in India which are backward and underdeveloped. We have started our journey from Bundelkhand region as this region tops among the list. Project Srishtipath aims to develop all these areas by providing them with a self-sustaining model. One campaign is for a single area as we will be covering all the 109 districts in 109 Phases. This is phase 1 of Project Srishtipath. Paraplegic brave heart, Arjuna awarded and padmashree Malathi K.Holla, afflicted by polio at infancy, stands tall in the world of paraplegic sports in india by sheer grit and determination and has won medals around the world.This 45 year old Bank Manager has launched the \"Mathru Fountation\" to serve the physically challenged with motherly care. Lending her a helping hand are the former International sprinter Ashwini Nachappa, International Cricketer Venkatesh Prasad, Krishna Reddy H.T. and Dr.Sridhar M.K. both physically challenged and Anantha Bhat M., a leading advocate. ', 680000.00, '2020-03-04', '2020-11-19', 'Active'),
(15, 'Support Renovation of Madhu Mansion Orphanage', 'orphanage.jpg', 'There are nearly 109 districts in India which are backward and underdeveloped. We have started our journey from Bundelkhand region as this region tops among the list. Project Srishtipath aims to develop all these areas by providing them with a self-sustaining model. One campaign is for a single area as we will be covering all the 109 districts in 109 Phases. This is phase 1 of Project Srishtipath. Paraplegic brave heart, Arjuna awarded and padmashree Malathi K.Holla, afflicted by polio at infancy, stands tall in the world of paraplegic sports in india by sheer grit and determination and has won medals around the world.This 45 year old Bank Manager has launched the \"Mathru Fountation\" to serve the physically challenged with motherly care. Lending her a helping hand are the former International sprinter Ashwini Nachappa, International Cricketer Venkatesh Prasad, Krishna Reddy H.T. and Dr.Sridhar M.K. both physically challenged and Anantha Bhat M., a leading advocate. ', 100000.00, '2020-03-04', '2020-11-19', 'Active'),
(16, 'Support to distribute new and warm clothes', 'c.jpg', 'Uniform was compulsory in my school from Class 5 onwards. My father, who used to earn a living by repairing umbrellas, made me a uniform from discarded clothes. However, it got torn within a year and he could not afford to buy more old clothes to make me another uniform. Hence, I had to drop out of school. The regret of not being able to finish school always lived in my heart because I loved studying and used to often perform good in exams.', 301000.00, '2020-03-04', '2021-11-19', 'Active'),
(17, '', '30187', '', 0.00, '0000-00-00', '0000-00-00', ''),
(18, '', '32584', '', 0.00, '0000-00-00', '0000-00-00', ''),
(19, '', '20961', '', 0.00, '0000-00-00', '0000-00-00', ''),
(20, '', '10055', '', 0.00, '0000-00-00', '0000-00-00', ''),
(21, '', '6918', '', 0.00, '0000-00-00', '0000-00-00', ''),
(22, '', '2932', '', 0.00, '0000-00-00', '0000-00-00', ''),
(23, '', '1479', '', 0.00, '0000-00-00', '0000-00-00', ''),
(24, '', '26781', '', 0.00, '0000-00-00', '0000-00-00', ''),
(25, '', '18420', '', 0.00, '0000-00-00', '0000-00-00', ''),
(26, '', '4370', '', 0.00, '0000-00-00', '0000-00-00', ''),
(27, '', '11037', '', 0.00, '0000-00-00', '0000-00-00', ''),
(28, '', '28899', '', 0.00, '0000-00-00', '0000-00-00', ''),
(29, '', '24978', '', 0.00, '0000-00-00', '0000-00-00', '');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `member_id` int(10) NOT NULL,
  `member_type_id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `contact_no` varchar(10) NOT NULL,
  `id_proof` varchar(100) NOT NULL,
  `adress_proof` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`member_id`, `member_type_id`, `name`, `image`, `address`, `contact_no`, `id_proof`, `adress_proof`, `description`, `status`) VALUES
(3, 1, 'Chaitra', '10435Koala.jpg', '3rd floor, city light building', '9740073178', '30016WeCare Table Design.docx', '7289Table structure .docx', 'Chaitra is the oldest girl in the group and likes to help her younger sisters with everyday tasks and help care of them.', 'Adopted'),
(4, 1, 'Kavitha', '1040IMG-20200104-WA0007 (1).jpg', '3rd floor, city light building', '9740073178', '19209IMG_20200115_150257_426.jpg', '24846IMG-20200109-WA0001.jpg', 'Kavitha is more independent but enjoys spending time with her siblings. ', 'Active'),
(5, 1, 'Ranjan', '11726Infy-bali1-1580900815063.png', '3rd floor, city light building', '9740073188', '29935watch.jpg', '19452redmi note7.jpeg', 'He is a respectful, loving, and smart boy who cares deeply for his siblings. ', 'Active'),
(6, 1, 'Poornima', '28939Jellyfish.jpg', '3rd floor, city light building', '9740073178', '11240Lighthouse.jpg', '4609Hydrangeas.jpg', 'Poornima enjoys listening to rap music, playing on a tablet pc, doing flips and cartwheels, watching cartoon, Thunder Cats, and Patriots games, and dancing.', 'Active'),
(7, 1, 'Santhosh Kumar', 'santhosh.png', '', '', '31260', '13861', 'He is a great leader and shares his wants and needs for himself, as well as for his sisters.', 'Active'),
(8, 1, 'Akul kumar', '589238096.jpg', '', '', '3499', '7176', 'Akul kumar share a close bond with each other, as they are also close in age and enjoy the same interest in sports and music. ', 'Active'),
(9, 1, 'Kavan', 'Child-labour-India-3.jpg', '', '', '3499', '7176', 'Kavan  enjoy visiting and going on outings.', 'Active'),
(10, 1, 'Rakshith', '3ba.jpg', '', '', '3499', '7176', 'Rakshith have happy, shy, and sweet personalities that mesh well great with one another.', 'Active'),
(11, 1, 'Ahanth', '020-95f6-434f-bcc5-4de6af07c502.jpg', '', '', '3499', '7176', 'Ananth is a leader in the group and will occasionally teach Sunday School classes. ', 'Active'),
(12, 1, 'Radhe', '1470186857images.jpg', 'Amer road,\r\nBangalore', '7894561230', '304487500staff-id-card-500x500.jpg', '1519055387aadhaar-card_1535118724.jpeg', 'Lost parents after Heavy rain fall', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `member_type`
--

CREATE TABLE `member_type` (
  `member_type_id` int(10) NOT NULL,
  `member_type` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member_type`
--

INSERT INTO `member_type` (`member_type_id`, `member_type`, `description`, `status`) VALUES
(1, 'Homeless Child', 'Homeless Child', 'Active'),
(2, 'Blind', 'Blind', 'Active'),
(3, 'Cancer', 'Cancer', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `photo`
--

CREATE TABLE `photo` (
  `photo_id` int(10) NOT NULL,
  `album_id` int(10) NOT NULL,
  `photo_title` varchar(50) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `photo_description` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `photo`
--

INSERT INTO `photo` (`photo_id`, `album_id`, `photo_title`, `photo`, `photo_description`, `status`) VALUES
(3, 5, 'Guest Visit', '1994Tulips.jpg', 'Guest Visit', 'Active'),
(4, 2, 'Charity Outdoor Campus', '2259Chrysanthemum.jpg', 'Charity Outdoor Campus', 'Active'),
(15, 1, 'Guest Visit', '27749Tulips.jpg', 'Guest Visit', 'Active'),
(16, 3, 'Leaders Meet', '7482Jellyfish.jpg', 'Leaders Meet', 'Active'),
(17, 8, 'Children at Classroom', '28830Chrysanthemum.jpg', 'Children at Classroom', 'Active'),
(18, 1, 'Dinning Table Room', '1003812693010_DinningHall.jpg', 'Dinning Table Room', 'Active'),
(19, 1, 'Kitchen Room', '1752408235012_Kitchen.jpg', 'Kitchen Room', 'Active'),
(20, 1, 'Event Hall', '497138507020_ConferenceHall.jpg', 'Event Hall', 'Active'),
(21, 2, 'Ourdoor Walking Area', '1011139216aa3.jpg', 'Ourdoor Walking Area', 'Active'),
(22, 2, 'Building Side view', '12735952AA-BuildingSideView.jpg', 'Building Side view', 'Active'),
(23, 8, 'Children Prayer Activities', '1298357379AA-ChildrenPrayer.jpg', 'Children Prayer Activities', 'Active'),
(24, 8, 'Children with School uniform', '643567775AA-ChildrenToSchoolMarch.jpg', 'Children with School uniform', 'Active'),
(25, 7, 'Gents Block', '951957504AA-Gentsblock.jpg', 'Gents Block', 'Active'),
(26, 6, 'Ladies Living Room Area', '1139901574AA-WomensBlock.jpg', 'Ladies Living Room Area', 'Active'),
(27, 3, 'Tushara Gowri presented her 132nd Programme', '2121325912Tushara Gowri presented her 132nd Programm.jpg', 'Tushara Gowri presented her 132nd Programme', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staff_id` int(10) NOT NULL,
  `staff_type` varchar(20) NOT NULL,
  `staff_name` varchar(56) NOT NULL,
  `login_id` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staff_id`, `staff_type`, `staff_name`, `login_id`, `password`, `status`) VALUES
(2, 'Admin', 'admin', 'admin', 'adminadminadmin', 'Active'),
(3, 'Admin', 'Anand Kumar', 'admin', 'admin', 'Active'),
(4, 'Employee ', 'arun ', 'karan', 'kkkk', 'Active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`album_id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`appointment_id`);

--
-- Indexes for table `child_adoption`
--
ALTER TABLE `child_adoption`
  ADD PRIMARY KEY (`child_adoption_id`);

--
-- Indexes for table `donor`
--
ALTER TABLE `donor`
  ADD PRIMARY KEY (`donor_id`);

--
-- Indexes for table `food_donor`
--
ALTER TABLE `food_donor`
  ADD PRIMARY KEY (`food_donor_id`);

--
-- Indexes for table `fund_collection`
--
ALTER TABLE `fund_collection`
  ADD PRIMARY KEY (`fund_collection_id`);

--
-- Indexes for table `fund_raiser`
--
ALTER TABLE `fund_raiser`
  ADD PRIMARY KEY (`fund_raiser_id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `member_type`
--
ALTER TABLE `member_type`
  ADD PRIMARY KEY (`member_type_id`);

--
-- Indexes for table `photo`
--
ALTER TABLE `photo`
  ADD PRIMARY KEY (`photo_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staff_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `album_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `appointment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `child_adoption`
--
ALTER TABLE `child_adoption`
  MODIFY `child_adoption_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `donor`
--
ALTER TABLE `donor`
  MODIFY `donor_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `food_donor`
--
ALTER TABLE `food_donor`
  MODIFY `food_donor_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `fund_collection`
--
ALTER TABLE `fund_collection`
  MODIFY `fund_collection_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `fund_raiser`
--
ALTER TABLE `fund_raiser`
  MODIFY `fund_raiser_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `member_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `member_type`
--
ALTER TABLE `member_type`
  MODIFY `member_type_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `photo`
--
ALTER TABLE `photo`
  MODIFY `photo_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `staff_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
