CREATE TABLE `card_generation_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` bigint(20) NOT NULL,
  `series_id` int(11) DEFAULT NULL,
  `file_handle` varchar(255) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `count` int(5) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `description` text NOT NULL,
  PRIMARY KEY (`id`),
  key `series` (`org_id`,`series_id`)
) ;