

CREATE TABLE `reachability_channel_types` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `channel` enum('MOBILE','EMAIL','WECHAT','ANDROID','IOS','LINE','VIBER') COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) 

