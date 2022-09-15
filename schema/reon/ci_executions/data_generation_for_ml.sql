

CREATE TABLE `data_generation_for_ml` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(20) NOT NULL,
  `model` enum('lapsation_propensity','campaign_propensity','segmented_popular','bm25','time_personalization_rule_based','time_slot_propensity','repurchase_propensity','category_sequence_predictor','store_enrichment','store_personalization','implicit_als_buffalo','time_personalization','time_personalization_ensemble','message_roi_prediction','response_propensity','transaction_propensity','transaction_propensity_gbm','customer_life_time_value_fact','ramzan_transaction_propensity','similar_items_attribute_based_fact','frequently_bought_together_fact','bought_together_also_bought_fact','overall_popular_items_fact','trending_items_fact','upsell_propensity_fact','cross_sell_propensity_fact','promotional_product_propensity','channel_propensity', 'offer_propensity', 'product_propensity', 'rfm_segmentation') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `attrib_json` varchar(1000) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `path` varchar(4096) DEFAULT NULL,
  `status` enum('QUEUED','EXECUTING','SUCCEEDED','FAILED') NOT NULL DEFAULT 'QUEUED',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=648 ;

