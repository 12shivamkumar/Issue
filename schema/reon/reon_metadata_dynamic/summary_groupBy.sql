CREATE TABLE `summary_groupBy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tableType` enum('FACT','DIMENSION') NOT NULL,
  `refTableId` int(11) NOT NULL COMMENT 'in case of dimension type it is logical',
  `column_id` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `scope_id` int(11) NOT NULL DEFAULT '-1000',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10000000;

-- Dump completed on 2020-06-05 12:04:46
