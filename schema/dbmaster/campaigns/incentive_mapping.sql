

CREATE TABLE `incentive_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `incentive_type_id` int(11) NOT NULL,
  `incentive_properties_id` int(11) NOT NULL,
  `campaign_id` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `message_queue_id` int(11) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`,`org_id`)
) ;

