CREATE TABLE `slab_change_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `program_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL COMMENT 'customer id for whom the slab upgrade was done',
  `slab_change_source` enum('STRATEGY','RULE','MERGE','IMPORT','GROUP_SYNC','GROUP_LEAVE','PARTNER_PROGRAM') COLLATE utf8mb4_unicode_ci NOT NULL,
  `slab_change_source_id` int(11) DEFAULT NULL COMMENT 'context id for slab change source',
  `customer_slab_upgrade_history_id` int(11) DEFAULT NULL COMMENT 'corresponding customer_slab_upgrade_history_id',
  `slab_change_action` enum('UPGRADE','DOWNGRADE','RENEWAL','TIER_SYNC_BENEFIT','PARTNER_PROGRAM_EXPIRY_CHANGE') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'action due to which slab change occoured',
  `previous_slab_change_date` datetime NOT NULL COMMENT 'slab change date to previous slab',
  `previous_slab_expiry_date` datetime NOT NULL COMMENT 'expiry date of previous slab',
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`org_id`),
  KEY `program_id` (`org_id`,`program_id`,`customer_id`) ,
  KEY `org_auto_time_idx` (`org_id`,`auto_update_time`) ,
  KEY `auto_update_time` (`auto_update_time`) 
) ;
