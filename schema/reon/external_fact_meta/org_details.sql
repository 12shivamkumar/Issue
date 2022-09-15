-- start  Schema : `org_details`
CREATE TABLE `org_details` (
  `org_id` int(11) NOT NULL,
  `be_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`org_id`) USING BTREE
);
