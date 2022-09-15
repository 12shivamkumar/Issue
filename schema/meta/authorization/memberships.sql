

CREATE TABLE `memberships` (
  `user_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `joined` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_active` tinyint(4) NOT NULL,
  `is_approved` tinyint(4) NOT NULL,
  PRIMARY KEY (`user_id`,`group_id`),
  KEY `group_id` (`group_id`)
) 

