

CREATE TABLE `model_evaluation_metrics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model_experiment_logs_id` int(11) NOT NULL,
  `transactions_count` bigint(20) DEFAULT NULL,
  `user_count` bigint(20) DEFAULT NULL,
  `item_count` bigint(20) DEFAULT NULL,
  `leafCategorycount` bigint(20) DEFAULT NULL,
  `Evaluation_Map` varchar(2048) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=122 ;

