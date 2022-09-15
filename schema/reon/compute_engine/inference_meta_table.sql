CREATE TABLE `inference_meta_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `business_objective` enum('Recommendation') NOT NULL,
  `objective` enum('popular','content_based','favourite','fbt','trending','cfii','similar','attribute_based','lightFM','repurchase','product_recommendation') NOT NULL,
  `creation_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `req_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
);