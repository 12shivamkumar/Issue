

CREATE TABLE `token_consumption_log` (
  `id` int(11) NOT NULL DEFAULT '0',
  `org_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `value` int(11) NOT NULL,
  rate_limit_config_id int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `org_id` (`org_id`),
  KEY `context_key` (`org_id`)
) 

