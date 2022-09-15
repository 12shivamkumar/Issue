

CREATE TABLE `user_transfer_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `from_ref_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `to_ref_id` int(11) NOT NULL,
  `updated_by` bigint(20) NOT NULL,
  `updated_on` datetime NOT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`org_id`),
  UNIQUE KEY `org_id` (`org_id`,`from_ref_id`),
  KEY `org_time_idx` (`org_id`,`auto_update_time`)
) ;

