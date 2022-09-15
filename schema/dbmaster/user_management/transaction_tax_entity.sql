CREATE TABLE `transaction_tax_entity`
(
    `id`                    bigint(20) NOT NULL AUTO_INCREMENT,
    `org_id`                bigint(20) NOT NULL,
    `user_id`               int(11) NOT NULL,
    `transaction_id`        bigint(20) NOT NULL DEFAULT -1,
    `line_item_id`          bigint(20) NOT NULL DEFAULT -1,
    `promotion_id`          varchar(50) NOT NULL,
    `promotion_identifier`  varchar(100) NOT NULL,
    `tax_applied_on`        enum('TRANSACTION','LINEITEM') COLLATE utf8mb4_unicode_ci DEFAULT 'LINEITEM',
    `tax_external_id`       varchar(50)          DEFAULT NULL,
    `tax_name`              varchar(50)          DEFAULT NULL,
    `tax_amount`            decimal(15, 3)       DEFAULT NULL,
    `tax_additional_amount` decimal(15, 3)       DEFAULT NULL,
    `tax_rate`              decimal(15, 3)       DEFAULT NULL,
    `notes`                 varchar(50)          DEFAULT NULL,
    `created_by`            int(11) DEFAULT NULL,
    `created_on`            timestamp   NOT NULL DEFAULT '0000-00-00 00:00:00',
    `auto_update_time`      timestamp   NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`, `org_id`),
    KEY                     `auto_update_time` (`auto_update_time`),
    KEY                     `tax_key` (`org_id`,`transaction_id`,`user_id`,`tax_applied_on`)
);
