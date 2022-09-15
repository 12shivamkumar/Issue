

CREATE TABLE `modelling_experimentation_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `objective` enum('product_personalization','time_personalization','offer_personalization','propensity_modelling','store_personalization') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `snapshot_date` datetime NOT NULL COMMENT 'of Train Data ',
  `model_location` varchar(256) DEFAULT NULL,
  `latest_available_data_date` timestamp NULL DEFAULT NULL,
  `attrb_json` varchar(2048) DEFAULT NULL,
  `resultJson` varchar(2048) DEFAULT NULL,
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `status` enum('QUEUED','SUBMITTED','EXECUTING','FAILED','SUCCEEDED') NOT NULL DEFAULT 'QUEUED',
  `model_name` enum('implicit_als_user_item','implicit_als_user_category','popular','upsell_propensity','campaign_propensity','lapsation_propensity','repurchase_recommendation','bm25','segmented_popular','fir_and_proxmity_model','time_personalization_rule_based','time_personalization_sequence_predictor','category_sequence_predictor','model_provisioning','message_segmentation','response_propensity','time_personalization','offer_personalization','message_roi_prediction','channel_propensity') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `datagen_id` int(11) DEFAULT NULL,
  `datagen_params` varchar(2048) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `indexing_key` (`org_id`,`model_name`)
) ENGINE=InnoDB AUTO_INCREMENT=514 ;

