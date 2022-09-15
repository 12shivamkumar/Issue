

CREATE TABLE `group_export_mapping` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `org_id` bigint(11) NOT NULL,
  `export_mapping_id` bigint(11) NOT NULL,
  `campaign_id` bigint(11) NOT NULL,
  `group_id` bigint(20) NOT NULL,
  `peer_group_id` bigint(20) NOT NULL,
  `count` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `org_id` (`org_id`),
  KEY `export_mapping_id` (`export_mapping_id`)
) 

