

CREATE TABLE `inventory_returnable` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `org_id` bigint(20) NOT NULL,
  `ou_id` bigint(20) NOT NULL DEFAULT '-1',
  `item_id` bigint(20) NOT NULL,
  `returnable` tinyint(1) DEFAULT NULL,
  `returnable_days` int(11) DEFAULT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`org_id`),
  UNIQUE KEY `org_id` (`org_id`,`item_id`),
  UNIQUE KEY `org_ou_id` (`org_id`,`ou_id`,`item_id`)
) 

