CREATE TABLE `model_experiments_table` (
 `req_id` int(11) NOT NULL AUTO_INCREMENT,
 `org_id` int(11) NOT NULL,
 `business_objective` enum('EI','personalized_campaigns','Reco','RecoEI') NOT NULL,
 `objective` enum('transaction_propensity','lapsation_propensity','response_propensity','product_propensity','store_propensity','time_slot_propensity','product_personalization','time_personalization','store_personalization','offer_personalization','repurchase_propensity','ramzan_transaction_propensity','customer_life_time_value_fact','similar_items_attribute_based_fact','frequently_bought_together_fact','bought_together_also_bought_fact','overall_popular_items_fact','trending_items_fact','upsell_propensity_fact','cross_sell_propensity_fact','promotional_product_propensity','trending_categories','channel_propensity','segmented_trending', 'rfm_segmentation') NOT NULL,
 `tuning_params` varchar(4096) DEFAULT NULL,
 `evaluation_metrics` varchar(4096) DEFAULT NULL,
 `creation_time` timestamp NULL DEFAULT NULL,
 `status` enum('QUEUED','SUCCEEDED','EXECUTING','FAILED') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
 `data_generation_params` varchar(4096) DEFAULT NULL,
 `logs_path` varchar(256) DEFAULT NULL,
 `training_req_id` int(11) DEFAULT NULL,
 `time_taken_for_training` varchar(100) DEFAULT NULL COMMENT 'in seconds',
  PRIMARY KEY (`req_id`),
  KEY `training_req_id` (`training_req_id`)

);