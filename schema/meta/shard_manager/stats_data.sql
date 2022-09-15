

CREATE TABLE `stats_data` (
  `id` int(11) NOT NULL,
  `stat_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `type` enum('SHARD','ORG') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_id` int(11) NOT NULL COMMENT 'shard_id or org_id depending on type',
  `value` double NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) 

