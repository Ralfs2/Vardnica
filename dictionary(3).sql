-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 06, 2023 at 06:08 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dictionary`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `DisplayWords` (IN `Letter` VARCHAR(5))   begin
select Word, Description, Online_source
FROM flight_dictionary as f
WHERE f.Letter=Letter;

end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `WordCount` (IN `Letter` VARCHAR(5))   begin
select  count(f.Letter) as words
FROM dictionary as d
inner join flight_dictionary as f
WHERE d.Letter = f.Letter and f.Letter=Letter;

end$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `dictionary`
--

CREATE TABLE `dictionary` (
  `iddictionary` int(11) NOT NULL,
  `Letter` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_latvian_ci;

--
-- Dumping data for table `dictionary`
--

INSERT INTO `dictionary` (`iddictionary`, `Letter`) VALUES
(1, 'A'),
(2, 'B'),
(3, 'C'),
(4, 'D'),
(5, 'E'),
(6, 'F'),
(7, 'G'),
(8, 'H'),
(9, 'I'),
(10, 'J'),
(11, 'K'),
(12, 'L'),
(13, 'M'),
(14, 'N'),
(15, 'O'),
(16, 'P'),
(17, 'Q'),
(18, 'R'),
(19, 'S'),
(20, 'T'),
(21, 'U'),
(22, 'V'),
(23, 'W'),
(24, 'X'),
(25, 'Y'),
(26, 'Z'),
(27, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `flight_dictionary`
--

CREATE TABLE `flight_dictionary` (
  `idLetter A` int(11) NOT NULL,
  `Word` varchar(20) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Online_source` varchar(255) DEFAULT NULL,
  `Letter` varchar(5) DEFAULT NULL,
  `dictionary_iddictionary` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_latvian_ci;

--
-- Dumping data for table `flight_dictionary`
--

