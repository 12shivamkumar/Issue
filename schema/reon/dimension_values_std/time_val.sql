CREATE TABLE `time_val` (
`time_id` bigint(20) NOT NULL DEFAULT '0',
`time` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
`hour_of_day` int(11) NOT NULL,
`minute_of_day` int(11) NOT NULL,
`day_shift_no` int(11) NOT NULL,
`day_shift` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
`hour_range` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
PRIMARY KEY (`time_id`),
UNIQUE KEY `time` (`time`)
) ENGINE=MyISAM  COLLATE=utf8mb4_unicode_ci;
