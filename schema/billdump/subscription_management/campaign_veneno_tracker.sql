

CREATE TABLE `campaign_veneno_tracker` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `last_inserted_id` int(11) NOT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) 

