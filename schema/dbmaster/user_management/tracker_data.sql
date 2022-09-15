

CREATE TABLE `tracker_data` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `org_id` bigint(20) NOT NULL,
  `tracker_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `store_id` bigint(20) NOT NULL COMMENT 'store which made the entry',
  `value` bigint(10) NOT NULL COMMENT 'The value being tracked',
  `date` datetime NOT NULL COMMENT 'Original date of entry',
  `reference_id` bigint(20) NOT NULL COMMENT 'The id of the entry in the original table, so it can be verified',
  PRIMARY KEY (`id`,`org_id`),
  KEY `org_id` (`org_id`,`tracker_id`,`user_id`),
  KEY `orgid_userid` (`org_id`,`user_id`)
) ;

