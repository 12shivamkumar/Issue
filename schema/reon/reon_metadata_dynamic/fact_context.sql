CREATE TABLE `fact_context` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fact_table_id` int(11) NOT NULL,
  `context_key` varchar(100) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `derive_expresion` varchar(500) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `fact_context_key` (`fact_table_id`,`context_key`)
) ENGINE=InnoDB AUTO_INCREMENT=10000000;

-- Dump completed on 2020-06-05 12:04:46
