

CREATE TABLE `sms_modules` (
  `client_id` int(11) NOT NULL,
  `module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  KEY `cm_key` (`client_id`,`module`)
) ;

