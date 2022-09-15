CREATE TABLE `model_type_intent_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model_type_id` int(11) NOT NULL,
  `intent_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
);