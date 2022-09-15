

CREATE TABLE `org_app_features` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `feature_id` int(11) NOT NULL,
  `is_active` tinyint(4) DEFAULT '1',
  `entered_by` int(11) NOT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `org_feature_id` (`org_id`,`feature_id`)
) 

