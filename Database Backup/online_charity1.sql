-- phpMyAdmin SQL Dump
-- version 2.9.2
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Mar 30, 2022 at 08:27 PM
-- Server version: 5.0.27
-- PHP Version: 5.2.1
-- 
-- Database: `online_charity`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `donor`
-- 

CREATE TABLE `donor` (
  `donor_id` int(10) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(25) NOT NULL,
  `pin_code` varchar(10) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `contact_no` varchar(15) NOT NULL,
  `profile_img` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY  (`donor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

-- 
-- Dumping data for table `donor`
-- 

INSERT INTO `donor` (`donor_id`, `name`, `address`, `city`, `pin_code`, `email_id`, `password`, `contact_no`, `profile_img`, `status`) VALUES 
(1, 'Swathi', 'Balmatta Junction, Near Collector''s Gate', 'Manipal', '464566', 'swathi@gmail.com', '123456', '9745673178', 'Sandip_pic.png', 'Active'),
(3, 'Durga prasad', 'Shiva kripa, Vidya nagar, Post Nehru Nagar', 'Balmatta', '435342', 'durgaprasad@gmail.com', '522222', '9440073178', 'Sandeep-Gangolli-Passport-Size-Photo.jpg', 'Adopted'),
(4, 'Raj kiran', 'Apartment no. 02, 1st Cross Rd, Shastri Nagar', 'Puttur', '575003', 'rajkiran@technopulse.in', 'q1w2e3r4', '08217727968', 'Pooja-Subedi.jpg', 'Active'),
(5, 'prakash', 'Adi-udupi, Karnataka 576102', 'Mangalore', '575003', 'prakash@technopulse.in', '111111', '9740173178', 'UK sperm donor.jpg', 'Active'),
(7, 'sharath kumar', 'Near Syndicate Circle, opp. Domino''s Pizza, Manipal', 'Bengaluru', '589745', 'sharathkumar@gmail.com', '123456789', '9954545662', 'Pooja-Subedi.jpg', 'Active'),
(8, 'Santhosh Kumar', 'No.52, Jyoti Nivas College, 5th Block, Koramangala', 'Mangalroe', '589674', 'santhoshkumar@yahoo.com', '123456789', '9954545662', 'saiful-bi.jpg', 'Active'),
(9, 'Bhuvish jain', 'Shiva kripa, Vidya nagar, Post Nehru Nagar', 'Balmatta', '435342', 'bhuvishjain@gmail.com', '522222', '9440073178', 'rah.jpg', 'Adopted'),
(10, 'Sharun Dsouza', 'Adi-udupi, Karnataka 576102', 'Mangalore', '575003', 'sharundsouza@technopulse.in', '111111', '9740173178', 'phani_pic11.jpg', 'Active'),
(11, 'Raj kishore', 'Apartment no. 02, 1st Cross Rd, Shastri Nagar', 'Puttur', '575003', 'rajkishore@technopulse.in', 'q1w2e3r4', '08217727968', 'Passport-Size-Pic.jpg', 'Active'),
(12, 'Soumya salian', 'No.52, Jyoti Nivas College, 5th Block, Koramangala', 'Mangalroe', '589674', 'soumyasalian@gmail.com', '123456789', '9954545662', 'Passport_Size_Image_of_Nouman.jpg', 'Active'),
(13, 'Sudhir kumar', 'Near Syndicate Circle, opp. Domino''s Pizza, Manipal', 'Bengaluru', '589745', 'sudhirkumar@gmail.com', '123456789', '9954545662', 'c53aa684465bc61455fd0d21537752fb.jpg', 'Active'),
(14, 'Bala subramanya', 'Balmatta Junction, Near Collector''s Gate', 'Manipal', '464566', 'balasubramanya@gmail.com', '123456', '9745673178', '29780cook.jpg', 'Active'),
(15, 'Neilotpal Singh', 'D-164 Swarn Nagri', 'Greater Noida', '201310', 'neilotpalsingh456@gmail.com', 'Gauri@21', '8077018393', '8700gauri pic.jpg', 'Active');

-- --------------------------------------------------------

-- 
-- Table structure for table `fund_collection`
-- 

CREATE TABLE `fund_collection` (
  `fund_collection_id` int(10) NOT NULL auto_increment,
  `fund_raiser_id` int(10) NOT NULL,
  `donor_id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `paid_amt` float(10,2) NOT NULL,
  `paid_date` date NOT NULL,
  `payment_type` varchar(25) NOT NULL,
  `payment_detail` text NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY  (`fund_collection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

-- 
-- Dumping data for table `fund_collection`
-- 

INSERT INTO `fund_collection` (`fund_collection_id`, `fund_raiser_id`, `donor_id`, `name`, `paid_amt`, `paid_date`, `payment_type`, `payment_detail`, `status`) VALUES 
(9, 7, 1, 'Swathi', 500.00, '2020-02-26', '', 'a:4:{i:0;s:18:"$_POST[cardholder]";i:1;s:17:"$_POST[cardnumber";i:2;s:12:"$_POST[month";i:3;s:11:"$_POST[cvv]";}', 'Active'),
(10, 3, 11, 'Malavika', 500.00, '2020-02-26', '', 'a:4:{i:0;s:18:"$_POST[cardholder]";i:1;s:17:"$_POST[cardnumber";i:2;s:12:"$_POST[month";i:3;s:11:"$_POST[cvv]";}', 'Active'),
(11, 4, 4, 'Suraj kumar', 500.00, '2020-02-26', '', 'a:4:{i:0;s:18:"$_POST[cardholder]";i:1;s:17:"$_POST[cardnumber";i:2;s:12:"$_POST[month";i:3;s:11:"$_POST[cvv]";}', 'Active'),
(12, 5, 10, 'Hari prasad', 500.00, '2020-02-26', '', 'a:4:{i:0;s:18:"$_POST[cardholder]";i:1;s:17:"$_POST[cardnumber";i:2;s:12:"$_POST[month";i:3;s:11:"$_POST[cvv]";}', 'Active'),
(13, 5, 5, 'Surendra kumar', 389.00, '2020-02-26', '', 'a:4:{i:0;s:18:"$_POST[cardholder]";i:1;s:17:"$_POST[cardnumber";i:2;s:12:"$_POST[month";i:3;s:11:"$_POST[cvv]";}', 'Active'),
(14, 3, 8, 'Bhuvish Jain', 500.00, '2020-02-26', 'VISA', 'a:4:{i:0;s:18:"$_POST[cardholder]";i:1;s:17:"$_POST[cardnumber";i:2;s:12:"$_POST[month";i:3;s:11:"$_POST[cvv]";}', 'Active'),
(15, 4, 5, 'Varshitha', 1000.00, '2020-02-27', 'VISA', 'a:4:{i:0;s:18:"$_POST[cardholder]";i:1;s:17:"$_POST[cardnumber";i:2;s:12:"$_POST[month";i:3;s:11:"$_POST[cvv]";}', 'Active'),
(16, 4, 7, 'Kavya', 50000.00, '2020-02-27', 'MASTER CARD', 'a:4:{i:0;s:18:"$_POST[cardholder]";i:1;s:17:"$_POST[cardnumber";i:2;s:12:"$_POST[month";i:3;s:11:"$_POST[cvv]";}', 'Active'),
(17, 8, 13, 'Srujan gowda', 100.00, '2020-02-27', 'MASTER CARD', 'a:4:{i:0;s:9:"Raj kiran";i:1;s:16:"1234567890123456";i:2;s:7:"2022-01";i:3;s:3:"485";}', 'Active'),
(18, 5, 12, 'pooja', 2500.00, '2020-02-27', 'MASTER CARD', 'a:4:{i:0;s:17:"12345678901345687";i:1;s:16:"1234567890132456";i:2;s:7:"2021-01";i:3;s:3:"154";}', 'Active'),
(19, 3, 14, 'Prathima', 25000.00, '2020-03-04', 'VISA', 'a:4:{i:0;s:9:"Raj kiran";i:1;s:16:"1253456789012345";i:2;s:7:"2021-01";i:3;s:3:"458";}', 'Active'),
(20, 8, 3, 'Akshatha', 35000.00, '2020-03-05', 'VISA', 'a:4:{i:0;s:9:"Raj kiran";i:1;s:16:"1234567890123456";i:2;s:7:"2021-01";i:3;s:3:"598";}', 'Active'),
(21, 8, 3, 'sharath kumar', 2500.00, '2020-03-16', 'VISA', 'a:4:{i:0;s:17:"Sharath A N Kumar";i:1;s:16:"9934567890123456";i:2;s:7:"2021-01";i:3;s:3:"589";}', 'Active'),
(22, 10, 11, 'Swathi', 250.00, '2020-08-26', 'VISA', 'a:4:{i:0;s:3:"Raj";i:1;s:16:"1234567890123456";i:2;s:7:"2021-02";i:3;s:3:"158";}', 'Active'),
(24, 16, 1, 'Swathi', 0.00, '2022-02-17', '', 'a:4:{i:0;s:0:"";i:1;s:0:"";i:2;s:0:"";i:3;s:0:"";}', 'Active'),
(25, 16, 1, 'Swathi', 0.00, '2022-02-17', '', 'a:4:{i:0;s:0:"";i:1;s:0:"";i:2;s:0:"";i:3;s:0:"";}', 'Active'),
(26, 16, 1, 'Swathi', 5000.00, '2022-02-17', 'VISA', 'a:4:{i:0;s:3:"Raj";i:1;s:16:"1234567890123456";i:2;s:7:"2023-01";i:3;s:3:"158";}', 'Active'),
(27, 16, 1, 'Swathi', 0.00, '2022-02-17', '', 'a:4:{i:0;s:0:"";i:1;s:0:"";i:2;s:0:"";i:3;s:0:"";}', 'Active'),
(28, 16, 1, 'Swathi', 100.00, '2022-02-17', 'AMERICAN EXPRESS', 'a:4:{i:0;s:3:"raj";i:1;s:16:"2341234567890148";i:2;s:7:"2022-12";i:3;s:3:"158";}', 'Active'),
(29, 8, 0, 'Neilotpal', 1000.00, '2022-03-18', 'VISA', 'a:4:{i:0;s:15:"Neilotpal Singh";i:1;s:16:"1111222233334444";i:2;s:7:"2022-04";i:3;s:3:"143";}', 'Active'),
(30, 8, 15, 'Neilotpal Singh', 1000.00, '2022-03-18', 'VISA', 'a:4:{i:0;s:15:"Neilotpal Singh";i:1;s:16:"2222111100003333";i:2;s:7:"2022-08";i:3;s:3:"334";}', 'Active'),
(31, 45, 15, 'Neilotpal Singh', 1000.00, '2022-03-30', 'VISA', 'a:4:{i:0;s:15:"Neilotpal Singh";i:1;s:16:"1111222233334444";i:2;s:7:"2022-08";i:3;s:3:"123";}', 'Active'),
(32, 45, 1, 'Swathi', 51000.00, '2022-03-30', 'VISA', 'a:4:{i:0;s:16:"Swathi Chaudhary";i:1;s:16:"1111222233334567";i:2;s:7:"2022-08";i:3;s:3:"456";}', 'Active');

-- --------------------------------------------------------

-- 
-- Table structure for table `fund_raiser`
-- 

CREATE TABLE `fund_raiser` (
  `fund_raiser_id` int(10) NOT NULL auto_increment,
  `donor_id` int(10) NOT NULL,
  `title` varchar(100) NOT NULL,
  `banner_img` varchar(100) NOT NULL,
  `fund_raiser_description` text NOT NULL,
  `fund_amount` float(10,2) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY  (`fund_raiser_id`),
  KEY `donor_id` (`donor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=47 ;

-- 
-- Dumping data for table `fund_raiser`
-- 

INSERT INTO `fund_raiser` (`fund_raiser_id`, `donor_id`, `title`, `banner_img`, `fund_raiser_description`, `fund_amount`, `start_date`, `end_date`, `status`) VALUES 
(8, 0, 'Sponsor Education & Food of Orphan Children in India\r\n', 'Orphan_Children.jpg', 'This orphanage home aims to provide care, support and protection for 50 orphan & street children. This home has 6 Care Takers, One Teacher. All the orphan children are being provided with 3 times nutritious food, one set of books and 4 sets of uniforms. Every child has opportunity for indoor and out-door recreation and play facilities along with training in crafts and hobbies. All orphan children goes to school every day & progressing good in their studies. Children are studying from I to XII Std', 240000.00, '2020-02-20', '2021-03-16', 'Active'),
(9, 0, 'Help provide basic amenities', 'amenities.jpg', 'The Becoming I Foundation - VIT chapter is a Non-Governmental Organization of roughly 200 students from Vellore Institute of Technology, Vellore, Tamil Nadu. We believe that education is at the forefront of creating productive change and ensuring wellness for our society. Our aim is to contribute, to the best of our abilities, by teaching English and Mathematics to the children of government schools in and around Vellore. Additionally, we provide peer support to children who have been diagnosed with cancer. In doing this, we hope to not only influence the lives of the lesser privileged, but also encourage our fellow peers to realize that change starts with themselves.\r\n\r\nWe aim to make sure that education is within the reach of everyone we can help by making it accessible to them. The best part is that we get to have fun while doing so!\r\n\r\nBIF has organized various events and sessions thoroughout its run, such as\r\nteaching sessions in nearby cancer care centers, government and tribal schools consisting of 4 sessions every week, on-campus events for the school kids and their families - the most popular one being "Smile" and "Umang", and providing our services and support, just to name a few.\r\n\r\nTo maintain this successful run, we require contributions from your end, and together, we at BIF can continue to shine our light and help out those in need.\r\nDetails for direct bank transfer / UPI', 200000.00, '2020-02-29', '2021-03-01', 'Active'),
(10, 0, 'Shelter, Food and Education for Homeless Street Children', 'streetkids.jpg', 'That’s when Moitrayee and her team started teaching these kids in a temporary shed, they don’t even have a classroom. Initially they were not keen on coming, but once they started providing them with food, the kids started coming regularly. These are not little kids, they are 12-13 year old teens, who have never learned to read and write, and are ashamed to go to schools. They feel they’ll be made fun of and even the schools don’t want to take them in.', 250000.00, '2020-02-29', '2021-03-01', 'Active'),
(11, 0, '1 year old Udhaynidhi Needs Your Help Fight Apert Syndrome', 'syndrome.jpg', 'My name is Shanjeev M and I am here to raise funds for my son Udhaynidhi SH who is 1 year old. I am working as a private employee. I''m working at a Consulting Service Company.\r\n\r\nUdhaynidhi SH lives in Hosur, Tamil Nadu with us. He is suffering from Apert syndrome for more than a year.\r\n\r\nHe is receiving medication and physiotherapy in Sparsh Children Hospital but not yet admitted. Until now, we''ve spent about Rs. 250000.\r\n\r\nWe''ve arranged the amount from savings & selling assets. In the next 30 days, we need Rs.600,000.00 more for operation and treatment.\r\n\r\nPlease come forward to support my cause.\r\n\r\nAny contribution will be of immense help. Do contribute and share this campaign link with your friends and family.''', 100000.00, '2020-02-19', '2021-02-28', 'Active'),
(12, 0, 'Help The People Of Backward Areas To Rise From Extreme Poverty', 'area.jpg', 'There are nearly 109 districts in India which are backward and underdeveloped. We have started our journey from Bundelkhand region as this region tops among the list. Project Srishtipath aims to develop all these areas by providing them with a self-sustaining model. One campaign is for a single area as we will be covering all the 109 districts in 109 Phases. This is phase 1 of Project Srishtipath. ', 250000.00, '2020-03-04', '2020-11-19', 'Active'),
(13, 0, 'Funds Required For Orphanage Kids For School Books And Supplies', 'boks.jpg', '•Trustees / Management of orphanage arrange funds  for school supplies through their Own funds or Donations from other donors.\r\n•It puts burden on their finances.\r\n• Sometimes Old books / used school bags / dresses are used by orphanage kids.', 550000.00, '2020-03-04', '2021-11-19', 'Active'),
(14, 0, 'Fundraising to help physically disabled children', 'mktg_1456740369.jpg', 'There are nearly 109 districts in India which are backward and underdeveloped. We have started our journey from Bundelkhand region as this region tops among the list. Project Srishtipath aims to develop all these areas by providing them with a self-sustaining model. One campaign is for a single area as we will be covering all the 109 districts in 109 Phases. This is phase 1 of Project Srishtipath. Paraplegic brave heart, Arjuna awarded and padmashree Malathi K.Holla, afflicted by polio at infancy, stands tall in the world of paraplegic sports in india by sheer grit and determination and has won medals around the world.This 45 year old Bank Manager has launched the "Mathru Fountation" to serve the physically challenged with motherly care. Lending her a helping hand are the former International sprinter Ashwini Nachappa, International Cricketer Venkatesh Prasad, Krishna Reddy H.T. and Dr.Sridhar M.K. both physically challenged and Anantha Bhat M., a leading advocate. ', 680000.00, '2020-03-04', '2020-11-19', 'Active'),
(15, 0, 'Support Renovation of Madhu Mansion Orphanage', 'orphanage.jpg', 'There are nearly 109 districts in India which are backward and underdeveloped. We have started our journey from Bundelkhand region as this region tops among the list. Project Srishtipath aims to develop all these areas by providing them with a self-sustaining model. One campaign is for a single area as we will be covering all the 109 districts in 109 Phases. This is phase 1 of Project Srishtipath. Paraplegic brave heart, Arjuna awarded and padmashree Malathi K.Holla, afflicted by polio at infancy, stands tall in the world of paraplegic sports in india by sheer grit and determination and has won medals around the world.This 45 year old Bank Manager has launched the "Mathru Fountation" to serve the physically challenged with motherly care. Lending her a helping hand are the former International sprinter Ashwini Nachappa, International Cricketer Venkatesh Prasad, Krishna Reddy H.T. and Dr.Sridhar M.K. both physically challenged and Anantha Bhat M., a leading advocate. ', 100000.00, '2020-03-04', '2020-11-19', 'Active'),
(16, 0, 'Support to distribute new and warm clothes', 'c.jpg', 'Uniform was compulsory in my school from Class 5 onwards. My father, who used to earn a living by repairing umbrellas, made me a uniform from discarded clothes. However, it got torn within a year and he could not afford to buy more old clothes to make me another uniform. Hence, I had to drop out of school. The regret of not being able to finish school always lived in my heart because I loved studying and used to often perform good in exams.', 301000.00, '2020-03-04', '2021-11-19', 'Active'),
(45, 15, 'Rescue lost children on railway platforms from starvation and trafficking', '8077railway.jpg', 'We rescue around 1300 children every month. Especially during the lockdowns, the cases of runaway kids had soared with most of them between the age of 12 to 16 years - which has increased the urgency for rescue and protection. The sooner we reach these children, the higher the chances of rescuing them from exploiters and traffickers.  But to do that we need your support', 2000000.00, '2022-03-31', '2022-04-10', 'Active');

-- --------------------------------------------------------

-- 
-- Table structure for table `item_donor`
-- 

CREATE TABLE `item_donor` (
  `item_donor_id` int(10) NOT NULL auto_increment,
  `donor_id` int(10) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(25) NOT NULL,
  `pin_code` varchar(10) NOT NULL,
  `datetime` datetime NOT NULL,
  `item_detail` text NOT NULL,
  `quantity` int(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY  (`item_donor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

-- 
-- Dumping data for table `item_donor`
-- 

INSERT INTO `item_donor` (`item_donor_id`, `donor_id`, `staff_id`, `address`, `city`, `pin_code`, `datetime`, `item_detail`, `quantity`, `status`) VALUES 
(2, 4, 0, '3rd floor city light\r\nBalmatta', 'Mangalore', '575003', '2020-03-28 00:00:00', 'Test bx', 50, 'Accepted'),
(3, 4, 0, '3rd lfoor, city light mangalore', 'Mangalore', '575002', '2020-03-27 00:00:00', 'Rice items, curry', 100, 'Rejected'),
(5, 3, 0, 'Test address', 'Mangalore', '545687', '2021-03-02 15:01:00', 'This is test record', 45, 'Accepted'),
(6, 3, 0, '3rd floorm c', 'magnalore', '457455', '2021-01-01 01:00:00', 'rice barley', 2, 'Accepted'),
(7, 15, 0, 'XYZ Location', 'Ajmer', '258030', '2022-04-03 03:24:00', 'Clothes - Sweater, Jacket, Pants', 10, 'Pending'),
(8, 15, 0, 'ABC Location', 'Jaipur', '321012', '2022-04-28 06:35:00', 'Toys', 50, 'Pending');

-- --------------------------------------------------------

-- 
-- Table structure for table `staff`
-- 

CREATE TABLE `staff` (
  `staff_id` int(10) NOT NULL auto_increment,
  `staff_type` varchar(20) NOT NULL,
  `staff_name` varchar(56) NOT NULL,
  `login_id` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY  (`staff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

-- 
-- Dumping data for table `staff`
-- 

INSERT INTO `staff` (`staff_id`, `staff_type`, `staff_name`, `login_id`, `password`, `status`) VALUES 
(2, 'Admin', 'admin', 'admin', 'adminadminadmin', 'Active'),
(3, 'Admin', 'Anand Kumar', 'admin', 'admin', 'Active'),
(4, 'Employee ', 'arun ', 'karan', 'kkkk', 'Active');
