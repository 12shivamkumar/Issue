
CREATE TABLE `xengage_adchannels_delivery_details` (
 `message_id` int(11) NOT NULL,
 `org_id` int(11) NOT NULL,
 `sub_channel` enum('FACEBOOK', 'GOOGLE') COLLATE utf8mb4_unicode_ci NOT NULL,
 `ftp_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
 `fresh_service_id` int(11) DEFAULT 0,
 `created_time` datetime NOT NULL,
 PRIMARY KEY (`message_id`,`org_id`)
)