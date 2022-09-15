

CREATE TABLE `reports_by_org` (
  `org_id` int(11) NOT NULL,
  `report_id` int(11) NOT NULL,
  `print_enabled` int(1) DEFAULT '0',
  `export_enabled` int(1) DEFAULT '0',
  PRIMARY KEY (`org_id`,`report_id`)
) ;

