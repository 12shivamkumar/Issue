

CREATE TABLE `import_error_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_id` int(11) NOT NULL COMMENT 'transaction id',
  `record_id` int(11) NOT NULL COMMENT 'All the columns in the csv for the error record.',
  `error` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `log_id` (`file_id`)
) 

