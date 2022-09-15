
CREATE TABLE `promotions` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'auto generated promotion id',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `identifier` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'This field identifies a promotion uniquely for a program across sources',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `program_id` int(11) NOT NULL COMMENT 'the program to which the promotion belongs',
  `org_id` int(11) NOT NULL COMMENT 'organization id owning the promotion',
  `event_type_id` int(11) NOT NULL COMMENT 'type of the event under which the promotion is valid',
  `is_active` tinyint(1) NOT NULL COMMENT 'True if the promotion is active',
  `is_exclusive` tinyint(1) NOT NULL COMMENT 'does the promotion belong to exclusive group or not',
  `is_system_generated` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Whether the promotion is system generated or not',
  `use_proportions` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'use proportions in case of line item promotion',
  `type` enum('BILL','LINEITEM','CUSTOMER','RETURN') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `behaviour_type` enum('SIMPLE','RANGE','KEYWORD','DEFAULT') COLLATE utf8mb4_unicode_ci DEFAULT 'DEFAULT',
  `promotion_evaluation_type` enum('BEFORE_EVENT','AFTER_EVENT') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'AFTER_EVENT',
  `source_type` enum('UI','IMPORT','GOODWILL','CAMPAIGN','POINTS_TRANSFER','IMPORT_API','PROMOTION_API','POINTS_CONTRIBUTION_TO_GROUP') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source_id` int(11) NOT NULL DEFAULT '-1',
  `start_date` datetime NOT NULL COMMENT 'Start of the campaign',
  `end_date` datetime NOT NULL COMMENT 'Date when the promotion was closed',
  `start_rule_identifier` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ref to the ruleset which identifies if a tx/item is part of the promotion',
  `created_on` datetime NOT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `event_sub_type_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'event type is same for all generic events, need a sub type to distinguish',
  `points_per_promotion_limit` int(11) NOT NULL DEFAULT '0' COMMENT 'cap on points per promotion',
  `events_per_member_limit` int(11) NOT NULL DEFAULT '0' COMMENT 'cap on events for which promotion can be applied',
  `points_per_member_limit` int(11) NOT NULL DEFAULT '0' COMMENT 'cap on points per member in a promotion',
  `points_per_event_limit` int(11) NOT NULL DEFAULT '0' COMMENT 'cap on points per promotion in a single event',
  `last_updated_by` BIGINT(20) NOT NULL DEFAULT '-1' COMMENT 'last user that edited the promotion',
  PRIMARY KEY (`id`,`org_id`),
  UNIQUE KEY `idx_programId_identifier` (`org_id`,`program_id`,`identifier`),
  KEY `program_id` (`program_id`,`event_type_id`),
  KEY `auto_update_time` (`auto_update_time`) ,
  KEY `org_auto_time_idx` (`org_id`,`auto_update_time`) 
) ;

