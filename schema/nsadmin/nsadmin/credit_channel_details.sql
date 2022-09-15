

CREATE TABLE `credit_channel_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel` enum('SMS','EMAIL','ANDROID','IOS','WHATSAPP','WECHAT','LINE', 'XENGAGE','VIBER','RCS') COLLATE utf8mb4_unicode_ci NOT NULL,
  `priority_type` enum('HIGH','BULK') COLLATE utf8mb4_unicode_ci NOT NULL,
  `channel_details_id` int(11) DEFAULT '0',
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `channel_detail_index` (`channel`,`priority_type`,`channel_details_id`)
) 

