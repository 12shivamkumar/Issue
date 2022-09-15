CREATE TABLE `source_table_fk_constraints` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `constraint_name` varchar(99) NOT NULL,
  `column_id` int(11) NOT NULL,
  `ordinal_position` int(11) NOT NULL DEFAULT '1',
  `ref_col_id` int(11) NOT NULL DEFAULT '-1',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `scope_id` int(11) NOT NULL DEFAULT '-1000',
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `column_ref_col` (`column_id`,`ref_col_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10000000;

-- Dump completed on 2020-06-05 12:04:46
