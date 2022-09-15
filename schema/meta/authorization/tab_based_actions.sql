

CREATE TABLE `tab_based_actions` (
  `action_id` int(11) NOT NULL,
  `parent_action_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `action_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_updated_by` int(11) NOT NULL,
  `last_updated_on` datetime NOT NULL
) 

