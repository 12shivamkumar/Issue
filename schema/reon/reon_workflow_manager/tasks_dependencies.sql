-- start  Schema : `tasks_dependencies`
CREATE TABLE `tasks_dependencies` (
  `parent_id` int(11) NOT NULL,
  `child_id` int(11) NOT NULL,
  `execution_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`parent_id`,`child_id`),
  KEY `child_idx` (`child_id`),
  KEY `exec_index` (`execution_id`)
);
