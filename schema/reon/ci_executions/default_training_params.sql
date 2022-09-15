CREATE TABLE `default_training_params` (
 `id` int(11) NOT NULL AUTO_INCREMENT,
 `org_id` int(20) DEFAULT NULL,
 `objective` enum('transaction_propensity','lapsation_propensity','response_propensity','product_propensity','store_propensity','time_slot_propensity','product_personalization','time_personalization','store_personalization','offer_personalization','repurchase_propensity','ramzan_transaction_propensity','customer_life_time_value_fact','similar_items_attribute_based_fact','frequently_bought_together_fact','bought_together_also_bought_fact','overall_popular_items_fact','trending_items_fact','upsell_propensity_fact','cross_sell_propensity_fact','promotional_product_propensity','trending_categories','channel_propensity','segmented_trending','rfm_segmentation') COLLATE utf8mb4_unicode_ci NOT NULL,
 `training_params` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
 `datagen_params` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
 PRIMARY KEY (`id`)
);