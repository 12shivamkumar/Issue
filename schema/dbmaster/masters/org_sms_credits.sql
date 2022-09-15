

CREATE TABLE `org_sms_credits` (
  `org_id` bigint(20) NOT NULL,
  `value_sms_credits` int(11) NOT NULL DEFAULT '0',
  `bulk_sms_credits` int(11) NOT NULL DEFAULT '0',
  `user_credits` int(11) NOT NULL DEFAULT '0',
  `created_by` bigint(20) NOT NULL,
  `last_updated_by` bigint(20) NOT NULL,
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`org_id`)
) ;

