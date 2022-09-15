

CREATE TABLE `org_currencies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`org_id`),
  KEY `org_id` (`org_id`,`currency_id`),
  KEY `currency_id` (`currency_id`)
) ;

