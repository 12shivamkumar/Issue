

CREATE TABLE `selection_filter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  `params` longtext COLLATE utf8mb4_unicode_ci,
  `filter_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filter_explaination` longtext COLLATE utf8mb4_unicode_ci,
  `no_of_customers` int(11) NOT NULL,
  `custom_ids` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`org_id`),
  KEY `filter_id` (`org_id`,`filter_id`)
) ;

