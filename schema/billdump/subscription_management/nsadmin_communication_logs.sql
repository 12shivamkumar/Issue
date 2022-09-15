

CREATE TABLE `nsadmin_communication_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `subscription_rule_id` int(11) NOT NULL,
  `nsadmin_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `resolved_tags` mediumtext COLLATE utf8mb4_unicode_ci,
  `last_updated_on` datetime NOT NULL,
  PRIMARY KEY (`id`,`org_id`)
) 

