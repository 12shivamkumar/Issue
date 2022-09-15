

CREATE TABLE `sms_channel_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_code` int(11) NOT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) 

