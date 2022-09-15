

CREATE TABLE `optimal_model_metrics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hyper_param_id` int(11) NOT NULL,
  `metric_key` varchar(2048) DEFAULT NULL,
  `metric_value` varchar(2048) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `indexing_key` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 ;

