CREATE TABLE `transaction_promotion_evaluation_mapping` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `transaction_id` int(11) NOT NULL,
  `org_id` int(11) NOT NULL,
  `cart_evaluation_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (id, org_id),
  KEY `transaction_identifier` (org_id, transaction_id),
  KEY `redemption_identifier` (org_id, cart_evaluation_id),
  KEY `auto_update_time` (auto_update_time)
);
