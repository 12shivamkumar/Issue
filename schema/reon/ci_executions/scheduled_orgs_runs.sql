CREATE TABLE `scheduled_orgs_runs` (
 `id` int(11) NOT NULL AUTO_INCREMENT,
 `org_id` int(11) NOT NULL,
 `objective` enum('transaction_propensity','lapsation_propensity','response_propensity','product_propensity','store_propensity','time_slot_propensity','product_personalization','time_personalization','store_personalization','offer_personalization','repurchase_propensity','ramzan_transaction_propensity','customer_life_time_value_fact','similar_items_attribute_based_fact','frequently_bought_together_fact','bought_together_also_bought_fact','overall_popular_items_fact','trending_items_fact','upsell_propensity_fact','cross_sell_propensity_fact','promotional_product_propensity','trending_categories','channel_propensity','segmented_trending', 'rfm_segmentation') NOT NULL,
 `global_dag_params` text NOT NULL,
 `last_updated` timestamp NULL DEFAULT NULL,
 `status` enum('QUEUED','SUCCEEDED','EXECUTING','FAILED') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
 `error_msg` VARCHAR(512),
 `start_time` timestamp NULL DEFAULT NULL,
 `end_time` timestamp NULL DEFAULT NULL,
 PRIMARY KEY (`id`)
);