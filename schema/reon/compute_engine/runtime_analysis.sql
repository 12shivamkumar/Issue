CREATE TABLE `runtime_analysis` (
 `id` int(11) NOT NULL AUTO_INCREMENT,
 `org_id` int(11) NOT NULL,
 `model_id` int(11) NOT NULL,
 `user_count` bigint(20) NOT NULL,
 `line_item_transaction_count` bigint(20) NOT NULL,
 `inventory_count` bigint(20) NOT NULL,
 `time_taken_in_mins` int(11) NOT NULL,
 `spark_config_json` text NOT NULL,
 `action` varchar(50) NOT NULL,
 `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
 PRIMARY KEY (`id`)
);