CREATE TABLE `model_notifications` (
  `org_id` int(11) NOT NULL,
  `emailids` varchar(1024) DEFAULT NULL,
  `isActive` enum('0','1') NOT NULL DEFAULT '0',
   PRIMARY KEY (org_id)
);