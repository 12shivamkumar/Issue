

CREATE TABLE `error_handlers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `host_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `error_code` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `error_handler` enum('CREDIT_EXPIRED','HTTP_TIMEOUT','INCORRECT_AUTH','INVALID_DEST','INVALID_ENC','INVALID_HTTP_RESP','INVALID_MSG','INVALID_MSG_ID','INVALID_SNDR','INVALID_SMS_LEN','NDNC','SRVC_UNAVL','FAIL_XML_PARSE','MSG_RETRY') COLLATE utf8mb4_unicode_ci NOT NULL,
  `error_desc` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `provider_name` (`host_name`,`error_code`)
) 

