

CREATE TABLE `status_type_legends` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_id` int(11) NOT NULL,
  `status_label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `legend_label` int(11) NOT NULL,
  `category` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) 

