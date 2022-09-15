CREATE TABLE `request_status_table` (
  `id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT ,
  `uid` int(11) NOT NULL,
  `creation_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dvf_req_id` int(11) DEFAULT NULL,
  `training_req_id` int(11) DEFAULT NULL,
  `inference_req_id` int(11) DEFAULT NULL,
  `last_updated_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
   KEY `uid` (`uid`)
);
