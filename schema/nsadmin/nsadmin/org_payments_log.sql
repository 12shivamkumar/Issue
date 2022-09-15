

CREATE TABLE `org_payments_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `org_id` int(10) DEFAULT NULL,
  `payment_amount` int(11) DEFAULT NULL,
  `added_by` int(11) DEFAULT NULL,
  `added_on` date DEFAULT NULL,
  `comments` text COLLATE utf8mb4_unicode_ci,
  `is_deleted` int(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) 

