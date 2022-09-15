

CREATE TABLE `user_labels` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT,
  `org_id` bigint(11) unsigned NOT NULL,
  `user_Id` bigint(11) unsigned NOT NULL,
  `label_Id` bigint(11) unsigned NOT NULL,
  `added_by` int(11) unsigned NOT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UserIdlabel_Id` (`user_Id`,`label_Id`),
  KEY `Org_idlabel_Id` (`org_id`,`label_Id`)
) ;

