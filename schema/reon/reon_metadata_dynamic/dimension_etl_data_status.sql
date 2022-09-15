CREATE TABLE `dimension_etl_data_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `scope_id` int(11) NOT NULL DEFAULT '-1000',
  `dim_table_id` int(11) NOT NULL DEFAULT '-1000',
  `value_id` int(11) NOT NULL,
  `value_name` varchar(100) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
);

-- Dump completed on 2020-06-05 12:04:46
