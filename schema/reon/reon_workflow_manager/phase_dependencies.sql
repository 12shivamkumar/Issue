-- start  Schema : `phase_dependencies`
CREATE TABLE `phase_dependencies` (
  `parent_id` int(11) DEFAULT NULL,
  `child_id` int(11) DEFAULT NULL,
  `is_valid` tinyint(4) DEFAULT '1',
  UNIQUE KEY `dependency` (`parent_id`,`child_id`)
);
