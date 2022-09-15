

CREATE TABLE `optimal_hyperparams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `snapshot_date` datetime DEFAULT NULL,
  `golden_params` varchar(2048) DEFAULT NULL,
  `golden_weights` varchar(2048) DEFAULT NULL,
  `last_updated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `start_time` timestamp NULL DEFAULT NULL,
  `strategy` enum('bayesian','random') NOT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `model_version` varchar(2048) DEFAULT NULL,
  `model_name` enum('implicit_als_user_item','implicit_als_user_category','popular','upsell_propensity','warm_user_response_classifier','warm_user_lapsation_propensity_classification','warm_user_lapsation_propensity_regression','cold_user_lapsation_propensity_classification','rpc_repurchase_recommendation','pg_repurchase_recommendation','bm25','segmented_popular','model_provisioning_cp','model_provisioning_reco','seasonality','segmentedEI','sequence_predictor','segmented_store_model','time_personalization_rule_based','up_sell','time_personalisation_lstm','sequence_repurchase','reco_popular','favourite','content_based','fbt','trending','CFII','similar') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `indexing_key` (`org_id`,`model_name`)
) ENGINE=InnoDB AUTO_INCREMENT=27 ;

