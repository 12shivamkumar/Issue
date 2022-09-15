-- start  Schema : `file_template_details`
CREATE TABLE `file_template_details` (
  `template_id` varchar(200) NOT NULL,
  `file_name` varchar(100) NOT NULL,
  `fact_name` varchar(100) NOT NULL,
  `template` text NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `scope_id` int(11) NOT NULL DEFAULT '-1000',
  PRIMARY KEY (`template_id`),
  UNIQUE KEY `template_id` (`template_id`) USING BTREE
);
