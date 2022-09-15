CREATE TABLE `entity_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `entity_id` bigint(20) NOT NULL,
  `label_id` int(11) NOT NULL,
  `prev_label_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `created_on` datetime NOT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int(11) NOT NULL,
  `reason` varchar(50) DEFAULT '',
  PRIMARY KEY (`id`,`org_id`),
  KEY `org_id` (`org_id`,`entity_id`,`is_active`),
  KEY `auto_time_idx` (`auto_update_time`)
)