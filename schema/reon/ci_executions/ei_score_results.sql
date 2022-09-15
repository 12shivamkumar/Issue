

CREATE TABLE `ei_score_results` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(15) NOT NULL,
  `objective` enum('lapsation_propensity','response_propensity','upsell_propensity','store_propensity','time_slot_propensity','product_propensity','transaction_propensity','ramzan_transaction_propensity','offer_propensity','customer_life_time_value_fact','repurchase_propensity','similar_items_attribute_based_fact','frequently_bought_together_fact','bought_together_also_bought_fact','overall_popular_items_fact','trending_items_fact','upsell_propensity_fact','cross_sell_propensity_fact','promotional_product_propensity','channel_propensity', 'rfm_segmentation') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `req_id` int(11) NOT NULL DEFAULT '0',
  `ei_score_generated_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ei_score_generation_status` enum('SUCCEEDED','FAILED','QUEUED') NOT NULL,
  `ei_score_params` varchar(1500) DEFAULT NULL,
  `result_path` varchar(150) DEFAULT NULL,
  `fact_upload_datetime` datetime DEFAULT NULL,
  `failed_message` varchar(4095) DEFAULT NULL,
  `upload_meta_data` varchar(500) DEFAULT NULL,
  `upload_result_path` varchar(500) DEFAULT NULL,
  `upload_status` enum('EI_VALIDATION_FAILED','EI_UPLOADED','EI_SUCCEEDED','EI_FAILED') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
);

