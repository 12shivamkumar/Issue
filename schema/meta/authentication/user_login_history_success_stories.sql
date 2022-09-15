

CREATE TABLE `user_login_history_success_stories` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ref_id` int(11) NOT NULL,
  `last_login_on` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ref_id` (`ref_id`)
) 

