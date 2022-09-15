CREATE TABLE `fact_kpis` (
  `column_id` int(11) NOT NULL,
  `table_id` int(11) NOT NULL,
  `expression` text NOT NULL,
  `type` enum('MAP','INC_REDUCE','NON_INC_REDUCE','NON_INC_RANK','SUMMARY') NOT NULL,
  `is_reversible` tinyint(1) NOT NULL,
  `primary_key_level` int(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `scope_id` int(11) NOT NULL DEFAULT '-1000',
  `last_computed_on` timestamp NULL DEFAULT NULL,
  `added_on` timestamp NULL DEFAULT NULL,
  `updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`column_id`,`scope_id`,`table_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10000000;

-- Dump completed on 2020-06-05 12:04:46
