

CREATE TABLE `flintrock_clusters` (
  `cluster_id` int(11) NOT NULL AUTO_INCREMENT,
  `cluster_name` varchar(255) NOT NULL,
  `cluster_start_time` datetime NOT NULL,
  `cluster_end_time` datetime DEFAULT NULL,
  `launch_duration` int(11) NOT NULL,
  `instances` varchar(500) NOT NULL,
  `security_groups` varchar(500) NOT NULL,
  `security_group_status` varchar(20) DEFAULT NULL,
  `running_hours` double DEFAULT NULL,
  `num_instances` int(11) NOT NULL,
  `node_type` varchar(50) NOT NULL,
  `region` varchar(20) NOT NULL,
  `cost` double DEFAULT NULL,
  `status` enum('RUNNING','DESTROYED') NOT NULL,
  `launch_status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cluster_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3781 ;

