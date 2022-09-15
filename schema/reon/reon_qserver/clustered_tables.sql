
-- start  Schema : clustered_tables

CREATE TABLE `clustered_tables` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(99) NOT NULL,
  `table_type` enum('FACT','DIMENSION','SUMMARY') NOT NULL,
  `clustered_column` varchar(99) NOT NULL,
  `buckets` int(11) NOT NULL DEFAULT '32',
  `is_valid` tinyint(1) NOT NULL DEFAULT '1',
  `scope_id` int(11) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`)
);

-- end  Schema : clustered_tables
