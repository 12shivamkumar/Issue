CREATE TABLE `card_gen_autoinr_values` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `series_id` int(11) NOT NULL,
  `value` int(11) NOT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_updated_by` int(11) NOT NULL,
  PRIMARY KEY (`id`,`org_id`),
  KEY `series` (`org_id`,`series_id`)
);