CREATE TABLE `fact_fk_constraints` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `column_id` int(11) NOT NULL,
  `table_id` int(11) NOT NULL,
  `ordinal_position` int(11) NOT NULL DEFAULT '1',
  `ref_col_id` int(11) NOT NULL DEFAULT '-1',
  `ref_table_id` int(11) NOT NULL DEFAULT '-1',
  `mapping_type` enum('ONE_TO_ONE','ONE_TO_MANY','MANY_TO_ONE','MANY_TO_MANY') DEFAULT NULL,
  `relattion_type` enum('IS','BELONGS') DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `scope_id` int(11) NOT NULL DEFAULT '-1000',
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `column_ref_col` (`table_id`,`ref_table_id`,`ordinal_position`)
) ENGINE=InnoDB AUTO_INCREMENT=10000000;

-- Dump completed on 2020-06-05 12:04:46
