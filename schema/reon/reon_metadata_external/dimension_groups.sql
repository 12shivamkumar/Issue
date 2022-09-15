CREATE TABLE `dimension_groups` (
  `column_id` int NOT NULL AUTO_INCREMENT,
  `dim_table_id` int NOT NULL,
  `dim_id` int NOT NULL,
  `dimension_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_attribute` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_attribute_type` enum('HIERARCHICAL','FLAT') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'FLAT',
  `parent_attribute_column_id` int NOT NULL,
  `column_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_type` enum('PK','VALUE','LEVEL','DATE_ATTRIBUTE','TIME_ATTRIBUTE','ATTRIBUTE','ALIAS','NONE') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'NONE',
  `level_num` int NOT NULL,
  `level_num_ref` int DEFAULT NULL,
  `scope_id` int NOT NULL DEFAULT '-1000',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `data_type` enum('TEXT','NUMBER','BIGNUMBER','BOOLEAN','DATE','TIME') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'TEXT',
  `value_col_scope` enum('CAP','ORG') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ORG',
  `usability_type` enum('SELECT','FILTER','GROUP') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'SELECT',
  `parent_functional_dependency_column` int NOT NULL DEFAULT '0',
  `computation_type` enum('ETL','VIEW','WORKFLOW') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'WORKFLOW',
  `last_updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `dim_table_id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dim_id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_attribute_column_id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_functional_dependency_column_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_column_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'STANDARD_FIELD',
  PRIMARY KEY (`column_id`),
  UNIQUE KEY `dim_table_id_column_name` (`dim_table_id`,`parent_attribute`,`column_name`,`scope_id`) USING BTREE,
  KEY `scope_table_active` (`scope_id`,`dim_table_id`,`is_active`)
) ENGINE=InnoDB;