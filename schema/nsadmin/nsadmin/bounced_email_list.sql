

CREATE TABLE `bounced_email_list` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hard` tinyint(8) NOT NULL DEFAULT '0',
  `soft` tinyint(8) NOT NULL DEFAULT '0',
  `temp` tinyint(8) NOT NULL DEFAULT '0',
  `unknown` tinyint(8) NOT NULL DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lastcreated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `created` (`created`),
  KEY `lastcreated` (`lastcreated`)
) 

