

CREATE TABLE `cancelled_bills` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `org_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `loyalty_id` bigint(20) NOT NULL,
  `bill_number` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entered_by` int(11) NOT NULL,
  `entered_time` datetime NOT NULL,
  PRIMARY KEY (`id`,`org_id`),
  UNIQUE KEY `loyalty_id` (`loyalty_id`,`bill_number`),
  KEY `entered_time` (`entered_time`,`org_id`),
  KEY `org_user_idx` (`org_id`,`user_id`)
) ;

