-- start  Schema : `execution_phases`
CREATE TABLE `execution_phases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `execution_id` int(11) NOT NULL,
  `phase_id` int(11) NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT '1',
  `context_keys` varchar(64) DEFAULT NULL,
  `class_name` varchar(255) DEFAULT NULL,
  `properties` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `exec_phase_idx` (`execution_id`,`phase_id`)
);
