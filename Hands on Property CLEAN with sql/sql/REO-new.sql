-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2016 at 09:06 AM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `treb_mls`
--

-- --------------------------------------------------------

--
-- Table structure for table `property`
--

CREATE TABLE IF NOT EXISTS `property` (
  `id` int(9) NOT NULL,
  `street_num` int(5) NOT NULL,
  `street_name` varchar(50) NOT NULL,
  `postal_code` varchar(10) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `region` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `province_territory` varchar(50) NOT NULL,
  `price` int(9) NOT NULL,
  `mls_id` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `property`
--

INSERT INTO `property` (`id`, `street_num`, `street_name`, `postal_code`, `description`, `region`, `city`, `province_territory`, `price`, `mls_id`) VALUES
(1, 629, 'King Street West', 'M4V0G9', 'King West At Its Best. Elegant Living With Lavish Amenities And First-Class Services. Live And Play In One Of Toronto''s Hippest And Hottest Spots. This One Of A Kind Junior 1 Bedroom Suite Comes Fully Upgraded. This Unit Features A Balcony (Breathtaking Views Of Our Stunning City) Locker, Built-In Appliances, Open Floor Plan And Of Course The Hottest Roof Top Patio In The City. Close To So Many Phenomenal Shops, Restaurants And Transit. Will Not Last.', 'Greater Toronto Area', 'Toronto', 'Ontario', 359000, 'C3659403'),
(2, 116, 'Main Unionville St ', 'L3R 2V5', 'Circa 1915, Heritage Home. Grand House On Main Street, Unionville. 9'' Main Floor Ceilings, 8''6" Second Floor Ceilings. Finished Third Floor With Dens That Can Be Converted Into Bedrooms. Loads Of Character, Original Wood Trim. Pocket Doors. Large Enclosed Front Porch. Steps To The School, Go Train Station, Ymca. Near Library, Cinema, Markville Mall, Supermarket And All Amenities. Previously Used As A Lawyer''s Office.', 'Markham', 'Markham', 'ON', 1790000, 'N3649631'),
(3, 34, 'Raleign Cres', 'L3R 4W5', 'Fabulous House In Unionville With Many Updates & Upgrades. Updated Kitchen, Bathrooms, Windows, Shingles, Furnace & Air, Flooring, And Garage Door. Fireplace In Family Room. Basement Redone In 2012. Backs To Park. Kitchen Pantry. Direct Interior Door To Garage. Very Private Treed Backyard. Great Location. Walk To Markville Mall, Transit, Parks, Go Train And Community Centre. Move Right In!', 'Markham', 'Markham', 'ON', 788000, 'N3661873'),
(4, 164, 'Sunway Sq', 'L3P 7X6', 'Location!Location!Location!Freehold Townhouse In High Demand Area,Owner Well Cared For,Model Home,High Range School James Robinson P.S(348/3037)Markville S.S(25/676)New Windows And Blind(2015),California Shutters(2015),New Roof(2014),New Model Kitchen And New Ceramic(2014),High Effic Furnace &Ac&Water Heater,Huge Deck,Professionally Finished Basement,Steps To Go Station,Schools,Community Centre, Loblaws, Markville Mall,Transit & Hwy 407.', 'Markham', 'Markham', 'ON', 788000, 'N3662235'),
(5, 22868, 'Main St', 'L3P0N5', 'Absolutely Stunning Condo In Immaculate Condition. Just Like New. 2 Bedrooms & 2 Baths Plus Den. Open Concept. Large Kitchen Island. Huge Master Bedroom & Huge Walk In Closet. Ensuite With Separate Shower & Soaker Tub. Right On Main St. Close To Restaurants, Banks, Go Train & Shopping. Flat Ceilings Throughout. Fabulous Roof Top Terrace. 2 Guest Suites. Move Right In And Enjoy!', 'Markham', 'Markham', 'ON', 479000, 'N3653337'),
(6, 67, 'Peace Dr', 'M1G2V3', 'A Desirable Backsplit Home In High Demand Area. Backing On To Greenspace And Bike Paths This Updated Well Laid Out Family Home Is Steps To Centennial College, Scar Uoft , Walk To High And Public Schools, Parks And Public Transport (Easy Access To Scarborough Town Centre). Featuring An Updated Eat-In Kitchen And Separate Entrance To Bright Basement Apartment And Hardwood Flooring Throughout Main And Upper Floors.', 'Scarborough', 'Scarborough', 'ON', 629900, 'E3655297'),
(7, 2516, 'Lee Centre Dr', 'M1H3K2', 'This Lovely Unit Close To The Top Floor Of This Stunning Building In A Highly Desired Scarborough Neighborhood. Building Is Very Well Maintained And Has Exceptional Amenities. Fantastic Layout With Gorgeous Views Of The City. This One + Den Has A Functional That Can Actually Be Used As A Bedroom! You Will Love To Call This Place Home! Walking Distance To Scarborough Town Centre And The Ttc Right At Your Door. Rt Transit Line A Short Walk.', 'Scarborough', 'Scarborough', 'ON', 255000, 'E3661085'),
(8, 82268, 'Corportate Dr ', 'M1H3H3', 'Luxury Tridel Condo, Prime Location Closing To Scarborough Town Centre, Rt, Hwy 401. Ttc Beside The Building. New Paint, New Broadloom, Bright + Clean, 2 Bedroom + 2 Bathrooms. Unobstructed West View. Fabulous Rec Facilities, 24 Hrs Security.', 'Scarborough', 'Scarborough', 'ON', 329000, 'E3633628'),
(9, 160, 'Sedgemount Dr', 'M1H1Y2', 'Awesome Luxury Bungalow Custom Reno''s. Situated On A Beautiful 42X120 Feet Deep Lot, Backing Onto No Neighbors. Over 100K On Reno''s, Granite Counter Tops, All Branded New Lights Fixtures, Crown Molding, New Baseboards, Marble Porcelain Tiles In Bathroom. Brand New S/S Appliances, Tankless Water Rental, And Too Many Quality Upgrades To List! Offers Welcome Anytime!', 'Scarborough', 'Scarborough', 'ON', 765000, 'E3658226'),
(10, 272, 'Taylor Mills Dr N', 'L4C2T9', 'Beautiful Updated Home With Finished Basement With Separate Entrance, Hardwood Floors, Built-In Furniture In Two Bedrooms, Fantastic Location, Close To Parks, Top Ranking Schools, Transportation, Yonge St. Shopping.', 'Richmond Hill', 'Richmond Hill', 'ON', 715000, 'N3644370'),
(11, 30975, 'King William Crescent', 'L4B0C1', 'Miracle On Yonge* South Views Bright, Spacious Apartment* Granite Countertops Kitchen And Bath* Beautiful Upgraded Cabinets @Floor* Excellent Location! Walk To Yonge Close To All Amenities, Easy Access To Hwy7/407/Yonge. Public Transit (Yrt/Viva/Go Station, Shopping. Restaurants, Parks Etc. Amenities Including Fitness Club, Lounge, Cardio/Yoga Retreat, Steam Rm, 24Hr Concierge, Guest Room, Party Rm, Plenty Of Visitors Parking* **** EXTRAS **** Stainless Steel Fridge, Stove, B/I Dishwasher, B/I Microwave, Washer And Dryer, All Window Covering, All Electric Light Fixtures* Underground Parking And Locker Included', 'Richmond Hill', 'Richmond Hill', 'ON', 259800, 'N3654963'),
(12, 94, 'Colesbrook Rd', 'L4S2G5', 'Beautiful 4 Bedroom Home In A High Demand Neighbourhood On A Quiet Street Completely Upgraded, Include Custom Kitchen, Granite Counters & Hardwood Floor Walk-Out To Ravine Lot, Finished W/O Basement, Sauna ** Top Ranking Trillium Woods Ps & Richmond Hill Hs ** Close To Transit, Community Center, Shopping, Park,Hospital.', 'Richmond Hill', 'Richmond Hill', 'ON', 1499888, 'N3652031'),
(13, 1223, 'King St', 'M5V0G9', 'King West At Its Best. Elegant Living With Lavish Amenities And First-Class Services. Live And Play In One Of Toronto''s Hippest And Hottest Spots. This One Of A Kind Junior 1 Bedroom Suite Comes Fully Upgraded. This Unit Features A Balcony (Breathtaking Views Of Our Stunning City) Locker, Built-In Appliances, Open Floor Plan And Of Course The Hottest Roof Top Patio In The City. Close To So Many Phenomenal Shops, Restaurants And Transit. Will Not Last.', 'DOWNTOWN TORONTO', 'Toronto', 'ON', 359000, 'C3659403'),
(14, 714, 'Oxley St', 'M5V2J5', 'Gorgeous 1 Bdrm Loft At Glas Condos. Includes Rare Parking & Locker! South Facing Balcony W/ Bbq Gasline. 9Ft Exposed Concrete Ceilings, Floor-To-Ceiling Windows, Hrwd Floors, Modern Italian Kitchen W/Soft Close Drawers, Glass Backsplash, Caesarstone Counters, Ss Appliances & Corian Bathroom Counters. Great Location On A Quiet Street In The Fashion District, Steps To The Financial District, Restaurants, Entertainment,Ttc & More. ***Low Maintenance Fees***', 'DOWNTOWN TORONTO', 'Toronto', 'ON', 399000, 'C3662544'),
(15, 207, 'Sackville St', 'M5A0B3', 'One Park West Condos, Built By Award Winning Daniels Corp Is The Center Of A Re-Developed Regent Park. This Condo & Area Has All The Amenities Of A Modern Community. Walk To Ttc, Shopping, Banks, Pharmacy, Cafes, Restaurants, Health Services & Close To Dvp. Enjoy A Panoramic Un-Obstructed View Of A Beautiful 6 Acre Central Park. Aquatic Center, Basketball Court, Soccer Field, Hocley Rink, Track Are All Near By. Urban Living At Its Best!', 'DOWNTOWN TORONTO', 'Toronto', 'ON', 399900, 'C3651227'),
(16, 203, 'Lady Bank Rd', 'M8Z4J6', 'Absolutely Cozy Suite, Open Concept, Living/Dining /Kitchen. Gourmet Chef''s Kitchen. Lovely Hardwood Floors Throughout, Semi Ensuite Bathroom W/O To Large Terrace (246 Sq. Feet). Perfect For Entertaining, Quiet Building, 1 Parking Spot Included. Ttc At Door, One Bus To Subway, Close To Restaurants, Movie Theatre, Qew, Shopping, And All Other Amenities, Norseman School District. Move In And Enjoy!', 'Etobicoke', 'Toronto', 'ON', 333700, 'W3637747'),
(17, 306, 'Melrose St', 'M8Z1G6', 'Renovated In Mimico! Detached 3-Bedroom Bungalow Features Pot Lights And Laminate Floors Throughout The Home. This Open Concept Living/Dining Combined Has Fireplace Decor And Stain Glass Windows. Kitchen Has New Stainless Steel Samsung Appliances, Fridge, Stove & Microwave Fan With Eat-In Marble Island. Master W/O To Deck. Lower Level Great As In-Law Or Guest Ensuite, Has Separate Entrance. Mutual Lane Shared Driveway, Garage At Rear Of Home.', 'Etobicoke', 'Toronto', 'ON', 699000, 'W3656476'),
(18, 15, 'Brussels St', 'M8Y1H2', 'New Home W/ Transitional Design*Minutes To Hwy, Transit, Shops*Rapidly Developing Stonegate Locale*South Etobicoke!!Elevation Features Linear Metallic Black Brick Accented W/ Walnut Longboard*Soft Grey Stucco*8 Ft Walnut Frt Door & Modern Glass Garage*Modern Italian Lube Kitchen W/ Iarge Island & Breakfast Bar*White Quartz Counters*Show Case Illuminated Staircase W/ Glass Wall*Large Windows & Slider Entices Natural Light*Up To 10 Ft Ceilings.', 'Etobicoke', 'Toronto', 'ON', 1425000, 'W3650566'),
(19, 1185, 'The Queensway', 'M8Z0C6', 'Exquisite Iq Towers By Reamington. Bright And Sunny 9 Foot Ceiling Unit With Granite Counter Tops, Breakfast Bar And Stainless Steel Appliances! Oversized Balcony Approx 150 Sq Feet. Custom Blinds. Over $3,500 Spent On Upgrades From Builder. Great Amenities: Indoor Pool, Sauna, Gym, Etc.!', 'Etobicoke', 'Toronto', 'ON', 339000, 'W3662937'),
(20, 2900, 'Battleford Rd', 'L5N2V9', 'Renovated & Freshly Painted Gorgeous 2 Bedroom Condo With South Exposure. All Day Sun In This 832 Sq Ft Suite. Steps To Meadowvale Town Centre Restaurants, Shopping, Library, Community Centre & More. Close To Public Transit, Go Station, Highways 401, 407, 410 & 403. Amazingly Priced To Sell!!! Don''t Miss Out On This Great Opportunity!!! "Please View Video"', 'Mississauga', 'Mississauga', 'ON', 236900, 'W3618665'),
(21, 1605, 'Enfield Pl', 'L5B 4L8', 'Luxurious & Spacious 2 Bdrm/2 Wshrm Corner Suite W/ Den & Solarium! Meticulously Maintained, Shows True Pride Of Ownership. Very Desirable Layout W/ Open Concept Living/Dining, A Beautiful Kitchen W/ Family Sized Breakfast Area, A Huge Master W/Ensuite, His & Her Walk-In Closets & A Spectacular View From Every Room. Perfectly Situated In Downtown Mississauga, Steps To Shops, Restaurants, Sq1, Easy Access To 403 & Qew, Go & Transit, & Upcoming Lrt.', 'Mississauga', 'Mississauga', 'ON', 448900, 'W3657912'),
(22, 50, 'Absolute Ave', 'L4Z0A8', 'A Large 1 Br Suite In Landmark Building In Downtown Mississauga Absolute World 2 The Suite Size Is 620 Sq Ft+135 Sq Ft Balcony (755 Sq Ft). Comes With A Large Layout +Balcony 9Ft Ceilings Add To The Openness Of The Suite. Lots Of Upgrades- Desginer Paint Stainless Steel Appliances, Upgraded Stove, Granite Countertop, Undermount Sink, Centre Island, Valance Lighting. Clear Views From', 'Mississauga', 'Mississauga', 'ON', 259000, 'W3637806'),
(23, 530, 'Lolita Gdns', 'L5A3T2', '!!!Wow!!!Fully Renovated Thousands Of $$$ Spent On Quality Upgrades Including New Gleaming Laminate Floor Thorough Out(No Carpet),New Modern Kitchen With Pantry, Backsplash, Ceramic Floor, New Washroom, Fresh Paint Thorough Out Offers Very Good Sized Spacious 3 Bedrooms, Close To All Amenities School, Shopping, Transit, Park, Highways, Recreational Facilities, Very Clean Shows Well, Act Now Before Its Too Late Wont Stay Long In The Market, Very Spacious Rooms **** EXTRAS **** Include Fridge, Stove, Dishwasher, All Elf''s, Window Ac Unit, Window Coverings...Shows Well, Show And Sell 10++++', 'Mississauga', 'Mississauga', 'ON', 259800, 'W3658764');

-- --------------------------------------------------------

--
-- Table structure for table `property_details`
--

CREATE TABLE IF NOT EXISTS `property_details` (
  `id` int(9) NOT NULL,
  `type` varchar(50) NOT NULL,
  `levels` varchar(50) NOT NULL,
  `size` varchar(10) NOT NULL,
  `lot_size` varchar(10) NOT NULL,
  `maintenance_fee` varchar(10) NOT NULL,
  `mls_id` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `property_details`
--

INSERT INTO `property_details` (`id`, `type`, `levels`, `size`, `lot_size`, `maintenance_fee`, `mls_id`) VALUES
(1, 'Detached', '2 1/2 Storey', '1200–1399', '-', '$774', 'W3657912'),
(3, 'Link', '2-Storey', 'N/A sq ft', '29.5x103.4', '-', 'N3661873'),
(4, 'Townhouse', '2-Storey', 'N/A sq ft', '6m x 35.9m', '-', 'N3662235'),
(5, 'Condo', 'Apartment', '900–999sft', '-', '$583', 'N3653337'),
(6, 'Detached Bungalow ', 'Backsplit 3', 'N/A sq ft', '46.1x111.3', '-', 'E3655297'),
(7, 'Condo', 'Apartment', '600–699sqf', '-', '$430', 'E3661085'),
(8, 'Condo Apt', 'Apartment', '800–899sqf', '-', '$576', 'E3633628'),
(9, 'Detached Bungalow ', 'Bungalow', 'N/A sq ft', '42ftx120ft', '-', 'E3658226'),
(10, 'Semi-Detached', '2-Storey', 'N/A sq ft', '42ftx75ft', '-', 'N3644370'),
(11, 'Condo', 'Single Family', 'N/A sq ft', '-', '$429', 'N3654963'),
(12, 'Detached', '2-Storey', '2000–2500', '32.7x111.3', '', 'N3652031'),
(13, 'Condo Apt', 'Apartment', '500–599sft', '', '$377', 'W3637747'),
(14, 'Bungalow Detached', 'Bungalow', 'N/A sq ft', '30ftx128ft', '', 'W3656476'),
(15, 'Detached', '2-Storey', '2000–2500', '25ftx103ft', '', 'W3650566'),
(16, 'Condo Apt', 'Apartment', '500–599sft', '', '$301', 'C3662544'),
(17, 'Condo Apt', 'Apartment', '600–699sft', '', '$526', 'C3651227'),
(18, 'Condo Apt', 'Apartment', '600–699sft', '', '$396', 'W3662937'),
(19, 'Comm Element Condo', 'Apartment', '800–899sft', '', '$627', 'W3618665'),
(20, 'Condo Apt', 'Apartment', '1200–1399', '', '$774', 'W3657912'),
(21, 'Condo Apt', 'Apartment', '600–699sft', '', '$521', 'W3637806'),
(22, 'Apartment', 'Apartment', '', '', '$712.00', 'W3658764');

-- --------------------------------------------------------

--
-- Table structure for table `property_exterior`
--

CREATE TABLE IF NOT EXISTS `property_exterior` (
  `id` int(9) NOT NULL,
  `exterior` varchar(50) NOT NULL,
  `basement` varchar(50) NOT NULL,
  `garage` varchar(50) NOT NULL,
  `driveway` varchar(50) NOT NULL,
  `mls_id` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `property_exterior`
--

INSERT INTO `property_exterior` (`id`, `exterior`, `basement`, `garage`, `driveway`, `mls_id`) VALUES
(1, 'Brick', 'Finished', 'None', 'Private', 'N3649631'),
(2, 'Brick and Alum Siding', 'Finished', 'Attached', 'Private', 'N3661873'),
(3, 'Brick', 'Finished', 'Built-In', 'Private', 'N3662235'),
(4, 'Exterior Concrete', 'None', 'Undergrnd', '-', 'N3653337'),
(5, 'Brick', 'Apartment and Sep Entrance', 'None', 'Private', 'E3655297'),
(6, 'Concrete', 'None', 'Undergrnd', '-', 'E3661085'),
(7, 'Concrete', 'None', 'Undergrnd', '-', 'E3633628'),
(8, 'Brick', 'Full and Sep Entrance', 'None', 'Mutual', 'E3658226'),
(9, 'Brick', 'Finished and Sep Entrance', 'None', 'Private', 'N3644370'),
(10, 'Brick', '-', 'Underground', '-', 'N3654963'),
(11, 'Brick and Stone', 'Fin W/O', 'Attached', 'Pvt Double', 'N3652031'),
(12, 'Stucco/Plaster', 'None', 'Other', '', 'W3637747'),
(13, 'Brick', 'Finished and Sep Entrance', 'Detached', 'Mutual', 'W3656476'),
(14, 'Brick', 'Finished and Sep Entrance', 'Attached', 'Private', 'W3650566'),
(15, 'Concrete', 'None', 'Undergrnd', '', 'C3662544'),
(16, 'Concrete', 'None', 'None', '', 'C3651227'),
(17, 'Concrete', 'None', 'Undergrnd', '', 'W3662937'),
(18, 'Brick', 'None', 'Undergrnd', '', 'W3618665'),
(19, 'Brick', 'None', 'Undergrnd', '', 'W3657912'),
(20, 'Brick and Concrete', 'None', 'Undergrnd', '', 'W3637806'),
(21, 'Concrete', 'None', 'Undergrnd', '', 'W3658764');

-- --------------------------------------------------------

--
-- Table structure for table `property_images`
--

CREATE TABLE IF NOT EXISTS `property_images` (
  `id` int(11) NOT NULL,
  `image_path` varchar(150) NOT NULL,
  `mls_id` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `property_images`
--

INSERT INTO `property_images` (`id`, `image_path`, `mls_id`) VALUES
(1, '/img/property_images/C3659403_01.jpg', 'C3659403'),
(2, '/img/property_images/C3659403_02.jpg', 'C3659403'),
(3, '/img/property_images/C3659403_03.jpg', 'C3659403'),
(4, '/img/property_images/N3649631_001.jpg', 'N3649631'),
(5, '/img/property_images/N3649631_005.jpg', 'N3649631'),
(6, '/img/property_images/N3649631_014.jpg', 'N3649631'),
(7, '/img/property_images/N3661873_001.jpg', 'N3661873'),
(8, '/img/property_images/N3661873_002.jpg', 'N3661873'),
(9, '/img/property_images/N3661873_003.jpg', 'N3661873'),
(10, '/img/property_images/N3662235_001.jpg', 'N3662235'),
(11, '/img/property_images/N3662235_002.jpg', 'N3662235'),
(12, '/img/property_images/N3662235_003.jpg', 'N3662235'),
(13, '/img/property_images/N3653337_001.jpg', 'N3653337'),
(14, '/img/property_images/N3653337_002.jpg', 'N3653337'),
(15, '/img/property_images/N3653337_003.jpg', 'N3653337'),
(16, '/img/property_images/E3655297_001.jpg', 'E3655297'),
(17, '/img/property_images/E3655297_002.jpg', 'E3655297'),
(18, '/img/property_images/E3655297_003.jpg', 'E3655297'),
(19, '/img/property_images/E3661085_001.jpg', 'E3661085'),
(20, '/img/property_images/E3661085_002.jpg', 'E3661085'),
(21, '/img/property_images/E3661085_003.jpg', 'E3661085'),
(22, '/img/property_images/E3633628_001.jpg', 'E3633628'),
(23, '/img/property_images/E3633628_002.jpg', 'E3633628'),
(24, '/img/property_images/E3633628_003.jpg', 'E3633628'),
(25, '/img/property_images/E3658226_001.jpg', 'E3658226'),
(26, '/img/property_images/E3658226_002.jpg', 'E3658226'),
(27, '/img/property_images/E3658226_003.jpg', 'E3658226'),
(28, '/img/property_images/N3644370_001.jpg', 'N3644370'),
(29, '/img/property_images/N3644370_002.jpg', 'N3644370'),
(30, '/img/property_images/N3644370_003.jpg', 'N3644370'),
(31, '/img/property_images/N3654963_001.jpg', 'N3654963'),
(32, '/img/property_images/N3654963_002.jpg', 'N3654963'),
(33, '/img/property_images/N3654963_003.jpg', 'N3654963'),
(34, '/img/property_images/N3652031_001.jpg', 'N3652031'),
(35, '/img/property_images/N3652031_002.jpg', 'N3652031'),
(36, '/img/property_images/N3652031_003.jpg', 'N3652031'),
(37, '/img/property_images/km000696_slide_01.jpg', ''),
(38, '/img/property_images/km000696_slide_02.jpg', ''),
(39, '/img/property_images/km000696_slide_06.jpg', ''),
(40, '/img/property_images/160966.jpg', 'C3659403'),
(41, '/img/property_images/160971.jpg', 'C3659403'),
(42, '/img/property_images/160976.jpg', 'C3659403'),
(43, '/img/property_images/77CB76682B399227C8D609674118456C.jpg', 'C3662544'),
(44, '/img/property_images/685DF212F17A7E8203E462B57543EF5C.jpg', 'C3662544'),
(45, '/img/property_images/C3662544_13.jpg', 'C3662544'),
(46, '/img/property_images/pic1-6.jpg', 'C3651227'),
(47, '/img/property_images/pic2-6.jpg', 'C3651227'),
(48, '/img/property_images/pic3-6.jpg', 'C3651227'),
(49, '/img/property_images/m_580c1f0c9156f.jpg', 'W3637747'),
(50, '/img/property_images/m_580c1f25f2e1e.jpg', 'W3637747'),
(51, '/img/property_images/m_580c1f25f2e1e.jpg', 'W3637747'),
(52, '/img/property_images/1300_11476461419.jpg', 'W3656476'),
(53, '/img/property_images/1300_31476461468.jpg', 'W3656476'),
(54, '/img/property_images/1300_71476461468.jpg', 'W3656476'),
(55, '/img/property_images/m_57eea7151ad1a.jpg', 'W3650566'),
(56, '/img/property_images/m_57edd816e75fd.jpg', 'W3650566'),
(57, '/img/property_images/m_57edd818e54ef.jpg', 'W3650566'),
(58, '/img/property_images/1CE66076C71473C3DED9F606CBC8994F.jpg', 'W3662937'),
(59, '/img/property_images/original.jpg', 'W3662937'),
(60, '/img/property_images/W3530996.jpg', 'W3662937'),
(61, '', 'W3618665'),
(62, '/img/property_images/249-1024x681.jpg', 'W3618665'),
(63, '/img/property_images/920-1024x704.jpg', 'W3618665'),
(64, '/img/property_images/1103.jpg', ''),
(65, '/img/property_images/156-Enfield-Pl.jpg', 'W3657912'),
(66, '/img/property_images/156-enfield-1.jpg', 'W3657912'),
(67, '/img/property_images/14a.jpg', 'W3657912'),
(68, '/img/property_images/ID172634911.jpg', 'W3637806'),
(69, '/img/property_images/5302723_15431160_lg.jpg', 'W3637806'),
(70, '/img/property_images/5302723_15431166_lg.jpg', 'W3637806'),
(71, '/img/property_images/1-1276028310.jpg', 'W3658764'),
(72, '/img/property_images/1-1276028328.jpg', 'W3658764'),
(73, '/img/property_images/1-1276028325.jpg', 'W3658764');

-- --------------------------------------------------------

--
-- Table structure for table `property_layout`
--

CREATE TABLE IF NOT EXISTS `property_layout` (
  `id` int(9) NOT NULL,
  `living` varchar(50) NOT NULL,
  `dining` varchar(50) NOT NULL,
  `kitchen` varchar(50) NOT NULL,
  `master` varchar(50) NOT NULL,
  `other` varchar(50) NOT NULL,
  `mls_id` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `property_layout`
--

INSERT INTO `property_layout` (`id`, `living`, `dining`, `kitchen`, `master`, `other`, `mls_id`) VALUES
(1, 'Ground- 11.91 × 28.54 ft', 'Ground- 11.32 × 14.47 ft', 'Ground- 5.05 × 13.81 ft', '2nd- 15.98 × 10.66 ft', 'Bedrooms 2-4 located on 2nd floor', 'N3649631'),
(2, 'Ground- 9.78 × 13.78 ft', 'Ground- 8.04 × 8.79 ft', 'Ground- 8.14 × 11.32 ft', '2nd- 10.83 × 17.06 ft', '2nd/3rd bedroom on 2nd floor. 9.51 × 11.48 ft', 'N3661873'),
(3, 'Ground- 9.84 × 14.50 ft', 'Ground- 10.99 × 14.01 ft', 'Ground- 8.99 × 9.84 ft', '2nd- 19.00 × 14.01 ft', '2nd/3rd Bdroom: 2nd, 4th Bdroom Basement', 'N3662235'),
(4, 'Flat- 10.07 × 17.39 ft', 'Flat- 10.07 × 17.39 ft', 'Flat- 8.30 × 10.33 ft', 'Flat- 10.99 × 15.42 ft', '2nd bedroom Flat- 8.86 × 9.84 ft', 'N3653337'),
(5, 'Main- 12.14 × 15.42 ft', 'Main- 10.83 × 13.12 ft', 'Main- 12.14 × 14.11 ft', 'Upper- 9.84 × 13.78 ft', '2nd/3rd bdroom upper', 'E3655297'),
(6, 'Flat- 10.17 × 18.08 ft', 'Flat- 10.17 × 18.08 ft', 'Flat- 7.94 × 8.96 ft', 'Flat- 9.32 × 10.76 ft', 'Den Flat- 8.50 × 8.56 ft', 'E3661085'),
(7, 'Flat- 10.07 × 19.98 ft', 'Flat-10.07 × 19.98 ft', 'Flat- 8.33 × 11.52 ft', 'Flat- 9.68 × 14.01 ft', '2nd bedroom Flat- 8.66 × 13.09 ft', 'E3633628'),
(8, '-', '-', '-', '-', '-', 'E3658226'),
(9, 'Main- 11.81 × 16.73 ft', 'Main- 8.53 × 12.30 ft', 'Main- 11.65 × 11.48 ft', '2nd- 10.66 × 11.32 ft', '2nd/3rd bdroom on 2nd', 'N3644370'),
(10, 'Main level -9.84 × 20.18 ft', 'Main level- 9.84 × 20.18 ft', 'Main level- 8.04 × 8.04 ft', 'Main level- 9.51 x 12.63 ft', '', 'N3654963'),
(11, 'Main- 10.99 × 20.01 ft', '', 'Main- 12.01 × 15.09 ft', '2nd- 12.99 × 17.29 ft', '2nd/3rd/4th bdroom on 2nd', 'N3652031'),
(12, 'Main	14.76 × 18.37 ft', 'Main	14.76 × 18.37 ft', 'Main	14.76 × 18.37 ft', 'Main	9.09 × 11.38 ft', '', 'W3637747'),
(13, ' Main	11.29 × 17.22 ft', 'Main	11.29 × 17.22 ft', ' Main	8.43 × 11.48 ft', 'Main	9.78 × 11.48 ft', '2nd/3rd on main 4th on lower', 'W3656476'),
(14, 'Flat	12.17 × 12.76 ft', 'Flat	12.17 × 12.76 ft', 'Flat	6.33 × 10.01 ft', 'Master 	Flat	9.15 × 11.25 ft', 'Other 	Flat	5.58 × 12.76 ft', 'C3662544'),
(15, 'Main	10.60 × 15.49 ft', 'Main	10.60 × 15.49 ft', ' Main	7.97 × 7.97 ft', 'Main	9.28 × 9.88 ft', 'Den 	Main	8.40 × 8.07 ft', 'C3651227'),
(16, 'Flat	11.19 × 11.58 ft', 'Flat	4.49 × 7.58 ft', 'Flat	6.69 × 9.84 ft', 'Flat	9.71 × 13.78 ft', 'Den 	Flat	5.68 × 7.84 ft', 'W3662937'),
(17, 'Main	10.04 × 17.65 ft', 'Main	8.17 × 10.04 ft', 'Main	7.48 × 15.29 ft', 'Main	7.05 × 16.99 ft', '2nd bedroom 	Main	7.05 × 14.04 ft', 'W3618665'),
(18, 'Main	10.83 × 19.59 ft', 'Main	10.83 × 19.59 ft', 'Main	8.27 × 9.42 ft', 'Main	10.01 × 16.17 ft', '', ''),
(19, 'Flat	10.89 × 14.99 ft', 'Flat	10.89 × 14.99 ft', 'Flat	7.97 × 9.97 ft', 'Flat	9.88 × 10.50 ft', '', 'W3637806'),
(20, 'Flat 	11.32 × 18.70 ft', 'Flat 	8.20 × 10.17 ft', 'Flat 	7.68 × 9.51 ft', 'Flat 	12.01 × 12.20 ft', 'Two more bdrooms', 'W3658764');

-- --------------------------------------------------------

--
-- Table structure for table `property_utilities`
--

CREATE TABLE IF NOT EXISTS `property_utilities` (
  `id` int(9) NOT NULL,
  `heat` varchar(30) NOT NULL,
  `air_conditioning` varchar(30) NOT NULL,
  `heating_fuel` varchar(30) NOT NULL,
  `mls_id` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `property_utilities`
--

INSERT INTO `property_utilities` (`id`, `heat`, `air_conditioning`, `heating_fuel`, `mls_id`) VALUES
(1, 'Forced Air', 'Central Air', 'Gas', 'N3649631'),
(2, 'Forced Air', 'Central Air', 'Gas', 'N3661873'),
(3, 'Forced Air', 'Central Air', 'Gas', 'N3662235'),
(4, 'Forced Air', 'Central Air', 'Gas', 'N3653337'),
(5, 'Forced Air', 'Central Air', 'Gas', 'E3655297'),
(6, 'Forced Air', 'Central Air', 'Gas', 'E3661085'),
(7, 'Forced Air', 'Central Air', 'Gas', 'E3633628'),
(8, 'Forced Air', 'Central Air', 'Gas', 'E3658226'),
(9, 'Forced Air', 'Central Air', 'Gas', 'N3644370'),
(10, 'Forced Air', 'Central Air', 'Gas', 'N3654963'),
(11, 'Forced air', 'Central air conditioning', 'Electric', 'N3654963'),
(12, 'Forced Air', 'Central Air', 'Gas', 'N3652031'),
(13, 'Forced Air', 'Central Air', 'Gas', 'W3637747'),
(14, 'Forced Air', 'Central Air', 'Gas', 'W3656476'),
(15, 'Forced Air', 'None', 'Gas', 'W3650566'),
(16, 'Heat Pump', 'Central Air', 'Gas', 'C3662544'),
(17, 'Forced Air', 'Central Air', 'Gas', 'C3651227'),
(18, 'Forced Air', 'Central Air', 'Gas', 'W3662937'),
(19, 'Water', 'None', 'Gas', 'W3618665'),
(20, 'Forced Air', 'Central Air', 'Gas', 'W3657912'),
(21, 'Forced Air', 'Central Air', 'Gas', 'W3637806'),
(22, 'Baseboard', 'Wall Unit', 'Gas', 'W3658764');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `property`
--
ALTER TABLE `property`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_details`
--
ALTER TABLE `property_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_exterior`
--
ALTER TABLE `property_exterior`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_images`
--
ALTER TABLE `property_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_layout`
--
ALTER TABLE `property_layout`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_utilities`
--
ALTER TABLE `property_utilities`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `property`
--
ALTER TABLE `property`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `property_details`
--
ALTER TABLE `property_details`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `property_exterior`
--
ALTER TABLE `property_exterior`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `property_images`
--
ALTER TABLE `property_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=74;
--
-- AUTO_INCREMENT for table `property_layout`
--
ALTER TABLE `property_layout`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `property_utilities`
--
ALTER TABLE `property_utilities`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
