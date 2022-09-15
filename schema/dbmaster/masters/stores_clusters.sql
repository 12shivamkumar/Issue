

CREATE TABLE `stores_clusters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `value_id` int(11) NOT NULL,
  `added_on` datetime NOT NULL,
  PRIMARY KEY (`id`,`org_id`),
  UNIQUE KEY `org_id` (`org_id`,`store_id`),
  KEY `store_id` (`store_id`),
  KEY `value_id` (`value_id`)
) ;

