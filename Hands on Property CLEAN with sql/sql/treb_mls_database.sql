-- MySQL dump 10.13  Distrib 5.6.31, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: treb_mls
-- ------------------------------------------------------
-- Server version	5.6.31-0ubuntu0.15.10.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `property`
--

DROP TABLE IF EXISTS `property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `property` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `street_num` int(5) NOT NULL,
  `street_name` varchar(50) NOT NULL,
  `postal_code` varchar(10) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `region` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `province_territory` varchar(50) NOT NULL,
  `price` int(9) NOT NULL,
  `mls_id` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property`
--

LOCK TABLES `property` WRITE;
/*!40000 ALTER TABLE `property` DISABLE KEYS */;
INSERT INTO `property` VALUES (1,629,'King Street West','M4V0G9','King West At Its Best. Elegant Living With Lavish Amenities And First-Class Services. Live And Play In One Of Toronto\'s Hippest And Hottest Spots. This One Of A Kind Junior 1 Bedroom Suite Comes Fully Upgraded. This Unit Features A Balcony (Breathtaking Views Of Our Stunning City) Locker, Built-In Appliances, Open Floor Plan And Of Course The Hottest Roof Top Patio In The City. Close To So Many Phenomenal Shops, Restaurants And Transit. Will Not Last.','Greater Toronto Area','Toronto','Ontario',359000,'C3659403'),(2,111,'Bathurst Street','M5V2P9','111 Bathurst St, Toronto, ON, M5V 2R1 is located in the neighbourhood of King-Spadina, Toronto, ON. Nearby neighbourhoods include Downtown, Niagara, and Trinity Bellwoods.','Greater Toronto Area','Toronto','Ontario',380260,''),(3,25,'Oxley Street','M5V2J5','Gorgeous 1 Bdrm Loft At Glas Condos. Includes Rare Parking & Locker! South Facing Balcony W/ Bbq Gasline. 9Ft Exposed Concrete Ceilings, Floor-To-Ceiling Windows, Hrwd Floors, Modern Italian Kitchen W/Soft Close Drawers, Glass Backsplash, Caesarstone Counters, Ss Appliances & Corian Bathroom Counters. Great Location On A Quiet Street In The Fashion District, Steps To The Financial District, Restaurants, Entertainment,Ttc & More. ***Low Maintenance Fees***','Greater Toronto Area','Toronto','Ontario',399000,'C3662544'),(4,260,'Sackville Street','M5A0B3','One Park West Condos, Built By Award Winning Daniels Corp Is The Center Of A Re-Developed Regent Park. This Condo & Area Has All The Amenities Of A Modern Community. Walk To Ttc, Shopping, Banks, Pharmacy, Cafes, Restaurants, Health Services & Close To Dvp. Enjoy A Panoramic Un-Obstructed View Of A Beautiful 6 Acre Central Park. Aquatic Center, Basketball Court, Soccer Field, Hocley Rink, Track Are All Near By. Urban Living At Its Best!','Greater Toronto Area','Toronto','Ontario',399900,'C3651227'),(5,51,'Lady Bank Road','M8Z4J6','Absolutely Cozy Suite, Open Concept, Living/Dining /Kitchen. Gourmet Chef\'s Kitchen. Lovely Hardwood Floors Throughout, Semi Ensuite Bathroom W/O To Large Terrace (246 Sq. Feet). Perfect For Entertaining, Quiet Building, 1 Parking Spot Included. Ttc At Door, One Bus To Subway, Close To Restaurants, Movie Theatre, Qew, Shopping, And All Other Amenities, Norseman School District. Move In And Enjoy!','Greater Toronto Area','Etobicoke','Ontario',333700,'W3637747'),(6,306,'Melrose Street','M8Z1G6','Renovated In Mimico! Detached 3-Bedroom Bungalow Features Pot Lights And Laminate Floors Throughout The Home. This Open Concept Living/Dining Combined Has Fireplace Decor And Stain Glass Windows. Kitchen Has New Stainless Steel Samsung Appliances, Fridge, Stove & Microwave Fan With Eat-In Marble Island. Master W/O To Deck. Lower Level Great As In-Law Or Guest Ensuite, Has Separate Entrance. Mutual Lane Shared Driveway, Garage At Rear Of Home.','Greater Toronto Area','Toronto','Ontario',699000,'W3656376'),(7,15,'Brussel Street','M8Y1H2','New Home W/ Transitional Design*Minutes To Hwy, Transit, Shops*Rapidly Developing Stonegate Locale*South Etobicoke!!Elevation Features Linear Metallic Black Brick Accented W/ Walnut Longboard*Soft Grey Stucco*8 Ft Walnut Frt Door & Modern Glass Garage*Modern Italian Lube Kitchen W/ Iarge Island & Breakfast Bar*White Quartz Counters*Show Case Illuminated Staircase W/ Glass Wall*Large Windows & Slider Entices Natural Light*Up To 10 Ft Ceilings.','Greater Toronto Area','Etobicoke','Ontario',1425000,'W3650566'),(8,1185,'The Queensway Street','M8Z0C6','Exquisite Iq Towers By Reamington. Bright And Sunny 9 Foot Ceiling Unit With Granite Counter Tops, Breakfast Bar And Stainless Steel Appliances! Oversized Balcony Approx 150 Sq Feet. Custom Blinds. Over $3,500 Spent On Upgrades From Builder. Great Amenities: Indoor Pool, Sauna, Gym, Etc.!','Greater Toronto Area','Etobicoke','Ontario',339000,'W3662937'),(9,2900,'Battleford Road','L5N2V9','Renovated & Freshly Painted Gorgeous 2 Bedroom Condo With South Exposure. All Day Sun In This 832 Sq Ft Suite. Steps To Meadowvale Town Centre Restaurants, Shopping, Library, Community Centre & More. Close To Public Transit, Go Station, Highways 401, 407, 410 & 403. Amazingly Priced To Sell!!! Don\'t Miss Out On This Great Opportunity!!!','Greater Toronto Area','Missisauga','Ontario',236900,'W3618665'),(10,156,'Enfield Place','L5B4L8','none','Greater Toronto Area','Missisauga','Ontario',390000,'W3658193'),(11,50,'Absolute Avenue','L4Z','A Large 1 Br Suite In Landmark Building In Downtown Mississauga Absolute World 2 The Suite Size Is 620 Sq Ft+135 Sq Ft Balcony (755 Sq Ft). Comes With A Large Layout +Balcony 9Ft Ceilings Add To The Openness Of The Suite. Lots Of Upgrades- Desginer Paint Stainless Steel Appliances, Upgraded Stove, Granite Countertop, Undermount Sink, Centre Island, Valance Lighting. Clear Views From','Greater Toronto Area','Missisauga','Ontario',259000,'W3637806'),(12,530,'Lolita Gardens','L5A3T2','1408-530 Lolita Gdns, Mississauga, ON, L5A 3T2 is located in the neighbourhood of Mississauga Valleys, Mississauga, ON. Nearby neighbourhoods include Cooksville, Dixie, and Rathwood.','Greater Toronto Area','Missisauga','Ontario',264000,'W3658764'),(13,116,'Main Unionville Street','L3R2V5','Circa 1915, Heritage Home. Grand House On Main Street, Unionville. 9\' Main Floor Ceilings, 8\'6inch Second Floor Ceilings. Finished Third Floor With Dens That Can Be Converted Into Bedrooms. Loads Of Character, Original Wood Trim. Pocket Doors. Large Enclosed Front Porch. Steps To The School, Go Train Station, Ymca. Near Library, Cinema, Markville Mall, Supermarket And All Amenities. Previously Used As A Lawyer\'s Office.','Greater Toronto Area','Markham','Ontario',1790000,'N3649631'),(14,34,'Raleign Cres','L3R4W5','Fabulous House In Unionville With Many Updates & Upgrades. Updated Kitchen, Bathrooms, Windows, Shingles, Furnace & Air, Flooring, And Garage Door. Fireplace In Family Room. Basement Redone In 2012. Backs To Park. Kitchen Pantry. Direct Interior Door To Garage. Very Private Treed Backyard. Great Location. Walk To Markville Mall, Transit, Parks, Go Train And Community Centre. Move Right In!','Greater Toronto Area','Markham','Ontario',788000,'N3661873'),(15,164,'Sunway Square','L3P7X6','Location!Location!Location!Freehold Townhouse In High Demand Area,Owner Well Cared For,Model Home,High Range School James Robinson P.S(348/3037)Markville S.S(25/676)New Windows And Blind(2015),California Shutters(2015),New Roof(2014),New Model Kitchen And New Ceramic(2014),High Effic Furnace &Ac&Water Heater,Huge Deck,Professionally Finished Basement,Steps To Go Station,Schools,Community Centre, Loblaws, Markville Mall,Transit & Hwy 407.','Greater Toronto Area','Missisauga','Ontario',788000,'N3662235'),(16,68,'Main Street North','L3P1X5','Absolutely Stunning Condo In Immaculate Condition. Just Like New. 2 Bedrooms & 2 Baths Plus Den. Open Concept. Large Kitchen Island. Huge Master Bedroom & Huge Walk In Closet. Ensuite With Separate Shower & Soaker Tub. Right On Main St. Close To Restaurants, Banks, Go Train & Shopping. Flat Ceilings Throughout. Fabulous Roof Top Terrace. 2 Guest Suites. Move Right In And Enjoy!','Greater Toronto Area','Markham','Ontario',479000,'N3653337'),(17,67,'Peace Dr Scarborough','M1G2V3','A Desirable Backsplit Home In High Demand Area. Backing On To Greenspace And Bike Paths This Updated Well Laid Out Family Home Is Steps To Centennial College, Scar Uoft , Walk To High And Public Schools, Parks And Public Transport (Easy Access To Scarborough Town Centre). Featuring An Updated Eat-In Kitchen And Separate Entrance To Bright Basement Apartment And Hardwood Flooring Throughout Main And Upper Floors.','Greater Toronto Area','Scarborough','Ontario',629900,'N3655297'),(18,36,'Lee Centre Dr','M1H3K2','This Lovely Unit Close To The Top Floor Of This Stunning Building In A Highly Desired Scarborough Neighborhood. Building Is Very Well Maintained And Has Exceptional Amenities. Fantastic Layout With Gorgeous Views Of The City. This One + Den Has A Functional That Can Actually Be Used As A Bedroom! You Will Love To Call This Place Home! Walking Distance To Scarborough Town Centre And The Ttc Right At Your Door. Rt Transit Line A Short Walk.','Greater Toronto Area','Scarborough','Ontario',255000,'E366085'),(19,68,'Corportate Dr','M1H3H3','Luxury Tridel Condo, Prime Location Closing To Scarborough Town Centre, Rt, Hwy 401. Ttc Beside The Building. New Paint, New Broadloom, Bright + Clean, 2 Bedroom + 2 Bathrooms. Unobstructed West View. Fabulous Rec Facilities, 24 Hrs Security.','Greater Toronto Area','Scarborough','Ontario',329000,'E3633628'),(20,160,'Sedgemount Dr','M1H1Y2','Awesome Luxury Bungalow Custom Reno\'s. Situated On A Beautiful 42X120 Feet Deep Lot, Backing Onto No Neighbors. Over 100K On Reno\'s, Granite Counter Tops, All Branded New Lights Fixtures, Crown Molding, New Baseboards, Marble Porcelain Tiles In Bathroom. Brand New S/S Appliances, Tankless Water Rental, And Too Many Quality Upgrades To List! Offers Welcome Anytime!','Greater Toronto Area','Scarborough','Ontario',765000,'E3658225'),(21,272,'Taylor Mills Drive','L4C2T9','Beautiful Updated Home With Finished Basement With Separate Entrance, Hardwood Floors, Built-In Furniture In Two Bedrooms, Fantastic Location, Close To Parks, Top Ranking Schools, Transportation, Yonge St. Shopping.','Greater Toronto Area','Richmond Hill','Ontario',715000,'N3644370'),(22,75,'King William Crescent','L4B0C1','Miracle On Yonge* South Views Bright, Spacious Apartment* Granite Countertops Kitchen And Bath* Beautiful Upgraded Cabinets @Floor* Excellent Location! Walk To Yonge Close To All Amenities, Easy Access To Hwy7/407/Yonge. Public Transit (Yrt/Viva/Go Station, Shopping. Restaurants, Parks Etc. Amenities Including Fitness Club, Lounge, Cardio/Yoga Retreat, Steam Rm, 24Hr Concierge, Guest Room, Party Rm, Plenty Of Visitors Parking* **** EXTRAS **** Stainless Steel Fridge, Stove, B/I Dishwasher, B/I Microwave, Washer And Dryer, All Window Covering, All Electric Light Fixtures* Underground Parking And Locker Included','Greater Toronto Area','Richmond Hill','Ontario',259000,'N3654963'),(23,94,'Colesbrook Road','L4S2G5','Beautiful 4 Bedroom Home In A High Demand Neighbourhood On A Quiet Street Completely Upgraded, Include Custom Kitchen, Granite Counters & Hardwood Floor Walk-Out To Ravine Lot, Finished W/O Basement, Sauna ** Top Ranking Trillium Woods Ps & Richmond Hill Hs ** Close To Transit, Community Center, Shopping, Park,Hospital.','Greater Toronto Area','Richmond Hill','Ontario',1499888,'N3652031'),(24,99,'South Town Center Blvd','L6G','326-99 South Town Centre Blvd, Markham, ON, L6B 1C7 is located in the neighbourhood of Markham Centre, Markham, ON. Nearby neighbourhoods include Unionville, Brown\'s Corners, and Buttonville. ','Greater Toronto Area','Richmond Hill','Ontario',526213,'N3652969');
/*!40000 ALTER TABLE `property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_details`
--

DROP TABLE IF EXISTS `property_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `property_details` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) NOT NULL,
  `levels` varchar(50) NOT NULL,
  `size` varchar(10) NOT NULL,
  `lot_size` varchar(10) NOT NULL,
  `maintenance_fee` varchar(10) NOT NULL,
  `mls_id` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_details`
--

LOCK TABLES `property_details` WRITE;
/*!40000 ALTER TABLE `property_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `property_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_exterior`
--

DROP TABLE IF EXISTS `property_exterior`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `property_exterior` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `exterior` varchar(50) NOT NULL,
  `basement` varchar(50) NOT NULL,
  `garage` varchar(50) NOT NULL,
  `driveway` varchar(50) NOT NULL,
  `mls_id` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_exterior`
--

LOCK TABLES `property_exterior` WRITE;
/*!40000 ALTER TABLE `property_exterior` DISABLE KEYS */;
INSERT INTO `property_exterior` VALUES (1,'-','-','-','-','C3655096'),(2,'Glass','none','Underground','-','C3662544'),(3,'Brick','None','Underground','-','C3659403'),(4,'Glass','none','Underground','-','C3651227'),(5,'Glass','None','Underground','-','W3637747'),(6,'Block','None','Garage','-','W3656376'),(7,'Bricks','Yes','Garage','-','W3650566'),(8,'Glass','None','Underground','-','W3662937'),(9,'Bricks','None','Underground','-','W368665'),(10,'Bricks','None','Underground','-','W365893'),(11,'Glass','None','Underground','-','W3637806'),(12,'Brick','None','Underground','-','W3658764'),(13,'Brick','Yes','Garage','-','N3649631'),(14,'Brick','Yes','Garage','-','N3661873'),(15,'Brick','Yes','Garage','-','N3662235'),(16,'Brick','None','Underground','-','N3663337'),(17,'Brick','Yes','Garage','-','N3655297'),(18,'Glass','None','Underground','-','E366085'),(19,'Bricks','None','Underground','-','E3633628'),(20,'Bricks','Yes','Garage','-','E3658225'),(21,'Bricks','Yes','Garage','-','N3644370'),(22,'Bricks','None','Underground','-','N3654963'),(23,'Bricks','Yes','Garage','-','N3652031'),(24,'none','none','none','-','N3652969');
/*!40000 ALTER TABLE `property_exterior` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_images`
--

DROP TABLE IF EXISTS `property_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `property_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image_path` varchar(150) NOT NULL,
  `mls_id` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_images`
--

LOCK TABLES `property_images` WRITE;
/*!40000 ALTER TABLE `property_images` DISABLE KEYS */;
INSERT INTO `property_images` VALUES (1,'/img/property_images/C3659403_01.jpg','C3659403'),(2,'/img/property_images/C3659403_02.jpg','C3659403'),(3,'/img/property_images/C3659403_03.jpg','C3659403');
/*!40000 ALTER TABLE `property_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_layout`
--

DROP TABLE IF EXISTS `property_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `property_layout` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `living` varchar(50) NOT NULL,
  `dining` varchar(50) NOT NULL,
  `kitchen` varchar(50) NOT NULL,
  `master` varchar(50) NOT NULL,
  `other` varchar(50) NOT NULL,
  `mls_id` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_layout`
--

LOCK TABLES `property_layout` WRITE;
/*!40000 ALTER TABLE `property_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `property_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_utilities`
--

DROP TABLE IF EXISTS `property_utilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `property_utilities` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `heat` varchar(30) NOT NULL,
  `air_conditioning` varchar(30) NOT NULL,
  `heating_fuel` varchar(30) NOT NULL,
  `mls_id` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_utilities`
--

LOCK TABLES `property_utilities` WRITE;
/*!40000 ALTER TABLE `property_utilities` DISABLE KEYS */;
/*!40000 ALTER TABLE `property_utilities` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-12-04 12:33:47
