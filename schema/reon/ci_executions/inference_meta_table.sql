

CREATE TABLE `inference_meta_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `business_objective` enum('EI','personalized_campaigns') NOT NULL,
  `objective` enum('transaction_propensity','lapsation_propensity','response_propensity','product_propensity','store_propensity','time_slot_propensity','product_personalization','time_personalization','store_personalization','offer_propensity','repurchase_propensity','ramzan_transaction_propensity','customer_life_time_value_fact','similar_items_attribute_based_fact','frequently_bought_together_fact','bought_together_also_bought_fact','overall_popular_items_fact','trending_items_fact','upsell_propensity_fact','cross_sell_propensity_fact','promotional_product_propensity','channel_propensity', 'rfm_segmentation') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `req_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UC_inference_meta_table` (`org_id`,`business_objective`,`objective`)
);
