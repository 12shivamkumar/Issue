

CREATE TABLE `users_govt_status` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `external_reference_id` bigint(20) NOT NULL,
  `priority` enum('TRANS','BULK') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'BULK',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `added_by_id` int(11) NOT NULL,
  `added_on` datetime DEFAULT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `external_ref_id_priority_idx` (`external_reference_id`,`priority`)
) 

