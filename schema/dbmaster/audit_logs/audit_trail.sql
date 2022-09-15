

CREATE TABLE `audit_trail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL COMMENT 'org_id',
  `user_id` int(11) NOT NULL COMMENT 'maps to loggable users',
  `updated_on` datetime NOT NULL,
  `tracked_class` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'the audit class eg ConfigKey, OrgProfile, Listener, Tracker',
  `tracked_item` int(11) DEFAULT NULL COMMENT 'The item id in the individual table',
  `details` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`org_id`),
  INDEX audit_orgId_trackedClass (org_id, tracked_class, tracked_item),
  INDEX audit_updated_on (updated_on)
) ;