INSERT INTO `flight_dictionary` (`idLetter A`, `Word`, `Description`, `Online_source`, `Letter`, `dictionary_iddictionary`) VALUES
(1, 'A', 'Ampere', 'https://en.wikipedia.org/wiki/Ampere', 'A', 1),
(2, 'A', 'Alternate', 'https://www.dictionary.com/browse/alternate', 'A', 1),
(3, 'A', 'Amber', '', 'A', 1),
(4, 'A', 'Area', 'https://en.wikipedia.org/wiki/Area', 'A', 1),
(5, 'A', 'Air', '', 'A', 1),
(6, 'A.ICE', 'Anti-ice, Anti-icing', 'https://www.skybrary.aero/articles/aircraft-ice-protection-systems', 'A', 1),
(7, 'A.T.I.S', 'Airbus Technical Information System', 'https://www.skybrary.aero/articles/automatic-terminal-information-service-atis', 'A', 1),
(8, 'A/BRK ', 'Autobrake Aircraft', 'https://en.wikipedia.org/wiki/Autobrake', 'A', 1),
(9, 'A/C A/COLL', 'Anti-Collision Analog/Digital', NULL, 'A', 1),
(10, 'A/D', 'Analog to Digital Converter (conversion)', NULL, 'A', 1),
(11, 'A/DC', 'Analog-to-Digital Converter', 'https://www.techtarget.com/whatis/definition/analog-to-digital-conversion-ADC', 'A', 1),
(12, 'A/F', 'Auto Flight', 'https://en.wikipedia.org/wiki/Autopilot', 'A', 1),
(13, 'A/G', 'Air to Ground', 'https://en.wikipedia.org/wiki/Air-to-ground_weaponry', 'A', 1),
(14, 'A/L', 'Airline', 'https://en.wikipedia.org/wiki/Airline', 'A', 1),
(15, 'A/N ', 'Alphanumeric', 'https://www.merriam-webster.com/dictionary/alphanumeric', 'A', 1),
(16, 'A/N SIZE', 'Alpha Numeric Size', 'https://en.wikipedia.org/wiki/Alphanumericals', 'A', 1),
(17, 'A/R', 'Audio Reproducer', NULL, 'A', 1),
(18, 'A/S ', 'Auto Stabilization', NULL, 'A', 1),
(19, 'A/S', 'Airspeed', 'https://en.wikipedia.org/wiki/Airspeed', 'A', 1),
(20, 'A/SKID', 'Anti-Skid', 'https://en.wiktionary.org/wiki/antiskid', 'A', 1),
(21, 'A/STAB', 'Auto Stabilizer', NULL, 'A', 1),
(22, 'A/T ', 'Adjustment/Test', NULL, 'A', 1),
(23, 'A/THR A/XFMR', 'Autothrust Autotransformer', 'https://skybrary.aero/articles/autothrottle-autothrust', 'A', 1),
(24, 'AA', 'Arithmetical Average', 'https://en.wikipedia.org/wiki/Arithmetic_mean', 'A', 1),
(25, 'AA', 'Airworthiness Authorities', 'https://www.lawinsider.com/dictionary/airworthiness-authorities', 'A', 1),
(26, 'AAA', 'Airworthiness Approval Attestation', NULL, 'A', 1),
(27, 'AAAH', 'Airbus Approved Abbreviations Handbook', 'https://acronyms.thefreedictionary.com/Airbus+Approved+Abbreviation+Handbook', 'A', 1),
(28, 'AAC', 'Airline Administrative Communications Analog Air Data Computer', 'https://www.skybrary.aero/articles/air-data-computer-adc', 'A', 1),
(29, 'AADC', 'Analog Air Data Computer', 'https://www.skybrary.aero/articles/air-data-computer-adc', 'A', 1),
(30, 'AAL', 'Above Aerodrome Level', 'https://www.btb.termiumplus.gc.ca/tpv2alpha/alpha-eng.html?lang=eng&i=&index=ent&srchtxt=ABOVE%20AERODROME%20LEVEL', 'A', 1),
(31, 'AAMG', 'Airbus Application Management Group', NULL, 'A', 1),
(32, 'AAP', 'Additional Attendant Panel', NULL, 'A', 1),
(33, 'AAR', 'Air-to-Air Refueling Abbreviation', 'https://en.wikipedia.org/wiki/Aerial_refueling', 'A', 1),
(34, 'ABCD', 'Airbus Collective Data Dictionary', NULL, 'A', 1),
(35, 'ABCM', 'Alternate Brake Control Manifold', NULL, 'A', 1),
(36, 'ABCU', 'Alternate Braking Control Unit', 'https://www.uas-group.com/product/brake-control-unit-alternate/', 'A', 1),
(37, 'ABD', 'Airbus Directive and Procedure', NULL, 'A', 1),
(38, 'ABDC', 'Avionics Broadcast Data Collector', 'https://en.wikipedia.org/wiki/Automatic_Dependent_Surveillance%E2%80%93Broadcast', 'A', 1),
(39, 'ABM', 'Abeam', 'https://www.merriam-webster.com/dictionary/abeam', 'A', 1),
(40, 'ABM', 'APU Build-up Manual', 'https://www.lawinsider.com/clause/apu-build-up-manual', 'A', 1),
(41, 'ABN', 'Abnormal', 'https://www.skybrary.aero/articles/emergency-or-abnormal-situation', 'A', 1),
(42, 'ABNORM', 'Abnormal', 'https://www.skybrary.aero/articles/emergency-or-abnormal-situation', 'A', 1),
(43, 'ABRN', 'Airborne', 'https://www.merriam-webster.com/dictionary/airborne', 'A', 1),
(44, 'B', 'Blue', NULL, 'B', 2),
(45, 'B/B', 'Back-Beam', NULL, 'B', 2),
(46, 'B/C', 'Business Class', 'https://en.wikipedia.org/wiki/Business_class', 'B', 2),
(47, 'B/D', 'Bottom of Descent', NULL, 'B', 2),
(48, 'BAABI', 'Basic Approved ATA Breakdown Index', 'https://en.wikipedia.org/wiki/ATA_100', 'B', 2),
(49, 'BAF', 'Baffle', 'https://www.merriam-webster.com/dictionary/baffle', 'B', 2),
(50, 'BAF', 'BITE Access Function', NULL, 'B', 2),
(51, 'BAFO', 'Best and Final Offer', 'https://www.investopedia.com/terms/b/best-and-final-offer.asp', 'B', 2),
(52, 'BAG', 'Bandwidth Allocation Gap', 'https://www.itwissen.info/en/bandwidth-allocation-gap-BAG-127086.html#gsc.tab=0', 'B', 2),
(53, 'ABS', 'Autobrake System', 'https://en.wikipedia.org/wiki/Autobrake', 'A', 1),
(54, 'ABS VAL', 'Absolute Value', 'https://en.wikipedia.org/wiki/Absolute_value', 'A', 1),
(55, 'ABSELV', 'Alternate Brake Selector Valve', 'https://www.casa.gov.au/search-centre/airworthiness-directives/alternate-brake-selector-valve', 'A', 1),
(56, 'ABSORB', 'Absorber', NULL, 'A', 1),
(57, 'ABV', 'Above', NULL, 'A', 1),
(58, 'AC', 'Airplane Characteristics for Airport Planning', 'https://www.airbus.com/en/airport-operations-and-technical-data/aircraft-characteristics', 'A', 1),
(59, 'AC', 'Alternating Current', 'https://en.wikipedia.org/wiki/Alternating_current', 'A', 1),
(60, 'AC', 'Advisory Circular', 'https://en.wikipedia.org/wiki/Advisory_circular', 'A', 1),
(61, 'ACARS', 'Aircraft Communication Addressing and Reporting System', 'https://en.wikipedia.org/wiki/ACARS', 'A', 1),
(62, 'ACAS', 'Airborne Collision Avoidance System', 'https://www.skybrary.aero/articles/airborne-collision-avoidance-system-acas', 'A', 1),
(63, 'ACC', 'Area Control Centre', 'https://en.wikipedia.org/wiki/Area_control_center', 'A', 1),
(64, 'ACC', 'Active Clearance Control', NULL, 'A', 1),
(65, 'ACCEL', 'Acceleration/Accelerate', 'https://en.wikipedia.org/wiki/Acceleration', 'A', 1),
(66, 'ACCESS', 'Accessory', NULL, 'A', 1),
(67, 'ACCLRM', 'Accelerometer', 'https://en.wikipedia.org/wiki/Accelerometer', 'A', 1),
(68, 'ACCU', 'Accumulator', 'https://en.wikipedia.org/wiki/Accumulator', 'A', 1),
(69, 'ACCUR', 'Accuracy', NULL, 'A', 1),
(70, 'ACD', 'Airworthiness Certification Dossier', NULL, 'A', 1),
(71, 'ACD', 'Airframe Certification Document', NULL, 'A', 1),
(72, 'ACD', 'Additional Control Device', NULL, 'A', 1),
(73, 'ACDB', 'Aircraft Component Data Base', NULL, 'A', 1),
(74, 'ACE', 'Altimeter Control Equipment', NULL, 'A', 1),
(75, 'ACE', 'Airbus Concurrent Engineering', NULL, 'A', 1),
(76, 'ACFT', 'Aircraft', 'https://en.wikipedia.org/wiki/Aircraft', 'A', 1),
(77, 'ACFU', 'Aircraft Check Follow Up', 'https://en.wikipedia.org/wiki/Aircraft_maintenance_checks', 'A', 1),
(78, 'ACG', 'Aircraft Center of Gravity', 'https://en.wikipedia.org/wiki/Center_of_gravity_of_an_aircraft', 'A', 1),
(79, 'ACGS', 'Aircraft GSM Server', NULL, 'A', 1),
(80, 'ACIA', 'Asynchronous Communications Interface Adaptor', NULL, 'A', 1),
(81, 'ACJ', 'Advisory Circular-Joint', NULL, 'A', 1),
(82, 'ACK', 'Acknowledge', NULL, 'A', 1),
(83, 'ACL', 'Aircraft Configuration List', 'https://www.skybrary.aero/articles/configuration-deviation-list', 'A', 1),
(84, 'ACM', 'Aircraft Conversion Manual', NULL, 'A', 1),
(85, 'ACM', 'Abbreviated Component Maintenance Manual', NULL, 'A', 1),
(86, 'ACM', 'Aircraft Configuration Matrix', NULL, 'A', 1),
(87, 'ACM', 'Air Cycle Machine', 'https://en.wikipedia.org/wiki/Air_cycle_machine', 'A', 1),
(88, 'ACMB', 'Aircraft Configuration Management Board', NULL, 'A', 1),
(89, 'ACMM', 'Abbreviated Component Maintenance Manual', NULL, 'A', 1),
(90, 'ACMM', 'Aircraft Configuration Meta Model', NULL, 'A', 1),
(91, 'ACMP', 'Airframe Condition Monitoring Procedure', NULL, 'A', 1),
(92, 'ACMR', 'Aircraft Configuration Management Rules', NULL, 'A', 1),
(93, 'ACMS', 'Aircraft Condition Monitoring System', 'https://www.safran-group.com/products-services/aircraft-condition-monitoring-systems-acms-wireless-extension-acms-wefa', 'A', 1),
(94, 'ACMT', 'Aircraft Component Management Team', NULL, 'A', 1),
(95, 'ACN', 'Aircraft Classification Number', 'https://en.wikipedia.org/wiki/ACN-PCN_method', 'A', 1),
(96, 'ACO', 'Airworthiness Certification Office', 'https://www.faa.gov/aircraft/air_cert/airworthiness_certification', 'A', 1),
(97, 'ACOB', 'Automatic Call Out Box', NULL, 'A', 1),
(98, 'ACOC', 'Air Cooled Oil Cooler', 'https://www.apiheattransfer.com/product/air-cooled-oil-coolers/', 'A', 1),
(99, 'ACP', 'Altimeter Check Point', NULL, 'A', 1),
(100, 'ACP', 'Area Call Panel', NULL, 'A', 1),
(101, 'ACP', 'Audio Control Panel', NULL, 'A', 1),
(102, 'ACQ', 'Acquire', NULL, 'A', 1),
(103, 'ACQN', 'Acquisition', NULL, 'A', 1),
(104, 'ACR', 'Avionics Communication Router', 'https://fr.wikipedia.org/wiki/Avionics_Communications_Router', 'A', 1),
(105, 'ACRT', 'Additional Cross Reference Table', NULL, 'A', 1),
(106, 'ACS', 'Access', NULL, 'A', 1),
(107, 'ACS', 'Alternating Current Supply', NULL, 'A', 1),
(108, 'ACSC', 'Air Conditioning System Controller', 'https://www.airconditioning-systems.com/air-conditioner-controllers.html', 'A', 1),
(109, 'ACT', 'Additional Center Tank', NULL, 'A', 1),
(110, 'ACT', 'Active', NULL, 'A', 1),
(111, 'ACT', 'Activity', NULL, 'A', 1),
(112, 'ACTD', 'Actuated', NULL, 'A', 1),
(113, 'ACTG', 'Actuating', NULL, 'A', 1),
(114, 'ACTIV', 'Active', NULL, 'A', 1),
(115, 'ACTN', 'Action', NULL, 'A', 1),
(116, 'ACTR', 'Actuator', 'https://en.wikipedia.org/wiki/Actuator', 'A', 1),
(117, 'ACTVN', 'Activation', NULL, 'A', 1),
(118, 'ACTVT', 'Activate', NULL, 'A', 1),
(119, 'ACU', 'Antenna Coupler Unit', 'https://en.wikipedia.org/wiki/Antenna_tuner', 'A', 1),
(120, 'ACU', 'Air Cooling Unit', NULL, 'A', 1),
(121, 'ACVR', 'Alternating Current Voltage Ratio', NULL, 'A', 1),
(122, 'AD', 'Aerodrome', 'https://en.wikipedia.org/wiki/Aerodrome', 'A', 1),
(123, 'AD', 'Airplane Datum', NULL, 'A', 1),
(124, 'AD', 'Airworthiness Directive', 'https://en.wikipedia.org/wiki/Airworthiness_Directive', 'A', 1),
(125, 'A-D', 'Airbus Deutschland', NULL, 'A', 1),
(126, 'ADAM', 'Airbus Spares Distribution and Materials System', NULL, 'A', 1),
(127, 'ADAU', 'Auxiliary Data Acquisition Unit', NULL, 'A', 1),
(128, 'ADB', 'Area Distribution Box', NULL, 'A', 1),
(129, 'ADB', 'Airport DataBase', NULL, 'A', 1),
(130, 'ADB', 'Aeronautical DataBase', NULL, 'A', 1),
(131, 'ADC', 'Air Data Computer', 'https://en.wikipedia.org/wiki/Air_data_computer', 'A', 1),
(132, 'ADC', 'Airbus Delivery Centre', NULL, 'A', 1),
(133, 'ADCL', 'Airworthiness Directives Compliance List', NULL, 'A', 1),
(134, 'ADCN', 'Avionics Data Communication Network', NULL, 'A', 1),
(135, 'ADCOMS', 'Advanced Configuration Management System', NULL, 'A', 1),
(136, 'ADCSIP', 'Acceptance and Delivery Customer Satisfaction Improvement Programme', NULL, 'A', 1),
(137, 'ADD', 'Addition, Additional', NULL, 'A', 1),
(138, 'ADD', 'Aircraft Description Data Base', NULL, 'A', 1),
(139, 'ADD', 'Aircraft Design Declaration', NULL, 'A', 1),
(140, 'ADD BY', 'Added By', NULL, 'A', 1),
(141, 'ADF', 'Automatic Direction Finder', 'https://en.wikipedia.org/wiki/Automatic_direction_finder', 'A', 1),
(142, 'ADG', 'Air Driven Generator', 'https://en.wikipedia.org/wiki/Ram_air_turbine', 'A', 1),
(143, 'ADI', 'Attitude Director Indicator', 'https://en.wikipedia.org/wiki/Attitude_indicator', 'A', 1),
(144, 'ADIRS', 'Air Data/Inertial Reference System', 'https://en.wikipedia.org/wiki/Air_data_inertial_reference_unit', 'A', 1),
(145, 'ADIRU', 'Air Data/Inertial Reference Unit', 'https://en.wikipedia.org/wiki/Air_data_inertial_reference_unit', 'A', 1),
(146, 'ADJ', 'Adjust', NULL, 'A', 1),
(147, 'ADJMT', 'Adjustment', NULL, 'A', 1),
(148, 'ADL', 'Airborne Data Loader', NULL, 'A', 1),
(149, 'ADL', 'Aircraft Data Loader', NULL, 'A', 1),
(150, 'ADM', 'Air Data Module', 'https://en.wikipedia.org/wiki/Air_data_module', 'A', 1),
(151, 'ADMZ', 'Aircraft DeMilitarized Zone', NULL, 'A', 1),
(152, 'ADO', 'Airbus Documentation Office', NULL, 'A', 1),
(153, 'ADOPT', 'Airbus Design and Operational Philosophy in Training', NULL, 'A', 1),
(154, 'ADPM', 'Aircraft Deactivation Procedures Manual', NULL, 'A', 1),
(155, 'ADPTN', 'Adaptation', NULL, 'A', 1),
(156, 'ADPTR', 'Adapter', 'https://en.wikipedia.org/wiki/Adapter', 'A', 1),
(157, 'ADR', 'Advisory Route', NULL, 'A', 1),
(158, 'ADR', 'Air Data Reference', NULL, 'A', 1),
(159, 'ADRES', 'Aircraft Documentation Retrieval System', NULL, 'A', 1),
(160, 'ADRS', 'Address', NULL, 'A', 1),
(161, 'ADS', 'Automatic Dependent Surveillance', 'https://www.skybrary.aero/articles/automatic-dependent-surveillance-ads', 'A', 1),
(162, 'ADS', 'Air Data System', 'https://aerospace.honeywell.com/us/en/products-and-services/product/hardware-and-systems/sensors/air-data-systems', 'A', 1),
(163, 'ADU', 'Align Display Unit', NULL, 'A', 1),
(164, 'ADU', 'Area Distribution Unit', NULL, 'A', 1),
(165, 'ADV', 'Advisory', NULL, 'A', 1),
(166, 'A-E', 'Airbus Espana', NULL, 'A', 1),
(167, 'AEB', 'Airline Engineering Bulletin', NULL, 'A', 1),
(168, 'AECMA', 'The European Association of Aerospace Industries', NULL, 'A', 1),
(169, 'AEDS', 'Axle Equipment Drive Shaft', NULL, 'A', 1),
(170, 'AEEC', 'Airlines Electronic Engineering Committee', NULL, 'A', 1),
(171, 'AERO', 'Aviation Routine Weather Report', NULL, 'A', 1),
(172, 'AES', 'Aircraft Earth Station', 'https://en.wikipedia.org/wiki/Aircraft_earth_station', 'A', 1),
(173, 'AESS', 'Aircraft Environment Surveillance System', 'https://aerospace.honeywell.com/us/en/products-and-services/product/hardware-and-systems/terrain-and-traffic-awareness/aircraft-environmental-surveillance-system', 'A', 1),
(174, 'AESU', 'Aircraft Environment Surveillance Unit', NULL, 'A', 1),
(175, 'AEVC', 'Avionics Equipment Ventilation Computer', NULL, 'A', 1),
(176, 'AEX', 'Access Authorized', NULL, 'A', 1),
(177, 'AF', 'DME Arc to Fixed Waypoint', NULL, 'A', 1),
(178, 'AF', 'All Freighter', NULL, 'A', 1),
(179, 'AF', 'Audio Frequency', 'https://en.wikipedia.org/wiki/Audio_frequency', 'A', 1),
(180, 'AF', 'Acceptance Flight', NULL, 'A', 1),
(181, 'A-F', 'Airbus France', NULL, 'A', 1),
(182, 'AFB', 'Antifriction Bearing', 'https://encyclopedia2.thefreedictionary.com/antifriction+bearing', 'A', 1),
(183, 'AFC', 'Automatic Frequency Control', 'https://en.wikipedia.org/wiki/Automatic_frequency_control', 'A', 1),
(184, 'AFCS', 'Automatic Flight Control System', 'https://www.aircraftsystemstech.com/p/automatic-flight-control-system-afcs.html', 'A', 1),
(185, 'AFDX', 'Avionics Full Duplex Switched Ethernet', 'https://en.wikipedia.org/wiki/Avionics_Full-Duplex_Switched_Ethernet', 'A', 1),
(186, 'AFECU', 'Automatic Fire Extinguishing Control Unit', NULL, 'A', 1),
(187, 'AFFECTD', 'Affected', NULL, 'A', 1),
(188, 'AFFIRM', 'Affirmative', NULL, 'A', 1),
(189, 'AFIS', 'Airline In Flight Information System', NULL, 'A', 1),
(190, 'AFL', 'Auto Flush', NULL, 'A', 1),
(191, 'AFM', 'Aircraft Flight Manual', NULL, 'A', 1),
(192, 'AFMC', 'Auxiliary Fuel Management Computer', 'https://www.abbreviationfinder.org/acronyms/afmc_auxiliary-fuel-management-computer.html', 'A', 1),
(193, 'AFMR', 'Airframer', 'https://en.wikipedia.org/wiki/Airframer', 'A', 1),
(194, 'AFN', 'ATS Facilities Notification', NULL, 'A', 1),
(195, 'AFR', 'Airframe', 'https://en.wikipedia.org/wiki/Airframe', 'A', 1),
(196, 'AFS', 'Automatic Flight System', 'https://skybrary.aero/automatic-flight', 'A', 1),
(197, 'AFTN', 'Aeronautical Fixed Telecommunication Network', 'https://www.skybrary.aero/articles/aeronautical-fixed-telecommunication-network-aftn', 'A', 1),
(198, 'AFTR', 'After', NULL, 'A', 1),
(199, 'AFU', 'Artificial Feel Unit', 'https://www.collinsdictionary.com/dictionary/english/artificial-feel', 'A', 1),
(200, 'AGB', 'Accessory Gearbox', 'https://en.wikipedia.org/wiki/Accessory_drive', 'A', 1),
(201, 'AGB', 'Angle Gearbox', NULL, 'A', 1),
(202, 'AGC', 'Automatic Gain Control', 'https://en.wikipedia.org/wiki/Automatic_gain_control', 'A', 1),
(203, 'AGC', 'APU Generator Contactor', 'https://en.wikipedia.org/wiki/Contactor', 'A', 1),
(204, 'AGE', 'Aircraft Ground Equipment', NULL, 'A', 1),
(205, 'AGG', 'Airbus General Guide', NULL, 'A', 1),
(206, 'AGL', 'Above Ground Level', 'https://en.wikipedia.org/wiki/Height_above_ground_level', 'A', 1),
(207, 'AGMT', 'Augment', NULL, 'A', 1),
(208, 'AGP', 'Alternate Gauging Processor', NULL, 'A', 1),
(209, 'AGS', 'Air Generation System', NULL, 'A', 1),
(210, 'AGU', 'Air Generation Unit', NULL, 'A', 1),
(211, 'AGW', 'Actual Gross Weight', 'https://www.saloodo.com/logistics-dictionary/gross-weight/', 'A', 1),
(212, 'AH', 'Ampere Hour', 'https://en.wikipedia.org/wiki/Ampere-hour', 'A', 1),
(213, 'AHP', 'Anti-Hijacking Panel', NULL, 'A', 1),
(214, 'AHRS', 'Attitude and Heading Reference System', 'https://en.wikipedia.org/wiki/Attitude_and_heading_reference_system', 'A', 1),
(215, 'AHRU', 'Attitude and Heading Reference Unit', NULL, 'A', 1),
(216, 'AI', 'Anti-Icing', 'https://en.wikipedia.org/wiki/Deicing', 'A', 1),
(217, 'AIB', 'Airbus Industrie', NULL, 'A', 1),
(218, 'AIBU', 'Advanced Illumination Ballast Unit', NULL, 'A', 1),
(219, 'AIC', 'Access Illustration Cards', 'https://en.wikipedia.org/wiki/Access_badge', 'A', 1),
(220, 'AIC', 'Airbus Integrated Company', NULL, 'A', 1),
(221, 'AICC', 'Aviation Industry CBT Committee', NULL, 'A', 1),
(222, 'AICU', 'Anti Ice Control Unit', 'https://www.skybrary.aero/articles/aircraft-ice-protection-systems', 'A', 1),
(223, 'AID', 'Aircraft Installation Delay', NULL, 'A', 1),
(224, 'AIDA', 'Airbus Industrie Drawing Access', NULL, 'A', 1),
(225, 'AIDA', 'Attestation Integrated Delta Aggregation', 'https://documentation.sailpoint.com/identityiq/help/appmgmt/deltaaggregation.html', 'A', 1),
(226, 'AIDS', 'Aircraft Integrated Data System', 'https://en.wikipedia.org/wiki/AIDS_(aeronautics)', 'A', 1),
(227, 'AIG', 'Accident Investigation', NULL, 'A', 1),
(228, 'AIL', 'Aileron', 'https://en.wikipedia.org/wiki/Aileron', 'A', 1),
(229, 'AIM', 'Aircraft Integrated Maintenance', NULL, 'A', 1),
(230, 'AIM/CRM', 'Airbus Integrated Management/Cockpit Resource Management', 'https://skybrary.aero/articles/crew-resource-management-crm', 'A', 1),
(231, 'AIM-FANS', 'Airbus Interoperable Modular-Future Air Navigation Sys', NULL, 'A', 1),
(232, 'AIMI', 'Avionics Information Management Interface', NULL, 'A', 1),
(233, 'AIMS', 'Airbus Industrie Material Specification', NULL, 'A', 1),
(234, 'AIMS', 'Airbus Inventory Management System', NULL, 'A', 1),
(235, 'AIMS', 'Airbus Improvement Management System', NULL, 'A', 1),
(236, 'AINA', 'Airbus North America', NULL, 'A', 1),
(237, 'AINS', 'Aircraft Information Network System', NULL, 'A', 1),
(238, 'AIP', 'Attendant Indication Panel', '', 'A', 1),
(239, 'AIP', 'Aeronautical Information Publication', NULL, 'A', 1),
(240, 'AIPS', 'Airbus Process Specification', NULL, 'A', 1),
(241, 'AIQI', 'Airbus Industrie Quality Instruction', NULL, 'A', 1),
(242, 'AIR', 'Aircraft Inspection Report', NULL, 'A', 1),
(243, 'AIRCOND', 'Air Conditioning', 'https://en.wikipedia.org/wiki/Air_conditioning', 'A', 1),
(244, 'AIRMAN', 'Aircraft Maintenance Analysis', NULL, 'A', 1),
(245, 'AIS', 'Audio Integrated System', NULL, 'A', 1),
(246, 'AIS', 'Aeronautical Information Service', 'https://en.wikipedia.org/wiki/Aeronautical_Information_Service', 'A', 1),
(247, 'AISI', 'American Iron and Steel Institute', NULL, 'A', 1),
(248, 'AITM', 'Airbus Test Method', NULL, 'A', 1),
(249, 'AL', 'Airline', 'https://en.wikipedia.org/wiki/Airline', 'A', 1),
(250, 'ALERFA', 'Alert Phase', NULL, 'A', 1),
(251, 'ALF', 'Aft Looking Forward', NULL, 'A', 1),
(252, 'ALHP', 'Airframe Life-History Program', NULL, 'A', 1),
(253, 'ALIGN', 'Alignment', 'https://en.wikipedia.org/wiki/Alignment', 'A', 1),
(254, 'ALIGND', 'Aligned', 'https://en.wiktionary.org/wiki/aligned', 'A', 1),
(255, 'ALLWD', 'Allowed', NULL, 'A', 1),
(256, 'ALNA', 'Airline Network Architecture', NULL, 'A', 1),
(257, 'ALPHA', 'Angle-of-Attack', 'https://en.wikipedia.org/wiki/Angle_of_attack', 'A', 1),
(258, 'ALPHANUM', 'Alphanumerical', 'https://en.wikipedia.org/wiki/Alphanumericals', 'A', 1),
(259, 'ALS', 'Approach Light System', 'https://en.wikipedia.org/wiki/Approach_lighting_system', 'A', 1),
(260, 'ALSCU', 'Auxiliary Level Sensing Control Unit', NULL, 'A', 1),
(261, 'ALT', 'Altitude', 'https://en.wikipedia.org/wiki/Altitude', 'A', 1),
(262, 'ALT ACQ', 'Altitude Acquire', 'https://en.wikipedia.org/wiki/Altitude', 'A', 1),
(263, 'ALT TO', 'Alternate To', NULL, 'A', 1),
(264, 'ALTM', 'Altimeter', 'https://en.wikipedia.org/wiki/Altimeter', 'A', 1),
(265, 'ALTN', 'Alternate, Alternative', NULL, 'A', 1),
(266, 'ALTU', 'Annunciator Light Test Unit', NULL, 'A', 1),
(267, 'ALU', 'Arithmetic and Logic Unit', 'https://www.techtarget.com/whatis/definition/arithmetic-logic-unit-ALU', 'A', 1),
(268, 'AM', 'Amplitude Modulation', 'https://en.wikipedia.org/wiki/Amplitude_modulation', 'A', 1),
(269, 'AM', 'Airbus Means and Methods Document', NULL, 'A', 1),
(270, 'AMB', 'Ambient', 'https://en.wiktionary.org/wiki/ambient', 'A', 1),
(271, 'AMC', 'Acceptable Means of Compliance', 'https://www.easa.europa.eu/en/document-library/acceptable-means-compliance-amcs-and-alternative-means-compliance-altmocs', 'A', 1),
(272, 'AMDB', 'Airport Mapping DataBase', 'https://www.skybrary.aero/articles/airport-mapping-database-amdb', 'A', 1),
(273, 'AMI', 'Airline Modifiable Information', NULL, 'A', 1),
(274, 'AMJ', 'Advisory Material-Joint', NULL, 'A', 1),
(275, 'AMM', 'Aircraft Maintenance Manual', 'https://www.skybrary.aero/articles/aircraft-maintenance-manual-amm', 'A', 1),
(276, 'AMM', 'Ammeter', 'https://en.wikipedia.org/wiki/Ammeter', 'A', 1),
(277, 'AMP', 'Ampere', 'https://en.wikipedia.org/wiki/Ampere', 'A', 1),
(278, 'AMP', 'Amperage', 'https://www.safeopedia.com/definition/7639/amperage', 'A', 1),
(279, 'AMPL', 'Amplifier', 'https://en.wikipedia.org/wiki/Amplifier', 'A', 1),
(280, 'AMS', 'Aircraft Modification Status', NULL, 'A', 1),
(281, 'AMS', 'Aerospace Material Specification', NULL, 'A', 1),
(282, 'AMS', 'Aeronautical Material Specifications', NULL, 'A', 1),
(283, 'AMS', 'Air-ground Message Server', NULL, 'A', 1),
(284, 'AMTOSS', 'Aircraft Maintenance Task Oriented Support System', NULL, 'A', 1),
(285, 'AMU', 'Audio Management Unit', NULL, 'A', 1),
(286, 'AN', 'Air Navigation', 'https://en.wikipedia.org/wiki/Air_navigation', 'A', 1),
(287, 'ANCE', 'Announce', 'https://en.wiktionary.org/wiki/announce', 'A', 1),
(288, 'AND', 'Aircraft Nose Down', NULL, 'A', 1),
(289, 'ANI', 'Analog Input', NULL, 'A', 1),
(290, 'ANLG', 'Analogic', NULL, 'A', 1),
(291, 'ANN', 'Annunciator', 'https://en.wikipedia.org/wiki/Annunciator_panel', 'A', 1),
(292, 'ANN LT', 'Annunciator Light', 'https://en.wikipedia.org/wiki/Annunciator_panel', 'A', 1),
(293, 'ANNCE', 'Announce', NULL, 'A', 1),
(294, 'ANNCMT', 'Announcement', NULL, 'A', 1),
(295, 'ANO', 'Analog Output', 'https://en.wikipedia.org/wiki/Analog_signal', 'A', 1),
(296, 'ANPT', 'Aeronautical National Taper Pipe Threads', 'https://www.detroitnippleworks.com/aeronautical-national-pipe-taper-anpt/', 'A', 1),
(297, 'ANSA', 'At Nearest Suitable Airport', NULL, 'A', 1),
(298, 'ANSI', 'American National Standards Institute', NULL, 'A', 1),
(299, 'ANSU', 'Aircraft Network Server Unit', NULL, 'A', 1),
(300, 'ANT', 'Antenna', 'https://en.wikipedia.org/wiki/Antenna', 'A', 1),
(301, 'ANU', 'Aircraft Nose Up', 'https://en.wikipedia.org/wiki/Pitch-up', 'A', 1),
(302, 'AO', 'Access Opening', NULL, 'A', 1),
(303, 'AOA', 'Angle Of Attack', 'https://en.wikipedia.org/wiki/Angle_of_attack', 'A', 1),
(304, 'AOAS', 'Angle of Attack Sensor', NULL, 'A', 1),
(305, 'AOC', 'Airline Operational Control', NULL, 'A', 1),
(306, 'AOC', 'Air Operator\'s Certificate', 'https://en.wikipedia.org/wiki/Air_operator%27s_certificate', 'A', 1),
(307, 'AOD', 'Audio on Demand', 'https://www.muvi.com/wiki/audio-on-demand.html', 'A', 1),
(308, 'AOG', 'Aircraft On Ground', 'https://en.wikipedia.org/wiki/Aircraft_on_ground', 'A', 1),
(309, 'AOHX', 'Air/Oil Heat Exchanger', 'https://en.wikipedia.org/wiki/Heat_exchanger', 'A', 1),
(310, 'AOLS', 'Airbus On-Line Services', NULL, 'A', 1),
(311, 'AOM', 'Aircraft Operating Manual', NULL, 'A', 1),
(312, 'AOMT', 'Airbus Onboard Maintenance Tool', NULL, 'A', 1),
(313, 'AOP', 'Airbus Operational Plan', NULL, 'A', 1),
(314, 'AOT', 'All Operator Telex', 'https://www.abbreviationfinder.org/acronyms/aot_all-operators-telex.html', 'A', 1),
(315, 'AP', 'Airbus Procedure', NULL, 'A', 1),
(316, 'AP', 'Autopilot', 'https://en.wikipedia.org/wiki/Autopilot', 'A', 1),
(317, 'AP', 'Airborne Printer', NULL, 'A', 1),
(318, 'AP/FD', 'Autopilot/Flight Director', 'https://airplaneacademy.com/whats-the-difference-between-an-autopilot-and-a-flight-director/', 'A', 1),
(319, 'APASHE', 'Aircraft Publication Automated Shipping Expedite', NULL, 'A', 1),
(320, 'APC', 'Area Positive Control', NULL, 'A', 1),
(321, 'API', 'Application Programming Interface', 'https://en.wikipedia.org/wiki/API', 'A', 1),
(322, 'APLC', 'Aircraft Power Line Conditioner', NULL, 'A', 1),
(323, 'APM', 'ARINC Processing Module', NULL, 'A', 1),
(324, 'APM', 'Airport Planning Manual', NULL, 'A', 1),
(325, 'APM', 'Aircraft Performance Monitoring Program', NULL, 'A', 1),
(326, 'APP', 'Approach Control-Approach Control Office', NULL, 'A', 1),
(327, 'APP', 'Appearance', 'https://en.wiktionary.org/wiki/appearance', 'A', 1),
(328, 'APPL', 'Application', 'https://en.wikipedia.org/wiki/Application', 'A', 1),
(329, 'APPR', 'Approach', 'https://en.wikipedia.org/wiki/Approach', 'A', 1),
(330, 'APPROX', 'Approximately', 'https://en.wiktionary.org/wiki/approximately', 'A', 1),
(331, 'APPU', 'Asymmetry Position Pick Off Unit', NULL, 'A', 1),
(332, 'APQ', 'Airline Pre-Qualification', NULL, 'A', 1),
(333, 'APS', 'Aircraft Prepared for Service', NULL, 'A', 1),
(334, 'APS', 'Auxiliary Power Supply', 'https://en.wikipedia.org/wiki/Auxiliary_power', 'A', 1),
(335, 'APS', 'Avionic Printing Specification', NULL, 'A', 1),
(336, 'APS', 'Absolute Pressure Sensor', 'https://www.avnet.com/wps/portal/abacus/solutions/technologies/sensors/pressure-sensors/measurement-types/absolute/', 'A', 1),
(337, 'APU', 'Auxiliary Power Unit', 'https://en.wikipedia.org/wiki/Auxiliary_power_unit', 'A', 1),
(338, 'APU AFE', 'APU Automatic Fire Extinguishing Control Unit', 'https://www.aircraftsystemstech.com/p/apu-fire-detection-and-extinguishing.html', 'A', 1),
(339, 'AQP', 'Advanced Qualification Program', 'https://www.faa.gov/training_testing/training/aqp', 'A', 1),
(340, 'AR', 'As Required', NULL, 'A', 1),
(341, 'AR', 'Audio Reproducer', NULL, 'A', 1),
(342, 'ARC', 'Air Refueling Computer', NULL, 'A', 1),
(343, 'ARG', 'Arresting Gear or Hook', 'https://en.wikipedia.org/wiki/Arresting_gear', 'A', 1),
(344, 'ARINC', 'Aeronautical Radio Incorporated', 'https://en.wikipedia.org/wiki/ARINC', 'A', 1),
(345, 'ARM', 'Airworthiness Review Meeting', NULL, 'A', 1),
(346, 'ARM', 'Aircraft Recovery Manual', NULL, 'A', 1),
(347, 'ARMD', 'Armed', NULL, 'A', 1),
(348, 'ARMG', 'Arming', NULL, 'A', 1),
(349, 'ARMT', 'Armament', 'https://www.merriam-webster.com/dictionary/armament', 'A', 1),
(350, 'ARN', 'Aircraft Registration Number', 'https://en.wikipedia.org/wiki/Aircraft_registration', 'A', 1),
(351, 'ARND', 'Around', NULL, 'A', 1),
(352, 'ARO', 'After Receipt Order', NULL, 'A', 1),
(353, 'ARP', 'Aerospace Recommended Practice', 'https://visuresolutions.com/blog/aerospace-and-defense/arp-compliance/', 'A', 1),
(354, 'ARP', 'Aerodrome Reference Point - Airport Reference Point', 'https://en.wikipedia.org/wiki/Airport_reference_point', 'A', 1),
(355, 'ARPT', 'Airport', 'https://en.wikipedia.org/wiki/Airport', 'A', 1),
(356, 'ARR', 'Arrival, Arriving', 'https://www.vocabulary.com/dictionary/arrival', 'A', 1),
(357, 'ARS', 'Airworthiness Review Sheet', NULL, 'A', 1),
(358, 'ART', 'Active Repair Time', NULL, 'A', 1),
(359, 'ARTCC', 'Air Route Traffic Control Centre', NULL, 'A', 1),
(360, 'ARTCLD', 'Articulated', NULL, 'A', 1),
(361, 'ARTF', 'Artificial', NULL, 'A', 1),
(362, 'ARU', 'Audio Reproducer Unit', NULL, 'A', 1),
(363, 'ARU', 'Aircraft Router Unit', NULL, 'A', 1),
(364, 'ARV', 'Alternate Refill Valve', NULL, 'A', 1),
(365, 'AS', 'Airspeed', 'https://en.wikipedia.org/wiki/Airspeed', 'A', 1),
(366, 'AS', 'Airscoop', NULL, 'A', 1),
(367, 'ASA', 'All Speed Aileron', NULL, 'A', 1),
(368, 'ASA', 'Audio and Sign Adapter', NULL, 'A', 1),
(369, 'ASAP', 'As soon as possible', NULL, 'A', 1),
(370, 'ASCII', 'American Standard Code for Information Interchange', 'https://www.gartner.com/en/information-technology/glossary/ascii-american-standard-code-for-information-interchange', 'A', 1),
(371, 'ASCO', 'Airbus Service Company Inc.', NULL, 'A', 1),
(372, 'ASD', 'Accelerate Stop Distance', NULL, 'A', 1),
(373, 'ASDC', 'Airline Service Data Collection', NULL, 'A', 1),
(374, 'ASE', 'Airborne Support Equipment', 'https://www.lawinsider.com/dictionary/airborne-support-equipment', 'A', 1),
(375, 'ASE', 'Airbus Supplied Equipment', NULL, 'A', 1),
(376, 'ASF', 'Amperes per Square Foot', NULL, 'A', 1),
(377, 'ASG', 'Airbus Security Group', NULL, 'A', 1),
(378, 'ASI', 'Airspeed Indicator', 'https://en.wikipedia.org/wiki/Airspeed_indicator', 'A', 1),
(379, 'ASIC', 'Application Specific Integrated Circuits', 'https://en.wikipedia.org/wiki/Application-specific_integrated_circuit', 'A', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dictionary`
--
ALTER TABLE `dictionary`
  ADD PRIMARY KEY (`iddictionary`);

--
-- Indexes for table `flight_dictionary`
--
ALTER TABLE `flight_dictionary`
  ADD PRIMARY KEY (`idLetter A`),
  ADD KEY `dictionary_iddictionary` (`dictionary_iddictionary`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dictionary`
--
ALTER TABLE `dictionary`
  MODIFY `iddictionary` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `flight_dictionary`
--
ALTER TABLE `flight_dictionary`
  MODIFY `idLetter A` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=380;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `flight_dictionary`
--
ALTER TABLE `flight_dictionary`
  ADD CONSTRAINT `flight_dictionary_ibfk_1` FOREIGN KEY (`dictionary_iddictionary`) REFERENCES `dictionary` (`iddictionary`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
