

CREATE TABLE `recipient_social_list_map` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `recipient_list_id` int(11) NOT NULL,
  `social_audience_list_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_map` (`recipient_list_id`,`social_audience_list_id`)
) 

