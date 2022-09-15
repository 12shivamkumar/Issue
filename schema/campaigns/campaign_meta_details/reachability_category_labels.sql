

CREATE TABLE `reachability_category_labels` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `category` enum('VALID','INVALID','UNSUBSCRIBED','HARDBOUNCED','SOFTBOUNCED','CONTACT_UNAVAILABLE','UNABLE_TO_VERIFY') COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reach_status_ids_csv` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
    `campaign_id` int(11) NOT NULL,
    `group_id` int(11) NOT NULL,
  `last_updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `category` (`category`)
) 

