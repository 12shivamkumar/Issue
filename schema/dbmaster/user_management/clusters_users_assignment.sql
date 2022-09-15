

CREATE TABLE `clusters_users_assignment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `cluster_id` int(11) NOT NULL,
  `cluster_value_id` bigint(20) NOT NULL,
  `added_by` bigint(20) NOT NULL,
  `added_on` datetime NOT NULL,
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`org_id`),
  UNIQUE KEY `org_id_2` (`org_id`,`user_id`,`cluster_id`),
  KEY `org_id` (`org_id`,`cluster_id`,`cluster_value_id`),
  KEY `org_id_3` (`org_id`,`cluster_id`,`last_updated`),
  KEY `org_id_4` (`org_id`,`cluster_id`,`added_on`)
) ;

