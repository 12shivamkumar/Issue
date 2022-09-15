-- start  Schema : context_values

CREATE TABLE `context_values` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL,
  `execution_id` int(11) NOT NULL,
  `phase_id` int(11) NOT NULL,
  `identifiers` text,
  `properties` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `phase_name_unique` (`execution_id`,`phase_id`,`name`)
);

-- end  Schema : context_values
