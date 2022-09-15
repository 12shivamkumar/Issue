CREATE TABLE `credit_transaction_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `credit_count` double NOT NULL,
  `transaction_date` datetime NOT NULL,
  `transaction_type` enum('ADDED','REMOVED','EXPIRED','ADJUSTED') COLLATE utf8mb4_unicode_ci NOT NULL,
  `credit_chunk_details_id` int(11) NOT NULL,
  `comments` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `transaction_uuid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`,`org_id`),
  KEY `date_org_index` (`transaction_date`,`org_id`,`transaction_type`),
  KEY `credit_chunk_index` (`credit_chunk_details_id`)
) 

