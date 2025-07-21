CREATE DATABASE  IF NOT EXISTS `bus_inventory`;
USE `bus_inventory`;

--
-- Table structure for table `buses`
--

DROP TABLE IF EXISTS `buses`;

CREATE TABLE `buses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `route_no` varchar(10) NOT NULL,
  `bus_no` varchar(10) NOT NULL,
  `source` varchar(50) NOT NULL,
  `destination` varchar(50) NOT NULL,
  `available_seat` int NOT NULL,
  `price` DECIMAL(10,2) NOT NULL,
  `timing` DATETIME NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY unique_bus_time(bus_no,timing)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

--
-- Data for table `employee`
--

INSERT INTO buses (route_no, bus_no, source, destination, available_seat, price, timing) VALUES
('R100', 'BUS001', 'Pune', 'Mumbai', 30, 450.00, '2025-07-21 08:00:00'),
('R100', 'BUS001', 'Pune', 'Mumbai', 28, 450.00, '2025-07-21 18:00:00'),
('R100', 'BUS002', 'Pune', 'Mumbai', 35, 470.00, '2025-07-21 10:00:00'),
('R100', 'BUS003', 'Pune', 'Mumbai', 20, 460.00, '2025-07-21 20:00:00'),
('R101', 'BUS004', 'Nagpur', 'Pune', 40, 800.00, '2025-07-21 06:00:00'),
('R101', 'BUS005', 'Nagpur', 'Pune', 35, 820.00, '2025-07-21 16:00:00'),
('R102', 'BUS006', 'Delhi', 'Jaipur', 30, 600.00, '2025-07-21 09:00:00'),
('R102', 'BUS006', 'Delhi', 'Jaipur', 25, 600.00, '2025-07-21 21:00:00'),
('R102', 'BUS007', 'Delhi', 'Jaipur', 15, 620.00, '2025-07-21 15:00:00'),
('R103', 'BUS008', 'Bangalore', 'Chennai', 40, 900.00, '2025-07-21 07:00:00'),
('R103', 'BUS008', 'Bangalore', 'Chennai', 35, 900.00, '2025-07-21 18:00:00'),
('R103', 'BUS009', 'Bangalore', 'Chennai', 32, 880.00, '2025-07-21 12:00:00'),
('R104', 'BUS010', 'Hyderabad', 'Vijayawada', 38, 500.00, '2025-07-21 08:30:00'),
('R104', 'BUS011', 'Hyderabad', 'Vijayawada', 36, 510.00, '2025-07-21 14:30:00'),
('R105', 'BUS012', 'Chennai', 'Madurai', 33, 670.00, '2025-07-21 06:00:00'),
('R105', 'BUS013', 'Chennai', 'Madurai', 27, 660.00, '2025-07-21 17:00:00'),
('R106', 'BUS014', 'Mumbai', 'Nashik', 40, 550.00, '2025-07-21 09:00:00'),
('R106', 'BUS015', 'Mumbai', 'Nashik', 38, 560.00, '2025-07-21 19:00:00'),
('R107', 'BUS016', 'Indore', 'Bhopal', 30, 400.00, '2025-07-21 06:45:00'),
('R107', 'BUS017', 'Indore', 'Bhopal', 28, 410.00, '2025-07-21 13:15:00'),
('R108', 'BUS018', 'Kolkata', 'Durgapur', 25, 350.00, '2025-07-21 07:30:00'),
('R108', 'BUS019', 'Kolkata', 'Durgapur', 23, 340.00, '2025-07-21 16:30:00'),
('R109', 'BUS020', 'Ahmedabad', 'Surat', 34, 430.00, '2025-07-21 08:15:00'),
('R109', 'BUS020', 'Ahmedabad', 'Surat', 30, 430.00, '2025-07-21 17:15:00'),
('R109', 'BUS021', 'Ahmedabad', 'Surat', 28, 440.00, '2025-07-21 13:45:00'),
('R110', 'BUS022', 'Lucknow', 'Kanpur', 40, 220.00, '2025-07-21 09:30:00'),
('R110', 'BUS023', 'Lucknow', 'Kanpur', 38, 230.00, '2025-07-21 20:30:00'),
('R111', 'BUS024', 'Pune', 'Goa', 32, 900.00, '2025-07-21 05:30:00'),
('R111', 'BUS025', 'Pune', 'Goa', 29, 910.00, '2025-07-21 18:30:00'),
('R112', 'BUS026', 'Delhi', 'Agra', 37, 350.00, '2025-07-21 06:00:00'),
('R112', 'BUS027', 'Delhi', 'Agra', 35, 340.00, '2025-07-21 14:00:00'),
('R113', 'BUS028', 'Mumbai', 'Pune', 30, 480.00, '2025-07-21 08:00:00'),
('R113', 'BUS028', 'Mumbai', 'Pune', 28, 480.00, '2025-07-21 18:00:00'),
('R114', 'BUS029', 'Chandigarh', 'Delhi', 35, 600.00, '2025-07-21 10:00:00'),
('R114', 'BUS030', 'Chandigarh', 'Delhi', 33, 590.00, '2025-07-21 15:00:00'),
('R115', 'BUS031', 'Patna', 'Gaya', 30, 300.00, '2025-07-21 07:00:00'),
('R115', 'BUS032', 'Patna', 'Gaya', 28, 310.00, '2025-07-21 17:00:00'),
('R116', 'BUS033', 'Surat', 'Vadodara', 29, 270.00, '2025-07-21 08:30:00'),
('R116', 'BUS034', 'Surat', 'Vadodara', 27, 275.00, '2025-07-21 19:30:00'),
('R117', 'BUS035', 'Bhopal', 'Nagpur', 32, 620.00, '2025-07-21 09:30:00'),
('R117', 'BUS036', 'Bhopal', 'Nagpur', 30, 610.00, '2025-07-21 21:30:00'),
('R118', 'BUS037', 'Kanpur', 'Varanasi', 34, 560.00, '2025-07-21 06:15:00'),
('R118', 'BUS038', 'Kanpur', 'Varanasi', 32, 570.00, '2025-07-21 17:15:00'),
('R119', 'BUS039', 'Jaipur', 'Udaipur', 36, 750.00, '2025-07-21 07:30:00'),
('R119', 'BUS040', 'Jaipur', 'Udaipur', 35, 760.00, '2025-07-21 18:30:00'),
('R120', 'BUS041', 'Goa', 'Pune', 25, 920.00, '2025-07-21 05:00:00'),
('R120', 'BUS042', 'Goa', 'Pune', 27, 930.00, '2025-07-21 17:00:00');
