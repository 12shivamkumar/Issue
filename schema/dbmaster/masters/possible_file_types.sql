

CREATE TABLE `possible_file_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mapping_type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ;

