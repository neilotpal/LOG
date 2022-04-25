-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2022 at 06:57 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `log_site`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `con_id` int(11) NOT NULL,
  `cname` varchar(120) DEFAULT NULL,
  `cemail` varchar(150) DEFAULT NULL,
  `csubject` varchar(190) DEFAULT NULL,
  `cmessage` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`con_id`, `cname`, `cemail`, `csubject`, `cmessage`, `created_at`) VALUES
(2, 'Nimisha Agarwal', ' nimishaagarwal500@gmail.com', ' Why my fundraiser request is not accepted?', 'I have raised funds for \"Project Madhurasha to provide medical aid, directly to the door step of the poor Type1 diabetic children\". I want to know why my request is not accepted. If you want more papers for security then I can send them also.\r\nPlease consider this as arguent! As I need funds for diabetic children.\r\nThank You!', '2022-04-06 06:44:32'),
(3, 'Neilotpal Singh', 'neilotpalsingh456@gmail.com', 'Not able to download Payement receipt.', 'I have donated Rs. 5000 to the fundraiser titled \"Support Covid-Safe, Scientifically oriented- Education, Skill-building, Sports, Nutrition and Wholes\". But after donation. I am unable to download the payement receipt.\r\nCan you please sent to my respective Email-id. This will be helpful for me!\r\nThank you!', '2022-04-06 06:45:47'),
(4, 'Anirudh Singh Chauhan', '987anirudh789@gmail.com', 'Want to raise funds for my brother', 'My brother had met with major accident on 01-04-2022. He has been badly injured and has been admitted to \"AIIMS Delhi\". The total amount needed for his treatment is Rs. 1000000. But I am able to collect only Rs. 200000. So I want to raise funds for remaining Rs. 800000.\r\nPlease consider my request as soon as possible.\r\nThank you!', '2022-04-06 06:47:30'),
(5, 'Nikita Garg', 'gargnikita1511@gmail.com', 'Please Accept my request for Books Donation', 'I have filled the form for Item Donation , requesting for donation of books and other stationary to needy children\'s on 06-04-2022. I want them to be donated on 10-04-2022 on the occasion of my parents wedding anniversary. I also want that the donation to me made in presence of my parents. \r\nPlease consider my request .You can also contact me through my Email-Id : gargnikita1511@gmail.com or call me at: +91 6377628171.', '2022-04-06 06:48:54');

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
  `password` varchar(255) NOT NULL,
  `contact_no` varchar(15) NOT NULL,
  `profile_img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donor`
--

