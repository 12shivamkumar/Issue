
-- start  Schema : dbs_ws

CREATE TABLE `dbs_ws` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cluster_id` varchar(99) NOT NULL,
  `workspace_url` VARCHAR(255) NOT NULL,
  `max_requests` int NOT NULL,
  `cluster_type` enum('HIGH_CONCURRECY','STANDARD') NOT NULL DEFAULT 'HIGH_CONCURRECY',
  `access_tokens` TEXT NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
);

-- end  Schema :  dbs_ws
