CREATE TABLE `attribution_strategy_mapping` (
  `strategy_id` int(11) NOT NULL,
  `fact_table_id` int(11) NOT NULL,
  `fact_column_id` int(11) NOT NULL,
  `source_table_id` int(11) NOT NULL,
  `source_column_id` int(11) NOT NULL,
  `scope_id` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `column_scope` (`strategy_id`,`fact_table_id`,`fact_column_id`,`scope_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10000000;
