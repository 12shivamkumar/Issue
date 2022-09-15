

CREATE TABLE `ei_factnames` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `factname` enum('lapsation_propensity','response_propensity','store_propensity','time_slot_propensity','product_propensity','transaction_propensity','ramzan_transaction_propensity','customer_life_time_value_fact','offer_propensity','repurchase_propensity','similar_items_attribute_based_fact','frequently_bought_together_fact','bought_together_also_bought_fact','overall_popular_items_fact','trending_items_fact','upsell_propensity_fact','cross_sell_propensity_fact','promotional_product_propensity','channel_propensity','rfm_segmentation', 'time_slot_propensity') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
);

