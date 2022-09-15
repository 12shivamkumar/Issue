

CREATE TABLE `old_new_zones` (
  `old_id` int(11) NOT NULL,
  `new_id` int(11) NOT NULL,
  `org_id` int(11) NOT NULL,
  UNIQUE KEY `old_id` (`old_id`,`org_id`)
) ;

