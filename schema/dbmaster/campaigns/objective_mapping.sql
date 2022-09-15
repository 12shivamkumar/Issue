

CREATE TABLE `objective_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `objective_type_id` int(11) NOT NULL,
  `campaign_id` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_date` datetime NOT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`org_id`),
  UNIQUE KEY `objective_id` (`org_id`,`objective_type_id`,`campaign_id`)
) ;

