CREATE TABLE `sms_link_track_org_status` (
 `org_id` int(11) NOT NULL,
 `status` tinyint(1) NOT NULL DEFAULT '1',
 `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
 PRIMARY KEY (`org_id`)
)
