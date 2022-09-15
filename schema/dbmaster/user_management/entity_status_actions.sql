CREATE TABLE `entity_status_actions` (
  `entity_status_id` int(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(100) NOT NULL,
  `action_code` varchar(50) NOT NULL,
  `default_value` tinyint(1) NOT NULL,
  `is_updatable` tinyint(1) NOT NULL,
  `is_valid` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`entity_status_id`,`action_code`)
 )