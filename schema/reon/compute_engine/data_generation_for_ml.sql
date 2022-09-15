CREATE TABLE `data_generation_for_ml` (
 `id` int(11) NOT NULL AUTO_INCREMENT,
 `org_id` int(20) NOT NULL,
 `model` enum('Transactions','TransactionsNProducts') NOT NULL,
 `updated_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
 `attrib_json` varchar(1000) DEFAULT NULL,
 `start_time` timestamp NULL DEFAULT NULL,
 `end_time` timestamp NULL DEFAULT NULL,
 `path` varchar(1024) DEFAULT NULL,
 `status` enum('QUEUED','EXECUTING','SUCCEEDED','FAILED') NOT NULL DEFAULT 'QUEUED',
 PRIMARY KEY (`id`)
);
