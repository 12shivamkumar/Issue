CREATE TABLE `dvf_logs` (
 `id` int(11) NOT NULL AUTO_INCREMENT,
 `org_id` int(20) NOT NULL,
 `updated_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
 `attrib_json` varchar(1000) DEFAULT NULL,
 `dag_status` enum('QUEUED','EXECUTING','SUCCEEDED','FAILED') DEFAULT NULL,
 `s3_path_for_html_report` varchar(1024) DEFAULT NULL,
 `status_code` varchar(2048) DEFAULT NULL,
 `dvf_req_id` int(11) DEFAULT NULL,
 `processed_data` varchar(1024) DEFAULT NULL,
 `objective` enum('generic','transaction_propensity','lapsation_propensity','response_propensity','product_propensity','store_propensity','time_slot_propensity','product_personalization','time_personalization','store_personalization','offer_personalization','repurchase_propensity','ramzan_transaction_propensity','customer_life_time_value_fact','similar_items_attribute_based_fact','frequently_bought_together_fact','bought_together_also_bought_fact','overall_popular_items_fact','trending_items_fact','upsell_propensity_fact','cross_sell_propensity_fact','promotional_product_propensity','trending_categories','channel_propensity','segmented_trending', 'rfm_segmentation') NOT NULL,
 PRIMARY KEY (`id`),
 KEY `dvf_req_id` (`dvf_req_id`)
);