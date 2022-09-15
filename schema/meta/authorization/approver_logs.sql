

CREATE TABLE `approver_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `approver_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `groups_included` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `sent_on` datetime NOT NULL,
  `approved_on` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) 

