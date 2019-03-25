ALTER TABLE `tb_category`
ADD COLUMN   `create_person` varchar(64) NOT NULL DEFAULT 'system' COMMENT '创建人',
ADD COLUMN  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
ADD COLUMN  `update_person` varchar(64) NOT NULL DEFAULT 'system' COMMENT '更新人',
ADD COLUMN  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间'
