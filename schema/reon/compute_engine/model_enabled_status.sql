CREATE TABLE `model_enabled_status` (
  `org_id` int(11) DEFAULT NULL,
  `models` varchar(64) NOT NULL,
  `business_objective` enum('Recommendation') NOT NULL,
  `objective` enum('popular','content_based','favourite','fbt','trending','cfii','similar','attribute_based','lightFM','repurchase','product_recommendation') NOT NULL,
  `is_enabled` enum('0','1') NOT NULL,
  `last_updated_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);