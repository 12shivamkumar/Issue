

CREATE TABLE `reload_sync_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `sync_time` datetime NOT NULL,
  `reload_time` datetime NOT NULL,
  `created_date` datetime NOT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `k_org` (`org_id`)
) 

