

CREATE TABLE `tracker_blackout_periods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `tracker_id` int(11) NOT NULL,
  `period_start` date NOT NULL COMMENT 'start of the period from when the data will be not considered',
  `period_end` date NOT NULL COMMENT 'end of the period till when the data will be not considered',
  PRIMARY KEY (`id`,`org_id`),
  KEY `org_id` (`org_id`,`tracker_id`)
) ;

