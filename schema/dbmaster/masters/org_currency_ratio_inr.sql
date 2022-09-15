

CREATE TABLE `org_currency_ratio_inr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `ratio` double NOT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_on` datetime NOT NULL,
  PRIMARY KEY (`id`,`org_id`),
  KEY `org_id` (`org_id`,`currency_id`)
) ;

