

CREATE TABLE `payment_mode_details` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `ref_id` bigint(20) NOT NULL,
  `ref_type` enum('REGULAR','NOT_INTERESTED') COLLATE utf8mb4_unicode_ci NOT NULL,
  `org_payment_mode_id` int(11) NOT NULL,
  `payment_mode_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `notes` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `added_by` int(11) NOT NULL,
  `added_on` datetime NOT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`org_id`),
  KEY `org_id` (`org_id`,`org_payment_mode_id`,`ref_id`),
  KEY `org_ref_index` (`org_id`,`ref_type`,`ref_id`),
  KEY `auto_time_idx` (`auto_update_time`)
) ;

