

CREATE TABLE `group_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `campaign_id` int(11) DEFAULT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_date` datetime NOT NULL,
    `campaign_id` int(11) NOT NULL,
    `group_id` int(11) NOT NULL,
  `org_id` int(11) NOT NULL,
  `type` enum('CAMPAIGN_USERS','STICKY_GROUP','LOYALTY','TEST_GROUP','NON_LOYALTY','ALL','UPLOAD','FILTER_BASED','DERIVED','ORG_USERS','SPLIT','MERGE') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bucket_id` int(11) DEFAULT NULL,
  `group_tags` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_favourite` tinyint(4) NOT NULL,
  `is_reloading` tinyint(1) NOT NULL DEFAULT '0',
  `is_visible` tinyint(1) NOT NULL DEFAULT '1',
  `is_migrated` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `custom_tag_count` tinyint(1) DEFAULT '0',
  `group_relation_params` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`,`org_id`),
  KEY `k_campaign_org` (`campaign_id`,`org_id`,`is_visible`),
  KEY `k_auto_update_time` (`auto_update_time`),
  KEY `k_org_label` (`org_id`,`group_label`(150))
) 

