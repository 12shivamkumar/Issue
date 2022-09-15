CREATE TABLE `scheduled_orgs` (
 `id` int(11) NOT NULL AUTO_INCREMENT,
 `org_id` int(11) NOT NULL,
 `objective` enum('transaction_propensity','lapsation_propensity','response_propensity','product_propensity','store_propensity','time_slot_propensity','repurchase_propensity','customer_life_time_value_fact','trending_categories','channel_propensity','segmented_trending', 'rfm_segmentation') NOT NULL,
 `last_updated` timestamp NULL DEFAULT NULL,
 `interval` int(11) NOT NULL,
 `uid` int(15) NOT NULL,
 `campaign_enabled` varchar(1) DEFAULT 'Y',
 PRIMARY KEY (`id`)
);