

CREATE TABLE `email_sending_rules` (
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `org_id` bigint(20) NOT NULL DEFAULT '1',
  `sending_rule` enum('ALL','NOBULK','NOPERSONALIZED','NONE','UNSUBSCRIBE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ALL',
  UNIQUE KEY `email_org_uidx` (`email`,`org_id`)
) 

