CREATE TABLE `fact_dimension_overlap` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `fact_table_id` int(11) NOT NULL,
  `dim_id` int(11) NOT NULL,
  `overlap_on_id` int(11) NOT NULL,
  `overlap_on_type` enum('PK','DIMENSION') NOT NULL,
  `dim_col_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `scope_id` int(11) NOT NULL DEFAULT '-1000',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fact_dim_overlapcol` (`fact_table_id`,`dim_id`,`overlap_on_id`,`overlap_on_type`)
) ENGINE=InnoDB AUTO_INCREMENT=10000000;

-- Dump completed on 2020-06-05 12:04:46
