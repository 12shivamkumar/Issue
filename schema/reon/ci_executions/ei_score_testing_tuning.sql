

CREATE TABLE `ei_score_testing_tuning` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(15) NOT NULL,
  `objective` enum('lapsation_propensity','campaign_propensity','cluster_generation','upsell','cluster_labelling','store_personalization','time_personalization_rule_based','response_propensity','store_propensity','time_slot_propensity','product_propensity','transaction_propensity','channel_propensity', 'rfm_segmentation') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ei_score_generated_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ei_score_generation_status` varchar(20) NOT NULL,
  `ei_score_params` varchar(1500) DEFAULT NULL,
  `ei_score_tuning_results` varchar(4095) DEFAULT NULL,
  `result_path` varchar(150) DEFAULT NULL,
  `segment_id` int(11) DEFAULT NULL,
  `segment_name` enum('Cluster ALS','Cluster Word2Vec','Lapsation Model','Cluster Premium Shoppers','Cluster Bulk Buyers','Cluster Customer Summary','Cluster Brand Followers','Cluster Value Seekers','Cluster Loyalty','Cluster Discout Seekers','Cluster Frequent Buyers','Cluster Recency Based','Campaign Propensity','Cluster Upsell Users') DEFAULT NULL,
  `segment_upload_datetime` datetime DEFAULT NULL,
  `segment_description` varchar(4095) DEFAULT NULL,
  `segment_result_path` varchar(500) DEFAULT NULL,
  `upload_status` varchar(10) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1060 ;

