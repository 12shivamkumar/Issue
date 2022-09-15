

CREATE TABLE `group_permissions` (
  `group_id` bigint(20) NOT NULL,
  `permission_id` bigint(20) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_active` tinyint(4) NOT NULL,
  `last_updated_by` int(11) NOT NULL COMMENT '(user_id)',
  `last_updated_on` datetime NOT NULL,
  PRIMARY KEY (`group_id`,`permission_id`)
) 

