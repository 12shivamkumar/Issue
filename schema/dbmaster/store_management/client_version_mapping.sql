

CREATE TABLE `client_version_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `version_id` int(11) NOT NULL,
  `version_set_on` datetime NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `version_set_by` int(11) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`,`org_id`),
  KEY `org_id` (`org_id`,`store_id`),
  KEY `version_idx` (`store_id`,`is_active`)
) ;

