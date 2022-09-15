

CREATE TABLE `language_support_ef_values` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lang_id` int(11) NOT NULL,
  `ef_value_id` int(11) NOT NULL,
  `label` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `v_id_lang_id` (`ef_value_id`,`lang_id`)
) 

