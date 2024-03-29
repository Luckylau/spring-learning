CREATE DATABASE IF NOT EXISTS learn
  DEFAULT CHARACTER SET = utf8mb4;
DROP TABLE IF EXISTS `users`;


CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增Id',
  `username` varchar(64) NOT NULL DEFAULT 'default' COMMENT '用户名',
  `password` varchar(64) NOT NULL DEFAULT 'default' COMMENT '密码',
  `email` varchar(64) NOT NULL DEFAULT 'default' COMMENT '邮箱地址',
  `enabled` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否有效',
  `role` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`Id`),
  UNIQUE KEY `unique_username`(`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户表';

INSERT INTO `users` (`username`, `password`, `email`, `enabled`, `role`)
VALUES
  ('learn', '$2a$10$zmJ5Kw2YC2uSjfEvtlIdzON//WDb9f7LbuYrSMk4sO/5SjUJuIYK.', 'laujunbupt0916@163.com', 1,'ROLE_ADMIN');