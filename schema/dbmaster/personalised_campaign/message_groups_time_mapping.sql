

CREATE TABLE `message_groups_time_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message_group_id` int(11) NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ;

