

CREATE TABLE `org_credit_rates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `credit_channel_details_id` int(11) NOT NULL,
  `credit_rate` double NOT NULL,
  `effective_date` datetime NOT NULL,
  `expiry_date` datetime DEFAULT NULL,
  `comments` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_date` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`org_id`),
  KEY `date_org_index` (`effective_date`,`expiry_date`,`org_id`)
) 

