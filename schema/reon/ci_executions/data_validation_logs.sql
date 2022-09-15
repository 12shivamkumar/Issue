

CREATE TABLE `data_validation_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(20) NOT NULL,
  `updated_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `attrib_json` varchar(1000) DEFAULT NULL,
  `result_json` varchar(1000) DEFAULT NULL,
  `status` enum('QUEUED','EXECUTING','SUCCEEDED','FAILED') NOT NULL,
  `s3PathforPDF` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 ;

