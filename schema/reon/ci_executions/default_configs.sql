

CREATE TABLE `default_configs` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `conf_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `conf_type` enum('spark_personalization_train','spark_personalization_train_validate','spark_personalization_scoring','spark_personalization_time_train','spark_personalization_time_scoring','personalization_train_params','personalization_train_validate_params','personalization_time_train_params','propensity_train_params','propensity_train_validate_params','spark_kpi','spark_full_munging','spark_propensity_train','spark_propensity_train_validate','spark_propensity_scoring') COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_conf_value` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `conf_type` (`conf_type`)
) ENGINE=InnoDB AUTO_INCREMENT=410  COLLATE=utf8mb4_unicode_ci;

