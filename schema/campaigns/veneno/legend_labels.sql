

CREATE TABLE `legend_labels` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `legend_label` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `parent_legend_label_ids_csv` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) 

