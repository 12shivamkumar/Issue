

CREATE TABLE `purchased_features` (
  `org_id` int(11) NOT NULL,
  `purchase_id` int(11) NOT NULL,
  `feature_id` int(11) NOT NULL,
  `feature_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `populated_on` datetime NOT NULL,
  KEY `org_id` (`org_id`,`feature_code`)
) ;

