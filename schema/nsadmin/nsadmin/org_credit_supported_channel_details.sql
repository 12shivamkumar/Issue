

CREATE TABLE `org_credit_supported_channel_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `channel` enum('SMS','EMAIL','ANDROID','IOS','WHATSAPP','WECHAT','LINE', 'XENGAGE','VIBER', 'WHATSAPP', 'RCS') COLLATE utf8mb4_unicode_ci NOT NULL,
  `org_base_country_id` int(6) DEFAULT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`org_id`),
  UNIQUE KEY `org_channel_index` (`org_id`,`channel`)
) 

