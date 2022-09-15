

CREATE TABLE `filter_change_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` datetime NOT NULL,
  `audience_group_id` int(11) NOT NULL,
  `campaign_id` int(11) NOT NULL,
  `org_id` int(11) NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`id`,`org_id`)
) ;