INSERT INTO `donor` (`donor_id`, `name`, `address`, `city`, `pin_code`, `email_id`, `password`, `contact_no`, `profile_img`) VALUES
(1, 'Neilotpal Singh', 'D-164 Swarn Nagri ', 'Greater Noida', '201310', 'neilotpalsingh456@gmail.com', '$2y$10$E3kwLwA2MvrkARG10MB2V.UdHFyTtyobHZZNQevMpzyib7lJnfKue', '8077018393', '714721776gauri pic.jpg'),
(2, 'Nimisha Agarwal', '60/29, Jaimuni Rao Circle, Agrahara, Dasarahalli', 'Bangalore', '560079', 'nimishaagarwal500@gmail.com', '$2y$10$AUX83f/A53abrQX..6BvjuJpjoQqyBRrpTQtj77T0nrEL9SF0adf6', '9634411560', '1670165283WhatsApp Image 2022-04-06 at 1.49.41 PM.jpeg'),
(3, 'Nikita Garg', '37, Grd Floor, Super Shopping Complex, Opp Stn, Kandivali (west)', 'Mumbai', '400067', 'gargnikita1511@gmail.com', '$2y$10$K4P5FU.QYWC1aBVx7lgnoOSRPS10ECFtv/YVZEDp0DfIDtpNH.zfy', '6377628171', '1634385141WhatsApp Image 2022-04-06 at 1.41.16 PM.jpeg'),
(4, 'Nilanjana Singh', 'Flat G-2, No.23,3rd St, R H Road, Mylapore', 'Chennai', '600004', 'nilanjanasingh098@gmail.com', '$2y$10$DWbhPnFHlZoMtPtctnEnyO3XjJsQ46a9ZCepkLs3vhyJi0G6e/OF6', '9599248393', '1110504936WhatsApp Image 2022-04-06 at 1.44.13 PM.jpeg'),
(5, 'Anirudh Singh Chauhan', 'H-139 Alpha-2', 'Greater Noida', '201308', '987anirudh789@gmail.com', '$2y$10$2m0BVWQQJQbSck.5zCY/.O56AtTwDgecCegcD4Do.joKD5biGEbPy', '9582043985', '1823712482WhatsApp Image 2022-04-06 at 1.41.45 PM.jpeg'),
(6, 'Devansh Chaudhary', 'D-10, Rajlaxmi Society, New Sama Road, New Sama Road', 'Vadodara', '390002', 'devanshchaudhary6002@gmail.com', '$2y$10$X5AdITU3JyTCNJtll6wQf.JIgTYrB4lVoyR/kkEXPvUUOfITxq0AK', '9971879404', '1071175646WhatsApp Image 2022-04-06 at 2.03.12 PM.jpeg'),
(7, 'Arun Kumar Singh', '68, Sultan Alam Road, Tollygunge', 'Kolkata', '700033', 'arunksingh1470@gmail.com', '$2y$10$4VcWbEwhjKl6Ez69uKCmRuWvtPOXq5AVMQaOY1zIONXIlXmmjl/2y', '9720086006', '1748436619WhatsApp Image 2022-04-06 at 1.47.53 PM.jpeg'),
(8, 'Rishika Dixit', 'B-183, Rajaji Puram', 'Lucknow', '226017', 'rishikadixit@gmail.com', '$2y$10$P6K/regBfClneKg0//QGlOPhJ61FIAke7MFPWLPLQfoGm7xgyz1A2', '9972346590', '1598629367WhatsApp Image 2022-04-06 at 1.43.36 PM.jpeg'),
(9, 'Rekha Singh', 'C255, Sector 63', 'Noida', '201301', 'rekhasinghdalal@gmail.com', '$2y$10$JGPzwEBd/uK40vbHb1iTYucWwv5jaHYyJu.W3vZn7pfoch16zryeK', '9456464111', '103232751WhatsApp Image 2022-04-06 at 1.42.25 PM.jpeg'),
(10, 'Sneha Garg', '9 Sector 56, Krishna Colony, Sohna Road', 'Guragon', '121001', 'snehagarg07@gmail.com', '$2y$10$Sstyy7QMgNv.XZ1TCgR9UuCD90YtGvssxz0VMUJJvGRLwuspDBC82', '9791747170', '1883804483WhatsApp Image 2022-04-06 at 1.45.52 PM.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `fund_collection`
--

CREATE TABLE `fund_collection` (
  `fund_collection_id` int(10) NOT NULL,
  `fund_raiser_id` int(10) NOT NULL,
  `donor_id` int(10) NOT NULL,
  `payementid` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `paid_amt` float(10,2) NOT NULL,
  `paid_date` date NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fund_collection`
--

INSERT INTO `fund_collection` (`fund_collection_id`, `fund_raiser_id`, `donor_id`, `payementid`, `name`, `paid_amt`, `paid_date`, `status`) VALUES
(1, 2, 1, 'pay_JM5VLxme2DLrVZ', 'Neilotpal Singh', 500.00, '2022-04-21', 'Active'),
(2, 3, 2, 'pay_JM5YMxGFfHLS6s', 'Nimisha Agarwal', 250.00, '2022-04-21', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `fund_raiser`
--

CREATE TABLE `fund_raiser` (
  `fund_raiser_id` int(10) NOT NULL,
  `donor_id` int(10) NOT NULL,
  `title` varchar(100) NOT NULL,
  `banner_img` varchar(100) NOT NULL,
  `fund_raiser_description` text NOT NULL,
  `fund_amount` float(10,2) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `account_no` varchar(20) NOT NULL,
  `ifsc_code` varchar(15) NOT NULL,
  `branch_name` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fund_raiser`
--

INSERT INTO `fund_raiser` (`fund_raiser_id`, `donor_id`, `title`, `banner_img`, `fund_raiser_description`, `fund_amount`, `start_date`, `end_date`, `account_no`, `ifsc_code`, `branch_name`, `status`) VALUES
(1, 1, 'Support Covid-Safe, Scientifically oriented- Education, Skill-building, Sports, Nutrition and Wholes', '15674358131.jpeg', 'Vatsalya School in Achrol, Jaipur, Rajasthan has been supporting the wholesome development of children from underprivileged circumstances, including those of migrant labour, daily wage workers, below poverty line families and those who are unable to work due to extremely harsh conditions, single or no parent upbringing, etc.\r\n\r\nWe cater to the needs of the children from these communities from morning 7 am to evening 7 pm providing them with Education, 3 times adequate nutrition, skill building, extra curricular activities, sports, yoga at our large sprawling nature-integrated campus in Achrol. Since the past 8 months post lockdown, our teachers have gone into the community to provide ALL of the stated benefits to our beneficiaries at their homes.\r\n\r\nPlease support Vatsalya in bringing well-being to those who need it the most! This can be a very essential interim support for our program given the low prospects of future support due to OMICRON Spread Fears.\r\n\r\nVatsalya is proud to be 100% transparent in its systems and we encourage all of you to get involved.', 6000000.00, '2022-04-05', '2022-04-30', '45873983208', 'SBIN0031756', 'Tonk, Newai', 'Active'),
(2, 1, 'Support Khyati to fight against Spinal Muscular Atrophy (SMA) Type 1', '12993811882.jpg', 'Myself Raman and my wife Joshna, raising funds for our daughter Khyati’s medical treatment. Khyati has been diagnosed with Spinal Muscular Atrophy (SMA) Type 1 at an age of 4 months. SMA Type 1 is one devastating disease waste away all muscle activities in infants and takes away their life before they turn 2 years.\r\n\r\nBaby Khyati is suffering with symptoms like difficulty in holding her neck, laboured breathing, difficulty in swallowing and inability to move her legs like any other normal infant of the same age. Khyati is currently assisted with NG Tube for feeding and a BiPAP machine (noninvasive ventilator) for breathing. Day by day Khyati’s condition is worsening due to reduced muscle activity.\r\nWe started fundraising few months back on multiple platforms. With all support from well-wishers like you, we raised Rs 11.4 Crores (gross collection as on Mar 2, 2022). We need remaining amount for providing access to gene therapy to Khyati. This is an additional effort we are making using LOG Foundation to enhance our fundraising effort and expedite the availability of gene therapy availability to Baby Khyati to save her life.', 65000000.00, '2022-04-05', '2022-06-05', '98745673176', 'UTIB0000624', 'Udaipur City', 'Active'),
(3, 3, 'Educate & Empower Rural Youth | Create Role Models', '19321976054.jpeg', 'I am fundraising for a cause close to my heart, to bring a lasting change in the lives of the underprivileged. To help me create more impact and touch more lives, I need your support and contribution. Please back my fundraiser so that together we can build a better India for all of us.\r\nPledge your support, donate now!', 2000000.00, '2022-04-05', '2022-05-08', '67845634987', 'UTIB0000624', 'Sec-18 Noida', 'Active'),
(4, 3, 'Help Chhanv Foundation ease the pain of acid attack victims. Donate now', '19124063855.jpg', 'The chemical used in an attack is so toxic that it gives fourth-degree burns. The treatment for acid attacks is extremely costly and survivors suffer for many years.  The last two years have been very difficult for us due to a crisis in funds. We have not been able to support even the critical surgeries and other forms of treatment. There are too many survivors whose urgent treatment is awaited. Pledge your support now!!', 65000000.00, '2022-04-05', '2022-06-24', '45873983208', 'ALLA0210556', 'Tonk, Newai', 'Active'),
(5, 3, 'IIT alumnus Varun Shrivastava is on a mission to educate street children. Support him, donate now', '17374581497.jpeg', 'We hope to educate these kids in a dignified set-up where they receive uninterrupted education without getting distracted or affected by harsh weather. One bus can accommodate 30 students and can easily help us cover more locations, reach out to many more slum and street kids and introduce learning at an early stage. We can’t do this without your support. Only your kindness and generosity can help us increase their learning capabilities', 8000000.00, '2022-04-05', '2023-02-18', '98745673176', 'SBIN0031756', 'Amroha', 'Active'),
(6, 2, 'Premature twins are struggling to breathe. Donate to save their lives with ventilator support', '11725974266.jpeg', 'Pallavi can’t bear to look at her twins in pain. Covered in tubes fighting for each breath, her twins are struggling to survive. Since they weighed only 1kg each, they were immediately put in a life-support chamber to receive respiratory support and are currently on IV fluids and antibiotics. The newborns will need to stay in the hospital for around a month to fully recover and go home with their parents.\r\n\r\nFor a continuous stay in the NICU, Pallavi and Jagdish need to arrange ?19.5 lakhs for both the twins - something they cannot afford in a short period of time. They have already used all their savings, sold their properties, taken loans for IVF and delivery expenses. They have nothing left other than hope.', 6500000.00, '2022-04-05', '2022-09-15', '87537829874', 'SBIN8749384', 'Jaipur', 'Active'),
(7, 2, 'Educate Slum Children through Education on Wheels', '843907628.jpg', 'Education on Wheels (EOW) is a unique programme where the school comes home, virtually to the doorstep of the student. Making the learning process exciting, novel and convenient, the EOW is a well-equipped bus which is mobile and it moves with teachers to different locations. It has on board computers, television and other essential education related materials.\r\nThe key objective of the project is to reach the vast majority of children who are living in vulnerable conditions and are unable to access education in a favourable learning environment. It is designed to enable non-school going children to acquire minimum knowledge and skills and mainstreaming them in formal schools.', 1000000.00, '2022-04-05', '2022-07-31', '6538923873', 'UTIB0000624', 'Tonk, Newai', 'Active'),
(8, 1, 'Mission Manobal Nirmaan Abhiyan 2022', '54113312710.jpeg', 'In our country, there are hardly any facilities for physically challenged and orphan youth for their higher education and administrative career. For visually impaired and hearing impaired youth study material, teaching resources, technology, and other facilities are not available for higher education. Government and various non-governmental organizations do work for rehabilitation and welfare of these children but their focus is largely on children (age below 18 years) and welfare through providing alternative livelihood opportunities. \r\nI am fundraising for a cause close to my heart, to bring a lasting change in the lives of the underprivileged. To help me create more impact and touch more lives, I need your support and contribution. Please back my fundraiser so that together we can build a better India for all of us.\r\nPledge your support, donate now!', 1500000.00, '2022-04-05', '2022-05-28', '80770183936', 'SBIN0051395', 'Rishikesh', 'Active'),
(13, 1, 'Donate Funds', '828485422img.jpeg', 'The children we serve come from needy backgrounds; most of the parents are daily wagers who have lost their source of income. Nityaasha has identified these children and their families through our trusted volunteers and doctors from local hospitals (mainly paediatricians, endocrinologists and diabetes specialists). Each family has been individually screened and home visits have been made to understand their living conditions.\r\n\r\nThese children need a daily supply of insulin, glucose strips and nutrition. For the last six months, during the lockdown, Nityaasha was supplying these essentials, free of cost, directly at their doorstep, ensuring the children’s health does not suffer.', 100000.00, '2022-04-23', '2022-04-30', '23456875641', 'BKID0007117', 'Udaipur City', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `item_donor`
--

CREATE TABLE `item_donor` (
  `item_donor_id` int(10) NOT NULL,
  `donor_id` int(10) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(25) NOT NULL,
  `pin_code` varchar(10) NOT NULL,
  `datetime` datetime NOT NULL,
  `item_detail` text NOT NULL,
  `quantity` int(10) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_donor`
--

INSERT INTO `item_donor` (`item_donor_id`, `donor_id`, `address`, `city`, `pin_code`, `datetime`, `item_detail`, `quantity`, `status`) VALUES
(2, 1, '3rd floor city light\r\nBalmatta', 'Mangalore', '575003', '2020-03-28 00:00:00', 'Stationary', 50, 'Accepted'),
(3, 1, '3rd lfoor, city light mangalore', 'Mangalore', '575002', '2020-03-27 00:00:00', 'Rice items, curry', 100, 'Rejected'),
(5, 3, 'B-125 Swarn Nagri', 'Greater Noida', '545687', '2021-03-02 15:01:00', 'Old clothes', 45, 'Accepted'),
(6, 3, '39 2nd Floor, Neelam Flyover', 'Mangalore', '457455', '2021-01-01 01:00:00', 'rice barley', 2, 'Accepted'),
(7, 2, 'F-150 Kamla Nagar', 'Agra', '258030', '2022-04-03 03:24:00', 'Clothes - Sweater, Jacket, Pants', 10, 'Accepted'),
(8, 2, 'Agarwal Book Depot', 'Rishikesh', '321012', '2022-04-28 06:35:00', 'Toys', 50, 'Accepted');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staff_id` int(10) NOT NULL,
  `staff_name` varchar(56) NOT NULL,
  `login_id` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staff_id`, `staff_name`, `login_id`, `password`) VALUES
(1, 'Neilotpal ', 'admin', '$2y$10$ijZxM3YYCnATrlaoPqiq6OQgonFTYwNyMPdlMXthESjAz8aV9dGnC');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`con_id`);

--
-- Indexes for table `donor`
--
ALTER TABLE `donor`
  ADD PRIMARY KEY (`donor_id`);

--
-- Indexes for table `fund_collection`
--
ALTER TABLE `fund_collection`
  ADD PRIMARY KEY (`fund_collection_id`);

--
-- Indexes for table `fund_raiser`
--
ALTER TABLE `fund_raiser`
  ADD PRIMARY KEY (`fund_raiser_id`),
  ADD KEY `donor_id` (`donor_id`);

--
-- Indexes for table `item_donor`
--
ALTER TABLE `item_donor`
  ADD PRIMARY KEY (`item_donor_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staff_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `con_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `donor`
--
ALTER TABLE `donor`
  MODIFY `donor_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `fund_collection`
--
ALTER TABLE `fund_collection`
  MODIFY `fund_collection_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `fund_raiser`
--
ALTER TABLE `fund_raiser`
  MODIFY `fund_raiser_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `item_donor`
--
ALTER TABLE `item_donor`
  MODIFY `item_donor_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `staff_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
