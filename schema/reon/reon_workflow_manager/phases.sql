-- start  Schema : `phases`
CREATE TABLE `phases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `workflow` varchar(64) DEFAULT 'ETL',
  `is_active` tinyint(4) DEFAULT '1',
  `context_keys` varchar(64) DEFAULT NULL,
  `class_name` varchar(255) DEFAULT NULL,
  `dev_owner` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_idx` (`name`)
);
