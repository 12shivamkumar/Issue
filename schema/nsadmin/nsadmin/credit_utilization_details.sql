

CREATE TABLE `credit_utilization_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `org_credit_rates_id` int(11) NOT NULL,
  `credit_count` double NOT NULL,
  `transaction_type` enum('UTILIZED') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'UTILIZED',
  `transaction_date` datetime NOT NULL,
  `utilization_date` datetime NOT NULL,
  `credit_chunk_details_id` int(11) NOT NULL,
  `utilization_meta_details_id` int(11) NOT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `transaction_uuid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`,`org_id`),
  KEY `date_org_rates_index` (`transaction_date`,`org_id`,`org_credit_rates_id`),
  KEY `credit_chunk_index` (`credit_chunk_details_id`),
  KEY `meta_details_index` (`utilization_meta_details_id`),
  KEY `transaction_uuid_index` (`transaction_uuid`)
) 

