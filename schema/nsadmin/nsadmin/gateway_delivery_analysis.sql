

CREATE TABLE `gateway_delivery_analysis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gateway` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_date` date NOT NULL,
  `total_count` int(11) NOT NULL,
  `delivery_report_recieved` int(11) NOT NULL,
  `five_sec_delivery` int(11) NOT NULL,
  `ten_sec_delivery` int(11) NOT NULL,
  `thirty_sec_delivery` int(11) NOT NULL,
  `sixty_sec_delivery` int(11) NOT NULL,
  `sixtysecplus_delivery` int(11) NOT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk` (`delivery_date`,`gateway`)
) 

