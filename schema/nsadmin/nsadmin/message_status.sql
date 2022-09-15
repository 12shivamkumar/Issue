

CREATE TABLE `message_status` (
  `id` smallint(6) NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `chargeable_type` enum('CHARGEABLE','NOT_CHARGEABLE') COLLATE utf8mb4_unicode_ci DEFAULT NULL
) 

