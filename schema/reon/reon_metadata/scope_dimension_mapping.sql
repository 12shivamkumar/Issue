CREATE TABLE `scope_dimension_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dim_table_id` int(11) NOT NULL,
  `scope_id` int(11) NOT NULL DEFAULT '-1000',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dim_id` (`dim_table_id`)
) ENGINE=InnoDB;

-- Dump completed on 2020-06-05 12:04:46
