

CREATE TABLE `archived_table_suffix` (
  `table_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `first_message_id` bigint(20) NOT NULL,
  `last_message_id` bigint(20) NOT NULL,
  `is_available` tinyint(1) NOT NULL DEFAULT '1',
  UNIQUE KEY `table_name` (`table_name`)
) 

