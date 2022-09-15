

CREATE TABLE `objective_meta_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `objective_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `objective_parent_id` int(11) NOT NULL,
  `help_text` text COLLATE utf8mb4_unicode_ci,
  `input_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ;

