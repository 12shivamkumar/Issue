

CREATE TABLE `membership_change_log` (
  `user_id` int(11) NOT NULL,
  `org_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `changed_by` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `action` enum('ADD','DELETE') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `user_id` (`user_id`)
) 

