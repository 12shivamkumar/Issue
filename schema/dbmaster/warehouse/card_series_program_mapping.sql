CREATE TABLE `card_series_program_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `loyalty_program_id` int(11) NOT NULL COMMENT 'Loyalty program to which the card series is linked',
  `card_series_id` int(11) NOT NULL COMMENT 'Card Series Id',
  `created_on` datetime NOT NULL COMMENT 'Date of creation of card series mapping',
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`org_id`),
  UNIQUE KEY `card_series_program_idx` (`org_id`,`card_series_id`),
  KEY `auto_update_time_card_series_idx` (`auto_update_time`),
  KEY `org_auto_time-card_series_idx` (`org_id`,`auto_update_time`)
) ;

