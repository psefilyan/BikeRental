/*
 Navicat MySQL Data Transfer

 Source Server         : Localhost
 Source Server Type    : MySQL
 Source Server Version : 100134
 Source Host           : localhost:3306
 Source Schema         : bikerental

 Target Server Type    : MySQL
 Target Server Version : 100134
 File Encoding         : 65001

 Date: 05/11/2021 11:45:27
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `UserName` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Password` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', '5c428d8875d2948607f3e3fe134d71b4', '2017-06-18 16:22:38');

-- ----------------------------
-- Table structure for tblbooking
-- ----------------------------
DROP TABLE IF EXISTS `tblbooking`;
CREATE TABLE `tblbooking`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `userEmail` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `VehicleId` int NULL DEFAULT NULL,
  `FromDate` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ToDate` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `message` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Status` int NULL DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tblbooking
-- ----------------------------

-- ----------------------------
-- Table structure for tblbrands
-- ----------------------------
DROP TABLE IF EXISTS `tblbrands`;
CREATE TABLE `tblbrands`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `BrandName` varchar(120) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tblbrands
-- ----------------------------
INSERT INTO `tblbrands` VALUES (1, 'KTM', '2017-06-18 20:24:34', '2017-06-19 10:42:23');
INSERT INTO `tblbrands` VALUES (2, 'Bajaj', '2017-06-18 20:24:50', NULL);
INSERT INTO `tblbrands` VALUES (3, 'Honda', '2017-06-18 20:25:03', NULL);
INSERT INTO `tblbrands` VALUES (4, 'Suzuki', '2017-06-18 20:25:13', NULL);
INSERT INTO `tblbrands` VALUES (5, 'Yamaha', '2017-06-18 20:25:24', NULL);
INSERT INTO `tblbrands` VALUES (7, 'Ducati', '2017-06-19 10:22:13', NULL);

-- ----------------------------
-- Table structure for tblcontactusinfo
-- ----------------------------
DROP TABLE IF EXISTS `tblcontactusinfo`;
CREATE TABLE `tblcontactusinfo`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `Address` tinytext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `EmailId` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ContactNo` char(11) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tblcontactusinfo
-- ----------------------------
INSERT INTO `tblcontactusinfo` VALUES (1, 'Bike Renting Test', 'sbedojan@yaho.com', '37494600424');

-- ----------------------------
-- Table structure for tblcontactusquery
-- ----------------------------
DROP TABLE IF EXISTS `tblcontactusquery`;
CREATE TABLE `tblcontactusquery`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `EmailId` varchar(120) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ContactNumber` char(11) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Message` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tblcontactusquery
-- ----------------------------

-- ----------------------------
-- Table structure for tblpages
-- ----------------------------
DROP TABLE IF EXISTS `tblpages`;
CREATE TABLE `tblpages`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `PageName` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `detail` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 22 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tblpages
-- ----------------------------
INSERT INTO `tblpages` VALUES (1, 'Terms and Conditions', 'terms', '<P align=justify><FONT size=2><STRONG><FONT color=#990000>(1) ACCEPTANCE OF TERMS</FONT><BR><BR></STRONG>Last updated: December 05, 2017\r\nPlease read these Terms and Conditions (\"Terms\", \"Terms and Conditions\") carefully before using the ->code-projects.org/ website (the \"Service\") operated by Code Projects (\"us\", \"we\", or \"our\").\r\nYour access to and use of the Service is conditioned on your acceptance of and compliance with these Terms. These Terms apply to all visitors, users and others who access or use the Service.\r\nBy accessing or using the Service you agree to be bound by these Terms. If you disagree with any part of the terms then you may not access the Service. Terms and Conditions from TermsFeed for Code Projects. Links To Other Web Sites\r\nOur Service may contain links to third-party web sites or services that are not owned or controlled by Code Projects.\r\nCode Projects has no control over, and assumes no responsibility for, the content, privacy policies, or practices of any third party web sites or services. You further acknowledge and agree that Code Projects shall not be responsible or liable, directly or indirectly, for any damage or loss caused or alleged to be caused by or in connection with use of or reliance on any such content, goods or services available on or through any such web sites or services.\r\nWe strongly advise you to read the terms and conditions and privacy policies of any third-party web sites or services that you visit. Governing Law\r\nThese Terms shall be governed and construed in accordance with the laws of New York, United States, without regard to its conflict of law provisions.\r\nOur failure to enforce any right or provision of these Terms will not be considered a waiver of those rights. If any provision of these Terms is held to be invalid or unenforceable by a court, the remaining provisions of these Terms will remain in effect. These Terms constitute the entire agreement between us regarding our Service, and supersede and replace any prior agreements we might have between us regarding the Service. Changes\r\nWe reserve the right, at our sole discretion, to modify or replace these Terms at any time. If a revision is material we will try to provide at least 30 days notice prior to any new terms taking effect. What constitutes a material change will be determined at our sole discretion.\r\nBy continuing to access or use our Service after those revisions become effective, you agree to be bound by the revised terms. If you do not agree to the new terms, please stop using the Service. Contact Us\r\nIf you have any questions about these Terms, please contact us. </FONT></P>');
INSERT INTO `tblpages` VALUES (2, 'Privacy Policy', 'privacy', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat</span>');
INSERT INTO `tblpages` VALUES (3, 'About Us ', 'aboutus', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">WE ARE THE BIKE RENTAL MANAGER. The only 100% dedicated bike rental booking website. The first Bike Rental Manager (BRM) shop was our own bike shop. Ever Since it has been our aim to make bike rental easier for everyone, everywhere.We focus on making bike rentals easier for you.Your rental business has a unique set of challenges. We are the only dedicated bike rental site and will be able to offer you a solution to match your needs.Get in touch with us today! We provide affordable bike rates, we hae lost of Satiisfied customers feedback, you can have a look at our home page too!! </span>');
INSERT INTO `tblpages` VALUES (11, 'FAQs', 'faqs', '																														<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">How do I use discounts coupons?\r\nExcept for promotion codes, Our discounts are applied automatically if your reservation meets any of the criteria mentioned above.\r\n\r\nTo use a promotion code, simply enter the code on the homepage widget as you start your reservation. You can do this by selecting the \"Have a promotion code?\" prompt. Promotion codes can also be entered on the checkout page, under Reservation Total. Please note that the promotion code prompt does not appear for certain types of reservations, such as reservations made on the Deals page.\r\n<br>\r\nOur Discounts Terms & Conditions\r\nWe no longer offer or accept returning customer discounts. All discounts are non-transferable and cannot be combined with additional promotions or discounts.</br>\r\n\r\n* Liability in case accident:\r\nThe hirer should have coverage through his own accident and liability insurance.\r\nThe renting company is not responsible under any circumstances for accidents or damages caused to the hirer or which the hirer causes to any third party or cases of liability </span>');

-- ----------------------------
-- Table structure for tblsubscribers
-- ----------------------------
DROP TABLE IF EXISTS `tblsubscribers`;
CREATE TABLE `tblsubscribers`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `SubscriberEmail` varchar(120) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tblsubscribers
-- ----------------------------
INSERT INTO `tblsubscribers` VALUES (1, 'anuj.lpu1@gmail.com', '2017-06-22 20:35:32');

-- ----------------------------
-- Table structure for tbltestimonial
-- ----------------------------
DROP TABLE IF EXISTS `tbltestimonial`;
CREATE TABLE `tbltestimonial`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `UserEmail` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Testimonial` mediumtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbltestimonial
-- ----------------------------

-- ----------------------------
-- Table structure for tblusers
-- ----------------------------
DROP TABLE IF EXISTS `tblusers`;
CREATE TABLE `tblusers`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `FullName` varchar(120) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `EmailId` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Password` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ContactNo` char(11) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `dob` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Address` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `City` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Country` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tblusers
-- ----------------------------
INSERT INTO `tblusers` VALUES (4, 'Sinisa Valentic', 'sinisa@hexis.hr', '5c428d8875d2948607f3e3fe134d71b4', '09999857868', '', 'PKL', 'XYZ', 'XYZ', '2017-06-18 00:03:36', '2021-11-05 11:34:39');

-- ----------------------------
-- Table structure for tblvehicles
-- ----------------------------
DROP TABLE IF EXISTS `tblvehicles`;
CREATE TABLE `tblvehicles`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `VehiclesTitle` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `VehiclesBrand` int NULL DEFAULT NULL,
  `VehiclesOverview` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `PricePerDay` int NULL DEFAULT NULL,
  `FuelType` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ModelYear` int NULL DEFAULT NULL,
  `SeatingCapacity` int NULL DEFAULT NULL,
  `Vimage1` varchar(120) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Vimage2` varchar(120) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Vimage3` varchar(120) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Vimage4` varchar(120) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Vimage5` varchar(120) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `AirConditioner` int NULL DEFAULT NULL,
  `PowerDoorLocks` int NULL DEFAULT NULL,
  `AntiLockBrakingSystem` int NULL DEFAULT NULL,
  `BrakeAssist` int NULL DEFAULT NULL,
  `PowerSteering` int NULL DEFAULT NULL,
  `DriverAirbag` int NULL DEFAULT NULL,
  `PassengerAirbag` int NULL DEFAULT NULL,
  `PowerWindows` int NULL DEFAULT NULL,
  `CDPlayer` int NULL DEFAULT NULL,
  `CentralLocking` int NULL DEFAULT NULL,
  `CrashSensor` int NULL DEFAULT NULL,
  `LeatherSeats` int NULL DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tblvehicles
-- ----------------------------
INSERT INTO `tblvehicles` VALUES (1, 'SS400', 2, 'Slowly spreading its cards this year, the Ace of Bajaj Autos is still not on the table. With the expectations like Pulsar 400SS or Pulsar SS400, the Ace (400SS) would be the commander of the Pulsar series. It would be a benchmark for the other motorcycle manufacturers as the competition for more performance oriented bikes will definitely rise this year.', 345345, 'Petrol', 3453, 2, 'knowledges_base_bg.jpg', '20170523_145633.jpg', 'codepro.png', 'social-icons.png', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2017-06-19 15:46:23', '2017-06-20 22:38:13');
INSERT INTO `tblvehicles` VALUES (2, 'RS200', 2, 'The Pulsar is by far the most successful brand Bajaj has managed to create in the recent past.It is also fast, no doubt. But, its true highlight is its easy to ride nature. ', 859, 'Petrol', 2015, 2, 'bike_755x430.png', 'looking-used-bike.png', 'front-image.jpg', 'about_services_faq_bg.jpg', '', 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, NULL, NULL, '2017-06-19 20:16:17', '2017-06-21 20:57:11');
INSERT INTO `tblvehicles` VALUES (3, 'R1', 4, ' The Suzuki GSX-R1000 is a sport bike from Suzuki GSX-R series of motorcycles.It was introduced in 2001 to replace the GSX-R1100 and is powered by a liquid-cooled 999 cc (61.0 cu in) inline four-cylinder, four-stroke engine.', 563, 'Petrol', 2012, 2, 'featured-img-300.jpg', 'dealer-logos.jpg', 'img_390x3900.jpg', 'listing_img303.jpg', '', 1, 1, 1, 1, 1, 1, NULL, 1, 1, NULL, NULL, NULL, '2017-06-19 20:18:20', '2017-06-20 22:40:11');
INSERT INTO `tblvehicles` VALUES (4, 'Duke390', 1, ' The KTM 390 DUKE breathes life into values that have made motorcycling so amazing for decades. It combines maximum riding pleasure with optimum user value and comes out on top wherever nimble handling counts. Light as a feather, powerful and packed with state-of-the-art technology, it guarantees a thrilling ride, whether youre in the urban jungle or a forest of bends. 390 DUKE – nowhere you will find more motorcycle per euro.', 5636, 'Petrol', 2012, 2, 'featured-img-3000.jpg', 'featured-img-1000.png', 'featured-img-1000.png', 'featured-img-1000.png', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, NULL, NULL, '2017-06-19 20:18:43', '2017-06-20 22:44:12');
INSERT INTO `tblvehicles` VALUES (5, 'R1', 5, 'The YZF-R1® features a lightweight and compact crossplane crankshaft, inline-four-cylinder, 998cc high output engine. Featuring titanium fracture-split connecting rods, an offset cylinder block and magnesium covers, the motor delivers extremely high horsepower and a strong pulse of linear torque for outstanding performance, all wrapped in aerodynamic MotoGP®-style bodywork.', 345345, 'Petrol', 3453, 2, 'bikes_755x430.png', NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2017-06-20 21:57:09', '2017-06-21 20:56:43');

SET FOREIGN_KEY_CHECKS = 1;
