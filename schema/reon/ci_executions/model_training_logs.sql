

CREATE TABLE `model_training_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `objective` enum('product_personalization','time_personalization','offer_personalization','propensity_modelling','store_personalization') CHARACTER SET latin1 NOT NULL,
  `snapshot_date` datetime NOT NULL COMMENT 'of Train Data ',
  `model_location` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attrb_json` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resultJson` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `status` enum('QUEUED','SUBMITTED','EXECUTING','FAILED','SUCCEEDED') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'QUEUED',
  `latest_available_data_date` timestamp NULL DEFAULT NULL,
  `model_name` enum('implicit_als_user_item','implicit_als_user_category','popular','upsell_propensity','campaign_propensity','lapsation_propensity','repurchase_recommendation','bm25','segmented_popular','fir_and_proxmity_model','time_personalization_rule_based','time_slot_propensity','category_sequence_predictor','model_provisioning','time_personalization','response_propensity','transaction_propensity','offer_personalizaton','channel_propensity', 'rfm_segmentation') COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat_hierarchy` longtext COLLATE utf8mb4_unicode_ci,
  `datagen_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `org_id` (`org_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5643  COLLATE=utf8mb4_unicode_ci;

