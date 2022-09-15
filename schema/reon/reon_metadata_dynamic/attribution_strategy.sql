CREATE TABLE `attribution_strategy` (
  `strategy_id` int(11) NOT NULL,
  `strategy_name` varchar(11) NOT NULL,
  `strategy_json` text NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`strategy_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10000000;
