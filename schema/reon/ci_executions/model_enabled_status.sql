CREATE TABLE `model_enabled_status` (
  `uid` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `org_id` int(11) NOT NULL,
  `business_objective` enum('EI','personalized_campaigns') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `models` varchar(64) NOT NULL,
  `objective` enum('transaction_propensity','lapsation_propensity','response_propensity','product_propensity','store_propensity','time_slot_propensity','product_personalization','time_personalization','store_personalization','offer_propensity','repurchase_propensity','ramzan_transaction_propensity','customer_life_time_value_fact','similar_items_attribute_based_fact','frequently_bought_together_fact','bought_together_also_bought_fact','overall_popular_items_fact','trending_items_fact','upsell_propensity_fact','cross_sell_propensity_fact','promotional_product_propensity','channel_propensity', 'rfm_segmentation') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_enabled` enum('0','1') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_updated_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `creation_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `emailids` varchar(1024) DEFAULT NULL,
  `emailenabled` enum('0','1') NOT NULL DEFAULT '0',
   UNIQUE KEY `UC_model_enabled_status` (`org_id`,`business_objective`,`models`,`objective`,`is_enabled`),
   KEY `org_id` (`org_id`)
);