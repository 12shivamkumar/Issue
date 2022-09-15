

CREATE TABLE `org_timezones` (
  `org_id` int(11) NOT NULL,
  `time_zone_id` int(11) NOT NULL,
  UNIQUE KEY `org_id_2` (`org_id`,`time_zone_id`)
) ;

