CREATE TABLE `model_training_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `objective` enum('popular','content_based','favourite','fbt','trending','cfii','similar','attribute_based','lightFM','repurchase','product_recommendation') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `snapshot_date` datetime NOT NULL,
  `model_location` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attrb_json` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resultJson` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `status` enum('QUEUED','SUBMITTED','EXECUTING','FAILED','SUCCEEDED') NOT NULL DEFAULT 'QUEUED',
  `latest_available_data_date` timestamp NULL DEFAULT NULL,
  `model_name` enum('popular','content_based','favourite','fbt','trending','cfii','similar','attribute_based','lightFM','repurchase','product_recommendation') NOT NULL,
  `datagen_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `org_id` (`org_id`)
);