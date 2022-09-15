

CREATE TABLE `group_event_subscription` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `event_type` enum('GROUP_RELOAD') COLLATE utf8mb4_unicode_ci NOT NULL,
  `entity` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entity_id` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subscribed` tinyint(1) NOT NULL,
  `params_json` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `last_updated_by` int(11) NOT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_group_entity` (`org_id`,`group_id`,`entity`,`entity_id`,`event_type`)
) 

