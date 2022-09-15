CREATE TABLE `model_experiments_table` (
  `req_id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `business_objective` enum('Recommendation') NOT NULL,
  `objective` enum('popular','content_based','favourite','fbt','trending','cfii','similar','attribute_based','lightFM','repurchase','product_recommendation') NOT NULL,
  `tuning_params` varchar(2048) DEFAULT NULL,
  `model_weights` varchar(512) DEFAULT NULL,
  `evaluation_metrics` varchar(256) DEFAULT NULL,
  `creation_time` timestamp NULL DEFAULT NULL,
  `last_updated_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `start_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `end_time` timestamp NULL DEFAULT NULL,
  `status` enum('QUEUED','SUCCEEDED','EXECUTING','FAILED') NOT NULL,
  PRIMARY KEY (`req_id`)
);