

CREATE TABLE `shard` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `policy_id` int(11) NOT NULL COMMENT 'FK to policies',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'shard names to be shard1, shard2, shard3',
  `added_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_dedicated` tinyint(1) NOT NULL DEFAULT '0',
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `policy_name_active_uidx` (`policy_id`,`name`)
) 

