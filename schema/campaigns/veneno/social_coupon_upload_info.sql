

CREATE TABLE `social_coupon_upload_info` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `org_id` int(11) unsigned NOT NULL,
  `message_id` int(11) unsigned NOT NULL,
  `message_version` int(11) NOT NULL DEFAULT '0',
  `s3_key` varchar(250) CHARACTER SET utf8mb4 NOT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`org_id`),
  UNIQUE KEY `org_message_version` (`org_id`,`message_id`,`message_version`),
  KEY `auto_update_time` (`auto_update_time`)
) 

