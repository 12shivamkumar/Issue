

CREATE TABLE `model_ab_configs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `objective` enum('product_personalization','time_personalization','store_personalization') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `conf_name` enum('model_1_id','model_2_id','model_1_user_percentage','model_2_user_percentage','is_org_enabled') COLLATE utf8mb4_unicode_ci NOT NULL,
  `conf_value` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `org_id` (`org_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27  COLLATE=utf8mb4_unicode_ci;

