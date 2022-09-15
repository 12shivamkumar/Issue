

CREATE TABLE `sms_sending_rules` (
  `mobile_number` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `org_id` bigint(20) NOT NULL DEFAULT '1',
  `sending_rule` enum('ALL','NOBULK','NOPERSONALIZED','NONE','UNSUBSCRIBE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ALL',
  UNIQUE KEY `mobile_org_uidx` (`mobile_number`,`org_id`)
) 

