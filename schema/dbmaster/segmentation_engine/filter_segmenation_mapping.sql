

CREATE TABLE `filter_segmenation_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `cluster_id` int(11) NOT NULL,
  `cluster_value_id` int(11) NOT NULL,
  `reminder_id` int(11) NOT NULL COMMENT 'Would be required if we are refreshing the cluster values',
  `last_updated_by` int(11) NOT NULL,
  `last_updated_on` datetime NOT NULL,
  PRIMARY KEY (`id`,`org_id`),
  KEY `cluster` (`org_id`,`cluster_id`)
) ;

