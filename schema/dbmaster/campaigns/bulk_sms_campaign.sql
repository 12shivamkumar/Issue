

CREATE TABLE `bulk_sms_campaign` (
  `campaign_id` bigint(20) NOT NULL,
  `message_template` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`campaign_id`)
) ;

