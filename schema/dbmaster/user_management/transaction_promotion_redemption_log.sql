CREATE TABLE `transaction_promotion_redemption_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `transaction_id` int(11) NOT NULL,
  `org_id` int(11) NOT NULL,
  `transaction_identifier` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redemption_identifier` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum ('CART','LINEITEM'),
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (id,org_id),
  KEY `transaction_identifier` (org_id,transaction_identifier),
  KEY `redemption_identifier` (org_id,redemption_identifier),
  KEY `auto_update_time` (auto_update_time)
);
