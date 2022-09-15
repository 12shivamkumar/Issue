CREATE TABLE `model_threshold` (
`id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
`org_id` int(11) NOT NULL,
`uid` int(11) NOT NULL,
`precisionVal` DECIMAL(11,10) DEFAULT NULL,
`recall`  DECIMAL(11,10) DEFAULT NULL,
`accuracy` DECIMAL(4,2) DEFAULT NULL,
`retrainDuration` int(10) DEFAULT 180,
`f1_score` DECIMAL(11,10) DEFAULT NULL,
`meanroc` DECIMAL(11,10) DEFAULT NULL,
`hitrate` DECIMAL(11,10) DEFAULT NULL,
`map_score` DECIMAL(11,10) DEFAULT NULL,
`creation_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
`last_updated_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
 UNIQUE KEY `UC_model_threshold` (`uid`)
);