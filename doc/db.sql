/*
Navicat MySQL Data Transfer

Source Server         : aliyun
Source Server Version : 50721
Source Host           : 47.75.85.48:3306
Source Database       : uber

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2019-05-05 09:22:20
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `acct_info`
-- ----------------------------
DROP TABLE IF EXISTS `acct_info`;
CREATE TABLE `acct_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `gmt_create` datetime DEFAULT NULL,
  `gmt_modified` datetime DEFAULT NULL,
  `status_id` tinyint(3) DEFAULT NULL COMMENT '1 正常 2 冻结 9注销',
  `user_info_id` bigint(20) DEFAULT NULL COMMENT '用户ID',
  `total_balance` bigint(20) DEFAULT NULL COMMENT '总余额',
  `last_trade_balance` bigint(20) DEFAULT NULL COMMENT '最后交易余额',
  `last_trade_date` datetime DEFAULT NULL COMMENT '最后交易时间',
  `verification_code` varchar(100) DEFAULT NULL COMMENT '校验码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='账户信息';

-- ----------------------------
-- Records of acct_info
-- ----------------------------
INSERT INTO acct_info VALUES ('1', '2018-03-19 22:04:52', '2018-03-19 23:00:51', '1', '2', '8772000', '8871800', '2018-03-19 23:00:51', '4c135f1c862838a94c7840ff62787e2f');

-- ----------------------------
-- Table structure for `acct_log`
-- ----------------------------
DROP TABLE IF EXISTS `acct_log`;
CREATE TABLE `acct_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `gmt_create` datetime DEFAULT NULL,
  `gmt_modified` datetime DEFAULT NULL,
  `user_info_id` bigint(20) DEFAULT NULL COMMENT '用户ID',
  `acct_info_id` bigint(20) DEFAULT NULL COMMENT '账户ID',
  `bill_type` tinyint(3) DEFAULT NULL COMMENT '交易单类型 1支付单 2充值单 3退款单 4提现单',
  `bill_status` tinyint(3) DEFAULT NULL COMMENT '账单状态：1 成功 2 异常',
  `trade_type` tinyint(3) DEFAULT NULL COMMENT '交易类型：1 入账 2 出账',
  `pay_serial_no` bigint(20) DEFAULT NULL COMMENT '支付交易订单号',
  `amount` int(11) DEFAULT NULL COMMENT '金额',
  `total_balance` bigint(20) DEFAULT NULL COMMENT '余额',
  PRIMARY KEY (`id`),
  KEY `index_create_user_acct` (`gmt_create`,`user_info_id`,`acct_info_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='账户日志';

-- ----------------------------
-- Records of acct_log
-- ----------------------------
INSERT INTO acct_log VALUES ('1', '2018-03-19 23:00:07', '2018-03-19 23:00:07', '2', '1', '1', '1', '1', '975748757164920833', '98000', '98000');
INSERT INTO acct_log VALUES ('2', '2018-03-19 23:00:07', '2018-03-19 23:00:07', '2', '1', '1', '1', '1', '975748757106200578', '98000', '196000');
INSERT INTO acct_log VALUES ('3', '2018-03-19 23:00:07', '2018-03-19 23:00:07', '2', '1', '1', '1', '1', '975748757106200577', '98000', '294000');
INSERT INTO acct_log VALUES ('4', '2018-03-19 23:00:07', '2018-03-19 23:00:07', '2', '1', '1', '1', '1', '975748757273972737', '98000', '392000');
INSERT INTO acct_log VALUES ('5', '2018-03-19 23:00:07', '2018-03-19 23:00:07', '2', '1', '1', '1', '1', '975748757106200580', '98000', '490000');
INSERT INTO acct_log VALUES ('6', '2018-03-19 23:00:07', '2018-03-19 23:00:07', '2', '1', '1', '1', '1', '975748757328498689', '98000', '588000');
INSERT INTO acct_log VALUES ('7', '2018-03-19 23:00:07', '2018-03-19 23:00:07', '2', '1', '1', '1', '1', '975748757106200579', '98000', '686000');
INSERT INTO acct_log VALUES ('8', '2018-03-19 23:00:07', '2018-03-19 23:00:07', '2', '1', '1', '1', '1', '975748757257195522', '98000', '784000');
INSERT INTO acct_log VALUES ('9', '2018-03-19 23:00:07', '2018-03-19 23:00:07', '2', '1', '1', '1', '1', '975748757626294274', '98000', '882000');
INSERT INTO acct_log VALUES ('10', '2018-03-19 23:00:07', '2018-03-19 23:00:07', '2', '1', '1', '1', '1', '975748757634682881', '98000', '980000');
INSERT INTO acct_log VALUES ('11', '2018-03-19 23:00:07', '2018-03-19 23:00:07', '2', '1', '1', '1', '1', '975748758410629122', '98000', '1078000');
INSERT INTO acct_log VALUES ('12', '2018-03-19 23:00:07', '2018-03-19 23:00:07', '2', '1', '1', '1', '1', '975748758431600641', '98000', '1176000');
INSERT INTO acct_log VALUES ('13', '2018-03-19 23:00:07', '2018-03-19 23:00:07', '2', '1', '1', '1', '1', '975748759429844993', '98000', '1274000');
INSERT INTO acct_log VALUES ('14', '2018-03-19 23:00:08', '2018-03-19 23:00:08', '2', '1', '1', '1', '1', '975748759790555138', '98000', '1372000');
INSERT INTO acct_log VALUES ('15', '2018-03-19 23:00:08', '2018-03-19 23:00:08', '2', '1', '1', '1', '1', '975748759949938690', '98000', '1470000');
INSERT INTO acct_log VALUES ('16', '2018-03-19 23:00:08', '2018-03-19 23:00:08', '2', '1', '1', '1', '1', '975748760130293762', '98000', '1568000');
INSERT INTO acct_log VALUES ('17', '2018-03-19 23:00:08', '2018-03-19 23:00:08', '2', '1', '1', '1', '1', '975748760256122881', '98000', '1666000');
INSERT INTO acct_log VALUES ('18', '2018-03-19 23:00:08', '2018-03-19 23:00:08', '2', '1', '1', '1', '1', '975748760432283649', '98000', '1764000');
INSERT INTO acct_log VALUES ('19', '2018-03-19 23:00:08', '2018-03-19 23:00:08', '2', '1', '1', '1', '1', '975748760604250114', '98000', '1862000');
INSERT INTO acct_log VALUES ('20', '2018-03-19 23:00:08', '2018-03-19 23:00:08', '2', '1', '1', '1', '1', '975748760776216578', '98000', '1960000');
INSERT INTO acct_log VALUES ('21', '2018-03-19 23:00:08', '2018-03-19 23:00:08', '2', '1', '1', '1', '1', '975748760906240002', '98000', '2058000');
INSERT INTO acct_log VALUES ('22', '2018-03-19 23:00:08', '2018-03-19 23:00:08', '2', '1', '1', '1', '1', '975748761044652033', '98000', '2156000');
INSERT INTO acct_log VALUES ('23', '2018-03-19 23:00:08', '2018-03-19 23:00:08', '2', '1', '1', '1', '1', '975748761388584963', '98000', '2254000');
INSERT INTO acct_log VALUES ('24', '2018-03-19 23:00:08', '2018-03-19 23:00:08', '2', '1', '1', '1', '1', '975748761388584962', '98000', '2352000');
INSERT INTO acct_log VALUES ('25', '2018-03-19 23:00:08', '2018-03-19 23:00:08', '2', '1', '1', '1', '1', '975748761485053953', '98000', '2450000');
INSERT INTO acct_log VALUES ('26', '2018-03-19 23:00:08', '2018-03-19 23:00:08', '2', '1', '1', '1', '1', '975748761975787522', '98000', '2548000');
INSERT INTO acct_log VALUES ('27', '2018-03-19 23:00:08', '2018-03-19 23:00:08', '2', '1', '1', '1', '1', '975748762097422338', '98000', '2646000');
INSERT INTO acct_log VALUES ('28', '2018-03-19 23:00:08', '2018-03-19 23:00:08', '2', '1', '1', '1', '1', '975748762227445762', '98000', '2744000');
INSERT INTO acct_log VALUES ('29', '2018-03-19 23:00:08', '2018-03-19 23:00:08', '2', '1', '1', '1', '1', '975748762336497665', '98000', '2842000');
INSERT INTO acct_log VALUES ('30', '2018-03-19 23:00:08', '2018-03-19 23:00:08', '2', '1', '1', '1', '1', '975748762470715393', '98000', '2940000');
INSERT INTO acct_log VALUES ('31', '2018-03-19 23:00:08', '2018-03-19 23:00:08', '2', '1', '1', '1', '1', '975748762596544513', '98000', '3038000');
INSERT INTO acct_log VALUES ('32', '2018-03-19 23:00:08', '2018-03-19 23:00:08', '2', '1', '1', '1', '1', '975748762755928066', '98000', '3136000');
INSERT INTO acct_log VALUES ('33', '2018-03-19 23:00:08', '2018-03-19 23:00:08', '2', '1', '1', '1', '1', '975748762890145793', '98000', '3234000');
INSERT INTO acct_log VALUES ('34', '2018-03-19 23:00:08', '2018-03-19 23:00:08', '2', '1', '1', '1', '1', '975748763041140738', '98000', '3332000');
INSERT INTO acct_log VALUES ('35', '2018-03-19 23:00:08', '2018-03-19 23:00:08', '2', '1', '1', '1', '1', '975748763162775553', '98000', '3430000');
INSERT INTO acct_log VALUES ('36', '2018-03-19 23:00:08', '2018-03-19 23:00:08', '2', '1', '1', '1', '1', '975748763296993281', '98000', '3528000');
INSERT INTO acct_log VALUES ('37', '2018-03-19 23:00:08', '2018-03-19 23:00:08', '2', '1', '1', '1', '1', '975748763439599617', '98000', '3626000');
INSERT INTO acct_log VALUES ('38', '2018-03-19 23:00:08', '2018-03-19 23:00:08', '2', '1', '1', '1', '1', '975748763573817346', '98000', '3724000');
INSERT INTO acct_log VALUES ('39', '2018-03-19 23:00:08', '2018-03-19 23:00:08', '2', '1', '1', '1', '1', '975748763708035073', '98000', '3822000');
INSERT INTO acct_log VALUES ('40', '2018-03-19 23:00:08', '2018-03-19 23:00:08', '2', '1', '1', '1', '1', '975748763842252802', '98000', '3920000');
INSERT INTO acct_log VALUES ('41', '2018-03-19 23:00:09', '2018-03-19 23:00:09', '2', '1', '1', '1', '1', '975748763993247745', '98000', '4018000');
INSERT INTO acct_log VALUES ('42', '2018-03-19 23:00:09', '2018-03-19 23:00:09', '2', '1', '1', '1', '1', '975748764144242690', '98000', '4116000');
INSERT INTO acct_log VALUES ('43', '2018-03-19 23:00:09', '2018-03-19 23:00:09', '2', '1', '1', '1', '1', '975748764270071809', '98000', '4214000');
INSERT INTO acct_log VALUES ('44', '2018-03-19 23:00:09', '2018-03-19 23:00:09', '2', '1', '1', '1', '1', '975748764395900930', '98000', '4312000');
INSERT INTO acct_log VALUES ('45', '2018-03-19 23:00:09', '2018-03-19 23:00:09', '2', '1', '1', '1', '1', '975748764521730050', '98000', '4410000');
INSERT INTO acct_log VALUES ('46', '2018-03-19 23:00:09', '2018-03-19 23:00:09', '2', '1', '1', '1', '1', '975748764999880706', '98000', '4508000');
INSERT INTO acct_log VALUES ('47', '2018-03-19 23:00:09', '2018-03-19 23:00:09', '2', '1', '1', '1', '1', '975748764999880707', '98000', '4606000');
INSERT INTO acct_log VALUES ('48', '2018-03-19 23:00:09', '2018-03-19 23:00:09', '2', '1', '1', '1', '1', '975748765004075010', '98000', '4704000');
INSERT INTO acct_log VALUES ('49', '2018-03-19 23:00:09', '2018-03-19 23:00:09', '2', '1', '1', '1', '1', '975748765599666177', '98000', '4802000');
INSERT INTO acct_log VALUES ('50', '2018-03-19 23:00:09', '2018-03-19 23:00:09', '2', '1', '1', '1', '1', '975748766862151682', '98000', '4900000');
INSERT INTO acct_log VALUES ('51', '2018-03-19 23:00:09', '2018-03-19 23:00:09', '2', '1', '1', '1', '1', '975748767004758017', '98000', '4998000');
INSERT INTO acct_log VALUES ('52', '2018-03-19 23:00:09', '2018-03-19 23:00:09', '2', '1', '1', '1', '1', '975748767122198530', '98000', '5096000');
INSERT INTO acct_log VALUES ('53', '2018-03-19 23:00:09', '2018-03-19 23:00:09', '2', '1', '1', '1', '1', '975748767260610561', '98000', '5194000');
INSERT INTO acct_log VALUES ('54', '2018-03-19 23:00:09', '2018-03-19 23:00:09', '2', '1', '1', '1', '1', '975748767373856770', '98000', '5292000');
INSERT INTO acct_log VALUES ('55', '2018-03-19 23:00:09', '2018-03-19 23:00:09', '2', '1', '1', '1', '1', '975748767520657409', '98000', '5390000');
INSERT INTO acct_log VALUES ('56', '2018-03-19 23:00:09', '2018-03-19 23:00:09', '2', '1', '1', '1', '1', '975748767701012481', '98000', '5488000');
INSERT INTO acct_log VALUES ('57', '2018-03-19 23:00:09', '2018-03-19 23:00:09', '2', '1', '1', '1', '1', '975748767856201730', '98000', '5586000');
INSERT INTO acct_log VALUES ('58', '2018-03-19 23:00:09', '2018-03-19 23:00:09', '2', '1', '1', '1', '1', '975748768011390978', '98000', '5684000');
INSERT INTO acct_log VALUES ('59', '2018-03-19 23:00:10', '2018-03-19 23:00:10', '2', '1', '1', '1', '1', '975748768141414401', '98000', '5782000');
INSERT INTO acct_log VALUES ('60', '2018-03-19 23:00:10', '2018-03-19 23:00:10', '2', '1', '1', '1', '1', '975748768271437826', '98000', '5880000');
INSERT INTO acct_log VALUES ('61', '2018-03-19 23:00:10', '2018-03-19 23:00:10', '2', '1', '1', '1', '1', '975748768439209986', '98000', '5978000');
INSERT INTO acct_log VALUES ('62', '2018-03-19 23:00:10', '2018-03-19 23:00:10', '2', '1', '1', '1', '1', '975748768594399234', '98000', '6076000');
INSERT INTO acct_log VALUES ('63', '2018-03-19 23:00:10', '2018-03-19 23:00:10', '2', '1', '1', '1', '1', '975748768766365698', '98000', '6174000');
INSERT INTO acct_log VALUES ('64', '2018-03-19 23:00:10', '2018-03-19 23:00:10', '2', '1', '1', '1', '1', '975748768913166337', '98000', '6272000');
INSERT INTO acct_log VALUES ('65', '2018-03-19 23:00:10', '2018-03-19 23:00:10', '2', '1', '1', '1', '1', '975748769059966977', '98000', '6370000');
INSERT INTO acct_log VALUES ('66', '2018-03-19 23:00:10', '2018-03-19 23:00:10', '2', '1', '1', '1', '1', '975748769219350529', '98000', '6468000');
INSERT INTO acct_log VALUES ('67', '2018-03-19 23:00:10', '2018-03-19 23:00:10', '2', '1', '1', '1', '1', '975748769403899905', '98000', '6566000');
INSERT INTO acct_log VALUES ('68', '2018-03-19 23:00:10', '2018-03-19 23:00:10', '2', '1', '1', '1', '1', '975748769554894850', '98000', '6664000');
INSERT INTO acct_log VALUES ('69', '2018-03-19 23:00:10', '2018-03-19 23:00:10', '2', '1', '1', '1', '1', '975748769689112578', '98000', '6762000');
INSERT INTO acct_log VALUES ('70', '2018-03-19 23:00:10', '2018-03-19 23:00:10', '2', '1', '1', '1', '1', '975748769852690434', '98000', '6860000');
INSERT INTO acct_log VALUES ('71', '2018-03-19 23:00:10', '2018-03-19 23:00:10', '2', '1', '1', '1', '1', '975748770012073986', '98000', '6958000');
INSERT INTO acct_log VALUES ('72', '2018-03-19 23:00:10', '2018-03-19 23:00:10', '2', '1', '1', '1', '1', '975748770163068929', '98000', '7056000');
INSERT INTO acct_log VALUES ('73', '2018-03-19 23:00:10', '2018-03-19 23:00:10', '2', '1', '1', '1', '1', '975748770284703745', '98000', '7154000');
INSERT INTO acct_log VALUES ('74', '2018-03-19 23:00:10', '2018-03-19 23:00:10', '2', '1', '1', '1', '1', '975748770431504385', '98000', '7252000');
INSERT INTO acct_log VALUES ('75', '2018-03-19 23:00:10', '2018-03-19 23:00:10', '2', '1', '1', '1', '1', '975748770603470849', '98000', '7350000');
INSERT INTO acct_log VALUES ('76', '2018-03-19 23:00:10', '2018-03-19 23:00:10', '2', '1', '1', '1', '1', '975748770729299970', '98000', '7448000');
INSERT INTO acct_log VALUES ('77', '2018-03-19 23:00:10', '2018-03-19 23:00:10', '2', '1', '1', '1', '1', '975748770855129089', '98000', '7546000');
INSERT INTO acct_log VALUES ('78', '2018-03-19 23:00:10', '2018-03-19 23:00:10', '2', '1', '1', '1', '1', '975748770959986689', '98000', '7644000');
INSERT INTO acct_log VALUES ('79', '2018-03-19 23:00:10', '2018-03-19 23:00:10', '2', '1', '1', '1', '1', '975748771077427202', '98000', '7742000');
INSERT INTO acct_log VALUES ('80', '2018-03-19 23:00:10', '2018-03-19 23:00:10', '2', '1', '1', '1', '1', '975748771232616449', '98000', '7840000');
INSERT INTO acct_log VALUES ('81', '2018-03-19 23:00:10', '2018-03-19 23:00:10', '2', '1', '1', '1', '1', '975748771366834177', '98000', '7938000');
INSERT INTO acct_log VALUES ('82', '2018-03-19 23:00:10', '2018-03-19 23:00:10', '2', '1', '1', '1', '1', '975748771542994945', '98000', '8036000');
INSERT INTO acct_log VALUES ('83', '2018-03-19 23:00:10', '2018-03-19 23:00:10', '2', '1', '1', '1', '1', '975748771702378498', '98000', '8134000');
INSERT INTO acct_log VALUES ('84', '2018-03-19 23:00:10', '2018-03-19 23:00:10', '2', '1', '1', '1', '1', '975748771794653185', '98000', '8232000');
INSERT INTO acct_log VALUES ('85', '2018-03-19 23:00:10', '2018-03-19 23:00:10', '2', '1', '1', '1', '1', '975748771907899394', '98000', '8330000');
INSERT INTO acct_log VALUES ('86', '2018-03-19 23:00:10', '2018-03-19 23:00:10', '2', '1', '1', '1', '1', '975748772012756993', '98000', '8428000');
INSERT INTO acct_log VALUES ('87', '2018-03-19 23:00:10', '2018-03-19 23:00:10', '2', '1', '1', '1', '1', '975748772205694977', '98000', '8526000');
INSERT INTO acct_log VALUES ('88', '2018-03-19 23:00:11', '2018-03-19 23:00:11', '2', '1', '1', '1', '1', '975748772344107010', '98000', '8624000');
INSERT INTO acct_log VALUES ('89', '2018-03-19 23:00:11', '2018-03-19 23:00:11', '2', '1', '1', '1', '1', '975748772469936130', '98000', '8722000');
INSERT INTO acct_log VALUES ('90', '2018-03-19 23:00:11', '2018-03-19 23:00:11', '2', '1', '1', '1', '1', '975748772633513985', '98000', '8820000');
INSERT INTO acct_log VALUES ('91', '2018-03-19 23:00:11', '2018-03-19 23:00:11', '2', '1', '1', '1', '1', '975748773489152002', '98000', '8918000');
INSERT INTO acct_log VALUES ('92', '2018-03-19 23:00:11', '2018-03-19 23:00:11', '2', '1', '1', '1', '1', '975748773661118466', '98000', '9016000');
INSERT INTO acct_log VALUES ('93', '2018-03-19 23:00:11', '2018-03-19 23:00:11', '2', '1', '1', '1', '1', '975748773866639362', '98000', '9114000');
INSERT INTO acct_log VALUES ('94', '2018-03-19 23:00:11', '2018-03-19 23:00:11', '2', '1', '1', '1', '1', '975748774088937473', '98000', '9212000');
INSERT INTO acct_log VALUES ('95', '2018-03-19 23:00:11', '2018-03-19 23:00:11', '2', '1', '1', '1', '1', '975748774231543810', '98000', '9310000');
INSERT INTO acct_log VALUES ('96', '2018-03-19 23:00:11', '2018-03-19 23:00:11', '2', '1', '1', '1', '1', '975748774378344450', '98000', '9408000');
INSERT INTO acct_log VALUES ('97', '2018-03-19 23:00:11', '2018-03-19 23:00:11', '2', '1', '1', '1', '1', '975748774562893826', '98000', '9506000');
INSERT INTO acct_log VALUES ('98', '2018-03-19 23:00:11', '2018-03-19 23:00:11', '2', '1', '1', '1', '1', '975748774709694465', '98000', '9604000');
INSERT INTO acct_log VALUES ('99', '2018-03-19 23:00:11', '2018-03-19 23:00:11', '2', '1', '1', '1', '1', '975748774864883713', '98000', '9702000');
INSERT INTO acct_log VALUES ('100', '2018-03-19 23:00:11', '2018-03-19 23:00:11', '2', '1', '1', '1', '1', '975748775020072962', '98000', '9800000');
INSERT INTO acct_log VALUES ('101', '2018-03-19 23:00:38', '2018-03-19 23:00:38', '2', '1', '1', '1', '2', '975748888765403138', '3000', '9797000');
INSERT INTO acct_log VALUES ('102', '2018-03-19 23:00:38', '2018-03-19 23:00:38', '2', '1', '1', '1', '2', '975748889017061378', '3000', '9794000');
INSERT INTO acct_log VALUES ('103', '2018-03-19 23:00:38', '2018-03-19 23:00:38', '2', '1', '1', '1', '2', '975748889289691138', '3000', '9791000');
INSERT INTO acct_log VALUES ('104', '2018-03-19 23:00:38', '2018-03-19 23:00:38', '2', '1', '1', '1', '2', '975748889511989250', '3000', '9788000');
INSERT INTO acct_log VALUES ('105', '2018-03-19 23:00:39', '2018-03-19 23:00:39', '2', '1', '1', '1', '2', '975748889704927233', '3000', '9785000');
INSERT INTO acct_log VALUES ('106', '2018-03-19 23:00:39', '2018-03-19 23:00:39', '2', '1', '1', '1', '2', '975748889931419650', '3000', '9782000');
INSERT INTO acct_log VALUES ('107', '2018-03-19 23:00:39', '2018-03-19 23:00:39', '2', '1', '1', '1', '2', '975748890174689282', '3000', '9779000');
INSERT INTO acct_log VALUES ('108', '2018-03-19 23:00:39', '2018-03-19 23:00:39', '2', '1', '1', '1', '2', '975748891634307074', '3000', '9776000');
INSERT INTO acct_log VALUES ('109', '2018-03-19 23:00:39', '2018-03-19 23:00:39', '2', '1', '1', '1', '2', '975748891835633666', '3000', '9773000');
INSERT INTO acct_log VALUES ('110', '2018-03-19 23:00:39', '2018-03-19 23:00:39', '2', '1', '1', '1', '2', '975748892057931777', '3000', '9770000');
INSERT INTO acct_log VALUES ('111', '2018-03-19 23:00:51', '2018-03-19 23:00:51', '2', '1', '1', '1', '2', '975748940531503106', '99800', '9670200');
INSERT INTO acct_log VALUES ('112', '2018-03-19 23:00:51', '2018-03-19 23:00:51', '2', '1', '1', '1', '2', '975748940804132866', '99800', '9570400');
INSERT INTO acct_log VALUES ('113', '2018-03-19 23:00:51', '2018-03-19 23:00:51', '2', '1', '1', '1', '2', '975748941051596802', '99800', '9470600');
INSERT INTO acct_log VALUES ('114', '2018-03-19 23:00:51', '2018-03-19 23:00:51', '2', '1', '1', '1', '2', '975748941269700609', '99800', '9370800');
INSERT INTO acct_log VALUES ('115', '2018-03-19 23:00:51', '2018-03-19 23:00:51', '2', '1', '1', '1', '2', '975748941508775938', '99800', '9271000');
INSERT INTO acct_log VALUES ('116', '2018-03-19 23:00:51', '2018-03-19 23:00:51', '2', '1', '1', '1', '2', '975748941752045570', '99800', '9171200');
INSERT INTO acct_log VALUES ('117', '2018-03-19 23:00:51', '2018-03-19 23:00:51', '2', '1', '1', '1', '2', '975748941995315201', '99800', '9071400');
INSERT INTO acct_log VALUES ('118', '2018-03-19 23:00:51', '2018-03-19 23:00:51', '2', '1', '1', '1', '2', '975748942242779137', '99800', '8971600');
INSERT INTO acct_log VALUES ('119', '2018-03-19 23:00:51', '2018-03-19 23:00:51', '2', '1', '1', '1', '2', '975748942486048770', '99800', '8871800');
INSERT INTO acct_log VALUES ('120', '2018-03-19 23:00:51', '2018-03-19 23:00:51', '2', '1', '1', '1', '2', '975748942720929794', '99800', '8772000');

-- ----------------------------
-- Table structure for `arc_project`
-- ----------------------------
DROP TABLE IF EXISTS `arc_project`;
CREATE TABLE `arc_project` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(800) NOT NULL COMMENT '项目名称',
  `description` varchar(1000) NOT NULL,
  `status` tinyint(4) NOT NULL COMMENT '状态: 0未开始 1 正在进行  2 已完成',
  `start_date` date NOT NULL COMMENT '开始日期',
  `end_date` date NOT NULL COMMENT '结束日期',
  `finish_date` date NOT NULL COMMENT '完成日期',
  `resource_path` varchar(200) NOT NULL COMMENT '资源路径',
  `owner_id` bigint(20) NOT NULL COMMENT '项目负责人Id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='项目表';

-- ----------------------------
-- Records of arc_project
-- ----------------------------

-- ----------------------------
-- Table structure for `area_info`
-- ----------------------------
DROP TABLE IF EXISTS `area_info`;
CREATE TABLE `area_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `province_code` char(6) DEFAULT NULL COMMENT '省编号',
  `city_code` char(6) DEFAULT NULL COMMENT '市编号',
  `area_code` char(4) DEFAULT NULL COMMENT '区号',
  `province_name` varchar(10) DEFAULT NULL COMMENT '省名称',
  `city_name` varchar(20) DEFAULT NULL COMMENT '市名称',
  `area_type` tinyint(3) DEFAULT NULL COMMENT '分类：1.省 2 市',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=361 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='地区信息';

-- ----------------------------
-- Records of area_info
-- ----------------------------
INSERT INTO area_info VALUES ('1', '100000', null, null, '全国', null, '1');
INSERT INTO area_info VALUES ('2', '110000', null, null, '北京', null, '1');
INSERT INTO area_info VALUES ('3', '120000', null, null, '天津', null, '1');
INSERT INTO area_info VALUES ('4', '130000', null, null, '河北', null, '1');
INSERT INTO area_info VALUES ('5', '140000', null, null, '山西', null, '1');
INSERT INTO area_info VALUES ('6', '150000', null, null, '内蒙古', null, '1');
INSERT INTO area_info VALUES ('7', '210000', null, null, '辽宁', null, '1');
INSERT INTO area_info VALUES ('8', '220000', null, null, '吉林', null, '1');
INSERT INTO area_info VALUES ('9', '230000', null, null, '黑龙江', null, '1');
INSERT INTO area_info VALUES ('10', '310000', null, null, '上海', null, '1');
INSERT INTO area_info VALUES ('11', '320000', null, null, '江苏', null, '1');
INSERT INTO area_info VALUES ('12', '330000', null, null, '浙江', null, '1');
INSERT INTO area_info VALUES ('13', '340000', null, null, '安徽', null, '1');
INSERT INTO area_info VALUES ('14', '350000', null, null, '福建', null, '1');
INSERT INTO area_info VALUES ('15', '360000', null, null, '江西', null, '1');
INSERT INTO area_info VALUES ('16', '370000', null, null, '山东', null, '1');
INSERT INTO area_info VALUES ('17', '410000', null, null, '河南', null, '1');
INSERT INTO area_info VALUES ('18', '420000', null, null, '湖北', null, '1');
INSERT INTO area_info VALUES ('19', '430000', null, null, '湖南', null, '1');
INSERT INTO area_info VALUES ('20', '440000', null, null, '广东', null, '1');
INSERT INTO area_info VALUES ('21', '450000', null, null, '广西', null, '1');
INSERT INTO area_info VALUES ('22', '460000', null, null, '海南', null, '1');
INSERT INTO area_info VALUES ('23', '500000', null, null, '重庆', null, '1');
INSERT INTO area_info VALUES ('24', '510000', null, null, '四川', null, '1');
INSERT INTO area_info VALUES ('25', '520000', null, null, '贵州', null, '1');
INSERT INTO area_info VALUES ('26', '530000', null, null, '云南', null, '1');
INSERT INTO area_info VALUES ('27', '540000', null, null, '西藏', null, '1');
INSERT INTO area_info VALUES ('28', '610000', null, null, '陕西', null, '1');
INSERT INTO area_info VALUES ('29', '620000', null, null, '甘肃', null, '1');
INSERT INTO area_info VALUES ('30', '630000', null, null, '青海', null, '1');
INSERT INTO area_info VALUES ('31', '640000', null, null, '宁夏', null, '1');
INSERT INTO area_info VALUES ('32', '650000', null, null, '新疆', null, '1');
INSERT INTO area_info VALUES ('33', '110000', '110000', '010', '北京', '北京', '2');
INSERT INTO area_info VALUES ('34', '120000', '120000', '022', '天津', '天津', '2');
INSERT INTO area_info VALUES ('35', '130000', '130100', '0311', '河北', '石家庄', '2');
INSERT INTO area_info VALUES ('36', '130000', '130200', '0315', '河北', '唐山', '2');
INSERT INTO area_info VALUES ('37', '130000', '130300', '0335', '河北', '秦皇岛', '2');
INSERT INTO area_info VALUES ('38', '130000', '130400', '0310', '河北', '邯郸', '2');
INSERT INTO area_info VALUES ('39', '130000', '130500', '0319', '河北', '邢台', '2');
INSERT INTO area_info VALUES ('40', '130000', '130600', '0312', '河北', '保定', '2');
INSERT INTO area_info VALUES ('41', '130000', '130700', '0313', '河北', '张家口', '2');
INSERT INTO area_info VALUES ('42', '130000', '130800', '0314', '河北', '承德', '2');
INSERT INTO area_info VALUES ('43', '130000', '130900', '0317', '河北', '沧州', '2');
INSERT INTO area_info VALUES ('44', '130000', '131000', '0316', '河北', '廊坊', '2');
INSERT INTO area_info VALUES ('45', '130000', '131100', '0318', '河北', '衡水', '2');
INSERT INTO area_info VALUES ('46', '140000', '140100', '0351', '山西', '太原', '2');
INSERT INTO area_info VALUES ('47', '140000', '140200', '0352', '山西', '大同', '2');
INSERT INTO area_info VALUES ('48', '140000', '140300', '0353', '山西', '阳泉', '2');
INSERT INTO area_info VALUES ('49', '140000', '140400', '0355', '山西', '长治', '2');
INSERT INTO area_info VALUES ('50', '140000', '140500', '0356', '山西', '晋城', '2');
INSERT INTO area_info VALUES ('51', '140000', '140600', '0349', '山西', '朔州', '2');
INSERT INTO area_info VALUES ('52', '140000', '140700', '0354', '山西', '晋中', '2');
INSERT INTO area_info VALUES ('53', '140000', '140800', '0359', '山西', '运城', '2');
INSERT INTO area_info VALUES ('54', '140000', '140900', '0350', '山西', '忻州', '2');
INSERT INTO area_info VALUES ('55', '140000', '141000', '0357', '山西', '临汾', '2');
INSERT INTO area_info VALUES ('56', '140000', '141100', '0358', '山西', '吕梁', '2');
INSERT INTO area_info VALUES ('57', '150000', '150100', '0471', '内蒙古', '呼和浩特', '2');
INSERT INTO area_info VALUES ('58', '150000', '150200', '0472', '内蒙古', '包头', '2');
INSERT INTO area_info VALUES ('59', '150000', '150300', '0473', '内蒙古', '乌海', '2');
INSERT INTO area_info VALUES ('60', '150000', '150400', '0476', '内蒙古', '赤峰', '2');
INSERT INTO area_info VALUES ('61', '150000', '150500', '0475', '内蒙古', '通辽', '2');
INSERT INTO area_info VALUES ('62', '150000', '150600', '0477', '内蒙古', '鄂尔多斯', '2');
INSERT INTO area_info VALUES ('63', '150000', '150700', '0470', '内蒙古', '呼伦贝尔', '2');
INSERT INTO area_info VALUES ('64', '150000', '150800', '0478', '内蒙古', '巴彦淖尔', '2');
INSERT INTO area_info VALUES ('65', '150000', '150900', '0474', '内蒙古', '乌兰察布', '2');
INSERT INTO area_info VALUES ('66', '150000', '152200', '0482', '内蒙古', '兴安盟', '2');
INSERT INTO area_info VALUES ('67', '150000', '152500', '0479', '内蒙古', '锡林郭勒盟', '2');
INSERT INTO area_info VALUES ('68', '150000', '152900', '0483', '内蒙古', '阿拉善盟', '2');
INSERT INTO area_info VALUES ('69', '210000', '210100', '024', '辽宁', '沈阳', '2');
INSERT INTO area_info VALUES ('70', '210000', '210200', '0411', '辽宁', '大连', '2');
INSERT INTO area_info VALUES ('71', '210000', '210300', '0412', '辽宁', '鞍山', '2');
INSERT INTO area_info VALUES ('72', '210000', '210500', '0414', '辽宁', '本溪', '2');
INSERT INTO area_info VALUES ('73', '210000', '210600', '0415', '辽宁', '丹东', '2');
INSERT INTO area_info VALUES ('74', '210000', '210700', '0416', '辽宁', '锦州', '2');
INSERT INTO area_info VALUES ('75', '210000', '210800', '0417', '辽宁', '营口', '2');
INSERT INTO area_info VALUES ('76', '210000', '210900', '0418', '辽宁', '阜新', '2');
INSERT INTO area_info VALUES ('77', '210000', '211000', '0419', '辽宁', '辽阳', '2');
INSERT INTO area_info VALUES ('78', '210000', '211100', '0427', '辽宁', '盘锦', '2');
INSERT INTO area_info VALUES ('79', '210000', '211300', '0421', '辽宁', '朝阳', '2');
INSERT INTO area_info VALUES ('80', '210000', '211400', '0429', '辽宁', '葫芦岛', '2');
INSERT INTO area_info VALUES ('81', '220000', '220100', '0431', '吉林', '长春', '2');
INSERT INTO area_info VALUES ('82', '220000', '220200', '0432', '吉林', '吉林', '2');
INSERT INTO area_info VALUES ('83', '220000', '220300', '0434', '吉林', '四平', '2');
INSERT INTO area_info VALUES ('84', '220000', '220400', '0437', '吉林', '辽源', '2');
INSERT INTO area_info VALUES ('85', '220000', '220500', '0435', '吉林', '通化', '2');
INSERT INTO area_info VALUES ('86', '220000', '220600', '0439', '吉林', '白山', '2');
INSERT INTO area_info VALUES ('87', '220000', '220700', '0438', '吉林', '松原', '2');
INSERT INTO area_info VALUES ('88', '220000', '220800', '0436', '吉林', '白城', '2');
INSERT INTO area_info VALUES ('89', '220000', '222400', '0433', '吉林', '延边朝鲜族自治州', '2');
INSERT INTO area_info VALUES ('90', '230000', '230100', '0451', '黑龙江', '哈尔滨', '2');
INSERT INTO area_info VALUES ('91', '230000', '230200', '0452', '黑龙江', '齐齐哈尔', '2');
INSERT INTO area_info VALUES ('92', '230000', '230300', '0467', '黑龙江', '鸡西', '2');
INSERT INTO area_info VALUES ('93', '230000', '230400', '0468', '黑龙江', '鹤岗', '2');
INSERT INTO area_info VALUES ('94', '230000', '230500', '0469', '黑龙江', '双鸭山', '2');
INSERT INTO area_info VALUES ('95', '230000', '230600', '0459', '黑龙江', '大庆', '2');
INSERT INTO area_info VALUES ('96', '230000', '230700', '0458', '黑龙江', '伊春', '2');
INSERT INTO area_info VALUES ('97', '230000', '230800', '0454', '黑龙江', '佳木斯', '2');
INSERT INTO area_info VALUES ('98', '230000', '230900', '0464', '黑龙江', '七台河', '2');
INSERT INTO area_info VALUES ('99', '230000', '231000', '0453', '黑龙江', '牡丹江', '2');
INSERT INTO area_info VALUES ('100', '230000', '231100', '0456', '黑龙江', '黑河', '2');
INSERT INTO area_info VALUES ('101', '230000', '231200', '0455', '黑龙江', '绥化', '2');
INSERT INTO area_info VALUES ('102', '230000', '232700', '0457', '黑龙江', '大兴安岭地区', '2');
INSERT INTO area_info VALUES ('103', '310000', '310000', '021', '上海', '上海', '2');
INSERT INTO area_info VALUES ('104', '320000', '320100', '025', '江苏', '南京', '2');
INSERT INTO area_info VALUES ('105', '320000', '320200', '0510', '江苏', '无锡', '2');
INSERT INTO area_info VALUES ('106', '320000', '320300', '0516', '江苏', '徐州', '2');
INSERT INTO area_info VALUES ('107', '320000', '320400', '0519', '江苏', '常州', '2');
INSERT INTO area_info VALUES ('108', '320000', '320500', '0512', '江苏', '苏州', '2');
INSERT INTO area_info VALUES ('109', '320000', '320600', '0513', '江苏', '南通', '2');
INSERT INTO area_info VALUES ('110', '320000', '320700', '0518', '江苏', '连云港', '2');
INSERT INTO area_info VALUES ('111', '320000', '320800', '0517', '江苏', '淮安', '2');
INSERT INTO area_info VALUES ('112', '320000', '320900', '0515', '江苏', '盐城', '2');
INSERT INTO area_info VALUES ('113', '320000', '321000', '0514', '江苏', '扬州', '2');
INSERT INTO area_info VALUES ('114', '320000', '321100', '0511', '江苏', '镇江', '2');
INSERT INTO area_info VALUES ('115', '320000', '321200', '0523', '江苏', '泰州', '2');
INSERT INTO area_info VALUES ('116', '320000', '321300', '0527', '江苏', '宿迁', '2');
INSERT INTO area_info VALUES ('117', '330000', '330100', '0571', '浙江', '杭州', '2');
INSERT INTO area_info VALUES ('118', '330000', '330200', '0574', '浙江', '宁波', '2');
INSERT INTO area_info VALUES ('119', '330000', '330300', '0577', '浙江', '温州', '2');
INSERT INTO area_info VALUES ('120', '330000', '330400', '0573', '浙江', '嘉兴', '2');
INSERT INTO area_info VALUES ('121', '330000', '330500', '0572', '浙江', '湖州', '2');
INSERT INTO area_info VALUES ('122', '330000', '330600', '0575', '浙江', '绍兴', '2');
INSERT INTO area_info VALUES ('123', '330000', '330700', '0579', '浙江', '金华', '2');
INSERT INTO area_info VALUES ('124', '330000', '330800', '0570', '浙江', '衢州', '2');
INSERT INTO area_info VALUES ('125', '330000', '330900', '0580', '浙江', '舟山', '2');
INSERT INTO area_info VALUES ('126', '330000', '331000', '0576', '浙江', '台州', '2');
INSERT INTO area_info VALUES ('127', '330000', '331100', '0578', '浙江', '丽水', '2');
INSERT INTO area_info VALUES ('128', '340000', '340100', '0551', '安徽', '合肥', '2');
INSERT INTO area_info VALUES ('129', '340000', '340200', '0553', '安徽', '芜湖', '2');
INSERT INTO area_info VALUES ('130', '340000', '340300', '0552', '安徽', '蚌埠', '2');
INSERT INTO area_info VALUES ('131', '340000', '340400', '0554', '安徽', '淮南', '2');
INSERT INTO area_info VALUES ('132', '340000', '340500', '0555', '安徽', '马鞍山', '2');
INSERT INTO area_info VALUES ('133', '340000', '340600', '0561', '安徽', '淮北', '2');
INSERT INTO area_info VALUES ('134', '340000', '340700', '0562', '安徽', '铜陵', '2');
INSERT INTO area_info VALUES ('135', '340000', '340800', '0556', '安徽', '安庆', '2');
INSERT INTO area_info VALUES ('136', '340000', '341000', '0559', '安徽', '黄山', '2');
INSERT INTO area_info VALUES ('137', '340000', '341100', '0550', '安徽', '滁州', '2');
INSERT INTO area_info VALUES ('138', '340000', '341300', '0557', '安徽', '宿州', '2');
INSERT INTO area_info VALUES ('139', '340000', '341400', '0565', '安徽', '巢湖', '2');
INSERT INTO area_info VALUES ('140', '340000', '341500', '0564', '安徽', '六安', '2');
INSERT INTO area_info VALUES ('141', '340000', '341600', '0558', '安徽', '亳州', '2');
INSERT INTO area_info VALUES ('142', '340000', '341700', '0566', '安徽', '池州', '2');
INSERT INTO area_info VALUES ('143', '340000', '341800', '0563', '安徽', '宣城', '2');
INSERT INTO area_info VALUES ('144', '350000', '350100', '0591', '福建', '福州', '2');
INSERT INTO area_info VALUES ('145', '350000', '350200', '0592', '福建', '厦门', '2');
INSERT INTO area_info VALUES ('146', '350000', '350300', '0594', '福建', '莆田', '2');
INSERT INTO area_info VALUES ('147', '350000', '350400', '0598', '福建', '三明', '2');
INSERT INTO area_info VALUES ('148', '350000', '350500', '0595', '福建', '泉州', '2');
INSERT INTO area_info VALUES ('149', '350000', '350600', '0596', '福建', '漳州', '2');
INSERT INTO area_info VALUES ('150', '350000', '350700', '0599', '福建', '南平', '2');
INSERT INTO area_info VALUES ('151', '350000', '350800', '0597', '福建', '龙岩', '2');
INSERT INTO area_info VALUES ('152', '350000', '350900', '0593', '福建', '宁德', '2');
INSERT INTO area_info VALUES ('153', '360000', '360100', '0791', '江西', '南昌', '2');
INSERT INTO area_info VALUES ('154', '360000', '360200', '0798', '江西', '景德镇', '2');
INSERT INTO area_info VALUES ('155', '360000', '360300', '0799', '江西', '萍乡', '2');
INSERT INTO area_info VALUES ('156', '360000', '360400', '0792', '江西', '九江', '2');
INSERT INTO area_info VALUES ('157', '360000', '360500', '0790', '江西', '新余', '2');
INSERT INTO area_info VALUES ('158', '360000', '360600', '0701', '江西', '鹰潭', '2');
INSERT INTO area_info VALUES ('159', '360000', '360700', '0797', '江西', '赣州', '2');
INSERT INTO area_info VALUES ('160', '360000', '360800', '0796', '江西', '吉安', '2');
INSERT INTO area_info VALUES ('161', '360000', '360900', '0795', '江西', '宜春', '2');
INSERT INTO area_info VALUES ('162', '360000', '361000', '0794', '江西', '抚州', '2');
INSERT INTO area_info VALUES ('163', '360000', '361100', '0793', '江西', '上饶', '2');
INSERT INTO area_info VALUES ('164', '370000', '370100', '0531', '山东', '济南', '2');
INSERT INTO area_info VALUES ('165', '370000', '370200', '0532', '山东', '青岛', '2');
INSERT INTO area_info VALUES ('166', '370000', '370300', '0533', '山东', '淄博', '2');
INSERT INTO area_info VALUES ('167', '370000', '370400', '0632', '山东', '枣庄', '2');
INSERT INTO area_info VALUES ('168', '370000', '370500', '0546', '山东', '东营', '2');
INSERT INTO area_info VALUES ('169', '370000', '370600', '0535', '山东', '烟台', '2');
INSERT INTO area_info VALUES ('170', '370000', '370700', '0536', '山东', '潍坊', '2');
INSERT INTO area_info VALUES ('171', '370000', '370800', '0537', '山东', '济宁', '2');
INSERT INTO area_info VALUES ('172', '370000', '370900', '0538', '山东', '泰安', '2');
INSERT INTO area_info VALUES ('173', '370000', '371000', '0631', '山东', '威海', '2');
INSERT INTO area_info VALUES ('174', '370000', '371100', '0633', '山东', '日照', '2');
INSERT INTO area_info VALUES ('175', '370000', '371200', '0634', '山东', '莱芜', '2');
INSERT INTO area_info VALUES ('176', '370000', '371300', '0539', '山东', '临沂', '2');
INSERT INTO area_info VALUES ('177', '370000', '371400', '0534', '山东', '德州', '2');
INSERT INTO area_info VALUES ('178', '370000', '371500', '0635', '山东', '聊城', '2');
INSERT INTO area_info VALUES ('179', '370000', '371600', '0543', '山东', '滨州', '2');
INSERT INTO area_info VALUES ('180', '370000', '371700', '0530', '山东', '荷泽', '2');
INSERT INTO area_info VALUES ('181', '410000', '410100', '0371', '河南', '郑州', '2');
INSERT INTO area_info VALUES ('182', '410000', '410200', '0378', '河南', '开封', '2');
INSERT INTO area_info VALUES ('183', '410000', '410300', '0379', '河南', '洛阳', '2');
INSERT INTO area_info VALUES ('184', '410000', '410400', '0375', '河南', '平顶山', '2');
INSERT INTO area_info VALUES ('185', '410000', '410500', '0372', '河南', '安阳', '2');
INSERT INTO area_info VALUES ('186', '410000', '410600', '0392', '河南', '鹤壁', '2');
INSERT INTO area_info VALUES ('187', '410000', '410700', '0373', '河南', '新乡', '2');
INSERT INTO area_info VALUES ('188', '410000', '410800', '0391', '河南', '焦作', '2');
INSERT INTO area_info VALUES ('189', '410000', '410800', '0370', '河南', '商丘', '2');
INSERT INTO area_info VALUES ('190', '410000', '410900', '0393', '河南', '濮阳', '2');
INSERT INTO area_info VALUES ('191', '410000', '411000', '0374', '河南', '许昌', '2');
INSERT INTO area_info VALUES ('192', '410000', '411100', '0395', '河南', '漯河', '2');
INSERT INTO area_info VALUES ('193', '410000', '411200', '0398', '河南', '三门峡', '2');
INSERT INTO area_info VALUES ('194', '410000', '411300', '0377', '河南', '南阳', '2');
INSERT INTO area_info VALUES ('195', '410000', '411400', '0370', '河南', '商丘', '2');
INSERT INTO area_info VALUES ('196', '410000', '411500', '0376', '河南', '信阳', '2');
INSERT INTO area_info VALUES ('197', '410000', '411600', '0394', '河南', '周口', '2');
INSERT INTO area_info VALUES ('198', '410000', '411700', '0396', '河南', '驻马店', '2');
INSERT INTO area_info VALUES ('199', '420000', '420100', '027', '湖北', '武汉', '2');
INSERT INTO area_info VALUES ('200', '420000', '420200', '0714', '湖北', '黄石', '2');
INSERT INTO area_info VALUES ('201', '420000', '420300', '0719', '湖北', '十堰', '2');
INSERT INTO area_info VALUES ('202', '420000', '420500', '0717', '湖北', '宜昌', '2');
INSERT INTO area_info VALUES ('203', '420000', '420600', '0710', '湖北', '襄樊', '2');
INSERT INTO area_info VALUES ('204', '420000', '420700', '0711', '湖北', '鄂州', '2');
INSERT INTO area_info VALUES ('205', '420000', '420800', '0724', '湖北', '荆门', '2');
INSERT INTO area_info VALUES ('206', '420000', '420900', '0712', '湖北', '孝感', '2');
INSERT INTO area_info VALUES ('207', '420000', '421000', '0716', '湖北', '荆州', '2');
INSERT INTO area_info VALUES ('208', '420000', '421100', '0713', '湖北', '黄冈', '2');
INSERT INTO area_info VALUES ('209', '420000', '421200', '0715', '湖北', '咸宁', '2');
INSERT INTO area_info VALUES ('210', '420000', '421300', '0722', '湖北', '随州', '2');
INSERT INTO area_info VALUES ('211', '420000', '422800', '0718', '湖北', '恩施土家族苗族自治州', '2');
INSERT INTO area_info VALUES ('212', '420000', '429000', '0728', '湖北', '仙桃', '2');
INSERT INTO area_info VALUES ('213', '430000', '430100', '0731', '湖南', '长沙', '2');
INSERT INTO area_info VALUES ('214', '430000', '430400', '0734', '湖南', '衡阳', '2');
INSERT INTO area_info VALUES ('215', '430000', '430500', '0739', '湖南', '邵阳', '2');
INSERT INTO area_info VALUES ('216', '430000', '430600', '0730', '湖南', '岳阳', '2');
INSERT INTO area_info VALUES ('217', '430000', '430700', '0736', '湖南', '常德', '2');
INSERT INTO area_info VALUES ('218', '430000', '430800', '0744', '湖南', '张家界', '2');
INSERT INTO area_info VALUES ('219', '430000', '430900', '0737', '湖南', '益阳', '2');
INSERT INTO area_info VALUES ('220', '430000', '431000', '0735', '湖南', '郴州', '2');
INSERT INTO area_info VALUES ('221', '430000', '431100', '0746', '湖南', '永州', '2');
INSERT INTO area_info VALUES ('222', '430000', '431200', '0745', '湖南', '怀化', '2');
INSERT INTO area_info VALUES ('223', '430000', '431300', '0738', '湖南', '娄底', '2');
INSERT INTO area_info VALUES ('224', '430000', '433100', '0743', '湖南', '湘西土家族苗族自治州', '2');
INSERT INTO area_info VALUES ('225', '440000', '440100', '020', '广东', '广州', '2');
INSERT INTO area_info VALUES ('226', '440000', '440200', '0751', '广东', '韶关', '2');
INSERT INTO area_info VALUES ('227', '440000', '440300', '0755', '广东', '深圳', '2');
INSERT INTO area_info VALUES ('228', '440000', '440400', '0756', '广东', '珠海', '2');
INSERT INTO area_info VALUES ('229', '440000', '440500', '0754', '广东', '汕头', '2');
INSERT INTO area_info VALUES ('230', '440000', '440600', '0757', '广东', '佛山', '2');
INSERT INTO area_info VALUES ('231', '440000', '440700', '0750', '广东', '江门', '2');
INSERT INTO area_info VALUES ('232', '440000', '440800', '0759', '广东', '湛江', '2');
INSERT INTO area_info VALUES ('233', '440000', '440900', '0668', '广东', '茂名', '2');
INSERT INTO area_info VALUES ('234', '440000', '441200', '0758', '广东', '肇庆', '2');
INSERT INTO area_info VALUES ('235', '440000', '441300', '0752', '广东', '惠州', '2');
INSERT INTO area_info VALUES ('236', '440000', '441400', '0753', '广东', '梅州', '2');
INSERT INTO area_info VALUES ('237', '440000', '441500', '0660', '广东', '汕尾', '2');
INSERT INTO area_info VALUES ('238', '440000', '441600', '0762', '广东', '河源', '2');
INSERT INTO area_info VALUES ('239', '440000', '441700', '0662', '广东', '阳江', '2');
INSERT INTO area_info VALUES ('240', '440000', '441800', '0763', '广东', '清远', '2');
INSERT INTO area_info VALUES ('241', '440000', '441900', '0769', '广东', '东莞', '2');
INSERT INTO area_info VALUES ('242', '440000', '442000', '0760', '广东', '中山', '2');
INSERT INTO area_info VALUES ('243', '440000', '445100', '0768', '广东', '潮州', '2');
INSERT INTO area_info VALUES ('244', '440000', '445200', '0663', '广东', '揭阳', '2');
INSERT INTO area_info VALUES ('245', '440000', '445300', '0766', '广东', '云浮', '2');
INSERT INTO area_info VALUES ('246', '450000', '450100', '0771', '广西', '南宁', '2');
INSERT INTO area_info VALUES ('247', '450000', '450200', '0772', '广西', '柳州', '2');
INSERT INTO area_info VALUES ('248', '450000', '450300', '0773', '广西', '桂林', '2');
INSERT INTO area_info VALUES ('249', '450000', '450400', '0774', '广西', '梧州', '2');
INSERT INTO area_info VALUES ('250', '450000', '450500', '0779', '广西', '北海', '2');
INSERT INTO area_info VALUES ('251', '450000', '450600', '0770', '广西', '防城港', '2');
INSERT INTO area_info VALUES ('252', '450000', '450700', '0777', '广西', '钦州', '2');
INSERT INTO area_info VALUES ('253', '450000', '450900', '0775', '广西', '玉林', '2');
INSERT INTO area_info VALUES ('254', '450000', '451000', '0776', '广西', '百色', '2');
INSERT INTO area_info VALUES ('255', '450000', '451200', '0778', '广西', '河池', '2');
INSERT INTO area_info VALUES ('256', '460000', '460100', '0898', '海南', '海口', '2');
INSERT INTO area_info VALUES ('257', '500000', '500000', '023', '重庆', '重庆', '2');
INSERT INTO area_info VALUES ('258', '510000', '510100', '028', '四川', '成都', '2');
INSERT INTO area_info VALUES ('259', '510000', '510300', '0813', '四川', '自贡', '2');
INSERT INTO area_info VALUES ('260', '510000', '510300', '0830', '四川', '泸州', '2');
INSERT INTO area_info VALUES ('261', '510000', '510400', '0812', '四川', '攀枝花', '2');
INSERT INTO area_info VALUES ('262', '510000', '510500', '0830', '四川', '泸州', '2');
INSERT INTO area_info VALUES ('263', '510000', '510600', '0838', '四川', '德阳', '2');
INSERT INTO area_info VALUES ('264', '510000', '510700', '0816', '四川', '绵阳', '2');
INSERT INTO area_info VALUES ('265', '510000', '510800', '0839', '四川', '广元', '2');
INSERT INTO area_info VALUES ('266', '510000', '510900', '0825', '四川', '遂宁', '2');
INSERT INTO area_info VALUES ('267', '510000', '511000', '0832', '四川', '内江', '2');
INSERT INTO area_info VALUES ('268', '510000', '511100', '0833', '四川', '乐山', '2');
INSERT INTO area_info VALUES ('269', '510000', '511300', '0817', '四川', '南充', '2');
INSERT INTO area_info VALUES ('270', '510000', '511500', '0831', '四川', '宜宾', '2');
INSERT INTO area_info VALUES ('271', '510000', '511600', '0826', '四川', '广安', '2');
INSERT INTO area_info VALUES ('272', '510000', '511700', '0818', '四川', '达州', '2');
INSERT INTO area_info VALUES ('273', '510000', '511800', '0835', '四川', '雅安', '2');
INSERT INTO area_info VALUES ('274', '510000', '511900', '0827', '四川', '巴中', '2');
INSERT INTO area_info VALUES ('275', '510000', '513200', '0837', '四川', '阿坝藏族羌族自治州', '2');
INSERT INTO area_info VALUES ('276', '510000', '513300', '0836', '四川', '甘孜藏族自治州', '2');
INSERT INTO area_info VALUES ('277', '510000', '513400', '0834', '四川', '凉山彝族自治州', '2');
INSERT INTO area_info VALUES ('278', '520000', '520100', '0851', '贵州', '贵阳', '2');
INSERT INTO area_info VALUES ('279', '520000', '520200', '0858', '贵州', '六盘水', '2');
INSERT INTO area_info VALUES ('280', '520000', '520300', '0852', '贵州', '遵义', '2');
INSERT INTO area_info VALUES ('281', '520000', '520400', '0853', '贵州', '安顺', '2');
INSERT INTO area_info VALUES ('282', '520000', '522200', '0856', '贵州', '铜仁地区', '2');
INSERT INTO area_info VALUES ('283', '520000', '522300', '0859', '贵州', '黔西南布依族苗族自治州', '2');
INSERT INTO area_info VALUES ('284', '520000', '522400', '0857', '贵州', '毕节地区', '2');
INSERT INTO area_info VALUES ('285', '520000', '522600', '0855', '贵州', '黔东南苗族侗族自治州', '2');
INSERT INTO area_info VALUES ('286', '520000', '522700', '0854', '贵州', '黔南布依族苗族自治州', '2');
INSERT INTO area_info VALUES ('287', '530000', '530100', '0871', '云南', '昆明', '2');
INSERT INTO area_info VALUES ('288', '530000', '530300', '0874', '云南', '曲靖', '2');
INSERT INTO area_info VALUES ('289', '530000', '530400', '0877', '云南', '玉溪', '2');
INSERT INTO area_info VALUES ('290', '530000', '530500', '0875', '云南', '保山', '2');
INSERT INTO area_info VALUES ('291', '530000', '530600', '0870', '云南', '昭通', '2');
INSERT INTO area_info VALUES ('292', '530000', '530700', '0888', '云南', '丽江', '2');
INSERT INTO area_info VALUES ('293', '530000', '530800', '0879', '云南', '思茅', '2');
INSERT INTO area_info VALUES ('294', '530000', '530900', '0883', '云南', '临沧', '2');
INSERT INTO area_info VALUES ('295', '530000', '532300', '0878', '云南', '楚雄彝族自治州', '2');
INSERT INTO area_info VALUES ('296', '530000', '532500', '0873', '云南', '红河哈尼族彝族自治州', '2');
INSERT INTO area_info VALUES ('297', '530000', '532600', '0876', '云南', '文山壮族苗族自治州', '2');
INSERT INTO area_info VALUES ('298', '530000', '532800', '0691', '云南', '西双版纳傣族自治州', '2');
INSERT INTO area_info VALUES ('299', '530000', '532900', '0872', '云南', '大理白族自治州', '2');
INSERT INTO area_info VALUES ('300', '530000', '533100', '0692', '云南', '德宏傣族景颇族自治州', '2');
INSERT INTO area_info VALUES ('301', '530000', '533300', '0886', '云南', '怒江傈僳族自治州', '2');
INSERT INTO area_info VALUES ('302', '530000', '533400', '0887', '云南', '迪庆藏族自治州', '2');
INSERT INTO area_info VALUES ('303', '540000', '540100', '0891', '西藏', '拉萨', '2');
INSERT INTO area_info VALUES ('304', '540000', '542100', '0895', '西藏', '昌都地区', '2');
INSERT INTO area_info VALUES ('305', '540000', '542200', '0893', '西藏', '山南地区', '2');
INSERT INTO area_info VALUES ('306', '540000', '542300', '0892', '西藏', '日喀则地区', '2');
INSERT INTO area_info VALUES ('307', '540000', '542400', '0896', '西藏', '那曲地区', '2');
INSERT INTO area_info VALUES ('308', '540000', '542500', '0897', '西藏', '阿里地区', '2');
INSERT INTO area_info VALUES ('309', '540000', '542600', '0894', '西藏', '林芝地区', '2');
INSERT INTO area_info VALUES ('310', '610000', '610100', '029', '陕西', '西安', '2');
INSERT INTO area_info VALUES ('311', '610000', '610200', '0919', '陕西', '铜川', '2');
INSERT INTO area_info VALUES ('312', '610000', '610300', '0917', '陕西', '宝鸡', '2');
INSERT INTO area_info VALUES ('313', '610000', '610500', '0913', '陕西', '渭南', '2');
INSERT INTO area_info VALUES ('314', '610000', '610600', '0911', '陕西', '延安', '2');
INSERT INTO area_info VALUES ('315', '610000', '610700', '0916', '陕西', '汉中', '2');
INSERT INTO area_info VALUES ('316', '610000', '610800', '0912', '陕西', '榆林', '2');
INSERT INTO area_info VALUES ('317', '610000', '610900', '0915', '陕西', '安康', '2');
INSERT INTO area_info VALUES ('318', '610000', '611000', '0914', '陕西', '商洛', '2');
INSERT INTO area_info VALUES ('319', '620000', '620100', '0931', '甘肃', '兰州', '2');
INSERT INTO area_info VALUES ('320', '620000', '620200', '0937', '甘肃', '嘉峪关', '2');
INSERT INTO area_info VALUES ('321', '620000', '620400', '0943', '甘肃', '白银', '2');
INSERT INTO area_info VALUES ('322', '620000', '620500', '0938', '甘肃', '天水', '2');
INSERT INTO area_info VALUES ('323', '620000', '620600', '0935', '甘肃', '武威', '2');
INSERT INTO area_info VALUES ('324', '620000', '620700', '0936', '甘肃', '张掖', '2');
INSERT INTO area_info VALUES ('325', '620000', '620800', '0933', '甘肃', '平凉', '2');
INSERT INTO area_info VALUES ('326', '620000', '621000', '0934', '甘肃', '庆阳', '2');
INSERT INTO area_info VALUES ('327', '620000', '621100', '0932', '甘肃', '定西', '2');
INSERT INTO area_info VALUES ('328', '620000', '621200', '0939', '甘肃', '陇南', '2');
INSERT INTO area_info VALUES ('329', '620000', '622900', '0930', '甘肃', '临夏回族自治州', '2');
INSERT INTO area_info VALUES ('330', '620000', '623000', '0941', '甘肃', '甘南藏族自治州', '2');
INSERT INTO area_info VALUES ('331', '630000', '630100', '0971', '青海', '西宁', '2');
INSERT INTO area_info VALUES ('332', '630000', '630230', '0973', '青海', '黄南藏族自治州', '2');
INSERT INTO area_info VALUES ('333', '630000', '632100', '0972', '青海', '海东地区', '2');
INSERT INTO area_info VALUES ('334', '630000', '632200', '0970', '青海', '海北藏族自治州', '2');
INSERT INTO area_info VALUES ('335', '630000', '632500', '0974', '青海', '海南藏族自治州', '2');
INSERT INTO area_info VALUES ('336', '630000', '632600', '0975', '青海', '果洛藏族自治州', '2');
INSERT INTO area_info VALUES ('337', '630000', '632700', '0976', '青海', '玉树藏族自治州', '2');
INSERT INTO area_info VALUES ('338', '630000', '632800', '0979', '青海', '海西蒙古族藏族自治州', '2');
INSERT INTO area_info VALUES ('339', '630000', '632800', '0977', '青海', '海西蒙古族藏族自治州', '2');
INSERT INTO area_info VALUES ('340', '640000', '640100', '0951', '宁夏', '银川', '2');
INSERT INTO area_info VALUES ('341', '640000', '640200', '0952', '宁夏', '石嘴山', '2');
INSERT INTO area_info VALUES ('342', '640000', '640300', '0953', '宁夏', '吴忠', '2');
INSERT INTO area_info VALUES ('343', '640000', '640400', '0954', '宁夏', '固原', '2');
INSERT INTO area_info VALUES ('344', '640000', '640500', '0955', '宁夏', '中卫', '2');
INSERT INTO area_info VALUES ('345', '650000', '650100', '0991', '新疆', '乌鲁木齐', '2');
INSERT INTO area_info VALUES ('346', '650000', '650200', '0990', '新疆', '克拉玛依', '2');
INSERT INTO area_info VALUES ('347', '650000', '652100', '0995', '新疆', '吐鲁番地区', '2');
INSERT INTO area_info VALUES ('348', '650000', '652200', '0902', '新疆', '哈密地区', '2');
INSERT INTO area_info VALUES ('349', '650000', '652300', '0994', '新疆', '昌吉回族自治州', '2');
INSERT INTO area_info VALUES ('350', '650000', '652700', '0909', '新疆', '博尔塔拉蒙古自治州', '2');
INSERT INTO area_info VALUES ('351', '650000', '652800', '0996', '新疆', '巴音郭楞蒙古自治州', '2');
INSERT INTO area_info VALUES ('352', '650000', '652900', '0997', '新疆', '阿克苏地区', '2');
INSERT INTO area_info VALUES ('353', '650000', '653000', '0908', '新疆', '克孜勒苏柯尔克孜自治州', '2');
INSERT INTO area_info VALUES ('354', '650000', '653100', '0998', '新疆', '喀什地区', '2');
INSERT INTO area_info VALUES ('355', '650000', '653200', '0903', '新疆', '和田地区', '2');
INSERT INTO area_info VALUES ('356', '650000', '654000', '0999', '新疆', '伊犁哈萨克自治州', '2');
INSERT INTO area_info VALUES ('357', '650000', '654200', '0992', '新疆', '塔城地区', '2');
INSERT INTO area_info VALUES ('358', '650000', '654200', '0901', '新疆', '塔城地区', '2');
INSERT INTO area_info VALUES ('359', '650000', '654300', '0906', '新疆', '阿勒泰地区', '2');
INSERT INTO area_info VALUES ('360', '650000', '659000', '0993', '新疆', '石河子', '2');

-- ----------------------------
-- Table structure for `authorities`
-- ----------------------------
DROP TABLE IF EXISTS `authorities`;
CREATE TABLE `authorities` (
  `username` varchar(255) DEFAULT NULL,
  `authority` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of authorities
-- ----------------------------
INSERT INTO authorities VALUES ('reader', 'ROLE_USER');
INSERT INTO authorities VALUES ('writer', 'ROLE_USER');

-- ----------------------------
-- Table structure for `car_config`
-- ----------------------------
DROP TABLE IF EXISTS `car_config`;
CREATE TABLE `car_config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `son_Id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL COMMENT '名称',
  `full_name` varchar(150) DEFAULT NULL COMMENT '全名',
  `initial` varchar(50) DEFAULT NULL COMMENT '简写',
  `logo` varchar(500) DEFAULT NULL COMMENT 'logo',
  `depth` tinyint(4) DEFAULT '1' COMMENT '1级为车品牌，2级为车品牌子公司，3级为车型，4级为具体的车款',
  `sale_state` varchar(50) DEFAULT NULL COMMENT '销售状态',
  `price` varchar(50) DEFAULT NULL COMMENT '价格',
  `year_type` varchar(50) DEFAULT NULL COMMENT '年份',
  `production_state` varchar(50) DEFAULT NULL COMMENT '是否在产',
  `size_type` varchar(50) DEFAULT NULL COMMENT '车型',
  `create_person` varchar(64) NOT NULL DEFAULT 'system' COMMENT '创建人',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_person` varchar(64) NOT NULL DEFAULT 'system' COMMENT '更新人',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `son_id_index` (`son_Id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3561 DEFAULT CHARSET=utf8 COMMENT='车型基础数据';

-- ----------------------------
-- Records of car_config
-- ----------------------------
INSERT INTO car_config VALUES ('1', '1', '0', '奥迪', null, 'A', 'http://pic1.jisuapi.cn/car/static/images/logo/300/1.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:09', 'system', '2018-04-10 11:00:09');
INSERT INTO car_config VALUES ('2', '2', '0', '阿斯顿·马丁', null, 'A', 'http://pic1.jisuapi.cn/car/static/images/logo/300/2.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:10', 'system', '2018-04-10 11:00:10');
INSERT INTO car_config VALUES ('3', '3', '0', '阿尔法·罗密欧', null, 'A', 'http://pic1.jisuapi.cn/car/static/images/logo/300/3.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:10', 'system', '2018-04-10 11:00:10');
INSERT INTO car_config VALUES ('4', '7', '0', '本田', null, 'B', 'http://pic1.jisuapi.cn/car/static/images/logo/300/7.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:10', 'system', '2018-04-10 11:00:10');
INSERT INTO car_config VALUES ('5', '8', '0', '别克', null, 'B', 'http://pic1.jisuapi.cn/car/static/images/logo/300/8.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:10', 'system', '2018-04-10 11:00:10');
INSERT INTO car_config VALUES ('6', '9', '0', '奔驰', null, 'B', 'http://pic1.jisuapi.cn/car/static/images/logo/300/9.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:10', 'system', '2018-04-10 11:00:10');
INSERT INTO car_config VALUES ('7', '10', '0', '宝马', null, 'B', 'http://pic1.jisuapi.cn/car/static/images/logo/300/10.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:10', 'system', '2018-04-10 11:00:10');
INSERT INTO car_config VALUES ('8', '11', '0', '比亚迪', null, 'B', 'http://pic1.jisuapi.cn/car/static/images/logo/300/11.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:11', 'system', '2018-04-10 11:00:11');
INSERT INTO car_config VALUES ('9', '12', '0', '宝骏', null, 'B', 'http://pic1.jisuapi.cn/car/static/images/logo/300/12.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:11', 'system', '2018-04-10 11:00:11');
INSERT INTO car_config VALUES ('10', '13', '0', '标致', null, 'B', 'http://pic1.jisuapi.cn/car/static/images/logo/300/13.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:11', 'system', '2018-04-10 11:00:11');
INSERT INTO car_config VALUES ('11', '14', '0', '北汽幻速', null, 'B', 'http://pic1.jisuapi.cn/car/static/images/logo/300/14.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:11', 'system', '2018-04-10 11:00:11');
INSERT INTO car_config VALUES ('12', '15', '0', '保时捷', null, 'B', 'http://pic1.jisuapi.cn/car/static/images/logo/300/15.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:11', 'system', '2018-04-10 11:00:11');
INSERT INTO car_config VALUES ('13', '16', '0', '北汽绅宝', null, 'B', 'http://pic1.jisuapi.cn/car/static/images/logo/300/16.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:11', 'system', '2018-04-10 11:00:11');
INSERT INTO car_config VALUES ('14', '17', '0', '奔腾', null, 'B', 'http://pic1.jisuapi.cn/car/static/images/logo/300/17.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:12', 'system', '2018-04-10 11:00:12');
INSERT INTO car_config VALUES ('15', '18', '0', '北京', null, 'B', 'http://pic1.jisuapi.cn/car/static/images/logo/300/18.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:12', 'system', '2018-04-10 11:00:12');
INSERT INTO car_config VALUES ('16', '19', '0', '北汽威旺', null, 'B', 'http://pic1.jisuapi.cn/car/static/images/logo/300/19.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:12', 'system', '2018-04-10 11:00:12');
INSERT INTO car_config VALUES ('17', '20', '0', '北汽制造', null, 'B', 'http://pic1.jisuapi.cn/car/static/images/logo/300/20.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:12', 'system', '2018-04-10 11:00:12');
INSERT INTO car_config VALUES ('18', '21', '0', '宾利', null, 'B', 'http://pic1.jisuapi.cn/car/static/images/logo/300/21.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:12', 'system', '2018-04-10 11:00:12');
INSERT INTO car_config VALUES ('19', '22', '0', '布加迪', null, 'B', 'http://pic1.jisuapi.cn/car/static/images/logo/300/22.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:12', 'system', '2018-04-10 11:00:12');
INSERT INTO car_config VALUES ('20', '23', '0', '巴博斯', null, 'B', 'http://pic1.jisuapi.cn/car/static/images/logo/300/23.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:13', 'system', '2018-04-10 11:00:13');
INSERT INTO car_config VALUES ('21', '24', '0', '宝沃', null, 'B', 'http://pic1.jisuapi.cn/car/static/images/logo/300/24.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:13', 'system', '2018-04-10 11:00:13');
INSERT INTO car_config VALUES ('22', '25', '0', '北汽新能源', null, 'B', 'http://pic1.jisuapi.cn/car/static/images/logo/300/25.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:13', 'system', '2018-04-10 11:00:13');
INSERT INTO car_config VALUES ('23', '28', '0', '长安', null, 'C', 'http://pic1.jisuapi.cn/car/static/images/logo/300/28.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:13', 'system', '2018-04-10 11:00:13');
INSERT INTO car_config VALUES ('24', '29', '0', '长安欧尚', null, 'C', 'http://pic1.jisuapi.cn/car/static/images/logo/300/29.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:13', 'system', '2018-04-10 11:00:13');
INSERT INTO car_config VALUES ('25', '30', '0', '长城', null, 'C', 'http://pic1.jisuapi.cn/car/static/images/logo/300/30.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:13', 'system', '2018-04-10 11:00:13');
INSERT INTO car_config VALUES ('26', '31', '0', '昌河', null, 'C', 'http://pic1.jisuapi.cn/car/static/images/logo/300/31.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:14', 'system', '2018-04-10 11:00:14');
INSERT INTO car_config VALUES ('27', '33', '0', '前途', null, 'Q', 'http://pic1.jisuapi.cn/car/static/images/logo/300/33.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:14', 'system', '2018-04-10 11:00:14');
INSERT INTO car_config VALUES ('28', '36', '0', '大众', null, 'D', 'http://pic1.jisuapi.cn/car/static/images/logo/300/36.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:14', 'system', '2018-04-10 11:00:14');
INSERT INTO car_config VALUES ('29', '37', '0', '东风风行', null, 'D', 'http://pic1.jisuapi.cn/car/static/images/logo/300/37.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:14', 'system', '2018-04-10 11:00:14');
INSERT INTO car_config VALUES ('30', '38', '0', '东风风神', null, 'D', 'http://pic1.jisuapi.cn/car/static/images/logo/300/38.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:14', 'system', '2018-04-10 11:00:14');
INSERT INTO car_config VALUES ('31', '39', '0', '东南', null, 'D', 'http://pic1.jisuapi.cn/car/static/images/logo/300/39.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:14', 'system', '2018-04-10 11:00:14');
INSERT INTO car_config VALUES ('32', '40', '0', '东风风光', null, 'D', 'http://pic1.jisuapi.cn/car/static/images/logo/300/40.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:14', 'system', '2018-04-10 11:00:14');
INSERT INTO car_config VALUES ('33', '41', '0', '道奇', null, 'D', 'http://pic1.jisuapi.cn/car/static/images/logo/300/41.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:15', 'system', '2018-04-10 11:00:15');
INSERT INTO car_config VALUES ('34', '42', '0', 'DS', null, 'D', 'http://pic1.jisuapi.cn/car/static/images/logo/300/42.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:15', 'system', '2018-04-10 11:00:15');
INSERT INTO car_config VALUES ('35', '43', '0', '东风小康', null, 'D', 'http://pic1.jisuapi.cn/car/static/images/logo/300/43.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:15', 'system', '2018-04-10 11:00:15');
INSERT INTO car_config VALUES ('36', '46', '0', '东风风度', null, 'D', 'http://pic1.jisuapi.cn/car/static/images/logo/300/46.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:15', 'system', '2018-04-10 11:00:15');
INSERT INTO car_config VALUES ('37', '47', '0', '东风', null, 'D', 'http://pic1.jisuapi.cn/car/static/images/logo/300/47.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:15', 'system', '2018-04-10 11:00:15');
INSERT INTO car_config VALUES ('38', '51', '0', '丰田', null, 'F', 'http://pic1.jisuapi.cn/car/static/images/logo/300/51.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:16', 'system', '2018-04-10 11:00:16');
INSERT INTO car_config VALUES ('39', '52', '0', '福特', null, 'F', 'http://pic1.jisuapi.cn/car/static/images/logo/300/52.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:16', 'system', '2018-04-10 11:00:16');
INSERT INTO car_config VALUES ('40', '53', '0', '福田', null, 'F', 'http://pic1.jisuapi.cn/car/static/images/logo/300/53.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:16', 'system', '2018-04-10 11:00:16');
INSERT INTO car_config VALUES ('41', '54', '0', '法拉利', null, 'F', 'http://pic1.jisuapi.cn/car/static/images/logo/300/54.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:16', 'system', '2018-04-10 11:00:16');
INSERT INTO car_config VALUES ('42', '55', '0', '菲亚特', null, 'F', 'http://pic1.jisuapi.cn/car/static/images/logo/300/55.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:16', 'system', '2018-04-10 11:00:16');
INSERT INTO car_config VALUES ('43', '56', '0', '福迪', null, 'F', 'http://pic1.jisuapi.cn/car/static/images/logo/300/56.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:16', 'system', '2018-04-10 11:00:16');
INSERT INTO car_config VALUES ('44', '57', '0', '福汽启腾', null, 'F', 'http://pic1.jisuapi.cn/car/static/images/logo/300/57.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:16', 'system', '2018-04-10 11:00:16');
INSERT INTO car_config VALUES ('45', '63', '0', '广汽传祺', null, 'G', 'http://pic1.jisuapi.cn/car/static/images/logo/300/63.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:17', 'system', '2018-04-10 11:00:17');
INSERT INTO car_config VALUES ('46', '64', '0', '观致', null, 'G', 'http://pic1.jisuapi.cn/car/static/images/logo/300/64.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:17', 'system', '2018-04-10 11:00:17');
INSERT INTO car_config VALUES ('47', '65', '0', '广汽吉奥', null, 'G', 'http://pic1.jisuapi.cn/car/static/images/logo/300/65.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:17', 'system', '2018-04-10 11:00:17');
INSERT INTO car_config VALUES ('48', '66', '0', 'GMC', null, 'G', 'http://pic1.jisuapi.cn/car/static/images/logo/300/66.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:17', 'system', '2018-04-10 11:00:17');
INSERT INTO car_config VALUES ('49', '68', '0', '光冈', null, 'G', 'http://pic1.jisuapi.cn/car/static/images/logo/300/68.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:17', 'system', '2018-04-10 11:00:17');
INSERT INTO car_config VALUES ('50', '70', '0', '广汽日野', null, 'G', 'http://pic1.jisuapi.cn/car/static/images/logo/300/70.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:17', 'system', '2018-04-10 11:00:17');
INSERT INTO car_config VALUES ('51', '71', '0', '哈弗', null, 'H', 'http://pic1.jisuapi.cn/car/static/images/logo/300/71.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:18', 'system', '2018-04-10 11:00:18');
INSERT INTO car_config VALUES ('52', '72', '0', '海马', null, 'H', 'http://pic1.jisuapi.cn/car/static/images/logo/300/72.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:18', 'system', '2018-04-10 11:00:18');
INSERT INTO car_config VALUES ('53', '73', '0', '红旗', null, 'H', 'http://pic1.jisuapi.cn/car/static/images/logo/300/73.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:18', 'system', '2018-04-10 11:00:18');
INSERT INTO car_config VALUES ('54', '74', '0', '华泰', null, 'H', 'http://pic1.jisuapi.cn/car/static/images/logo/300/74.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:18', 'system', '2018-04-10 11:00:18');
INSERT INTO car_config VALUES ('55', '75', '0', '悍马', null, 'H', 'http://pic1.jisuapi.cn/car/static/images/logo/300/75.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:18', 'system', '2018-04-10 11:00:18');
INSERT INTO car_config VALUES ('56', '76', '0', '黄海', null, 'H', 'http://pic1.jisuapi.cn/car/static/images/logo/300/76.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:18', 'system', '2018-04-10 11:00:18');
INSERT INTO car_config VALUES ('57', '77', '0', '哈飞', null, 'H', 'http://pic1.jisuapi.cn/car/static/images/logo/300/77.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:18', 'system', '2018-04-10 11:00:18');
INSERT INTO car_config VALUES ('58', '79', '0', '华颂', null, 'H', 'http://pic1.jisuapi.cn/car/static/images/logo/300/79.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:19', 'system', '2018-04-10 11:00:19');
INSERT INTO car_config VALUES ('59', '82', '0', '汇众', null, 'H', 'http://pic1.jisuapi.cn/car/static/images/logo/300/82.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:19', 'system', '2018-04-10 11:00:19');
INSERT INTO car_config VALUES ('60', '83', '0', '华普', null, 'H', 'http://pic1.jisuapi.cn/car/static/images/logo/300/83.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:19', 'system', '2018-04-10 11:00:19');
INSERT INTO car_config VALUES ('61', '84', '0', '恒天', null, 'H', 'http://pic1.jisuapi.cn/car/static/images/logo/300/84.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:19', 'system', '2018-04-10 11:00:19');
INSERT INTO car_config VALUES ('62', '89', '0', '吉利', null, 'J', 'http://pic1.jisuapi.cn/car/static/images/logo/300/89.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:19', 'system', '2018-04-10 11:00:19');
INSERT INTO car_config VALUES ('63', '90', '0', '江淮', null, 'J', 'http://pic1.jisuapi.cn/car/static/images/logo/300/90.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:19', 'system', '2018-04-10 11:00:19');
INSERT INTO car_config VALUES ('64', '91', '0', 'Jeep', null, 'J', 'http://pic1.jisuapi.cn/car/static/images/logo/300/91.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:20', 'system', '2018-04-10 11:00:20');
INSERT INTO car_config VALUES ('65', '92', '0', '捷豹', null, 'J', 'http://pic1.jisuapi.cn/car/static/images/logo/300/92.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:20', 'system', '2018-04-10 11:00:20');
INSERT INTO car_config VALUES ('66', '93', '0', '江铃', null, 'J', 'http://pic1.jisuapi.cn/car/static/images/logo/300/93.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:20', 'system', '2018-04-10 11:00:20');
INSERT INTO car_config VALUES ('67', '94', '0', '金杯', null, 'J', 'http://pic1.jisuapi.cn/car/static/images/logo/300/94.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:20', 'system', '2018-04-10 11:00:20');
INSERT INTO car_config VALUES ('68', '95', '0', '金龙', null, 'J', 'http://pic1.jisuapi.cn/car/static/images/logo/300/95.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:20', 'system', '2018-04-10 11:00:20');
INSERT INTO car_config VALUES ('69', '96', '0', '九龙', null, 'J', 'http://pic1.jisuapi.cn/car/static/images/logo/300/96.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:20', 'system', '2018-04-10 11:00:20');
INSERT INTO car_config VALUES ('70', '98', '0', '金旅', null, 'J', 'http://pic1.jisuapi.cn/car/static/images/logo/300/98.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:21', 'system', '2018-04-10 11:00:21');
INSERT INTO car_config VALUES ('71', '102', '0', '凯迪拉克', null, 'K', 'http://pic1.jisuapi.cn/car/static/images/logo/300/102.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:21', 'system', '2018-04-10 11:00:21');
INSERT INTO car_config VALUES ('72', '103', '0', '开瑞', null, 'K', 'http://pic1.jisuapi.cn/car/static/images/logo/300/103.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:21', 'system', '2018-04-10 11:00:21');
INSERT INTO car_config VALUES ('73', '104', '0', '克莱斯勒', null, 'K', 'http://pic1.jisuapi.cn/car/static/images/logo/300/104.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:21', 'system', '2018-04-10 11:00:21');
INSERT INTO car_config VALUES ('74', '105', '0', '凯翼', null, 'K', 'http://pic1.jisuapi.cn/car/static/images/logo/300/105.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:21', 'system', '2018-04-10 11:00:21');
INSERT INTO car_config VALUES ('75', '106', '0', '卡威', null, 'K', 'http://pic1.jisuapi.cn/car/static/images/logo/300/106.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:21', 'system', '2018-04-10 11:00:21');
INSERT INTO car_config VALUES ('76', '107', '0', '科尼赛克', null, 'K', 'http://pic1.jisuapi.cn/car/static/images/logo/300/107.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:22', 'system', '2018-04-10 11:00:22');
INSERT INTO car_config VALUES ('77', '110', '0', '卡尔森', null, 'K', 'http://pic1.jisuapi.cn/car/static/images/logo/300/110.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:22', 'system', '2018-04-10 11:00:22');
INSERT INTO car_config VALUES ('78', '111', '0', 'KTM', null, 'K', 'http://pic1.jisuapi.cn/car/static/images/logo/300/111.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:22', 'system', '2018-04-10 11:00:22');
INSERT INTO car_config VALUES ('79', '112', '0', '陆风', null, 'L', 'http://pic1.jisuapi.cn/car/static/images/logo/300/112.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:22', 'system', '2018-04-10 11:00:22');
INSERT INTO car_config VALUES ('80', '113', '0', '铃木', null, 'L', 'http://pic1.jisuapi.cn/car/static/images/logo/300/113.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:22', 'system', '2018-04-10 11:00:22');
INSERT INTO car_config VALUES ('81', '114', '0', '路虎', null, 'L', 'http://pic1.jisuapi.cn/car/static/images/logo/300/114.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:22', 'system', '2018-04-10 11:00:22');
INSERT INTO car_config VALUES ('82', '115', '0', '雷克萨斯', null, 'L', 'http://pic1.jisuapi.cn/car/static/images/logo/300/115.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:22', 'system', '2018-04-10 11:00:22');
INSERT INTO car_config VALUES ('83', '116', '0', '猎豹', null, 'L', 'http://pic1.jisuapi.cn/car/static/images/logo/300/116.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:23', 'system', '2018-04-10 11:00:23');
INSERT INTO car_config VALUES ('84', '117', '0', '雷诺', null, 'L', 'http://pic1.jisuapi.cn/car/static/images/logo/300/117.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:23', 'system', '2018-04-10 11:00:23');
INSERT INTO car_config VALUES ('85', '118', '0', '林肯', null, 'L', 'http://pic1.jisuapi.cn/car/static/images/logo/300/118.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:23', 'system', '2018-04-10 11:00:23');
INSERT INTO car_config VALUES ('86', '119', '0', '兰博基尼', null, 'L', 'http://pic1.jisuapi.cn/car/static/images/logo/300/119.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:23', 'system', '2018-04-10 11:00:23');
INSERT INTO car_config VALUES ('87', '120', '0', '力帆', null, 'L', 'http://pic1.jisuapi.cn/car/static/images/logo/300/120.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:23', 'system', '2018-04-10 11:00:23');
INSERT INTO car_config VALUES ('88', '121', '0', '劳斯莱斯', null, 'L', 'http://pic1.jisuapi.cn/car/static/images/logo/300/121.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:23', 'system', '2018-04-10 11:00:23');
INSERT INTO car_config VALUES ('89', '122', '0', '莲花', null, 'L', 'http://pic1.jisuapi.cn/car/static/images/logo/300/122.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:24', 'system', '2018-04-10 11:00:24');
INSERT INTO car_config VALUES ('90', '124', '0', '路特斯', null, 'L', 'http://pic1.jisuapi.cn/car/static/images/logo/300/124.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:24', 'system', '2018-04-10 11:00:24');
INSERT INTO car_config VALUES ('91', '125', '0', '理念', null, 'L', 'http://pic1.jisuapi.cn/car/static/images/logo/300/125.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:24', 'system', '2018-04-10 11:00:24');
INSERT INTO car_config VALUES ('92', '131', '0', '马自达', null, 'M', 'http://pic1.jisuapi.cn/car/static/images/logo/300/131.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:24', 'system', '2018-04-10 11:00:24');
INSERT INTO car_config VALUES ('93', '132', '0', '名爵', null, 'M', 'http://pic1.jisuapi.cn/car/static/images/logo/300/132.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:24', 'system', '2018-04-10 11:00:24');
INSERT INTO car_config VALUES ('94', '133', '0', '玛莎拉蒂', null, 'M', 'http://pic1.jisuapi.cn/car/static/images/logo/300/133.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:24', 'system', '2018-04-10 11:00:24');
INSERT INTO car_config VALUES ('95', '134', '0', 'MINI', null, 'M', 'http://pic1.jisuapi.cn/car/static/images/logo/300/134.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:25', 'system', '2018-04-10 11:00:25');
INSERT INTO car_config VALUES ('96', '135', '0', '迈凯伦', null, 'M', 'http://pic1.jisuapi.cn/car/static/images/logo/300/135.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:25', 'system', '2018-04-10 11:00:25');
INSERT INTO car_config VALUES ('97', '136', '0', '迈巴赫', null, 'M', 'http://pic1.jisuapi.cn/car/static/images/logo/300/136.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:25', 'system', '2018-04-10 11:00:25');
INSERT INTO car_config VALUES ('98', '137', '0', '摩根', null, 'M', 'http://pic1.jisuapi.cn/car/static/images/logo/300/137.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:25', 'system', '2018-04-10 11:00:25');
INSERT INTO car_config VALUES ('99', '139', '0', '纳智捷', null, 'N', 'http://pic1.jisuapi.cn/car/static/images/logo/300/139.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:25', 'system', '2018-04-10 11:00:25');
INSERT INTO car_config VALUES ('100', '141', '0', '讴歌', null, 'O', 'http://pic1.jisuapi.cn/car/static/images/logo/300/141.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:25', 'system', '2018-04-10 11:00:25');
INSERT INTO car_config VALUES ('101', '142', '0', '欧朗', null, 'O', 'http://pic1.jisuapi.cn/car/static/images/logo/300/142.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:25', 'system', '2018-04-10 11:00:25');
INSERT INTO car_config VALUES ('102', '143', '0', '欧宝', null, 'O', 'http://pic1.jisuapi.cn/car/static/images/logo/300/143.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:26', 'system', '2018-04-10 11:00:26');
INSERT INTO car_config VALUES ('103', '145', '0', '帕加尼', null, 'P', 'http://pic1.jisuapi.cn/car/static/images/logo/300/145.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:26', 'system', '2018-04-10 11:00:26');
INSERT INTO car_config VALUES ('104', '149', '0', '起亚', null, 'Q', 'http://pic1.jisuapi.cn/car/static/images/logo/300/149.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:26', 'system', '2018-04-10 11:00:26');
INSERT INTO car_config VALUES ('105', '150', '0', '奇瑞', null, 'Q', 'http://pic1.jisuapi.cn/car/static/images/logo/300/150.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:26', 'system', '2018-04-10 11:00:26');
INSERT INTO car_config VALUES ('106', '151', '0', '启辰', null, 'Q', 'http://pic1.jisuapi.cn/car/static/images/logo/300/151.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:26', 'system', '2018-04-10 11:00:26');
INSERT INTO car_config VALUES ('107', '152', '0', '庆铃', null, 'Q', 'http://pic1.jisuapi.cn/car/static/images/logo/300/152.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:26', 'system', '2018-04-10 11:00:26');
INSERT INTO car_config VALUES ('108', '154', '0', '日产', null, 'R', 'http://pic1.jisuapi.cn/car/static/images/logo/300/154.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:27', 'system', '2018-04-10 11:00:27');
INSERT INTO car_config VALUES ('109', '155', '0', '荣威', null, 'R', 'http://pic1.jisuapi.cn/car/static/images/logo/300/155.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:27', 'system', '2018-04-10 11:00:27');
INSERT INTO car_config VALUES ('110', '156', '0', '瑞麒', null, 'R', 'http://pic1.jisuapi.cn/car/static/images/logo/300/156.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:27', 'system', '2018-04-10 11:00:27');
INSERT INTO car_config VALUES ('111', '157', '0', '斯柯达', null, 'S', 'http://pic1.jisuapi.cn/car/static/images/logo/300/157.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:27', 'system', '2018-04-10 11:00:27');
INSERT INTO car_config VALUES ('112', '158', '0', '三菱', null, 'S', 'http://pic1.jisuapi.cn/car/static/images/logo/300/158.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:27', 'system', '2018-04-10 11:00:27');
INSERT INTO car_config VALUES ('113', '159', '0', '斯巴鲁', null, 'S', 'http://pic1.jisuapi.cn/car/static/images/logo/300/159.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:27', 'system', '2018-04-10 11:00:27');
INSERT INTO car_config VALUES ('114', '160', '0', '上汽大通', null, 'S', 'http://pic1.jisuapi.cn/car/static/images/logo/300/160.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:27', 'system', '2018-04-10 11:00:27');
INSERT INTO car_config VALUES ('115', '161', '0', '双龙', null, 'S', 'http://pic1.jisuapi.cn/car/static/images/logo/300/161.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:28', 'system', '2018-04-10 11:00:28');
INSERT INTO car_config VALUES ('116', '162', '0', 'smart', null, 'S', 'http://pic1.jisuapi.cn/car/static/images/logo/300/162.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:28', 'system', '2018-04-10 11:00:28');
INSERT INTO car_config VALUES ('117', '163', '0', '山姆', null, 'S', 'http://pic1.jisuapi.cn/car/static/images/logo/300/163.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:28', 'system', '2018-04-10 11:00:28');
INSERT INTO car_config VALUES ('118', '165', '0', '赛麟', null, 'S', 'http://pic1.jisuapi.cn/car/static/images/logo/300/165.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:28', 'system', '2018-04-10 11:00:28');
INSERT INTO car_config VALUES ('119', '166', '0', '世爵', null, 'S', 'http://pic1.jisuapi.cn/car/static/images/logo/300/166.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:28', 'system', '2018-04-10 11:00:28');
INSERT INTO car_config VALUES ('120', '167', '0', '双环', null, 'S', 'http://pic1.jisuapi.cn/car/static/images/logo/300/167.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:28', 'system', '2018-04-10 11:00:28');
INSERT INTO car_config VALUES ('121', '168', '0', '萨博', null, 'S', 'http://pic1.jisuapi.cn/car/static/images/logo/300/168.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:29', 'system', '2018-04-10 11:00:29');
INSERT INTO car_config VALUES ('122', '173', '0', '特斯拉', null, 'T', 'http://pic1.jisuapi.cn/car/static/images/logo/300/173.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:29', 'system', '2018-04-10 11:00:29');
INSERT INTO car_config VALUES ('123', '175', '0', '腾势', null, 'T', 'http://pic1.jisuapi.cn/car/static/images/logo/300/175.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:29', 'system', '2018-04-10 11:00:29');
INSERT INTO car_config VALUES ('124', '179', '0', '五菱', null, 'W', 'http://pic1.jisuapi.cn/car/static/images/logo/300/179.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:29', 'system', '2018-04-10 11:00:29');
INSERT INTO car_config VALUES ('125', '180', '0', '沃尔沃', null, 'W', 'http://pic1.jisuapi.cn/car/static/images/logo/300/180.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:29', 'system', '2018-04-10 11:00:29');
INSERT INTO car_config VALUES ('126', '181', '0', '五十铃', null, 'W', 'http://pic1.jisuapi.cn/car/static/images/logo/300/181.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:29', 'system', '2018-04-10 11:00:29');
INSERT INTO car_config VALUES ('127', '182', '0', '潍柴英致', null, 'W', 'http://pic1.jisuapi.cn/car/static/images/logo/300/182.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:30', 'system', '2018-04-10 11:00:30');
INSERT INTO car_config VALUES ('128', '183', '0', '威麟', null, 'W', 'http://pic1.jisuapi.cn/car/static/images/logo/300/183.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:30', 'system', '2018-04-10 11:00:30');
INSERT INTO car_config VALUES ('129', '184', '0', '威兹曼', null, 'W', 'http://pic1.jisuapi.cn/car/static/images/logo/300/184.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:30', 'system', '2018-04-10 11:00:30');
INSERT INTO car_config VALUES ('130', '185', '0', '潍柴欧睿', null, 'W', 'http://pic1.jisuapi.cn/car/static/images/logo/300/185.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:30', 'system', '2018-04-10 11:00:30');
INSERT INTO car_config VALUES ('131', '187', '0', '现代', null, 'X', 'http://pic1.jisuapi.cn/car/static/images/logo/300/187.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:30', 'system', '2018-04-10 11:00:30');
INSERT INTO car_config VALUES ('132', '188', '0', '雪佛兰', null, 'X', 'http://pic1.jisuapi.cn/car/static/images/logo/300/188.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:30', 'system', '2018-04-10 11:00:30');
INSERT INTO car_config VALUES ('133', '189', '0', '雪铁龙', null, 'X', 'http://pic1.jisuapi.cn/car/static/images/logo/300/189.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:30', 'system', '2018-04-10 11:00:30');
INSERT INTO car_config VALUES ('134', '192', '0', '西雅特', null, 'X', 'http://pic1.jisuapi.cn/car/static/images/logo/300/192.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:31', 'system', '2018-04-10 11:00:31');
INSERT INTO car_config VALUES ('135', '195', '0', '英菲尼迪', null, 'Y', 'http://pic1.jisuapi.cn/car/static/images/logo/300/195.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:31', 'system', '2018-04-10 11:00:31');
INSERT INTO car_config VALUES ('136', '196', '0', '一汽', null, 'Y', 'http://pic1.jisuapi.cn/car/static/images/logo/300/196.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:31', 'system', '2018-04-10 11:00:31');
INSERT INTO car_config VALUES ('137', '197', '0', '野马', null, 'Y', 'http://pic1.jisuapi.cn/car/static/images/logo/300/197.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:31', 'system', '2018-04-10 11:00:31');
INSERT INTO car_config VALUES ('138', '198', '0', '依维柯', null, 'Y', 'http://pic1.jisuapi.cn/car/static/images/logo/300/198.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:31', 'system', '2018-04-10 11:00:31');
INSERT INTO car_config VALUES ('139', '199', '0', '永源', null, 'Y', 'http://pic1.jisuapi.cn/car/static/images/logo/300/199.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:31', 'system', '2018-04-10 11:00:31');
INSERT INTO car_config VALUES ('140', '208', '0', '众泰', null, 'Z', 'http://pic1.jisuapi.cn/car/static/images/logo/300/208.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:32', 'system', '2018-04-10 11:00:32');
INSERT INTO car_config VALUES ('141', '209', '0', '中华', null, 'Z', 'http://pic1.jisuapi.cn/car/static/images/logo/300/209.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:32', 'system', '2018-04-10 11:00:32');
INSERT INTO car_config VALUES ('142', '210', '0', '知豆', null, 'Z', 'http://pic1.jisuapi.cn/car/static/images/logo/300/210.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:32', 'system', '2018-04-10 11:00:32');
INSERT INTO car_config VALUES ('143', '211', '0', '中兴', null, 'Z', 'http://pic1.jisuapi.cn/car/static/images/logo/300/211.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:32', 'system', '2018-04-10 11:00:32');
INSERT INTO car_config VALUES ('144', '213', '0', '卡升', null, 'K', 'http://pic1.jisuapi.cn/car/static/images/logo/300/213.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:32', 'system', '2018-04-10 11:00:32');
INSERT INTO car_config VALUES ('145', '215', '0', '之诺', null, 'Z', 'http://pic1.jisuapi.cn/car/static/images/logo/300/215.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:32', 'system', '2018-04-10 11:00:32');
INSERT INTO car_config VALUES ('146', '33691', '0', '比速', null, 'B', 'http://pic1.jisuapi.cn/car/static/images/logo/300/33691.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:32', 'system', '2018-04-10 11:00:32');
INSERT INTO car_config VALUES ('147', '33694', '0', '汉腾', null, 'H', 'http://pic1.jisuapi.cn/car/static/images/logo/300/33694.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:33', 'system', '2018-04-10 11:00:33');
INSERT INTO car_config VALUES ('148', '33695', '0', '华凯', null, 'H', 'http://pic1.jisuapi.cn/car/static/images/logo/300/33695.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:33', 'system', '2018-04-10 11:00:33');
INSERT INTO car_config VALUES ('149', '33697', '0', 'SWM斯威', null, 'S', 'http://pic1.jisuapi.cn/car/static/images/logo/300/33697.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:33', 'system', '2018-04-10 11:00:33');
INSERT INTO car_config VALUES ('150', '33698', '0', 'WEY', null, 'W', 'http://pic1.jisuapi.cn/car/static/images/logo/300/33698.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:33', 'system', '2018-04-10 11:00:33');
INSERT INTO car_config VALUES ('151', '33699', '0', '蔚来', null, 'W', 'http://pic1.jisuapi.cn/car/static/images/logo/300/33699.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:33', 'system', '2018-04-10 11:00:33');
INSERT INTO car_config VALUES ('152', '33701', '0', '驭胜', null, 'Y', 'http://pic1.jisuapi.cn/car/static/images/logo/300/33701.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:33', 'system', '2018-04-10 11:00:33');
INSERT INTO car_config VALUES ('153', '33702', '0', 'ALPINA', null, 'A', 'http://pic1.jisuapi.cn/car/static/images/logo/300/33702.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:34', 'system', '2018-04-10 11:00:34');
INSERT INTO car_config VALUES ('154', '39989', '0', '北汽道达', null, 'B', 'http://pic1.jisuapi.cn/car/static/images/logo/300/39989.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:34', 'system', '2018-04-10 11:00:34');
INSERT INTO car_config VALUES ('155', '39990', '0', '长安轻型车', null, 'C', 'http://pic1.jisuapi.cn/car/static/images/logo/300/39990.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:34', 'system', '2018-04-10 11:00:34');
INSERT INTO car_config VALUES ('156', '39991', '0', '长安跨越', null, 'C', 'http://pic1.jisuapi.cn/car/static/images/logo/300/39991.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:34', 'system', '2018-04-10 11:00:34');
INSERT INTO car_config VALUES ('157', '39993', '0', 'Faraday Future', null, 'F', 'http://pic1.jisuapi.cn/car/static/images/logo/300/39993.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:34', 'system', '2018-04-10 11:00:34');
INSERT INTO car_config VALUES ('158', '39995', '0', '君马', null, 'J', 'http://pic1.jisuapi.cn/car/static/images/logo/300/39995.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:34', 'system', '2018-04-10 11:00:34');
INSERT INTO car_config VALUES ('159', '39996', '0', '领克', null, 'L', 'http://pic1.jisuapi.cn/car/static/images/logo/300/39996.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:34', 'system', '2018-04-10 11:00:34');
INSERT INTO car_config VALUES ('160', '39998', '0', '星驰', null, 'X', 'http://pic1.jisuapi.cn/car/static/images/logo/300/39998.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:35', 'system', '2018-04-10 11:00:35');
INSERT INTO car_config VALUES ('161', '39999', '0', '云度', null, 'Y', 'http://pic1.jisuapi.cn/car/static/images/logo/300/39999.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:35', 'system', '2018-04-10 11:00:35');
INSERT INTO car_config VALUES ('162', '41212', '0', '奇点汽车', null, 'Q', 'http://pic1.jisuapi.cn/car/static/images/logo/300/41212.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:35', 'system', '2018-04-10 11:00:35');
INSERT INTO car_config VALUES ('163', '41347', '0', 'ARCFOX', null, 'A', 'http://pic1.jisuapi.cn/car/static/images/logo/300/41347.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:35', 'system', '2018-04-10 11:00:35');
INSERT INTO car_config VALUES ('164', '41349', '0', '华骐', null, 'H', 'http://pic1.jisuapi.cn/car/static/images/logo/300/41349.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:35', 'system', '2018-04-10 11:00:35');
INSERT INTO car_config VALUES ('165', '41350', '0', '裕路', null, 'Y', 'http://pic1.jisuapi.cn/car/static/images/logo/300/41350.png', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:35', 'system', '2018-04-10 11:00:35');
INSERT INTO car_config VALUES ('166', '41911', '0', '电咖', null, 'D', 'http://pic1.jisuapi.cn/car/static/images/logo/300/', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:36', 'system', '2018-04-10 11:00:36');
INSERT INTO car_config VALUES ('167', '41912', '0', 'Polestar', null, 'P', 'http://pic1.jisuapi.cn/car/static/images/logo/300/', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:36', 'system', '2018-04-10 11:00:36');
INSERT INTO car_config VALUES ('168', '42842', '0', '广汽新能源', null, 'G', 'http://pic1.jisuapi.cn/car/static/images/logo/300/', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:36', 'system', '2018-04-10 11:00:36');
INSERT INTO car_config VALUES ('169', '42843', '0', '捷途', null, 'J', 'http://pic1.jisuapi.cn/car/static/images/logo/300/', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:36', 'system', '2018-04-10 11:00:36');
INSERT INTO car_config VALUES ('170', '43499', '0', '小鹏汽车', null, 'X', 'http://pic1.jisuapi.cn/car/static/images/logo/300/', '1', null, null, null, null, null, 'system', '2018-04-10 11:00:36', 'system', '2018-04-10 11:00:36');
INSERT INTO car_config VALUES ('2520', '219', '1', '一汽-大众奥迪', null, 'A', null, '2', null, null, null, null, null, 'system', '2018-04-12 10:23:46', 'system', '2018-04-12 10:23:46');
INSERT INTO car_config VALUES ('2521', '220', '219', 'A3', null, 'A', 'http://pic1.jisuapi.cn/car/static/images/logo/300/220.jpg', '3', '在销', null, null, null, null, 'system', '2018-04-12 10:23:46', 'system', '2018-04-12 10:23:46');
INSERT INTO car_config VALUES ('2522', '41375', '220', '2018款 30周年纪念版 Sportback 35TFSI 进取版', null, 'A', '41375.jpg', '4', '在销', '19.23万', '2018', '在产', '紧凑型车', 'system', '2018-04-12 10:23:47', 'system', '2018-04-12 10:23:47');
INSERT INTO car_config VALUES ('2523', '41376', '220', '2018款 30周年纪念版 Sportback 35TFSI 时尚版', null, 'A', '41376.jpg', '4', '在销', '21.56万', '2018', '在产', '紧凑型车', 'system', '2018-04-12 10:23:47', 'system', '2018-04-12 10:23:47');
INSERT INTO car_config VALUES ('2524', '41377', '220', '2018款 30周年纪念版 Sportback 35TFSI 运动版', null, 'A', '41377.jpg', '4', '在销', '23.55万', '2018', '在产', '紧凑型车', 'system', '2018-04-12 10:23:47', 'system', '2018-04-12 10:23:47');
INSERT INTO car_config VALUES ('2525', '41378', '220', '2018款 30周年纪念版 Sportback 35TFSI 风尚版', null, 'A', '41378.jpg', '4', '在销', '23.55万', '2018', '在产', '紧凑型车', 'system', '2018-04-12 10:23:47', 'system', '2018-04-12 10:23:47');
INSERT INTO car_config VALUES ('2526', '41379', '220', '2018款 30周年纪念版 Limousine 35TFSI 进取版', null, 'A', '41379.jpg', '4', '在销', '19.83万', '2018', '在产', '紧凑型车', 'system', '2018-04-12 10:23:47', 'system', '2018-04-12 10:23:47');
INSERT INTO car_config VALUES ('2527', '41380', '220', '2018款 30周年纪念版 Limousine 35TFSI 时尚版', null, 'A', '41380.jpg', '4', '在销', '22.16万', '2018', '在产', '紧凑型车', 'system', '2018-04-12 10:23:47', 'system', '2018-04-12 10:23:47');
INSERT INTO car_config VALUES ('2528', '41381', '220', '2018款 30周年纪念版 Limousine 35TFSI 风尚版', null, 'A', '41381.jpg', '4', '在销', '24.15万', '2018', '在产', '紧凑型车', 'system', '2018-04-12 10:23:47', 'system', '2018-04-12 10:23:47');
INSERT INTO car_config VALUES ('2529', '41382', '220', '2018款 30周年纪念版 Limousine 35TFSI 运动版', null, 'A', '41382.jpg', '4', '在销', '24.15万', '2018', '在产', '紧凑型车', 'system', '2018-04-12 10:23:48', 'system', '2018-04-12 10:23:48');
INSERT INTO car_config VALUES ('2530', '41383', '220', '2018款 30周年纪念版 Sportback 40TFSI 运动版', null, 'A', '41383.jpg', '4', '在销', '25.25万', '2018', '在产', '紧凑型车', 'system', '2018-04-12 10:23:48', 'system', '2018-04-12 10:23:48');
INSERT INTO car_config VALUES ('2531', '41384', '220', '2018款 30周年纪念版 Sportback 40TFSI 风尚版', null, 'A', '41384.jpg', '4', '在销', '25.25万', '2018', '在产', '紧凑型车', 'system', '2018-04-12 10:23:48', 'system', '2018-04-12 10:23:48');
INSERT INTO car_config VALUES ('2532', '41385', '220', '2018款 30周年纪念版 Limousine 40TFSI 风尚版', null, 'A', '41385.jpg', '4', '在销', '25.8万', '2018', '在产', '紧凑型车', 'system', '2018-04-12 10:23:48', 'system', '2018-04-12 10:23:48');
INSERT INTO car_config VALUES ('2533', '41386', '220', '2018款 30周年纪念版 Limousine 40TFSI 运动版', null, 'A', '41386.jpg', '4', '在销', '25.8万', '2018', '在产', '紧凑型车', 'system', '2018-04-12 10:23:48', 'system', '2018-04-12 10:23:48');
INSERT INTO car_config VALUES ('2534', '37148', '220', '2017款 Sportback 35TFSI 进取版', null, 'A', '37148.jpg', '4', '在销', '18.8万', '2017', '停产', '紧凑型车', 'system', '2018-04-12 10:23:48', 'system', '2018-04-12 10:23:48');
INSERT INTO car_config VALUES ('2535', '37149', '220', '2017款 Limousine 35TFSI 进取版', null, 'A', '37149.jpg', '4', '在销', '19.4万', '2017', '停产', '紧凑型车', 'system', '2018-04-12 10:23:48', 'system', '2018-04-12 10:23:48');
INSERT INTO car_config VALUES ('2536', '37150', '220', '2017款 Sportback 35TFSI 时尚版', null, 'A', '37150.jpg', '4', '在销', '21.26万', '2017', '停产', '紧凑型车', 'system', '2018-04-12 10:23:48', 'system', '2018-04-12 10:23:48');
INSERT INTO car_config VALUES ('2537', '37151', '220', '2017款 Limousine 35TFSI 时尚版', null, 'A', '37151.JPG', '4', '在销', '21.86万', '2017', '停产', '紧凑型车', 'system', '2018-04-12 10:23:49', 'system', '2018-04-12 10:23:49');
INSERT INTO car_config VALUES ('2538', '37152', '220', '2017款 Sportback 35TFSI 风尚版', null, 'A', '37152.jpg', '4', '在销', '23.25万', '2017', '停产', '紧凑型车', 'system', '2018-04-12 10:23:49', 'system', '2018-04-12 10:23:49');
INSERT INTO car_config VALUES ('2539', '37153', '220', '2017款 Sportback 35TFSI 运动版', null, 'A', '37153.jpg', '4', '在销', '23.25万', '2017', '停产', '紧凑型车', 'system', '2018-04-12 10:23:49', 'system', '2018-04-12 10:23:49');
INSERT INTO car_config VALUES ('2540', '37154', '220', '2017款 Limousine 35TFSI 运动版', null, 'A', '37154.JPG', '4', '在销', '23.85万', '2017', '停产', '紧凑型车', 'system', '2018-04-12 10:23:49', 'system', '2018-04-12 10:23:49');
INSERT INTO car_config VALUES ('2541', '37155', '220', '2017款 Limousine 35TFSI 风尚版', null, 'A', '37155.jpg', '4', '在销', '23.85万', '2017', '停产', '紧凑型车', 'system', '2018-04-12 10:23:49', 'system', '2018-04-12 10:23:49');
INSERT INTO car_config VALUES ('2542', '37156', '220', '2017款 Sportback 40TFSI 运动版', null, 'A', '37156.jpg', '4', '在销', '24.95万', '2017', '停产', '紧凑型车', 'system', '2018-04-12 10:23:49', 'system', '2018-04-12 10:23:49');
INSERT INTO car_config VALUES ('2543', '37157', '220', '2017款 Sportback 40TFSI 风尚版', null, 'A', '37157.jpg', '4', '在销', '24.95万', '2017', '停产', '紧凑型车', 'system', '2018-04-12 10:23:49', 'system', '2018-04-12 10:23:49');
INSERT INTO car_config VALUES ('2544', '37158', '220', '2017款 Limousine 40TFSI 风尚版', null, 'A', '37158.jpg', '4', '在销', '25.5万', '2017', '停产', '紧凑型车', 'system', '2018-04-12 10:23:49', 'system', '2018-04-12 10:23:49');
INSERT INTO car_config VALUES ('2545', '37159', '220', '2017款 Limousine 40TFSI 运动版', null, 'A', '37159.jpg', '4', '在销', '25.5万', '2017', '停产', '紧凑型车', 'system', '2018-04-12 10:23:50', 'system', '2018-04-12 10:23:50');
INSERT INTO car_config VALUES ('2546', '34280', '220', '2016款 Limousine 35TFSI 25周年特别版', null, 'A', '34280.jpg', '4', '停销', '24.28万', '2016', '停产', '紧凑型车', 'system', '2018-04-12 10:23:50', 'system', '2018-04-12 10:23:50');
INSERT INTO car_config VALUES ('2547', '34279', '220', '2016款 Sportback  35TFSI  25周年特别版', null, 'A', '34279.jpg', '4', '停销', '23.88万', '2016', '停产', '紧凑型车', 'system', '2018-04-12 10:23:50', 'system', '2018-04-12 10:23:50');
INSERT INTO car_config VALUES ('2548', '2576', '220', '2016款 Limousine 35TFSI 风尚型', null, 'A', '2576.jpg', '4', '停销', '23.19万', '2016', '停产', '紧凑型车', 'system', '2018-04-12 10:23:50', 'system', '2018-04-12 10:23:50');
INSERT INTO car_config VALUES ('2549', '2575', '220', '2016款 Sportback 35TFSI 风尚型', null, 'A', '2575.jpg', '4', '停销', '22.59万', '2016', '停产', '紧凑型车', 'system', '2018-04-12 10:23:50', 'system', '2018-04-12 10:23:50');
INSERT INTO car_config VALUES ('2550', '2593', '220', '2016款 Sportback 40TFSI 风尚型', null, 'A', '2593.jpg', '4', '停销', '24.99万', '2016', '停产', '紧凑型车', 'system', '2018-04-12 10:23:50', 'system', '2018-04-12 10:23:50');
INSERT INTO car_config VALUES ('2551', '2594', '220', '2016款 Limousine 40TFSI 风尚型', null, 'A', '2594.jpg', '4', '停销', '25.39万', '2016', '停产', '紧凑型车', 'system', '2018-04-12 10:23:50', 'system', '2018-04-12 10:23:50');
INSERT INTO car_config VALUES ('2552', '2595', '220', '2016款 Sportback 40TFSI 豪华型', null, 'A', '2595.jpg', '4', '停销', '27.7万', '2016', '停产', '紧凑型车', 'system', '2018-04-12 10:23:51', 'system', '2018-04-12 10:23:51');
INSERT INTO car_config VALUES ('2553', '2596', '220', '2016款 Limousine 40TFSI 豪华型', null, 'A', '2596.jpg', '4', '停销', '28.1万', '2016', '停产', '紧凑型车', 'system', '2018-04-12 10:23:51', 'system', '2018-04-12 10:23:51');
INSERT INTO car_config VALUES ('2554', '2574', '220', '2016款 Limousine 35TFSI 领英型', null, 'A', '2574.jpg', '4', '停销', '21.52万', '2016', '停产', '紧凑型车', 'system', '2018-04-12 10:23:51', 'system', '2018-04-12 10:23:51');
INSERT INTO car_config VALUES ('2555', '2573', '220', '2016款 Sportback 35TFSI 领英型', null, 'A', '2573.jpg', '4', '停销', '20.92万', '2016', '停产', '紧凑型车', 'system', '2018-04-12 10:23:51', 'system', '2018-04-12 10:23:51');
INSERT INTO car_config VALUES ('2556', '2572', '220', '2016款 Limousine 35TFSI 进取型', null, 'A', '2572.jpg', '4', '停销', '19.09万', '2016', '停产', '紧凑型车', 'system', '2018-04-12 10:23:51', 'system', '2018-04-12 10:23:51');
INSERT INTO car_config VALUES ('2557', '2571', '220', '2016款 Sportback 35TFSI 进取型', null, 'A', '2571.jpg', '4', '停销', '18.49万', '2016', '停产', '紧凑型车', 'system', '2018-04-12 10:23:51', 'system', '2018-04-12 10:23:51');
INSERT INTO car_config VALUES ('2558', '2577', '220', '2015款 Sportback 35TFSI 手动 进取型', null, 'A', '2577.jpg', '4', '停销', '18.49万', '2015', '停产', '紧凑型车', 'system', '2018-04-12 10:23:51', 'system', '2018-04-12 10:23:51');
INSERT INTO car_config VALUES ('2559', '2578', '220', '2015款 Limousine 35TFSI 手动 进取型', null, 'A', '2578.jpg', '4', '停销', '19.09万', '2015', '停产', '紧凑型车', 'system', '2018-04-12 10:23:51', 'system', '2018-04-12 10:23:51');
INSERT INTO car_config VALUES ('2560', '2579', '220', '2015款 Sportback 35 TFSI 纪念智领版', null, 'A', '2579.jpg', '4', '停销', '22.79万', '2015', '停产', '紧凑型车', 'system', '2018-04-12 10:23:52', 'system', '2018-04-12 10:23:52');
INSERT INTO car_config VALUES ('2561', '2580', '220', '2015款 Limousine 35 TFSI 纪念智领版', null, 'A', '2580.jpg', '4', '停销', '23.39万', '2015', '停产', '紧凑型车', 'system', '2018-04-12 10:23:52', 'system', '2018-04-12 10:23:52');
INSERT INTO car_config VALUES ('2562', '2581', '220', '2015款 Sportback 35 TFSI 纪念舒享版', null, 'A', '2581.JPG', '4', '停销', '23.98万', '2015', '停产', '紧凑型车', 'system', '2018-04-12 10:23:52', 'system', '2018-04-12 10:23:52');
INSERT INTO car_config VALUES ('2563', '2582', '220', '2015款 Limousine 35 TFSI 纪念舒享版', null, 'A', '2582.JPG', '4', '停销', '24.58万', '2015', '停产', '紧凑型车', 'system', '2018-04-12 10:23:52', 'system', '2018-04-12 10:23:52');
INSERT INTO car_config VALUES ('2564', '2583', '220', '2015款 Sportback 35 TFSI 纪念乐享版', null, 'A', '2583.jpg', '4', '停销', '27.57万', '2015', '停产', '紧凑型车', 'system', '2018-04-12 10:23:52', 'system', '2018-04-12 10:23:52');
INSERT INTO car_config VALUES ('2565', '2584', '220', '2015款 Limousine 35 TFSI 纪念乐享版', null, 'A', '2584.JPG', '4', '停销', '28.17万', '2015', '停产', '紧凑型车', 'system', '2018-04-12 10:23:52', 'system', '2018-04-12 10:23:52');
INSERT INTO car_config VALUES ('2566', '2600', '220', '2015款 Limousine 40TFSI 双离合 豪华型', null, 'A', '2600.jpg', '4', '停销', '29.67万', '2015', '停产', '紧凑型车', 'system', '2018-04-12 10:23:52', 'system', '2018-04-12 10:23:52');
INSERT INTO car_config VALUES ('2567', '2599', '220', '2015款 Sportback 40TFSI 双离合 豪华型', null, 'A', '2599.jpg', '4', '停销', '29.27万', '2015', '停产', '紧凑型车', 'system', '2018-04-12 10:23:53', 'system', '2018-04-12 10:23:53');
INSERT INTO car_config VALUES ('2568', '2598', '220', '2015款 Limousine 40TFSI 双离合 舒适型', null, 'A', '2598.jpg', '4', '停销', '26.96万', '2015', '停产', '紧凑型车', 'system', '2018-04-12 10:23:53', 'system', '2018-04-12 10:23:53');
INSERT INTO car_config VALUES ('2569', '2597', '220', '2015款 Sportback 40TFSI 双离合 舒适型', null, 'A', '2597.JPG', '4', '停销', '26.56万', '2015', '停产', '紧凑型车', 'system', '2018-04-12 10:23:53', 'system', '2018-04-12 10:23:53');
INSERT INTO car_config VALUES ('2570', '2585', '220', '2014款 Sportback 35TFSI 进取型', null, 'A', '2585.jpg', '4', '停销', '19.99万', '2014', '停产', '紧凑型车', 'system', '2018-04-12 10:23:53', 'system', '2018-04-12 10:23:53');
INSERT INTO car_config VALUES ('2571', '2586', '220', '2014款 Limousine 35TFSI 进取型', null, 'A', '2586.jpg', '4', '停销', '20.59万', '2014', '停产', '紧凑型车', 'system', '2018-04-12 10:23:53', 'system', '2018-04-12 10:23:53');
INSERT INTO car_config VALUES ('2572', '2587', '220', '2014款 Sportback 35TFSI 时尚型', null, 'A', '2587.jpg', '4', '停销', '21.89万', '2014', '停产', '紧凑型车', 'system', '2018-04-12 10:23:53', 'system', '2018-04-12 10:23:53');
INSERT INTO car_config VALUES ('2573', '2588', '220', '2014款 Limousine 35TFSI 时尚型', null, 'A', '2588.jpg', '4', '停销', '22.49万', '2014', '停产', '紧凑型车', 'system', '2018-04-12 10:23:53', 'system', '2018-04-12 10:23:53');
INSERT INTO car_config VALUES ('2574', '2589', '220', '2014款 Sportback 35TFSI 舒适型', null, 'A', '2589.jpg', '4', '停销', '24.88万', '2014', '停产', '紧凑型车', 'system', '2018-04-12 10:23:54', 'system', '2018-04-12 10:23:54');
INSERT INTO car_config VALUES ('2575', '2590', '220', '2014款 Limousine 35TFSI 舒适型', null, 'A', '2590.jpg', '4', '停销', '25.48万', '2014', '停产', '紧凑型车', 'system', '2018-04-12 10:23:54', 'system', '2018-04-12 10:23:54');
INSERT INTO car_config VALUES ('2576', '2591', '220', '2014款 Sportback 35TFSI 豪华型', null, 'A', '2591.jpg', '4', '停销', '28.67万', '2014', '停产', '紧凑型车', 'system', '2018-04-12 10:23:54', 'system', '2018-04-12 10:23:54');
INSERT INTO car_config VALUES ('2577', '2592', '220', '2014款 Limousine 35TFSI 豪华型', null, 'A', '2592.jpg', '4', '停销', '29.27万', '2014', '停产', '紧凑型车', 'system', '2018-04-12 10:23:54', 'system', '2018-04-12 10:23:54');
INSERT INTO car_config VALUES ('2578', '221', '219', 'A4L', null, 'A', 'http://pic1.jisuapi.cn/car/static/images/logo/300/221.jpg', '3', '在销', null, null, null, null, 'system', '2018-04-12 10:23:54', 'system', '2018-04-12 10:23:54');
INSERT INTO car_config VALUES ('2579', '41392', '221', '2018款 30周年版 45 TFSI quattro运动版', null, 'A', '41392.jpg', '4', '在销', '40.98万', '2018', '在产', '中型车', 'system', '2018-04-12 10:23:54', 'system', '2018-04-12 10:23:54');
INSERT INTO car_config VALUES ('2580', '41391', '221', '2018款 30周年版 45 TFSI quattro个性运动版', null, 'A', '41391.jpg', '4', '在销', '36.98万', '2018', '在产', '中型车', 'system', '2018-04-12 10:23:55', 'system', '2018-04-12 10:23:55');
INSERT INTO car_config VALUES ('2581', '41390', '221', '2018款 30周年版 40 TFSI 运动版', null, 'A', '41390.jpg', '4', '在销', '36.98万', '2018', '在产', '中型车', 'system', '2018-04-12 10:23:55', 'system', '2018-04-12 10:23:55');
INSERT INTO car_config VALUES ('2582', '41389', '221', '2018款 30周年版 40 TFSI 时尚版', null, 'A', '41389.jpg', '4', '在销', '34.57万', '2018', '在产', '中型车', 'system', '2018-04-12 10:23:55', 'system', '2018-04-12 10:23:55');
INSERT INTO car_config VALUES ('2583', '41388', '221', '2018款 30周年版 40 TFSI 进取版', null, 'A', '41388.jpg', '4', '在销', '30.98万', '2018', '在产', '中型车', 'system', '2018-04-12 10:23:55', 'system', '2018-04-12 10:23:55');
INSERT INTO car_config VALUES ('2584', '41387', '221', '2018款 30周年版 30 TFSI 进取版', null, 'A', '41387.jpg', '4', '在销', '29.28万', '2018', '在产', '中型车', 'system', '2018-04-12 10:23:55', 'system', '2018-04-12 10:23:55');
INSERT INTO car_config VALUES ('2585', '34281', '221', '2017款 40 TFSI 进取型', null, 'A', '34281.jpg', '4', '停销', '29.98万', '2017', '停产', '中型车', 'system', '2018-04-12 10:23:55', 'system', '2018-04-12 10:23:55');
INSERT INTO car_config VALUES ('2586', '34282', '221', '2017款 40 TFSI 时尚型', null, 'A', '34282.jpg', '4', '停销', '33.98万', '2017', '停产', '中型车', 'system', '2018-04-12 10:23:55', 'system', '2018-04-12 10:23:55');
INSERT INTO car_config VALUES ('2587', '34283', '221', '2017款 40 TFSI 风尚型', null, 'A', '34283.jpg', '4', '停销', '36.88万', '2017', '停产', '中型车', 'system', '2018-04-12 10:23:55', 'system', '2018-04-12 10:23:55');
INSERT INTO car_config VALUES ('2588', '34284', '221', '2017款 40 TFSI 运动型', null, 'A', '34284.jpg', '4', '停销', '37.28万', '2017', '停产', '中型车', 'system', '2018-04-12 10:23:56', 'system', '2018-04-12 10:23:56');
INSERT INTO car_config VALUES ('2589', '34285', '221', '2017款 45 TFSI quattro 风尚型', null, 'A', '34285.jpg', '4', '停销', '40.88万', '2017', '停产', '中型车', 'system', '2018-04-12 10:23:56', 'system', '2018-04-12 10:23:56');
INSERT INTO car_config VALUES ('2590', '34286', '221', '2017款 45 TFSI quattro 运动型', null, 'A', '34286.jpg', '4', '停销', '41.28万', '2017', '停产', '中型车', 'system', '2018-04-12 10:23:56', 'system', '2018-04-12 10:23:56');
INSERT INTO car_config VALUES ('2591', '34287', '221', '2017款 45 TFSI quattro 特别版', null, 'A', '34287.jpg', '4', '停销', '43万', '2017', '停产', '中型车', 'system', '2018-04-12 10:23:56', 'system', '2018-04-12 10:23:56');
INSERT INTO car_config VALUES ('2592', '37160', '221', '2017款 Plus 40 TFSI 进取版', null, 'A', '37160.jpg', '4', '在销', '29.98万', '2017', '停产', '中型车', 'system', '2018-04-12 10:23:56', 'system', '2018-04-12 10:23:56');
INSERT INTO car_config VALUES ('2593', '37161', '221', '2017款 Plus 40 TFSI 时尚版', null, 'A', '37161.jpg', '4', '在销', '34.57万', '2017', '停产', '中型车', 'system', '2018-04-12 10:23:56', 'system', '2018-04-12 10:23:56');
INSERT INTO car_config VALUES ('2594', '37162', '221', '2017款 Plus 40 TFSI 运动版', null, 'A', '37162.jpg', '4', '在销', '37.28万', '2017', '停产', '中型车', 'system', '2018-04-12 10:23:56', 'system', '2018-04-12 10:23:56');
INSERT INTO car_config VALUES ('2595', '37163', '221', '2017款 Plus 40 TFSI 风尚版', null, 'A', '37163.jpg', '4', '在销', '37.4万', '2017', '停产', '中型车', 'system', '2018-04-12 10:23:56', 'system', '2018-04-12 10:23:56');
INSERT INTO car_config VALUES ('2596', '37164', '221', '2017款 Plus 45 TFSI quattro 运动版', null, 'A', '37164.jpg', '4', '在销', '41.28万', '2017', '停产', '中型车', 'system', '2018-04-12 10:23:57', 'system', '2018-04-12 10:23:57');
INSERT INTO car_config VALUES ('2597', '37165', '221', '2017款 Plus 45 TFSI quattro 风尚版', null, 'A', '37165.jpg', '4', '在销', '41.4万', '2017', '停产', '中型车', 'system', '2018-04-12 10:23:57', 'system', '2018-04-12 10:23:57');
INSERT INTO car_config VALUES ('2598', '41974', '221', '2017款 40 TFSI 南方专享版', null, 'A', '41974.jpg', '4', '在销', '', '2017', '在产', '中型车', 'system', '2018-04-12 10:23:57', 'system', '2018-04-12 10:23:57');
INSERT INTO car_config VALUES ('2599', '34288', '221', '2016款 50 TFSI quattro 旗舰型', null, 'A', '34288.jpg', '4', '停销', '57.81万', '2016', '停产', '中型车', 'system', '2018-04-12 10:23:57', 'system', '2018-04-12 10:23:57');
INSERT INTO car_config VALUES ('2600', '2601', '221', '2016款 30 TFSI 手动 舒适型', null, 'A', '2601.jpg', '4', '停销', '27.28万', '2016', '停产', '中型车', 'system', '2018-04-12 10:23:57', 'system', '2018-04-12 10:23:57');
INSERT INTO car_config VALUES ('2601', '2602', '221', '2016款 30 TFSI 自动 舒适型 典藏版', null, 'A', '2602.jpg', '4', '停销', '28.99万', '2016', '停产', '中型车', 'system', '2018-04-12 10:23:57', 'system', '2018-04-12 10:23:57');
INSERT INTO car_config VALUES ('2602', '2603', '221', '2016款 30 TFSI 自动 舒适型', null, 'A', '2603.jpg', '4', '停销', '29.1万', '2016', '停产', '中型车', 'system', '2018-04-12 10:23:57', 'system', '2018-04-12 10:23:57');
INSERT INTO car_config VALUES ('2603', '2606', '221', '2016款 35 TFSI 自动 标准型', null, 'A', '2606.JPG', '4', '停销', '31.28万', '2016', '停产', '中型车', 'system', '2018-04-12 10:23:57', 'system', '2018-04-12 10:23:57');
INSERT INTO car_config VALUES ('2604', '2607', '221', '2016款 35 TFSI 自动 标准型 典藏版', null, 'A', '2607.JPG', '4', '停销', '31.28万', '2016', '停产', '中型车', 'system', '2018-04-12 10:23:58', 'system', '2018-04-12 10:23:58');
INSERT INTO car_config VALUES ('2605', '2608', '221', '2016款 35 TFSI 自动 舒适型', null, 'A', '2608.jpg', '4', '停销', '33.29万', '2016', '停产', '中型车', 'system', '2018-04-12 10:23:58', 'system', '2018-04-12 10:23:58');
INSERT INTO car_config VALUES ('2606', '2609', '221', '2016款 35 TFSI 自动 舒适型 S line 典藏版', null, 'A', '2609.jpg', '4', '停销', '33.29万', '2016', '停产', '中型车', 'system', '2018-04-12 10:23:58', 'system', '2018-04-12 10:23:58');
INSERT INTO car_config VALUES ('2607', '2610', '221', '2016款 35 TFSI 自动 运动型', null, 'A', '2610.jpg', '4', '停销', '34.9万', '2016', '停产', '中型车', 'system', '2018-04-12 10:23:58', 'system', '2018-04-12 10:23:58');
INSERT INTO car_config VALUES ('2608', '2611', '221', '2016款 35 TFSI 自动 技术型', null, 'A', '2611.jpg', '4', '停销', '37.28万', '2016', '停产', '中型车', 'system', '2018-04-12 10:23:58', 'system', '2018-04-12 10:23:58');
INSERT INTO car_config VALUES ('2609', '2612', '221', '2016款 35 TFSI 自动 豪华型 S line 典藏版', null, 'A', '2612.JPG', '4', '停销', '39.39万', '2016', '停产', '中型车', 'system', '2018-04-12 10:23:58', 'system', '2018-04-12 10:23:58');
INSERT INTO car_config VALUES ('2610', '2613', '221', '2016款 35 TFSI 自动 豪华型', null, 'A', '2613.jpg', '4', '停销', '40.2万', '2016', '停产', '中型车', 'system', '2018-04-12 10:23:58', 'system', '2018-04-12 10:23:58');
INSERT INTO car_config VALUES ('2611', '2620', '221', '2016款 45 TFSI quattro 个性运动型 典藏版', null, 'A', '2620.jpg', '4', '停销', '36.3万', '2016', '停产', '中型车', 'system', '2018-04-12 10:23:58', 'system', '2018-04-12 10:23:58');
INSERT INTO car_config VALUES ('2612', '2621', '221', '2016款 45 TFSI quattro 个性运动型', null, 'A', '2621.JPG', '4', '停销', '36.3万', '2016', '停产', '中型车', 'system', '2018-04-12 10:23:59', 'system', '2018-04-12 10:23:59');
INSERT INTO car_config VALUES ('2613', '2622', '221', '2016款 45 TFSI quattro 运动型', null, 'A', '2622.jpg', '4', '停销', '46.46万', '2016', '停产', '中型车', 'system', '2018-04-12 10:23:59', 'system', '2018-04-12 10:23:59');
INSERT INTO car_config VALUES ('2614', '2623', '221', '2015款 45 TFSI quattro 个性运动型', null, 'A', '2623.jpg', '4', '停销', '35.3万', '2015', '停产', '中型车', 'system', '2018-04-12 10:23:59', 'system', '2018-04-12 10:23:59');
INSERT INTO car_config VALUES ('2615', '2624', '221', '2015款 45 TFSI quattro 运动型', null, 'A', '2624.jpg', '4', '停销', '47.36万', '2015', '停产', '中型车', 'system', '2018-04-12 10:23:59', 'system', '2018-04-12 10:23:59');
INSERT INTO car_config VALUES ('2616', '2604', '221', '2015款 30 TFSI 手动 舒适型', null, 'A', '2604.jpg', '4', '停销', '27.28万', '2015', '停产', '中型车', 'system', '2018-04-12 10:23:59', 'system', '2018-04-12 10:23:59');
INSERT INTO car_config VALUES ('2617', '2605', '221', '2015款 30 TFSI 自动 舒适型', null, 'A', '2605.jpg', '4', '停销', '29.1万', '2015', '停产', '中型车', 'system', '2018-04-12 10:23:59', 'system', '2018-04-12 10:23:59');
INSERT INTO car_config VALUES ('2618', '2625', '221', '2015款 50 TFSI quattro 旗舰型', null, 'A', '2625.jpg', '4', '停销', '57.81万', '2015', '停产', '中型车', 'system', '2018-04-12 10:23:59', 'system', '2018-04-12 10:23:59');
INSERT INTO car_config VALUES ('2619', '2619', '221', '2015款 35 TFSI 自动 豪华型', null, 'A', '2619.JPG', '4', '停销', '40.2万', '2015', '停产', '中型车', 'system', '2018-04-12 10:23:59', 'system', '2018-04-12 10:23:59');
INSERT INTO car_config VALUES ('2620', '2618', '221', '2015款 35 TFSI 自动 技术型', null, 'A', '2618.JPG', '4', '停销', '37.28万', '2015', '停产', '中型车', 'system', '2018-04-12 10:24:00', 'system', '2018-04-12 10:24:00');
INSERT INTO car_config VALUES ('2621', '2617', '221', '2015款 35 TFSI 自动 舒适型', null, 'A', '2617.JPG', '4', '停销', '33.29万', '2015', '停产', '中型车', 'system', '2018-04-12 10:24:00', 'system', '2018-04-12 10:24:00');
INSERT INTO car_config VALUES ('2622', '2616', '221', '2015款 35 TFSI 纪念舒享版', null, 'A', '2616.JPG', '4', '停销', '32.16万', '2015', '停产', '中型车', 'system', '2018-04-12 10:24:00', 'system', '2018-04-12 10:24:00');
INSERT INTO car_config VALUES ('2623', '2615', '221', '2015款 35 TFSI 自动 标准型', null, 'A', '2615.JPG', '4', '停销', '31.28万', '2015', '停产', '中型车', 'system', '2018-04-12 10:24:00', 'system', '2018-04-12 10:24:00');
INSERT INTO car_config VALUES ('2624', '2614', '221', '2015款 35 TFSI 纪念智领版', null, 'A', '2614.JPG', '4', '停销', '30.56万', '2015', '停产', '中型车', 'system', '2018-04-12 10:24:00', 'system', '2018-04-12 10:24:00');
INSERT INTO car_config VALUES ('2625', '2634', '221', '2013款 50 TFSI quattro 旗舰型', null, 'A', '2634.jpg', '4', '停销', '57.81万', '2013', '停产', '中型车', 'system', '2018-04-12 10:24:00', 'system', '2018-04-12 10:24:00');
INSERT INTO car_config VALUES ('2626', '2633', '221', '2013款 40 TFSI quattro 运动型', null, 'A', '2633.jpg', '4', '停销', '46.96万', '2013', '停产', '中型车', 'system', '2018-04-12 10:24:00', 'system', '2018-04-12 10:24:00');
INSERT INTO car_config VALUES ('2627', '2632', '221', '2013款 40 TFSI quattro 个性运动型', null, 'A', '2632.JPG', '4', '停销', '34.9万', '2013', '停产', '中型车', 'system', '2018-04-12 10:24:00', 'system', '2018-04-12 10:24:00');
INSERT INTO car_config VALUES ('2628', '2631', '221', '2013款 35 TFSI 自动 豪华型', null, 'A', '2631.JPG', '4', '停销', '39.9万', '2013', '停产', '中型车', 'system', '2018-04-12 10:24:01', 'system', '2018-04-12 10:24:01');
INSERT INTO car_config VALUES ('2629', '2630', '221', '2013款 35 TFSI 自动 技术型', null, 'A', '2630.JPG', '4', '停销', '36.98万', '2013', '停产', '中型车', 'system', '2018-04-12 10:24:01', 'system', '2018-04-12 10:24:01');
INSERT INTO car_config VALUES ('2630', '2629', '221', '2013款 35 TFSI 自动 舒适型', null, 'A', '2629.jpg', '4', '停销', '32.99万', '2013', '停产', '中型车', 'system', '2018-04-12 10:24:01', 'system', '2018-04-12 10:24:01');
INSERT INTO car_config VALUES ('2631', '2628', '221', '2013款 35 TFSI 自动 标准型', null, 'A', '2628.JPG', '4', '停销', '30.98万', '2013', '停产', '中型车', 'system', '2018-04-12 10:24:01', 'system', '2018-04-12 10:24:01');
INSERT INTO car_config VALUES ('2632', '2627', '221', '2013款 30 TFSI 自动 舒适型', null, 'A', '2627.JPG', '4', '停销', '29.1万', '2013', '停产', '中型车', 'system', '2018-04-12 10:24:01', 'system', '2018-04-12 10:24:01');
INSERT INTO car_config VALUES ('2633', '2626', '221', '2013款 30 TFSI 手动 舒适型', null, 'A', '2626.jpg', '4', '停销', '27.28万', '2013', '停产', '中型车', 'system', '2018-04-12 10:24:01', 'system', '2018-04-12 10:24:01');
INSERT INTO car_config VALUES ('2634', '2635', '221', '2012款 1.8 TFSI 手动 舒适型', null, 'A', '2635.jpg', '4', '停销', '27.28万', '2012', '停产', '中型车', 'system', '2018-04-12 10:24:01', 'system', '2018-04-12 10:24:01');
INSERT INTO car_config VALUES ('2635', '2636', '221', '2012款 1.8 TFSI 自动 舒适型', null, 'A', '2636.jpg', '4', '停销', '29.1万', '2012', '停产', '中型车', 'system', '2018-04-12 10:24:01', 'system', '2018-04-12 10:24:01');
INSERT INTO car_config VALUES ('2636', '2637', '221', '2012款 2.0 TFSI(132kW) 标准型', null, 'A', '2637.jpg', '4', '停销', '30.98万', '2012', '停产', '中型车', 'system', '2018-04-12 10:24:02', 'system', '2018-04-12 10:24:02');
INSERT INTO car_config VALUES ('2637', '2638', '221', '2012款 2.0 TFSI(132kW) 舒适型', null, 'A', '2638.jpg', '4', '停销', '32.99万', '2012', '停产', '中型车', 'system', '2018-04-12 10:24:02', 'system', '2018-04-12 10:24:02');
INSERT INTO car_config VALUES ('2638', '2639', '221', '2012款 2.0 TFSI(132kW) 技术型', null, 'A', '2639.jpg', '4', '停销', '36.98万', '2012', '停产', '中型车', 'system', '2018-04-12 10:24:02', 'system', '2018-04-12 10:24:02');
INSERT INTO car_config VALUES ('2639', '2640', '221', '2012款 2.0 TFSI(132kW) 豪华型', null, 'A', '2640.jpg', '4', '停销', '39.9万', '2012', '停产', '中型车', 'system', '2018-04-12 10:24:02', 'system', '2018-04-12 10:24:02');
INSERT INTO car_config VALUES ('2640', '2641', '221', '2012款 2.0 TFSI(155kW) 运动型', null, 'A', '2641.jpg', '4', '停销', '42.38万', '2012', '停产', '中型车', 'system', '2018-04-12 10:24:02', 'system', '2018-04-12 10:24:02');
INSERT INTO car_config VALUES ('2641', '2642', '221', '2012款 2.0 TFSI(155kW) 尊享型', null, 'A', '2642.jpg', '4', '停销', '46.45万', '2012', '停产', '中型车', 'system', '2018-04-12 10:24:02', 'system', '2018-04-12 10:24:02');
INSERT INTO car_config VALUES ('2642', '2643', '221', '2011款 1.8 TFSI 舒适型', null, 'A', '2643.jpg', '4', '停销', '29.1万', '2011', '停产', '中型车', 'system', '2018-04-12 10:24:02', 'system', '2018-04-12 10:24:02');
INSERT INTO car_config VALUES ('2643', '2644', '221', '2011款 2.0 TFSI(132kW) 标准型', null, 'A', '2644.JPG', '4', '停销', '30.98万', '2011', '停产', '中型车', 'system', '2018-04-12 10:24:03', 'system', '2018-04-12 10:24:03');
INSERT INTO car_config VALUES ('2644', '2645', '221', '2011款 2.0 TFSI(132kW) 舒适型', null, 'A', '2645.JPG', '4', '停销', '32.99万', '2011', '停产', '中型车', 'system', '2018-04-12 10:24:03', 'system', '2018-04-12 10:24:03');
INSERT INTO car_config VALUES ('2645', '2646', '221', '2011款 2.0 TFSI(132kW) 技术型', null, 'A', '2646.JPG', '4', '停销', '36.98万', '2011', '停产', '中型车', 'system', '2018-04-12 10:24:03', 'system', '2018-04-12 10:24:03');
INSERT INTO car_config VALUES ('2646', '2647', '221', '2011款 2.0 TFSI(132kW) 豪华型', null, 'A', '2647.JPG', '4', '停销', '39.9万', '2011', '停产', '中型车', 'system', '2018-04-12 10:24:03', 'system', '2018-04-12 10:24:03');
INSERT INTO car_config VALUES ('2647', '2648', '221', '2011款 2.0 TFSI(155kW) 运动型', null, 'A', '2648.JPG', '4', '停销', '42.38万', '2011', '停产', '中型车', 'system', '2018-04-12 10:24:03', 'system', '2018-04-12 10:24:03');
INSERT INTO car_config VALUES ('2648', '2649', '221', '2011款 2.0 TFSI(155kW) 尊享型', null, 'A', '2649.JPG', '4', '停销', '47.12万', '2011', '停产', '中型车', 'system', '2018-04-12 10:24:03', 'system', '2018-04-12 10:24:03');
INSERT INTO car_config VALUES ('2649', '2650', '221', '2011款 3.2 FSI quattro 旗舰型', null, 'A', '2650.JPG', '4', '停销', '57.81万', '2011', '停产', '中型车', 'system', '2018-04-12 10:24:03', 'system', '2018-04-12 10:24:03');
INSERT INTO car_config VALUES ('2650', '2651', '221', '2010款 1.8 TFSI 手动舒适型', null, 'A', '2651.jpg', '4', '停销', '27.1万', '2010', '停产', '中型车', 'system', '2018-04-12 10:24:03', 'system', '2018-04-12 10:24:03');
INSERT INTO car_config VALUES ('2651', '2652', '221', '2010款 1.8TFSI 舒适型', null, 'A', '2652.jpg', '4', '停销', '29.1万', '2010', '停产', '中型车', 'system', '2018-04-12 10:24:04', 'system', '2018-04-12 10:24:04');
INSERT INTO car_config VALUES ('2652', '2653', '221', '2010款 2.0TFSI 标准型', null, 'A', '2653.jpg', '4', '停销', '30.98万', '2010', '停产', '中型车', 'system', '2018-04-12 10:24:04', 'system', '2018-04-12 10:24:04');
INSERT INTO car_config VALUES ('2653', '2654', '221', '2010款 2.0TFSI 舒适型', null, 'A', '2654.jpg', '4', '停销', '32.99万', '2010', '停产', '中型车', 'system', '2018-04-12 10:24:04', 'system', '2018-04-12 10:24:04');
INSERT INTO car_config VALUES ('2654', '2655', '221', '2010款 2.0TFSI 技术型', null, 'A', '2655.jpg', '4', '停销', '36.98万', '2010', '停产', '中型车', 'system', '2018-04-12 10:24:04', 'system', '2018-04-12 10:24:04');
INSERT INTO car_config VALUES ('2655', '2658', '221', '2010款 3.2FSI quattro 旗舰型', null, 'A', '2658.jpg', '4', '停销', '57.81万', '2010', '停产', '中型车', 'system', '2018-04-12 10:24:04', 'system', '2018-04-12 10:24:04');
INSERT INTO car_config VALUES ('2656', '2657', '221', '2010款 2.0TFSI 运动型', null, 'A', '2657.jpg', '4', '停销', '42.38万', '2010', '停产', '中型车', 'system', '2018-04-12 10:24:04', 'system', '2018-04-12 10:24:04');
INSERT INTO car_config VALUES ('2657', '2656', '221', '2010款 2.0TFSI 豪华型', null, 'A', '2656.jpg', '4', '停销', '39.9万', '2010', '停产', '中型车', 'system', '2018-04-12 10:24:04', 'system', '2018-04-12 10:24:04');
INSERT INTO car_config VALUES ('2658', '2663', '221', '2009款 3.2 FSI quattro 旗舰型', null, 'A', '2663.JPG', '4', '停销', '53.88万', '2009', '停产', '中型车', 'system', '2018-04-12 10:24:04', 'system', '2018-04-12 10:24:04');
INSERT INTO car_config VALUES ('2659', '2662', '221', '2009款 2.0 TFSI 豪华型', null, 'A', '2662.JPG', '4', '停销', '38.86万', '2009', '停产', '中型车', 'system', '2018-04-12 10:24:05', 'system', '2018-04-12 10:24:05');
INSERT INTO car_config VALUES ('2660', '2661', '221', '2009款 2.0 TFSI 技术型', null, 'A', '2661.jpg', '4', '停销', '36.18万', '2009', '停产', '中型车', 'system', '2018-04-12 10:24:05', 'system', '2018-04-12 10:24:05');
INSERT INTO car_config VALUES ('2661', '2660', '221', '2009款 2.0 TFSI 舒适型', null, 'A', '2660.jpg', '4', '停销', '32.99万', '2009', '停产', '中型车', 'system', '2018-04-12 10:24:05', 'system', '2018-04-12 10:24:05');
INSERT INTO car_config VALUES ('2662', '2659', '221', '2009款 2.0 TFSI 标准型', null, 'A', '2659.jpg', '4', '停销', '29.88万', '2009', '停产', '中型车', 'system', '2018-04-12 10:24:05', 'system', '2018-04-12 10:24:05');
INSERT INTO car_config VALUES ('2663', '222', '219', 'A6L', null, 'A', 'http://pic1.jisuapi.cn/car/static/images/logo/300/222.jpg', '3', '在销', null, null, null, null, 'system', '2018-04-12 10:24:05', 'system', '2018-04-12 10:24:05');
INSERT INTO car_config VALUES ('2664', '40200', '222', '2018款 30周年纪念版 TFSI 进取版', null, 'A', '40200.jpg', '4', '在销', '40.6万', '2018', '在产', '中大型车', 'system', '2018-04-12 10:24:05', 'system', '2018-04-12 10:24:05');
INSERT INTO car_config VALUES ('2665', '40201', '222', '2018款 30周年纪念版 35 TFSI 时尚版', null, 'A', '40201.jpg', '4', '在销', '42.1万', '2018', '在产', '中大型车', 'system', '2018-04-12 10:24:05', 'system', '2018-04-12 10:24:05');
INSERT INTO car_config VALUES ('2666', '40202', '222', '2018款 30周年纪念版 35 TFSI 运动版', null, 'A', '40202.jpg', '4', '在销', '44.94万', '2018', '在产', '中大型车', 'system', '2018-04-12 10:24:05', 'system', '2018-04-12 10:24:05');
INSERT INTO car_config VALUES ('2667', '40203', '222', '2018款 30周年纪念版 30 FSI 风尚版', null, 'A', '40203.jpg', '4', '在销', '46.7万', '2018', '在产', '中大型车', 'system', '2018-04-12 10:24:06', 'system', '2018-04-12 10:24:06');
INSERT INTO car_config VALUES ('2668', '40204', '222', '2018款 30周年纪念版 45 TFSI quattro 运动版', null, 'A', '40204.jpg', '4', '在销', '51.28万', '2018', '在产', '中大型车', 'system', '2018-04-12 10:24:06', 'system', '2018-04-12 10:24:06');
INSERT INTO car_config VALUES ('2669', '40205', '222', '2018款 30周年纪念版 45 TFSI quattro 豪华版', null, 'A', '40205.jpg', '4', '在销', '58.98万', '2018', '在产', '中大型车', 'system', '2018-04-12 10:24:06', 'system', '2018-04-12 10:24:06');
INSERT INTO car_config VALUES ('2670', '40206', '222', '2018款 30周年纪念版 50 TFSI quattro 尊享版', null, 'A', '40206.jpg', '4', '在销', '69.8万', '2018', '在产', '中大型车', 'system', '2018-04-12 10:24:06', 'system', '2018-04-12 10:24:06');
INSERT INTO car_config VALUES ('2671', '34289', '222', '2017款 TFSI 技术版', null, 'A', '34289.JPG', '4', '在销', '41.88万', '2017', '停产', '中大型车', 'system', '2018-04-12 10:24:06', 'system', '2018-04-12 10:24:06');
INSERT INTO car_config VALUES ('2672', '34290', '222', '2017款 TFSI 舒适版', null, 'A', '34290.JPG', '4', '在销', '45.65万', '2017', '停产', '中大型车', 'system', '2018-04-12 10:24:06', 'system', '2018-04-12 10:24:06');
INSERT INTO car_config VALUES ('2673', '34291', '222', '2017款 TFSI 运动版', null, 'A', '34291.jpg', '4', '在销', '46.68万', '2017', '停产', '中大型车', 'system', '2018-04-12 10:24:06', 'system', '2018-04-12 10:24:06');
INSERT INTO car_config VALUES ('2674', '34292', '222', '2017款 30 FSI 技术版', null, 'A', '34292.JPG', '4', '在销', '43.88万', '2017', '停产', '中大型车', 'system', '2018-04-12 10:24:06', 'system', '2018-04-12 10:24:06');
INSERT INTO car_config VALUES ('2675', '34293', '222', '2017款 30 FSI 舒适版', null, 'A', '34293.jpg', '4', '在销', '47.65万', '2017', '停产', '中大型车', 'system', '2018-04-12 10:24:07', 'system', '2018-04-12 10:24:07');
INSERT INTO car_config VALUES ('2676', '34295', '222', '2017款 45 TFSI quattro 运动版', null, 'A', '34295.JPG', '4', '在销', '53.05万', '2017', '停产', '中大型车', 'system', '2018-04-12 10:24:07', 'system', '2018-04-12 10:24:07');
INSERT INTO car_config VALUES ('2677', '34296', '222', '2017款 50 TFSI quattro 豪华版', null, 'A', '34296.JPG', '4', '在销', '66.32万', '2017', '停产', '中大型车', 'system', '2018-04-12 10:24:07', 'system', '2018-04-12 10:24:07');
INSERT INTO car_config VALUES ('2678', '34297', '222', '2017款 50 TFSI quattro 尊享版', null, 'A', '34297.JPG', '4', '在销', '74.6万', '2017', '停产', '中大型车', 'system', '2018-04-12 10:24:07', 'system', '2018-04-12 10:24:07');
INSERT INTO car_config VALUES ('2679', '2664', '222', '2016款 TFSI 技术型', null, 'A', '2664.jpg', '4', '停销', '41.53万', '2016', '停产', '中大型车', 'system', '2018-04-12 10:24:07', 'system', '2018-04-12 10:24:07');
INSERT INTO car_config VALUES ('2680', '2665', '222', '2016款 TFSI 舒适型', null, 'A', '2665.jpg', '4', '停销', '44.85万', '2016', '停产', '中大型车', 'system', '2018-04-12 10:24:07', 'system', '2018-04-12 10:24:07');
INSERT INTO car_config VALUES ('2681', '2666', '222', '2016款 TFSI 运动型', null, 'A', '2666.jpg', '4', '停销', '46.12万', '2016', '停产', '中大型车', 'system', '2018-04-12 10:24:07', 'system', '2018-04-12 10:24:07');
INSERT INTO car_config VALUES ('2682', '2667', '222', '2016款 30 FSI 技术型', null, 'A', '2667.jpg', '4', '停销', '43.53万', '2016', '停产', '中大型车', 'system', '2018-04-12 10:24:08', 'system', '2018-04-12 10:24:08');
INSERT INTO car_config VALUES ('2683', '2668', '222', '2016款 30 FSI 舒适型', null, 'A', '2668.jpg', '4', '停销', '46.85万', '2016', '停产', '中大型车', 'system', '2018-04-12 10:24:08', 'system', '2018-04-12 10:24:08');
INSERT INTO car_config VALUES ('2684', '2669', '222', '2016款 45 TFSI quattro 运动型', null, 'A', '2669.jpg', '4', '停销', '52.49万', '2016', '停产', '中大型车', 'system', '2018-04-12 10:24:08', 'system', '2018-04-12 10:24:08');
INSERT INTO car_config VALUES ('2685', '2670', '222', '2016款 50 TFSI quattro 豪华型', null, 'A', '2670.JPG', '4', '停销', '66.22万', '2016', '停产', '中大型车', 'system', '2018-04-12 10:24:08', 'system', '2018-04-12 10:24:08');
INSERT INTO car_config VALUES ('2686', '2671', '222', '2016款 50 TFSI quattro 尊享型', null, 'A', '2671.jpg', '4', '停销', '75.76万', '2016', '停产', '中大型车', 'system', '2018-04-12 10:24:08', 'system', '2018-04-12 10:24:08');
INSERT INTO car_config VALUES ('2687', '34294', '222', '2016款 30 FSI 25周年特别版', null, 'A', '34294.jpg', '4', '停销', '47.88万', '2016', '停产', '中大型车', 'system', '2018-04-12 10:24:08', 'system', '2018-04-12 10:24:08');
INSERT INTO car_config VALUES ('2688', '2672', '222', '2015款 TFSI 纪念智领版', null, 'A', '2672.JPG', '4', '停销', '39.82万', '2015', '停产', '中大型车', 'system', '2018-04-12 10:24:08', 'system', '2018-04-12 10:24:08');
INSERT INTO car_config VALUES ('2689', '2676', '222', '2015款 30 FSI 纪念舒享版', null, 'A', '2676.JPG', '4', '停销', '44.97万', '2015', '停产', '中大型车', 'system', '2018-04-12 10:24:08', 'system', '2018-04-12 10:24:08');
INSERT INTO car_config VALUES ('2690', '2680', '222', '2015款 35 FSI quattro技术型', null, 'A', '2680.jpg', '4', '停销', '49.98万', '2015', '停产', '中大型车', 'system', '2018-04-12 10:24:09', 'system', '2018-04-12 10:24:09');
INSERT INTO car_config VALUES ('2691', '2681', '222', '2015款 35 FSI quattro舒适型', null, 'A', '2681.JPG', '4', '停销', '56.13万', '2015', '停产', '中大型车', 'system', '2018-04-12 10:24:09', 'system', '2018-04-12 10:24:09');
INSERT INTO car_config VALUES ('2692', '2673', '222', '2014款 TFSI 基本型', null, 'A', '2673.jpg', '4', '停销', '38.3万', '2014', '停产', '中大型车', 'system', '2018-04-12 10:24:09', 'system', '2018-04-12 10:24:09');
INSERT INTO car_config VALUES ('2693', '2674', '222', '2014款 TFSI 标准型', null, 'A', '2674.JPG', '4', '停销', '40.98万', '2014', '停产', '中大型车', 'system', '2018-04-12 10:24:09', 'system', '2018-04-12 10:24:09');
INSERT INTO car_config VALUES ('2694', '2675', '222', '2014款 TFSI 舒适型', null, 'A', '2675.JPG', '4', '停销', '44.66万', '2014', '停产', '中大型车', 'system', '2018-04-12 10:24:09', 'system', '2018-04-12 10:24:09');
INSERT INTO car_config VALUES ('2695', '2677', '222', '2014款 30 FSI 技术型', null, 'A', '2677.JPG', '4', '停销', '42.95万', '2014', '停产', '中大型车', 'system', '2018-04-12 10:24:09', 'system', '2018-04-12 10:24:09');
INSERT INTO car_config VALUES ('2696', '2678', '222', '2014款 30 FSI 舒适型', null, 'A', '2678.JPG', '4', '停销', '46.87万', '2014', '停产', '中大型车', 'system', '2018-04-12 10:24:09', 'system', '2018-04-12 10:24:09');
INSERT INTO car_config VALUES ('2697', '2679', '222', '2014款 30 FSI 豪华型', null, 'A', '2679.JPG', '4', '停销', '50.66万', '2014', '停产', '中大型车', 'system', '2018-04-12 10:24:09', 'system', '2018-04-12 10:24:09');
INSERT INTO car_config VALUES ('2698', '2682', '222', '2014款 35 FSI 舒适型', null, 'A', '2682.JPG', '4', '停销', '55.16万', '2014', '停产', '中大型车', 'system', '2018-04-12 10:24:10', 'system', '2018-04-12 10:24:10');
INSERT INTO car_config VALUES ('2699', '2683', '222', '2014款 35 FSI 豪华型', null, 'A', '2683.jpg', '4', '停销', '62.76万', '2014', '停产', '中大型车', 'system', '2018-04-12 10:24:10', 'system', '2018-04-12 10:24:10');
INSERT INTO car_config VALUES ('2700', '2684', '222', '2014款 35 FSI quattro 豪华型', null, 'A', '2684.jpg', '4', '停销', '66.96万', '2014', '停产', '中大型车', 'system', '2018-04-12 10:24:10', 'system', '2018-04-12 10:24:10');
INSERT INTO car_config VALUES ('2701', '2685', '222', '2014款 50 TFSI quattro 豪华型', null, 'A', '2685.JPG', '4', '停销', '74.26万', '2014', '停产', '中大型车', 'system', '2018-04-12 10:24:10', 'system', '2018-04-12 10:24:10');
INSERT INTO car_config VALUES ('2702', '2686', '222', '2012款 TFSI 基本型', null, 'A', '2686.jpg', '4', '停销', '38.3万', '2012', '停产', '中大型车', 'system', '2018-04-12 10:24:10', 'system', '2018-04-12 10:24:10');
INSERT INTO car_config VALUES ('2703', '2687', '222', '2012款 TFSI 标准型', null, 'A', '2687.jpg', '4', '停销', '40.98万', '2012', '停产', '中大型车', 'system', '2018-04-12 10:24:10', 'system', '2018-04-12 10:24:10');
INSERT INTO car_config VALUES ('2704', '2688', '222', '2012款 TFSI 舒适型', null, 'A', '2688.JPG', '4', '停销', '44.66万', '2012', '停产', '中大型车', 'system', '2018-04-12 10:24:10', 'system', '2018-04-12 10:24:10');
INSERT INTO car_config VALUES ('2705', '2689', '222', '2012款 30 FSI 技术型', null, 'A', '2689.jpg', '4', '停销', '43.28万', '2012', '停产', '中大型车', 'system', '2018-04-12 10:24:10', 'system', '2018-04-12 10:24:10');
INSERT INTO car_config VALUES ('2706', '2690', '222', '2012款 30 FSI 舒适型', null, 'A', '2690.jpg', '4', '停销', '47.26万', '2012', '停产', '中大型车', 'system', '2018-04-12 10:24:11', 'system', '2018-04-12 10:24:11');
INSERT INTO car_config VALUES ('2707', '2691', '222', '2012款 30 FSI 豪华型', null, 'A', '2691.JPG', '4', '停销', '50.66万', '2012', '停产', '中大型车', 'system', '2018-04-12 10:24:11', 'system', '2018-04-12 10:24:11');
INSERT INTO car_config VALUES ('2708', '2692', '222', '2012款 35 FSI 舒适型', null, 'A', '2692.JPG', '4', '停销', '55.16万', '2012', '停产', '中大型车', 'system', '2018-04-12 10:24:11', 'system', '2018-04-12 10:24:11');
INSERT INTO car_config VALUES ('2709', '2693', '222', '2012款 35 FSI 豪华型', null, 'A', '2693.jpg', '4', '停销', '62.76万', '2012', '停产', '中大型车', 'system', '2018-04-12 10:24:11', 'system', '2018-04-12 10:24:11');
INSERT INTO car_config VALUES ('2710', '2694', '222', '2012款 35 FSI quattro 豪华型', null, 'A', '2694.jpg', '4', '停销', '66.96万', '2012', '停产', '中大型车', 'system', '2018-04-12 10:24:11', 'system', '2018-04-12 10:24:11');
INSERT INTO car_config VALUES ('2711', '2695', '222', '2012款 50 TFSI quattro 豪华型', null, 'A', '2695.jpg', '4', '停销', '74.26万', '2012', '停产', '中大型车', 'system', '2018-04-12 10:24:11', 'system', '2018-04-12 10:24:11');
INSERT INTO car_config VALUES ('2712', '2696', '222', '2011款 2.0 TFSI 基本型', null, 'A', '2696.jpg', '4', '停销', '35.5万', '2011', '停产', '中大型车', 'system', '2018-04-12 10:24:11', 'system', '2018-04-12 10:24:11');
INSERT INTO car_config VALUES ('2713', '2697', '222', '2011款 2.0 TFSI 标准型(手动)', null, 'A', '2697.jpg', '4', '停销', '37.75万', '2011', '停产', '中大型车', 'system', '2018-04-12 10:24:12', 'system', '2018-04-12 10:24:12');
INSERT INTO car_config VALUES ('2714', '2698', '222', '2011款 2.0 TFSI 标准型(自动)', null, 'A', '2698.jpg', '4', '停销', '38.9万', '2011', '停产', '中大型车', 'system', '2018-04-12 10:24:12', 'system', '2018-04-12 10:24:12');
INSERT INTO car_config VALUES ('2715', '2699', '222', '2011款 2.0 TFSI 舒适型(自动)', null, 'A', '2699.jpg', '4', '停销', '41.52万', '2011', '停产', '中大型车', 'system', '2018-04-12 10:24:12', 'system', '2018-04-12 10:24:12');
INSERT INTO car_config VALUES ('2716', '2700', '222', '2011款 2.0 TFSI CVT标准型', null, 'A', '2700.jpg', '4', '停销', '38.99万', '2011', '停产', '中大型车', 'system', '2018-04-12 10:24:12', 'system', '2018-04-12 10:24:12');
INSERT INTO car_config VALUES ('2717', '2701', '222', '2011款 2.4 技术型', null, 'A', '2701.jpg', '4', '停销', '44.1万', '2011', '停产', '中大型车', 'system', '2018-04-12 10:24:12', 'system', '2018-04-12 10:24:12');
INSERT INTO car_config VALUES ('2718', '2702', '222', '2011款 2.4 舒适型', null, 'A', '2702.jpg', '4', '停销', '47.58万', '2011', '停产', '中大型车', 'system', '2018-04-12 10:24:12', 'system', '2018-04-12 10:24:12');
INSERT INTO car_config VALUES ('2719', '2703', '222', '2011款 2.4 豪华型', null, 'A', '2703.jpg', '4', '停销', '54.2万', '2011', '停产', '中大型车', 'system', '2018-04-12 10:24:12', 'system', '2018-04-12 10:24:12');
INSERT INTO car_config VALUES ('2720', '2704', '222', '2011款 2.7 TDI', null, 'A', '2704.jpg', '4', '停销', '48.88万', '2011', '停产', '中大型车', 'system', '2018-04-12 10:24:12', 'system', '2018-04-12 10:24:12');
INSERT INTO car_config VALUES ('2721', '2705', '222', '2011款 2.8FSI quattro 豪华型', null, 'A', '2705.jpg', '4', '停销', '65.3万', '2011', '停产', '中大型车', 'system', '2018-04-12 10:24:13', 'system', '2018-04-12 10:24:13');
INSERT INTO car_config VALUES ('2722', '2706', '222', '2011款 2.8 FSI 舒适型', null, 'A', '2706.jpg', '4', '停销', '53.77万', '2011', '停产', '中大型车', 'system', '2018-04-12 10:24:13', 'system', '2018-04-12 10:24:13');
INSERT INTO car_config VALUES ('2723', '2707', '222', '2011款 2.8 FSI 豪华型', null, 'A', '2707.jpg', '4', '停销', '62.37万', '2011', '停产', '中大型车', 'system', '2018-04-12 10:24:13', 'system', '2018-04-12 10:24:13');
INSERT INTO car_config VALUES ('2724', '2708', '222', '2011款 3.0T FSI quattro 豪华型', null, 'A', '2708.JPG', '4', '停销', '69.9万', '2011', '停产', '中大型车', 'system', '2018-04-12 10:24:13', 'system', '2018-04-12 10:24:13');
INSERT INTO car_config VALUES ('2725', '2709', '222', '2010款 2.0TFSI 基本型', null, 'A', '2709.jpg', '4', '停销', '35.5万', '2010', '停产', '中大型车', 'system', '2018-04-12 10:24:13', 'system', '2018-04-12 10:24:13');
INSERT INTO car_config VALUES ('2726', '2710', '222', '2010款 2.0TFSI 标准型(手动)', null, 'A', '2710.jpg', '4', '停销', '37.75万', '2010', '停产', '中大型车', 'system', '2018-04-12 10:24:13', 'system', '2018-04-12 10:24:13');
INSERT INTO car_config VALUES ('2727', '2711', '222', '2010款 2.0TFSI 标准型(自动)', null, 'A', '2711.jpg', '4', '停销', '39.99万', '2010', '停产', '中大型车', 'system', '2018-04-12 10:24:13', 'system', '2018-04-12 10:24:13');
INSERT INTO car_config VALUES ('2728', '2712', '222', '2010款 2.4技术型', null, 'A', '2712.jpg', '4', '停销', '43.15万', '2010', '停产', '中大型车', 'system', '2018-04-12 10:24:13', 'system', '2018-04-12 10:24:13');
INSERT INTO car_config VALUES ('2729', '2713', '222', '2010款 2.4舒适型', null, 'A', '2713.jpg', '4', '停销', '47.58万', '2010', '停产', '中大型车', 'system', '2018-04-12 10:24:14', 'system', '2018-04-12 10:24:14');
INSERT INTO car_config VALUES ('2730', '2714', '222', '2010款 2.4豪华型', null, 'A', '2714.jpg', '4', '停销', '53.33万', '2010', '停产', '中大型车', 'system', '2018-04-12 10:24:14', 'system', '2018-04-12 10:24:14');
INSERT INTO car_config VALUES ('2731', '2715', '222', '2010款 2.7 TDI', null, 'A', '2715.jpg', '4', '停销', '48.88万', '2010', '停产', '中大型车', 'system', '2018-04-12 10:24:14', 'system', '2018-04-12 10:24:14');
INSERT INTO car_config VALUES ('2732', '2716', '222', '2010款 2.8FSI quattro 豪华型', null, 'A', '2716.jpg', '4', '停销', '65.02万', '2010', '停产', '中大型车', 'system', '2018-04-12 10:24:14', 'system', '2018-04-12 10:24:14');
INSERT INTO car_config VALUES ('2733', '2717', '222', '2010款 2.8FSI 舒适型', null, 'A', '2717.jpg', '4', '停销', '53.77万', '2010', '停产', '中大型车', 'system', '2018-04-12 10:24:14', 'system', '2018-04-12 10:24:14');
INSERT INTO car_config VALUES ('2734', '2718', '222', '2010款 2.8FSI 豪华型', null, 'A', '2718.jpg', '4', '停销', '61.82万', '2010', '停产', '中大型车', 'system', '2018-04-12 10:24:14', 'system', '2018-04-12 10:24:14');
INSERT INTO car_config VALUES ('2735', '2719', '222', '2010款 3.0FSI quattro 豪华型', null, 'A', '2719.JPG', '4', '停销', '69.6万', '2010', '停产', '中大型车', 'system', '2018-04-12 10:24:14', 'system', '2018-04-12 10:24:14');
INSERT INTO car_config VALUES ('2736', '2720', '222', '2009款 2.0 TFSI 手动基本型', null, 'A', '2720.jpg', '4', '停销', '34.82万', '2009', '停产', '中大型车', 'system', '2018-04-12 10:24:14', 'system', '2018-04-12 10:24:14');
INSERT INTO car_config VALUES ('2737', '2721', '222', '2009款 2.0 TFSI 基本型', null, 'A', '2721.jpg', '4', '停销', '35.5万', '2009', '停产', '中大型车', 'system', '2018-04-12 10:24:15', 'system', '2018-04-12 10:24:15');
INSERT INTO car_config VALUES ('2738', '2722', '222', '2009款 2.0 TFSI 标准型(手动)', null, 'A', '2722.jpg', '4', '停销', '37.25万', '2009', '停产', '中大型车', 'system', '2018-04-12 10:24:15', 'system', '2018-04-12 10:24:15');
INSERT INTO car_config VALUES ('2739', '2723', '222', '2009款 2.0 TFSI 标准型(自动)', null, 'A', '2723.jpg', '4', '停销', '39.8万', '2009', '停产', '中大型车', 'system', '2018-04-12 10:24:15', 'system', '2018-04-12 10:24:15');
INSERT INTO car_config VALUES ('2740', '2724', '222', '2009款 2.4 技术型', null, 'A', '2724.jpg', '4', '停销', '42.45万', '2009', '停产', '中大型车', 'system', '2018-04-12 10:24:15', 'system', '2018-04-12 10:24:15');
INSERT INTO car_config VALUES ('2741', '2725', '222', '2009款 2.4 舒适型', null, 'A', '2725.jpg', '4', '停销', '46.88万', '2009', '停产', '中大型车', 'system', '2018-04-12 10:24:15', 'system', '2018-04-12 10:24:15');
INSERT INTO car_config VALUES ('2742', '2726', '222', '2009款 2.4 豪华型', null, 'A', '2726.jpg', '4', '停销', '52.98万', '2009', '停产', '中大型车', 'system', '2018-04-12 10:24:15', 'system', '2018-04-12 10:24:15');
INSERT INTO car_config VALUES ('2743', '2727', '222', '2009款 2.8 FSI quattro 豪华型', null, 'A', '2727.jpg', '4', '停销', '65.02万', '2009', '停产', '中大型车', 'system', '2018-04-12 10:24:15', 'system', '2018-04-12 10:24:15');
INSERT INTO car_config VALUES ('2744', '2728', '222', '2009款 2.8 FSI 舒适娱乐型', null, 'A', '2728.jpg', '4', '停销', '52.62万', '2009', '停产', '中大型车', 'system', '2018-04-12 10:24:15', 'system', '2018-04-12 10:24:15');
INSERT INTO car_config VALUES ('2745', '2729', '222', '2009款 2.8 FSI 豪华型', null, 'A', '2729.jpg', '4', '停销', '61.82万', '2009', '停产', '中大型车', 'system', '2018-04-12 10:24:16', 'system', '2018-04-12 10:24:16');
INSERT INTO car_config VALUES ('2746', '2730', '222', '2009款 3.0 TFSI quattro 豪华型', null, 'A', '2730.JPG', '4', '停销', '69.6万', '2009', '停产', '中大型车', 'system', '2018-04-12 10:24:16', 'system', '2018-04-12 10:24:16');
INSERT INTO car_config VALUES ('2747', '2731', '222', '2008款 2.0T 手动标准型', null, 'A', '2731.JPG', '4', '停销', '37.43万', '2008', '停产', '中大型车', 'system', '2018-04-12 10:24:16', 'system', '2018-04-12 10:24:16');
INSERT INTO car_config VALUES ('2748', '2732', '222', '2008款 2.0T 手动基本型', null, 'A', '2732.JPG', '4', '停销', '34.72万', '2008', '停产', '中大型车', 'system', '2018-04-12 10:24:16', 'system', '2018-04-12 10:24:16');
INSERT INTO car_config VALUES ('2749', '2733', '222', '2008款 2.4 技术型', null, 'A', '2733.JPG', '4', '停销', '42.45万', '2008', '停产', '中大型车', 'system', '2018-04-12 10:24:16', 'system', '2018-04-12 10:24:16');
INSERT INTO car_config VALUES ('2750', '2734', '222', '2008款 2.4舒适型', null, 'A', '2734.JPG', '4', '停销', '46.88万', '2008', '停产', '中大型车', 'system', '2018-04-12 10:24:16', 'system', '2018-04-12 10:24:16');
INSERT INTO car_config VALUES ('2751', '2735', '222', '2008款 2.8 FSI 尊享型', null, 'A', '2735.JPG', '4', '停销', '60.68万', '2008', '停产', '中大型车', 'system', '2018-04-12 10:24:16', 'system', '2018-04-12 10:24:16');
INSERT INTO car_config VALUES ('2752', '2736', '222', '2008款 2.8 FSI 舒适娱乐型', null, 'A', '2736.JPG', '4', '停销', '52.5万', '2008', '停产', '中大型车', 'system', '2018-04-12 10:24:17', 'system', '2018-04-12 10:24:17');
INSERT INTO car_config VALUES ('2753', '2737', '222', '2007款 2.0T 手动基本型', null, 'A', '2737.JPG', '4', '停销', '34.72万', '2007', '停产', '中大型车', 'system', '2018-04-12 10:24:17', 'system', '2018-04-12 10:24:17');
INSERT INTO car_config VALUES ('2754', '2738', '222', '2007款 2.0T 手动标准型', null, 'A', '2738.JPG', '4', '停销', '37.43万', '2007', '停产', '中大型车', 'system', '2018-04-12 10:24:17', 'system', '2018-04-12 10:24:17');
INSERT INTO car_config VALUES ('2755', '2739', '222', '2007款 2.0T CVT标准型', null, 'A', '2739.JPG', '4', '停销', '39.98万', '2007', '停产', '中大型车', 'system', '2018-04-12 10:24:17', 'system', '2018-04-12 10:24:17');
INSERT INTO car_config VALUES ('2756', '2740', '222', '2007款 2.4 CVT 技术型', null, 'A', '2740.JPG', '4', '停销', '42.45万', '2007', '停产', '中大型车', 'system', '2018-04-12 10:24:17', 'system', '2018-04-12 10:24:17');
INSERT INTO car_config VALUES ('2757', '2741', '222', '2007款 2.4 CVT 舒适型', null, 'A', '2741.JPG', '4', '停销', '46.88万', '2007', '停产', '中大型车', 'system', '2018-04-12 10:24:17', 'system', '2018-04-12 10:24:17');
INSERT INTO car_config VALUES ('2758', '2742', '222', '2007款 2.4 CVT 尊贵型', null, 'A', '2742.JPG', '4', '停销', '52.61万', '2007', '停产', '中大型车', 'system', '2018-04-12 10:24:17', 'system', '2018-04-12 10:24:17');
INSERT INTO car_config VALUES ('2759', '2743', '222', '2007款 2.8 舒适娱乐型', null, 'A', '2743.JPG', '4', '停销', '52.5万', '2007', '停产', '中大型车', 'system', '2018-04-12 10:24:17', 'system', '2018-04-12 10:24:17');
INSERT INTO car_config VALUES ('2760', '2744', '222', '2007款 2.8 尊享型', null, 'A', '2744.JPG', '4', '停销', '60.68万', '2007', '停产', '中大型车', 'system', '2018-04-12 10:24:18', 'system', '2018-04-12 10:24:18');
INSERT INTO car_config VALUES ('2761', '2745', '222', '2007款 3.2FSI quattro领先尊享型', null, 'A', '2745.JPG', '4', '停销', '72.13万', '2007', '停产', '中大型车', 'system', '2018-04-12 10:24:18', 'system', '2018-04-12 10:24:18');
INSERT INTO car_config VALUES ('2762', '2746', '222', '2007款 3.2 FSI 舒适型', null, 'A', '2746.JPG', '4', '停销', '57.39万', '2007', '停产', '中大型车', 'system', '2018-04-12 10:24:18', 'system', '2018-04-12 10:24:18');
INSERT INTO car_config VALUES ('2763', '2747', '222', '2007款 3.2 FSI 尊享型', null, 'A', '2747.JPG', '4', '停销', '64.19万', '2007', '停产', '中大型车', 'system', '2018-04-12 10:24:18', 'system', '2018-04-12 10:24:18');
INSERT INTO car_config VALUES ('2764', '2748', '222', '2007款 3.2 FSI 领先尊享型', null, 'A', '2748.JPG', '4', '停销', '64.19万', '2007', '停产', '中大型车', 'system', '2018-04-12 10:24:18', 'system', '2018-04-12 10:24:18');
INSERT INTO car_config VALUES ('2765', '2749', '222', '2007款 4.2FSI quattro至尊旗舰型导航版', null, 'A', '2749.JPG', '4', '停销', '83.95万', '2007', '停产', '中大型车', 'system', '2018-04-12 10:24:18', 'system', '2018-04-12 10:24:18');
INSERT INTO car_config VALUES ('2766', '2750', '222', '2006款 1.8 手动', null, 'A', '2750.JPG', '4', '停销', '31.8万', '2006', '停产', '中大型车', 'system', '2018-04-12 10:24:18', 'system', '2018-04-12 10:24:18');
INSERT INTO car_config VALUES ('2767', '2751', '222', '2006款 2.4 手动 基本型', null, 'A', '2751.JPG', '4', '停销', '36万', '2006', '停产', '中大型车', 'system', '2018-04-12 10:24:18', 'system', '2018-04-12 10:24:18');
INSERT INTO car_config VALUES ('2768', '2752', '222', '2006款 2.4 CVT 技术型', null, 'A', '2752.JPG', '4', '停销', '42.45万', '2006', '停产', '中大型车', 'system', '2018-04-12 10:24:19', 'system', '2018-04-12 10:24:19');
INSERT INTO car_config VALUES ('2769', '2753', '222', '2006款 2.4 CVT 豪华型', null, 'A', '2753.JPG', '4', '停销', '46.84万', '2006', '停产', '中大型车', 'system', '2018-04-12 10:24:19', 'system', '2018-04-12 10:24:19');
INSERT INTO car_config VALUES ('2770', '2754', '222', '2006款 2.4 CVT 舒适型', null, 'A', '2754.JPG', '4', '停销', '46.88万', '2006', '停产', '中大型车', 'system', '2018-04-12 10:24:19', 'system', '2018-04-12 10:24:19');
INSERT INTO car_config VALUES ('2771', '2755', '222', '2006款 2.4 CVT 尊贵型', null, 'A', '2755.JPG', '4', '停销', '52.91万', '2006', '停产', '中大型车', 'system', '2018-04-12 10:24:19', 'system', '2018-04-12 10:24:19');
INSERT INTO car_config VALUES ('2772', '2756', '222', '2006款 3.0自动尊贵型', null, 'A', '2756.JPG', '4', '停销', '64.98万', '2006', '停产', '中大型车', 'system', '2018-04-12 10:24:19', 'system', '2018-04-12 10:24:19');
INSERT INTO car_config VALUES ('2773', '2757', '222', '2006款 3.2 FSI 舒适型', null, 'A', '2757.JPG', '4', '停销', '57.39万', '2006', '停产', '中大型车', 'system', '2018-04-12 10:24:19', 'system', '2018-04-12 10:24:19');
INSERT INTO car_config VALUES ('2774', '2758', '222', '2006款 3.2 FSI quattro 舒适娱乐型', null, 'A', '2758.JPG', '4', '停销', '57.99万', '2006', '停产', '中大型车', 'system', '2018-04-12 10:24:19', 'system', '2018-04-12 10:24:19');
INSERT INTO car_config VALUES ('2775', '2759', '222', '2006款 3.2 FSI 尊享型', null, 'A', '2759.JPG', '4', '停销', '64.72万', '2006', '停产', '中大型车', 'system', '2018-04-12 10:24:19', 'system', '2018-04-12 10:24:19');
INSERT INTO car_config VALUES ('2776', '2760', '222', '2006款 3.2 FSI quattro 豪华型', null, 'A', '2760.JPG', '4', '停销', '65.57万', '2006', '停产', '中大型车', 'system', '2018-04-12 10:24:20', 'system', '2018-04-12 10:24:20');
INSERT INTO car_config VALUES ('2777', '2761', '222', '2006款 4.2FSI quattro至尊旗舰型', null, 'A', '2761.JPG', '4', '停销', '85.33万', '2006', '停产', '中大型车', 'system', '2018-04-12 10:24:20', 'system', '2018-04-12 10:24:20');
INSERT INTO car_config VALUES ('2778', '2762', '222', '2005款 1.8T手动公务版', null, 'A', '2762.JPG', '4', '停销', '29.8万', '2005', '停产', '中大型车', 'system', '2018-04-12 10:24:20', 'system', '2018-04-12 10:24:20');
INSERT INTO car_config VALUES ('2779', '2763', '222', '2005款 1.8T手自一体基本型', null, 'A', '2763.JPG', '4', '停销', '36.85万', '2005', '停产', '中大型车', 'system', '2018-04-12 10:24:20', 'system', '2018-04-12 10:24:20');
INSERT INTO car_config VALUES ('2780', '2764', '222', '2005款 2.0T FSI手动基本型', null, 'A', '2764.JPG', '4', '停销', '34.72万', '2005', '停产', '中大型车', 'system', '2018-04-12 10:24:20', 'system', '2018-04-12 10:24:20');
INSERT INTO car_config VALUES ('2781', '2765', '222', '2005款 2.0T FSI手动标准型', null, 'A', '2765.JPG', '4', '停销', '37.25万', '2005', '停产', '中大型车', 'system', '2018-04-12 10:24:20', 'system', '2018-04-12 10:24:20');
INSERT INTO car_config VALUES ('2782', '2766', '222', '2005款 2.0T FSI自动标准型', null, 'A', '2766.JPG', '4', '停销', '39.8万', '2005', '停产', '中大型车', 'system', '2018-04-12 10:24:20', 'system', '2018-04-12 10:24:20');
INSERT INTO car_config VALUES ('2783', '2767', '222', '2005款 2.0T 手动标准型', null, 'A', '2767.JPG', '4', '停销', '34.72万', '2005', '停产', '中大型车', 'system', '2018-04-12 10:24:20', 'system', '2018-04-12 10:24:20');
INSERT INTO car_config VALUES ('2784', '2768', '222', '2005款 2.0T CVT标准型', null, 'A', '2768.JPG', '4', '停销', '39.63万', '2005', '停产', '中大型车', 'system', '2018-04-12 10:24:21', 'system', '2018-04-12 10:24:21');
INSERT INTO car_config VALUES ('2785', '2769', '222', '2005款 2.4 手动 基本型', null, 'A', '2769.JPG', '4', '停销', '36万', '2005', '停产', '中大型车', 'system', '2018-04-12 10:24:21', 'system', '2018-04-12 10:24:21');
INSERT INTO car_config VALUES ('2786', '2770', '222', '2005款 2.4技术型', null, 'A', '2770.JPG', '4', '停销', '42.45万', '2005', '停产', '中大型车', 'system', '2018-04-12 10:24:21', 'system', '2018-04-12 10:24:21');
INSERT INTO car_config VALUES ('2787', '2771', '222', '2005款 2.4 CVT 技术型', null, 'A', '2771.JPG', '4', '停销', '43.26万', '2005', '停产', '中大型车', 'system', '2018-04-12 10:24:21', 'system', '2018-04-12 10:24:21');
INSERT INTO car_config VALUES ('2788', '2772', '222', '2005款 2.4标准型', null, 'A', '2772.JPG', '4', '停销', '46.31万', '2005', '停产', '中大型车', 'system', '2018-04-12 10:24:21', 'system', '2018-04-12 10:24:21');
INSERT INTO car_config VALUES ('2789', '2773', '222', '2005款 2.4 CVT 舒适型', null, 'A', '2773.JPG', '4', '停销', '46.84万', '2005', '停产', '中大型车', 'system', '2018-04-12 10:24:21', 'system', '2018-04-12 10:24:21');
INSERT INTO car_config VALUES ('2790', '2774', '222', '2005款 2.4L自动技术领先型＋', null, 'A', '2774.JPG', '4', '停销', '49.81万', '2005', '停产', '中大型车', 'system', '2018-04-12 10:24:21', 'system', '2018-04-12 10:24:21');
INSERT INTO car_config VALUES ('2791', '2775', '222', '2005款 2.4技术领先型＋＋', null, 'A', '2775.JPG', '4', '停销', '50.11万', '2005', '停产', '中大型车', 'system', '2018-04-12 10:24:22', 'system', '2018-04-12 10:24:22');
INSERT INTO car_config VALUES ('2792', '2776', '222', '2005款 2.4L自动技术领先型', null, 'A', '2776.JPG', '4', '停销', '50.34万', '2005', '停产', '中大型车', 'system', '2018-04-12 10:24:22', 'system', '2018-04-12 10:24:22');
INSERT INTO car_config VALUES ('2793', '2777', '222', '2005款 2.4豪华型', null, 'A', '2777.JPG', '4', '停销', '50.47万', '2005', '停产', '中大型车', 'system', '2018-04-12 10:24:22', 'system', '2018-04-12 10:24:22');
INSERT INTO car_config VALUES ('2794', '2778', '222', '2005款 2.4尊贵型', null, 'A', '2778.JPG', '4', '停销', '52.61万', '2005', '停产', '中大型车', 'system', '2018-04-12 10:24:22', 'system', '2018-04-12 10:24:22');
INSERT INTO car_config VALUES ('2795', '2779', '222', '2005款 3.0L quattro领先尊享型（4驱）', null, 'A', '2779.JPG', '4', '停销', '73.28万', '2005', '停产', '中大型车', 'system', '2018-04-12 10:24:22', 'system', '2018-04-12 10:24:22');
INSERT INTO car_config VALUES ('2796', '2780', '222', '2005款 3.0 quattro 自动旗舰型', null, 'A', '2780.JPG', '4', '停销', '50.09万', '2005', '停产', '中大型车', 'system', '2018-04-12 10:24:22', 'system', '2018-04-12 10:24:22');
INSERT INTO car_config VALUES ('2797', '2781', '222', '2005款 3.0自动舒适型', null, 'A', '2781.JPG', '4', '停销', '53.85万', '2005', '停产', '中大型车', 'system', '2018-04-12 10:24:22', 'system', '2018-04-12 10:24:22');
INSERT INTO car_config VALUES ('2798', '2782', '222', '2005款 3.0L 舒适型', null, 'A', '2782.JPG', '4', '停销', '57.85万', '2005', '停产', '中大型车', 'system', '2018-04-12 10:24:22', 'system', '2018-04-12 10:24:22');
INSERT INTO car_config VALUES ('2799', '2783', '222', '2005款 3.0L 标准型', null, 'A', '2783.JPG', '4', '停销', '57.85万', '2005', '停产', '中大型车', 'system', '2018-04-12 10:24:23', 'system', '2018-04-12 10:24:23');
INSERT INTO car_config VALUES ('2800', '2784', '222', '2005款 3.0L舒适娱乐型', null, 'A', '2784.JPG', '4', '停销', '57.89万', '2005', '停产', '中大型车', 'system', '2018-04-12 10:24:23', 'system', '2018-04-12 10:24:23');
INSERT INTO car_config VALUES ('2801', '2785', '222', '2005款 3.0L技术领先型', null, 'A', '2785.JPG', '4', '停销', '65.02万', '2005', '停产', '中大型车', 'system', '2018-04-12 10:24:23', 'system', '2018-04-12 10:24:23');
INSERT INTO car_config VALUES ('2802', '2786', '222', '2005款 4.2FSI quattro标准型', null, 'A', '2786.JPG', '4', '停销', '84.89万', '2005', '停产', '中大型车', 'system', '2018-04-12 10:24:23', 'system', '2018-04-12 10:24:23');
INSERT INTO car_config VALUES ('2803', '2787', '222', '2005款 4.2FSI quattro至尊旗舰型', null, 'A', '2787.JPG', '4', '停销', '85.63万', '2005', '停产', '中大型车', 'system', '2018-04-12 10:24:23', 'system', '2018-04-12 10:24:23');
INSERT INTO car_config VALUES ('2804', '2788', '222', '2004款 1.8L基本型', null, 'A', '2788.jpg', '4', '停销', '30.8万', '2004', '停产', '中大型车', 'system', '2018-04-12 10:24:23', 'system', '2018-04-12 10:24:23');
INSERT INTO car_config VALUES ('2805', '2789', '222', '2004款 1.8T简装版', null, 'A', '2789.jpg', '4', '停销', '29.8万', '2004', '停产', '中大型车', 'system', '2018-04-12 10:24:23', 'system', '2018-04-12 10:24:23');
INSERT INTO car_config VALUES ('2806', '2790', '222', '2004款 1.8T 手动基本型', null, 'A', '2790.jpg', '4', '停销', '35.85万', '2004', '停产', '中大型车', 'system', '2018-04-12 10:24:23', 'system', '2018-04-12 10:24:23');
INSERT INTO car_config VALUES ('2807', '2791', '222', '2004款 1.8T 自动基本型', null, 'A', '2791.jpg', '4', '停销', '37.85万', '2004', '停产', '中大型车', 'system', '2018-04-12 10:24:24', 'system', '2018-04-12 10:24:24');
INSERT INTO car_config VALUES ('2808', '2792', '222', '2004款 1.8T 自动动豪华舒适型', null, 'A', '2792.jpg', '4', '停销', '42.51万', '2004', '停产', '中大型车', 'system', '2018-04-12 10:24:24', 'system', '2018-04-12 10:24:24');
INSERT INTO car_config VALUES ('2809', '2793', '222', '2004款 2.4L手动基本型', null, 'A', '2793.jpg', '4', '停销', '39.5万', '2004', '停产', '中大型车', 'system', '2018-04-12 10:24:24', 'system', '2018-04-12 10:24:24');
INSERT INTO car_config VALUES ('2810', '2794', '222', '2004款 2.4L自动基本型', null, 'A', '2794.jpg', '4', '停销', '42.55万', '2004', '停产', '中大型车', 'system', '2018-04-12 10:24:24', 'system', '2018-04-12 10:24:24');
INSERT INTO car_config VALUES ('2811', '2795', '222', '2004款 2.4L 豪华舒适型', null, 'A', '2795.jpg', '4', '停销', '45.96万', '2004', '停产', '中大型车', 'system', '2018-04-12 10:24:24', 'system', '2018-04-12 10:24:24');
INSERT INTO car_config VALUES ('2812', '2796', '222', '2004款 2.4L 技术领先型', null, 'A', '2796.jpg', '4', '停销', '49.97万', '2004', '停产', '中大型车', 'system', '2018-04-12 10:24:24', 'system', '2018-04-12 10:24:24');
INSERT INTO car_config VALUES ('2813', '2797', '222', '2004款 2.4豪华行政版', null, 'A', '2797.jpg', '4', '停销', '54.62万', '2004', '停产', '中大型车', 'system', '2018-04-12 10:24:24', 'system', '2018-04-12 10:24:24');
INSERT INTO car_config VALUES ('2814', '2798', '222', '2004款 2.5TDI', null, 'A', '2798.jpg', '4', '停销', '41.21万', '2004', '停产', '中大型车', 'system', '2018-04-12 10:24:25', 'system', '2018-04-12 10:24:25');
INSERT INTO car_config VALUES ('2815', '2799', '222', '2004款 2.8L 手动豪华舒适版', null, 'A', '2799.jpg', '4', '停销', '45.36万', '2004', '停产', '中大型车', 'system', '2018-04-12 10:24:25', 'system', '2018-04-12 10:24:25');
INSERT INTO car_config VALUES ('2816', '2800', '222', '2004款 2.8L技术领先型', null, 'A', '2800.jpg', '4', '停销', '52.32万', '2004', '停产', '中大型车', 'system', '2018-04-12 10:24:25', 'system', '2018-04-12 10:24:25');
INSERT INTO car_config VALUES ('2817', '2801', '222', '2004款 2.8L豪华行政版', null, 'A', '2801.jpg', '4', '停销', '56.97万', '2004', '停产', '中大型车', 'system', '2018-04-12 10:24:25', 'system', '2018-04-12 10:24:25');
INSERT INTO car_config VALUES ('2818', '2802', '222', '2003款 1.8i基本型', null, 'A', '2802.JPG', '4', '停销', '32.8万', '2003', '停产', '中大型车', 'system', '2018-04-12 10:24:25', 'system', '2018-04-12 10:24:25');
INSERT INTO car_config VALUES ('2819', '2803', '222', '2003款 奥迪A6 1.8T 简装版', null, 'A', '2803.JPG', '4', '停销', '暂无', '2003', '停产', '中大型车', 'system', '2018-04-12 10:24:25', 'system', '2018-04-12 10:24:25');
INSERT INTO car_config VALUES ('2820', '2804', '222', '2003款 1.8T手动基本型', null, 'A', '2804.JPG', '4', '停销', '35.85万', '2003', '停产', '中大型车', 'system', '2018-04-12 10:24:25', 'system', '2018-04-12 10:24:25');
INSERT INTO car_config VALUES ('2821', '2805', '222', '2003款 奥迪A6 1.8T 舒适型 MT', null, 'A', '2805.JPG', '4', '停销', '38万', '2003', '停产', '中大型车', 'system', '2018-04-12 10:24:25', 'system', '2018-04-12 10:24:25');
INSERT INTO car_config VALUES ('2822', '2806', '222', '2003款 1.8T 自动舒适型', null, 'A', '2806.JPG', '4', '停销', '37.85万', '2003', '停产', '中大型车', 'system', '2018-04-12 10:24:26', 'system', '2018-04-12 10:24:26');
INSERT INTO car_config VALUES ('2823', '2807', '222', '2003款 1.8T 自动基本型', null, 'A', '2807.JPG', '4', '停销', '37.85万', '2003', '停产', '中大型车', 'system', '2018-04-12 10:24:26', 'system', '2018-04-12 10:24:26');
INSERT INTO car_config VALUES ('2824', '2808', '222', '2003款 1.8T 自动豪华型', null, 'A', '2808.JPG', '4', '停销', '42.51万', '2003', '停产', '中大型车', 'system', '2018-04-12 10:24:26', 'system', '2018-04-12 10:24:26');
INSERT INTO car_config VALUES ('2825', '2809', '222', '2003款 奥迪A6 2.4L MT 基本型', null, 'A', '2809.JPG', '4', '停销', '42.55万', '2003', '停产', '中大型车', 'system', '2018-04-12 10:24:26', 'system', '2018-04-12 10:24:26');
INSERT INTO car_config VALUES ('2826', '2810', '222', '2003款 奥迪A6 2.4L舒适型', null, 'A', '2810.JPG', '4', '停销', '暂无', '2003', '停产', '中大型车', 'system', '2018-04-12 10:24:26', 'system', '2018-04-12 10:24:26');
INSERT INTO car_config VALUES ('2827', '2811', '222', '2003款 奥迪A6 2.4L 基本型 手自一体', null, 'A', '2811.JPG', '4', '停销', '42.55万', '2003', '停产', '中大型车', 'system', '2018-04-12 10:24:26', 'system', '2018-04-12 10:24:26');
INSERT INTO car_config VALUES ('2828', '2812', '222', '2003款 奥迪A6 2.4L 技术领先型', null, 'A', '2812.JPG', '4', '停销', '49.97万', '2003', '停产', '中大型车', 'system', '2018-04-12 10:24:26', 'system', '2018-04-12 10:24:26');
INSERT INTO car_config VALUES ('2829', '2813', '222', '2003款 奥迪A6 2.4L 豪华行政版', null, 'A', '2813.JPG', '4', '停销', '54.62万', '2003', '停产', '中大型车', 'system', '2018-04-12 10:24:27', 'system', '2018-04-12 10:24:27');
INSERT INTO car_config VALUES ('2830', '2814', '222', '2003款 2.4L 手动 基本型', null, 'A', '2814.JPG', '4', '停销', '39.55万', '2003', '停产', '中大型车', 'system', '2018-04-12 10:24:27', 'system', '2018-04-12 10:24:27');
INSERT INTO car_config VALUES ('2831', '2815', '222', '2003款 奥迪A6 2.5TDI', null, 'A', '2815.JPG', '4', '停销', '暂无', '2003', '停产', '中大型车', 'system', '2018-04-12 10:24:27', 'system', '2018-04-12 10:24:27');
INSERT INTO car_config VALUES ('2832', '2816', '222', '2003款 2.8L A/MT', null, 'A', '2816.JPG', '4', '停销', '暂无', '2003', '停产', '中大型车', 'system', '2018-04-12 10:24:27', 'system', '2018-04-12 10:24:27');
INSERT INTO car_config VALUES ('2833', '2817', '222', '2003款 奥迪A6 2.8CVT 技术领先+', null, 'A', '2817.JPG', '4', '停销', '暂无', '2003', '停产', '中大型车', 'system', '2018-04-12 10:24:27', 'system', '2018-04-12 10:24:27');
INSERT INTO car_config VALUES ('2834', '2818', '222', '2003款 奥迪A6 2.8CVT技术领先型', null, 'A', '2818.JPG', '4', '停销', '52.32万', '2003', '停产', '中大型车', 'system', '2018-04-12 10:24:27', 'system', '2018-04-12 10:24:27');
INSERT INTO car_config VALUES ('2835', '2819', '222', '2003款 奥迪A6 2.8豪华行政版', null, 'A', '2819.JPG', '4', '停销', '56.97万', '2003', '停产', '中大型车', 'system', '2018-04-12 10:24:27', 'system', '2018-04-12 10:24:27');
INSERT INTO car_config VALUES ('2836', '2820', '222', '2002款 1.8T 手动舒适型', null, 'A', '2820.JPG', '4', '停销', '41.51万', '2002', '停产', '中大型车', 'system', '2018-04-12 10:24:27', 'system', '2018-04-12 10:24:27');
INSERT INTO car_config VALUES ('2837', '2821', '222', '2002款 奥迪A6 1.8T 手动舒适型', null, 'A', '2821.JPG', '4', '停销', '39.91万', '2002', '停产', '中大型车', 'system', '2018-04-12 10:24:28', 'system', '2018-04-12 10:24:28');
INSERT INTO car_config VALUES ('2838', '2822', '222', '2002款 奥迪A6 1.8T 自动基本型', null, 'A', '2822.JPG', '4', '停销', '37.6万', '2002', '停产', '中大型车', 'system', '2018-04-12 10:24:28', 'system', '2018-04-12 10:24:28');
INSERT INTO car_config VALUES ('2839', '2823', '222', '2002款 奥迪A6 1.8T 自动豪华型', null, 'A', '2823.JPG', '4', '停销', '43.36万', '2002', '停产', '中大型车', 'system', '2018-04-12 10:24:28', 'system', '2018-04-12 10:24:28');
INSERT INTO car_config VALUES ('2840', '2824', '222', '2002款 2.4豪华行政版', null, 'A', '2824.JPG', '4', '停销', '暂无', '2002', '停产', '中大型车', 'system', '2018-04-12 10:24:28', 'system', '2018-04-12 10:24:28');
INSERT INTO car_config VALUES ('2841', '2825', '222', '2002款 2.4L CVT 技术领先型', null, 'A', '2825.JPG', '4', '停销', '49.97万', '2002', '停产', '中大型车', 'system', '2018-04-12 10:24:28', 'system', '2018-04-12 10:24:28');
INSERT INTO car_config VALUES ('2842', '2826', '222', '2002款 2.8L 手动豪华舒适型', null, 'A', '2826.JPG', '4', '停销', '45.36万', '2002', '停产', '中大型车', 'system', '2018-04-12 10:24:28', 'system', '2018-04-12 10:24:28');
INSERT INTO car_config VALUES ('2843', '2827', '222', '2002款 2.8L 手自一体 技术领先型', null, 'A', '2827.JPG', '4', '停销', '52.32万', '2002', '停产', '中大型车', 'system', '2018-04-12 10:24:28', 'system', '2018-04-12 10:24:28');
INSERT INTO car_config VALUES ('2844', '2828', '222', '2002款 2.8L 手自一体 豪华行政版', null, 'A', '2828.JPG', '4', '停销', '56.79万', '2002', '停产', '中大型车', 'system', '2018-04-12 10:24:28', 'system', '2018-04-12 10:24:28');
INSERT INTO car_config VALUES ('2845', '2829', '222', '2001款 2.4豪华行政版', null, 'A', '2829.JPG', '4', '停销', '暂无', '2001', '停产', '中大型车', 'system', '2018-04-12 10:24:29', 'system', '2018-04-12 10:24:29');
INSERT INTO car_config VALUES ('2846', '2830', '222', '2001款 2.4L CVT 技术领先型', null, 'A', '2830.JPG', '4', '停销', '49.12万', '2001', '停产', '中大型车', 'system', '2018-04-12 10:24:29', 'system', '2018-04-12 10:24:29');
INSERT INTO car_config VALUES ('2847', '2831', '222', '2000款 奥迪A6 1.8 MT 基本型', null, 'A', '2831.JPG', '4', '停销', '34.8万', '2000', '停产', '中大型车', 'system', '2018-04-12 10:24:29', 'system', '2018-04-12 10:24:29');
INSERT INTO car_config VALUES ('2848', '2832', '222', '2000款 1.8 手动基本型', null, 'A', '2832.JPG', '4', '停销', '32.8万', '2000', '停产', '中大型车', 'system', '2018-04-12 10:24:29', 'system', '2018-04-12 10:24:29');
INSERT INTO car_config VALUES ('2849', '2833', '222', '2000款 奥迪A6 1.8T 手动基本型', null, 'A', '2833.JPG', '4', '停销', '42.51万', '2000', '停产', '中大型车', 'system', '2018-04-12 10:24:29', 'system', '2018-04-12 10:24:29');
INSERT INTO car_config VALUES ('2850', '2834', '222', '2000款 奥迪A6 1.8T 自动基本型', null, 'A', '2834.JPG', '4', '停销', '37.6万', '2000', '停产', '中大型车', 'system', '2018-04-12 10:24:29', 'system', '2018-04-12 10:24:29');
INSERT INTO car_config VALUES ('2851', '2835', '222', '2000款 1.8T 手动基本型', null, 'A', '2835.JPG', '4', '停销', '35.85万', '2000', '停产', '中大型车', 'system', '2018-04-12 10:24:29', 'system', '2018-04-12 10:24:29');
INSERT INTO car_config VALUES ('2852', '2836', '222', '2000款 奥迪A6 2.8L', null, 'A', '2836.JPG', '4', '停销', '52.32万', '2000', '停产', '中大型车', 'system', '2018-04-12 10:24:29', 'system', '2018-04-12 10:24:29');
INSERT INTO car_config VALUES ('2853', '2837', '222', '2000款 2.8L 手动', null, 'A', '2837.JPG', '4', '停销', '51.22万', '2000', '停产', '中大型车', 'system', '2018-04-12 10:24:30', 'system', '2018-04-12 10:24:30');
INSERT INTO car_config VALUES ('2854', '2838', '222', '1999款 2.4L 手动 基本型', null, 'A', '2838.JPG', '4', '停销', '36.5万', '1999', '停产', '中大型车', 'system', '2018-04-12 10:24:30', 'system', '2018-04-12 10:24:30');
INSERT INTO car_config VALUES ('2855', '2839', '222', '1999款 2.4L 手自一体 基本型', null, 'A', '2839.JPG', '4', '停销', '46.01万', '1999', '停产', '中大型车', 'system', '2018-04-12 10:24:30', 'system', '2018-04-12 10:24:30');
INSERT INTO car_config VALUES ('2856', '2840', '222', '1999款 2.4L 手动 舒适型', null, 'A', '2840.JPG', '4', '停销', '48.72万', '1999', '停产', '中大型车', 'system', '2018-04-12 10:24:30', 'system', '2018-04-12 10:24:30');
INSERT INTO car_config VALUES ('2857', '223', '219', 'Q3', null, 'A', 'http://pic1.jisuapi.cn/car/static/images/logo/300/223.jpg', '3', '在销', null, null, null, null, 'system', '2018-04-12 10:24:30', 'system', '2018-04-12 10:24:30');
INSERT INTO car_config VALUES ('2858', '41981', '223', '2018款 30周年纪念版 40 TFSI quattro全时四驱运动版', null, 'A', '41981.jpg', '4', '在销', '34.28万', '2018', '在产', '紧凑型SUV', 'system', '2018-04-12 10:24:30', 'system', '2018-04-12 10:24:30');
INSERT INTO car_config VALUES ('2859', '41980', '223', '2018款 30周年纪念版 35 TFSI quattro全时四驱运动版', null, 'A', '41980.jpg', '4', '在销', '32.78万', '2018', '在产', '紧凑型SUV', 'system', '2018-04-12 10:24:30', 'system', '2018-04-12 10:24:30');
INSERT INTO car_config VALUES ('2860', '41979', '223', '2018款 30周年纪念版 35 TFSI 运动版', null, 'A', '41979.jpg', '4', '在销', '31.08万', '2018', '在产', '紧凑型SUV', 'system', '2018-04-12 10:24:30', 'system', '2018-04-12 10:24:30');
INSERT INTO car_config VALUES ('2861', '41978', '223', '2018款 30周年纪念版 35 TFSI 时尚版', null, 'A', '41978.jpg', '4', '在销', '28.77万', '2018', '在产', '紧凑型SUV', 'system', '2018-04-12 10:24:31', 'system', '2018-04-12 10:24:31');
INSERT INTO car_config VALUES ('2862', '41977', '223', '2018款 30周年纪念版 30 TFSI 风尚版', null, 'A', '41977.jpg', '4', '在销', '29.08万', '2018', '在产', '紧凑型SUV', 'system', '2018-04-12 10:24:31', 'system', '2018-04-12 10:24:31');
INSERT INTO car_config VALUES ('2863', '41976', '223', '2018款 30周年纪念版 30 TFSI 时尚版', null, 'A', '41976.jpg', '4', '在销', '26.77万', '2018', '在产', '紧凑型SUV', 'system', '2018-04-12 10:24:31', 'system', '2018-04-12 10:24:31');
INSERT INTO car_config VALUES ('2864', '41975', '223', '2018款 30周年纪念版 30 TFSI 标准版', null, 'A', '41975.jpg', '4', '在销', '24.9万', '2018', '在产', '紧凑型SUV', 'system', '2018-04-12 10:24:31', 'system', '2018-04-12 10:24:31');
INSERT INTO car_config VALUES ('2865', '34300', '223', '2017款 30 TFSI 时尚版', null, 'A', '34300.jpg', '4', '在销', '25.92万', '2017', '停产', '紧凑型SUV', 'system', '2018-04-12 10:24:31', 'system', '2018-04-12 10:24:31');
INSERT INTO car_config VALUES ('2866', '34301', '223', '2017款 30 TFSI 运动版', null, 'A', '34301.jpg', '4', '在销', '29.08万', '2017', '停产', '紧凑型SUV', 'system', '2018-04-12 10:24:31', 'system', '2018-04-12 10:24:31');
INSERT INTO car_config VALUES ('2867', '34302', '223', '2017款 30 TFSI 风尚版', null, 'A', '34302.jpg', '4', '在销', '29.08万', '2017', '停产', '紧凑型SUV', 'system', '2018-04-12 10:24:31', 'system', '2018-04-12 10:24:31');
INSERT INTO car_config VALUES ('2868', '34303', '223', '2017款 35 TFSI 时尚版', null, 'A', '34303.jpg', '4', '在销', '27.92万', '2017', '停产', '紧凑型SUV', 'system', '2018-04-12 10:24:32', 'system', '2018-04-12 10:24:32');
INSERT INTO car_config VALUES ('2869', '34304', '223', '2017款 35 TFSI 风尚版', null, 'A', '34304.jpg', '4', '在销', '31.08万', '2017', '停产', '紧凑型SUV', 'system', '2018-04-12 10:24:32', 'system', '2018-04-12 10:24:32');
INSERT INTO car_config VALUES ('2870', '34305', '223', '2017款 35 TFSI 运动版', null, 'A', '34305.jpg', '4', '在销', '31.08万', '2017', '停产', '紧凑型SUV', 'system', '2018-04-12 10:24:32', 'system', '2018-04-12 10:24:32');
INSERT INTO car_config VALUES ('2871', '34306', '223', '2017款 35 TFSI quattro 全时四驱运动版', null, 'A', '34306.jpg', '4', '在销', '32.78万', '2017', '停产', '紧凑型SUV', 'system', '2018-04-12 10:24:32', 'system', '2018-04-12 10:24:32');
INSERT INTO car_config VALUES ('2872', '34307', '223', '2017款 35 TFSI quattro 全时四驱风尚版', null, 'A', '34307.jpg', '4', '在销', '32.78万', '2017', '停产', '紧凑型SUV', 'system', '2018-04-12 10:24:32', 'system', '2018-04-12 10:24:32');
INSERT INTO car_config VALUES ('2873', '34309', '223', '2017款 40 TFSI quattro 全时四驱运动版', null, 'A', '34309.jpg', '4', '在销', '34.28万', '2017', '停产', '紧凑型SUV', 'system', '2018-04-12 10:24:32', 'system', '2018-04-12 10:24:32');
INSERT INTO car_config VALUES ('2874', '34310', '223', '2017款 40 TFSI quattro 全时四驱风尚版', null, 'A', '34310.jpg', '4', '在销', '34.28万', '2017', '停产', '紧凑型SUV', 'system', '2018-04-12 10:24:32', 'system', '2018-04-12 10:24:32');
INSERT INTO car_config VALUES ('2875', '40207', '223', '2017款 30 TFSI 标准版', null, 'A', '40207.jpg', '4', '在销', '23.42万', '2017', '停产', '紧凑型SUV', 'system', '2018-04-12 10:24:32', 'system', '2018-04-12 10:24:32');
INSERT INTO car_config VALUES ('2876', '34308', '223', '2016款 35  TFSI quattro 25周年特别版', null, 'A', '34308.jpg', '4', '停销', '32.08万', '2016', '停产', '紧凑型SUV', 'system', '2018-04-12 10:24:33', 'system', '2018-04-12 10:24:33');
INSERT INTO car_config VALUES ('2877', '2853', '223', '2016款 40 TFSI quattro 全时四驱运动型', null, 'A', '2853.jpg', '4', '停销', '34.49万', '2016', '停产', '紧凑型SUV', 'system', '2018-04-12 10:24:33', 'system', '2018-04-12 10:24:33');
INSERT INTO car_config VALUES ('2878', '2852', '223', '2016款 40 TFSI quattro 全时四驱风尚型', null, 'A', '2852.jpg', '4', '停销', '33.58万', '2016', '停产', '紧凑型SUV', 'system', '2018-04-12 10:24:33', 'system', '2018-04-12 10:24:33');
INSERT INTO car_config VALUES ('2879', '2851', '223', '2016款 35 TFSI quattro 全时四驱风尚型', null, 'A', '2851.jpg', '4', '停销', '32.08万', '2016', '停产', '紧凑型SUV', 'system', '2018-04-12 10:24:33', 'system', '2018-04-12 10:24:33');
INSERT INTO car_config VALUES ('2880', '2850', '223', '2016款 35 TFSI 风尚型', null, 'A', '2850.jpg', '4', '停销', '30.38万', '2016', '停产', '紧凑型SUV', 'system', '2018-04-12 10:24:33', 'system', '2018-04-12 10:24:33');
INSERT INTO car_config VALUES ('2881', '2849', '223', '2016款 35 TFSI 时尚型', null, 'A', '2849.jpg', '4', '停销', '27.92万', '2016', '停产', '紧凑型SUV', 'system', '2018-04-12 10:24:33', 'system', '2018-04-12 10:24:33');
INSERT INTO car_config VALUES ('2882', '2848', '223', '2016款 35 TFSI 典藏版 quattro 进享型', null, 'A', '2848.jpg', '4', '停销', '30.39万', '2016', '停产', '紧凑型SUV', 'system', '2018-04-12 10:24:33', 'system', '2018-04-12 10:24:33');
INSERT INTO car_config VALUES ('2883', '2847', '223', '2016款 35 TFSI 典藏版 舒享版', null, 'A', '2847.jpg', '4', '停销', '28.61万', '2016', '停产', '紧凑型SUV', 'system', '2018-04-12 10:24:33', 'system', '2018-04-12 10:24:33');
INSERT INTO car_config VALUES ('2884', '2846', '223', '2016款 35 TFSI 典藏版 智领型', null, 'A', '2846.jpg', '4', '停销', '26.3万', '2016', '停产', '紧凑型SUV', 'system', '2018-04-12 10:24:34', 'system', '2018-04-12 10:24:34');
INSERT INTO car_config VALUES ('2885', '2845', '223', '2016款 30 TFSI 风尚型', null, 'A', '2845.jpg', '4', '停销', '28.38万', '2016', '停产', '紧凑型SUV', 'system', '2018-04-12 10:24:34', 'system', '2018-04-12 10:24:34');
INSERT INTO car_config VALUES ('2886', '2844', '223', '2016款 30 TFSI 典藏版 舒享型', null, 'A', '2844.jpg', '4', '停销', '27.48万', '2016', '停产', '紧凑型SUV', 'system', '2018-04-12 10:24:34', 'system', '2018-04-12 10:24:34');
INSERT INTO car_config VALUES ('2887', '2843', '223', '2016款 30 TFSI 时尚型', null, 'A', '2843.jpg', '4', '停销', '25.92万', '2016', '停产', '紧凑型SUV', 'system', '2018-04-12 10:24:34', 'system', '2018-04-12 10:24:34');
INSERT INTO car_config VALUES ('2888', '2842', '223', '2016款 30 TFSI 典藏版 智领型', null, 'A', '2842.jpg', '4', '停销', '25.18万', '2016', '停产', '紧凑型SUV', 'system', '2018-04-12 10:24:34', 'system', '2018-04-12 10:24:34');
INSERT INTO car_config VALUES ('2889', '2841', '223', '2016款 30 TFSI 标准型', null, 'A', '2841.jpg', '4', '停销', '23.42万', '2016', '停产', '紧凑型SUV', 'system', '2018-04-12 10:24:34', 'system', '2018-04-12 10:24:34');
INSERT INTO car_config VALUES ('2890', '2854', '223', '2015款 30 TFSI 标准型', null, 'A', '2854.jpg', '4', '停销', '24.98万', '2015', '停产', '紧凑型SUV', 'system', '2018-04-12 10:24:34', 'system', '2018-04-12 10:24:34');
INSERT INTO car_config VALUES ('2891', '2855', '223', '2015款 30 TFSI 进取型', null, 'A', '2855.JPG', '4', '停销', '26.68万', '2015', '停产', '紧凑型SUV', 'system', '2018-04-12 10:24:35', 'system', '2018-04-12 10:24:35');
INSERT INTO car_config VALUES ('2892', '2856', '223', '2015款 30 TFSI 舒适型', null, 'A', '2856.jpg', '4', '停销', '28.98万', '2015', '停产', '紧凑型SUV', 'system', '2018-04-12 10:24:35', 'system', '2018-04-12 10:24:35');
INSERT INTO car_config VALUES ('2893', '2857', '223', '2015款 35 TFSI 纪念智领版', null, 'A', '2857.JPG', '4', '停销', '27.8万', '2015', '停产', '紧凑型SUV', 'system', '2018-04-12 10:24:35', 'system', '2018-04-12 10:24:35');
INSERT INTO car_config VALUES ('2894', '2860', '223', '2015款 35 TFSI 舒适型', null, 'A', '2860.JPG', '4', '停销', '31.6万', '2015', '停产', '紧凑型SUV', 'system', '2018-04-12 10:24:35', 'system', '2018-04-12 10:24:35');
INSERT INTO car_config VALUES ('2895', '2861', '223', '2015款 35 TFSI quattro纪念进享版', null, 'A', '2861.JPG', '4', '停销', '31.89万', '2015', '停产', '紧凑型SUV', 'system', '2018-04-12 10:24:35', 'system', '2018-04-12 10:24:35');
INSERT INTO car_config VALUES ('2896', '2862', '223', '2015款 35 TFSI quattro 技术型', null, 'A', '2862.jpg', '4', '停销', '33.38万', '2015', '停产', '紧凑型SUV', 'system', '2018-04-12 10:24:35', 'system', '2018-04-12 10:24:35');
INSERT INTO car_config VALUES ('2897', '2863', '223', '2015款 35 TFSI quattro纪念舒享版', null, 'A', '2863.JPG', '4', '停销', '34.19万', '2015', '停产', '紧凑型SUV', 'system', '2018-04-12 10:24:35', 'system', '2018-04-12 10:24:35');
INSERT INTO car_config VALUES ('2898', '2864', '223', '2015款 35 TFSI quattro 舒适型', null, 'A', '2864.jpg', '4', '停销', '35.68万', '2015', '停产', '紧凑型SUV', 'system', '2018-04-12 10:24:35', 'system', '2018-04-12 10:24:35');
INSERT INTO car_config VALUES ('2899', '2865', '223', '2015款 35 TFSI quattro纪念乐享版', null, 'A', '2865.jpg', '4', '停销', '38.19万', '2015', '停产', '紧凑型SUV', 'system', '2018-04-12 10:24:36', 'system', '2018-04-12 10:24:36');
INSERT INTO car_config VALUES ('2900', '2866', '223', '2015款 35 TFSI quattro 豪华型', null, 'A', '2866.jpg', '4', '停销', '39.68万', '2015', '停产', '紧凑型SUV', 'system', '2018-04-12 10:24:36', 'system', '2018-04-12 10:24:36');
INSERT INTO car_config VALUES ('2901', '2867', '223', '2015款 40 TFSI quattro纪念乐享版', null, 'A', '2867.jpg', '4', '停销', '41.39万', '2015', '停产', '紧凑型SUV', 'system', '2018-04-12 10:24:36', 'system', '2018-04-12 10:24:36');
INSERT INTO car_config VALUES ('2902', '2868', '223', '2015款 40 TFSI quattro 豪华型', null, 'A', '2868.jpg', '4', '停销', '42.88万', '2015', '停产', '紧凑型SUV', 'system', '2018-04-12 10:24:36', 'system', '2018-04-12 10:24:36');
INSERT INTO car_config VALUES ('2903', '2859', '223', '2015款 35 TFSI 纪念舒享版', null, 'A', '2859.JPG', '4', '停销', '30.11万', '2015', '停产', '紧凑型SUV', 'system', '2018-04-12 10:24:36', 'system', '2018-04-12 10:24:36');
INSERT INTO car_config VALUES ('2904', '2858', '223', '2015款 35 TFSI 进取型', null, 'A', '2858.jpg', '4', '停销', '28.98万', '2015', '停产', '紧凑型SUV', 'system', '2018-04-12 10:24:36', 'system', '2018-04-12 10:24:36');
INSERT INTO car_config VALUES ('2905', '2869', '223', '2013款 35TFSI 进取型', null, 'A', '2869.JPG', '4', '停销', '28.5万', '2013', '停产', '紧凑型SUV', 'system', '2018-04-12 10:24:37', 'system', '2018-04-12 10:24:37');
INSERT INTO car_config VALUES ('2906', '2870', '223', '2013款 35TFSI 舒适型', null, 'A', '2870.jpg', '4', '停销', '31.6万', '2013', '停产', '紧凑型SUV', 'system', '2018-04-12 10:24:37', 'system', '2018-04-12 10:24:37');
INSERT INTO car_config VALUES ('2907', '2871', '223', '2013款 35TFSI quattro 技术型', null, 'A', '2871.jpg', '4', '停销', '33.38万', '2013', '停产', '紧凑型SUV', 'system', '2018-04-12 10:24:37', 'system', '2018-04-12 10:24:37');
INSERT INTO car_config VALUES ('2908', '2872', '223', '2013款 35TFSI quattro 舒适型', null, 'A', '2872.jpg', '4', '停销', '35.68万', '2013', '停产', '紧凑型SUV', 'system', '2018-04-12 10:24:37', 'system', '2018-04-12 10:24:37');
INSERT INTO car_config VALUES ('2909', '2873', '223', '2013款 35TFSI quattro 豪华型', null, 'A', '2873.JPG', '4', '停销', '39.68万', '2013', '停产', '紧凑型SUV', 'system', '2018-04-12 10:24:37', 'system', '2018-04-12 10:24:37');
INSERT INTO car_config VALUES ('2910', '2874', '223', '2013款 40TFSI quattro 豪华型', null, 'A', '2874.jpg', '4', '停销', '42.88万', '2013', '停产', '紧凑型SUV', 'system', '2018-04-12 10:24:37', 'system', '2018-04-12 10:24:37');
INSERT INTO car_config VALUES ('2911', '224', '219', 'Q5', null, 'A', 'http://pic1.jisuapi.cn/car/static/images/logo/300/224.jpg', '3', '在销', null, null, null, null, 'system', '2018-04-12 10:24:37', 'system', '2018-04-12 10:24:37');
INSERT INTO car_config VALUES ('2912', '37170', '224', '2017款 Plus 40 TFSI 豪华版', null, 'A', '37170.jpg', '4', '在销', '51.92万', '2017', '在产', '中型SUV', 'system', '2018-04-12 10:24:37', 'system', '2018-04-12 10:24:37');
INSERT INTO car_config VALUES ('2913', '37169', '224', '2017款 Plus 40 TFSI 动感版', null, 'A', '37169.jpg', '4', '在销', '50.51万', '2017', '在产', '中型SUV', 'system', '2018-04-12 10:24:38', 'system', '2018-04-12 10:24:38');
INSERT INTO car_config VALUES ('2914', '37168', '224', '2017款 Plus 40 TFSI 舒适版', null, 'A', '37168.jpg', '4', '在销', '47.09万', '2017', '在产', '中型SUV', 'system', '2018-04-12 10:24:38', 'system', '2018-04-12 10:24:38');
INSERT INTO car_config VALUES ('2915', '37167', '224', '2017款 Plus 40 TFSI 技术版', null, 'A', '37167.jpg', '4', '在销', '42.76万', '2017', '在产', '中型SUV', 'system', '2018-04-12 10:24:38', 'system', '2018-04-12 10:24:38');
INSERT INTO car_config VALUES ('2916', '37166', '224', '2017款 Plus 40 TFSI 进取版', null, 'A', '37166.jpg', '4', '在销', '39.96万', '2017', '在产', '中型SUV', 'system', '2018-04-12 10:24:38', 'system', '2018-04-12 10:24:38');
INSERT INTO car_config VALUES ('2917', '34315', '224', '2017款 40 TFSI 豪华版', null, 'A', '34315.jpg', '4', '在销', '52.53万', '2017', '停产', '中型SUV', 'system', '2018-04-12 10:24:38', 'system', '2018-04-12 10:24:38');
INSERT INTO car_config VALUES ('2918', '34314', '224', '2017款 40TFSI 动感版', null, 'A', '34314.jpg', '4', '停销', '48.93万', '2017', '停产', '中型SUV', 'system', '2018-04-12 10:24:38', 'system', '2018-04-12 10:24:38');
INSERT INTO car_config VALUES ('2919', '34313', '224', '2017款 40TFSI 舒适版', null, 'A', '34313.jpg', '4', '停销', '46.95万', '2017', '停产', '中型SUV', 'system', '2018-04-12 10:24:38', 'system', '2018-04-12 10:24:38');
INSERT INTO car_config VALUES ('2920', '34312', '224', '2017款 40TFSI 技术版', null, 'A', '34312.jpg', '4', '停销', '42.76万', '2017', '停产', '中型SUV', 'system', '2018-04-12 10:24:39', 'system', '2018-04-12 10:24:39');
INSERT INTO car_config VALUES ('2921', '34311', '224', '2017款 40TFSI 进取版', null, 'A', '34311.jpg', '4', '停销', '40.04万', '2017', '停产', '中型SUV', 'system', '2018-04-12 10:24:39', 'system', '2018-04-12 10:24:39');
INSERT INTO car_config VALUES ('2922', '34316', '224', '2016款 40TFSI 25周年特别版', null, 'A', '34316.jpg', '4', '停销', '43.78万', '2016', '停产', '中型SUV', 'system', '2018-04-12 10:24:39', 'system', '2018-04-12 10:24:39');
INSERT INTO car_config VALUES ('2923', '2875', '224', '2016款 40TFSI 进取型', null, 'A', '2875.jpg', '4', '停销', '38.34万', '2016', '停产', '中型SUV', 'system', '2018-04-12 10:24:39', 'system', '2018-04-12 10:24:39');
INSERT INTO car_config VALUES ('2924', '2876', '224', '2016款 40TFSI 技术型', null, 'A', '2876.jpg', '4', '停销', '42.76万', '2016', '停产', '中型SUV', 'system', '2018-04-12 10:24:39', 'system', '2018-04-12 10:24:39');
INSERT INTO car_config VALUES ('2925', '2877', '224', '2016款 40TFSI 舒适型', null, 'A', '2877.jpg', '4', '停销', '47.9万', '2016', '停产', '中型SUV', 'system', '2018-04-12 10:24:39', 'system', '2018-04-12 10:24:39');
INSERT INTO car_config VALUES ('2926', '2878', '224', '2016款 40TFSI 动感型plus', null, 'A', '2878.jpg', '4', '停销', '50.9万', '2016', '停产', '中型SUV', 'system', '2018-04-12 10:24:39', 'system', '2018-04-12 10:24:39');
INSERT INTO car_config VALUES ('2927', '2879', '224', '2016款 40TFSI 豪华型plus', null, 'A', '2879.jpg', '4', '停销', '53.4万', '2016', '停产', '中型SUV', 'system', '2018-04-12 10:24:39', 'system', '2018-04-12 10:24:39');
INSERT INTO car_config VALUES ('2928', '2880', '224', '2016款 40TFSI 动感型', null, 'A', '2880.jpg', '4', '停销', '54.1万', '2016', '停产', '中型SUV', 'system', '2018-04-12 10:24:40', 'system', '2018-04-12 10:24:40');
INSERT INTO car_config VALUES ('2929', '2881', '224', '2016款 40TFSI 豪华型', null, 'A', '2881.JPG', '4', '停销', '56.7万', '2016', '停产', '中型SUV', 'system', '2018-04-12 10:24:40', 'system', '2018-04-12 10:24:40');
INSERT INTO car_config VALUES ('2930', '2882', '224', '2015款 40TFSI 进取型', null, 'A', '2882.JPG', '4', '停销', '38.76万', '2015', '停产', '中型SUV', 'system', '2018-04-12 10:24:40', 'system', '2018-04-12 10:24:40');
INSERT INTO car_config VALUES ('2931', '2883', '224', '2015款 40TFSI 技术型', null, 'A', '2883.jpg', '4', '停销', '43.16万', '2015', '停产', '中型SUV', 'system', '2018-04-12 10:24:40', 'system', '2018-04-12 10:24:40');
INSERT INTO car_config VALUES ('2932', '2884', '224', '2015款 40TFSI 舒适型', null, 'A', '2884.JPG', '4', '停销', '48.59万', '2015', '停产', '中型SUV', 'system', '2018-04-12 10:24:40', 'system', '2018-04-12 10:24:40');
INSERT INTO car_config VALUES ('2933', '2885', '224', '2015款 40TFSI 动感型', null, 'A', '2885.jpg', '4', '停销', '54.57万', '2015', '停产', '中型SUV', 'system', '2018-04-12 10:24:40', 'system', '2018-04-12 10:24:40');
INSERT INTO car_config VALUES ('2934', '2886', '224', '2015款 40TFSI 豪华型', null, 'A', '2886.JPG', '4', '停销', '57.17万', '2015', '停产', '中型SUV', 'system', '2018-04-12 10:24:40', 'system', '2018-04-12 10:24:40');
INSERT INTO car_config VALUES ('2935', '2887', '224', '2015款 35TFSI 标准型', null, 'A', '2887.JPG', '4', '停销', '35.85万', '2015', '停产', '中型SUV', 'system', '2018-04-12 10:24:40', 'system', '2018-04-12 10:24:40');
INSERT INTO car_config VALUES ('2936', '2888', '224', '2013款 35TFSI 标准型', null, 'A', '2888.jpg', '4', '停销', '35.85万', '2013', '停产', '中型SUV', 'system', '2018-04-12 10:24:41', 'system', '2018-04-12 10:24:41');
INSERT INTO car_config VALUES ('2937', '2889', '224', '2013款 40TFSI 进取型', null, 'A', '2889.jpg', '4', '停销', '38.36万', '2013', '停产', '中型SUV', 'system', '2018-04-12 10:24:41', 'system', '2018-04-12 10:24:41');
INSERT INTO car_config VALUES ('2938', '2890', '224', '2013款 40TFSI 技术型', null, 'A', '2890.JPG', '4', '停销', '42.76万', '2013', '停产', '中型SUV', 'system', '2018-04-12 10:24:41', 'system', '2018-04-12 10:24:41');
INSERT INTO car_config VALUES ('2939', '2891', '224', '2013款 40TFSI 舒适型', null, 'A', '2891.jpg', '4', '停销', '48.19万', '2013', '停产', '中型SUV', 'system', '2018-04-12 10:24:41', 'system', '2018-04-12 10:24:41');
INSERT INTO car_config VALUES ('2940', '2892', '224', '2013款 40TFSI 动感型', null, 'A', '2892.jpg', '4', '停销', '54.17万', '2013', '停产', '中型SUV', 'system', '2018-04-12 10:24:41', 'system', '2018-04-12 10:24:41');
INSERT INTO car_config VALUES ('2941', '2893', '224', '2013款 40TFSI 豪华型', null, 'A', '2893.JPG', '4', '停销', '56.77万', '2013', '停产', '中型SUV', 'system', '2018-04-12 10:24:41', 'system', '2018-04-12 10:24:41');
INSERT INTO car_config VALUES ('2942', '2894', '224', '2012款 2.0 TFSI 进取型', null, 'A', '2894.jpg', '4', '停销', '38.36万', '2012', '停产', '中型SUV', 'system', '2018-04-12 10:24:41', 'system', '2018-04-12 10:24:41');
INSERT INTO car_config VALUES ('2943', '2895', '224', '2012款 2.0 TFSI 技术型', null, 'A', '2895.jpg', '4', '停销', '42.76万', '2012', '停产', '中型SUV', 'system', '2018-04-12 10:24:42', 'system', '2018-04-12 10:24:42');
INSERT INTO car_config VALUES ('2944', '2896', '224', '2012款 2.0 TFSI 舒适型', null, 'A', '2896.jpg', '4', '停销', '48.19万', '2012', '停产', '中型SUV', 'system', '2018-04-12 10:24:42', 'system', '2018-04-12 10:24:42');
INSERT INTO car_config VALUES ('2945', '2898', '224', '2012款 2.0 TFSI 动感型', null, 'A', '2898.jpg', '4', '停销', '54.17万', '2012', '停产', '中型SUV', 'system', '2018-04-12 10:24:42', 'system', '2018-04-12 10:24:42');
INSERT INTO car_config VALUES ('2946', '2897', '224', '2012款 2.0 TFSI 豪华型', null, 'A', '2897.jpg', '4', '停销', '56.77万', '2012', '停产', '中型SUV', 'system', '2018-04-12 10:24:42', 'system', '2018-04-12 10:24:42');
INSERT INTO car_config VALUES ('2947', '2903', '224', '2011款 2.0 TFSI 豪华型', null, 'A', '2903.JPG', '4', '停销', '56.77万', '2011', '停产', '中型SUV', 'system', '2018-04-12 10:24:42', 'system', '2018-04-12 10:24:42');
INSERT INTO car_config VALUES ('2948', '2902', '224', '2011款 2.0 TFSI 动感型', null, 'A', '2902.jpg', '4', '停销', '52.87万', '2011', '停产', '中型SUV', 'system', '2018-04-12 10:24:42', 'system', '2018-04-12 10:24:42');
INSERT INTO car_config VALUES ('2949', '2901', '224', '2011款 2.0 TFSI 舒适型', null, 'A', '2901.JPG', '4', '停销', '47.58万', '2011', '停产', '中型SUV', 'system', '2018-04-12 10:24:42', 'system', '2018-04-12 10:24:42');
INSERT INTO car_config VALUES ('2950', '2900', '224', '2011款 2.0 TFSI 技术型', null, 'A', '2900.jpg', '4', '停销', '42.38万', '2011', '停产', '中型SUV', 'system', '2018-04-12 10:24:43', 'system', '2018-04-12 10:24:43');
INSERT INTO car_config VALUES ('2951', '2899', '224', '2011款 2.0 TFSI 进取型', null, 'A', '2899.jpg', '4', '停销', '37.98万', '2011', '停产', '中型SUV', 'system', '2018-04-12 10:24:43', 'system', '2018-04-12 10:24:43');
INSERT INTO car_config VALUES ('2952', '2907', '224', '2010款 2.0 TFSI 豪华型', null, 'A', '2907.jpg', '4', '停销', '53.98万', '2010', '停产', '中型SUV', 'system', '2018-04-12 10:24:43', 'system', '2018-04-12 10:24:43');
INSERT INTO car_config VALUES ('2953', '2906', '224', '2010款 2.0 TFSI 舒适型', null, 'A', '2906.jpg', '4', '停销', '47.58万', '2010', '停产', '中型SUV', 'system', '2018-04-12 10:24:43', 'system', '2018-04-12 10:24:43');
INSERT INTO car_config VALUES ('2954', '2905', '224', '2010款 2.0 TFSI 技术型', null, 'A', '2905.jpg', '4', '停销', '42.38万', '2010', '停产', '中型SUV', 'system', '2018-04-12 10:24:43', 'system', '2018-04-12 10:24:43');
INSERT INTO car_config VALUES ('2955', '2904', '224', '2010款 2.0 TFSI 进取型', null, 'A', '2904.jpg', '4', '停销', '37.98万', '2010', '停产', '中型SUV', 'system', '2018-04-12 10:24:43', 'system', '2018-04-12 10:24:43');
INSERT INTO car_config VALUES ('2956', '225', '219', 'A4', null, 'A', 'http://pic1.jisuapi.cn/car/static/images/logo/300/225.jpg', '3', '停销', null, null, null, null, 'system', '2018-04-12 10:24:43', 'system', '2018-04-12 10:24:43');
INSERT INTO car_config VALUES ('2957', '2908', '225', '2008款 1.8T舒适型(手动)', null, 'A', '2908.jpg', '4', '停销', '27.49万', '2008', '停产', '中型车', 'system', '2018-04-12 10:24:43', 'system', '2018-04-12 10:24:43');
INSERT INTO car_config VALUES ('2958', '2909', '225', '2008款 1.8T豪华型', null, 'A', '2909.jpg', '4', '停销', '32.15万', '2008', '停产', '中型车', 'system', '2018-04-12 10:24:44', 'system', '2018-04-12 10:24:44');
INSERT INTO car_config VALUES ('2959', '2910', '225', '2008款 1.8T CVT 个性风格版', null, 'A', '2910.jpg', '4', '停销', '30.9万', '2008', '停产', '中型车', 'system', '2018-04-12 10:24:44', 'system', '2018-04-12 10:24:44');
INSERT INTO car_config VALUES ('2960', '2911', '225', '2008款 1.8T CVT 舒适型', null, 'A', '2911.jpg', '4', '停销', '29.43万', '2008', '停产', '中型车', 'system', '2018-04-12 10:24:44', 'system', '2018-04-12 10:24:44');
INSERT INTO car_config VALUES ('2961', '2912', '225', '2008款 2.0TFSI S line(个性风格版)', null, 'A', '2912.jpg', '4', '停销', '33.09万', '2008', '停产', '中型车', 'system', '2018-04-12 10:24:44', 'system', '2018-04-12 10:24:44');
INSERT INTO car_config VALUES ('2962', '2913', '225', '2008款 2.0TFSI 豪华型', null, 'A', '2913.jpg', '4', '停销', '34.34万', '2008', '停产', '中型车', 'system', '2018-04-12 10:24:44', 'system', '2018-04-12 10:24:44');
INSERT INTO car_config VALUES ('2963', '2924', '225', '2007款 3.0 quattro旗舰型', null, 'A', '2924.jpg', '4', '停销', '50.09万', '2007', '停产', '中型车', 'system', '2018-04-12 10:24:44', 'system', '2018-04-12 10:24:44');
INSERT INTO car_config VALUES ('2964', '2923', '225', '2007款 2.0TFSI 豪华型', null, 'A', '2923.jpg', '4', '停销', '35.76万', '2007', '停产', '中型车', 'system', '2018-04-12 10:24:45', 'system', '2018-04-12 10:24:45');
INSERT INTO car_config VALUES ('2965', '2922', '225', '2007款 2.0T FSI舒适型', null, 'A', '2922.jpg', '4', '停销', '32.55万', '2007', '停产', '中型车', 'system', '2018-04-12 10:24:45', 'system', '2018-04-12 10:24:45');
INSERT INTO car_config VALUES ('2966', '2921', '225', '2007款 2.0T FSI 标准型', null, 'A', '2921.jpg', '4', '停销', '31.75万', '2007', '停产', '中型车', 'system', '2018-04-12 10:24:45', 'system', '2018-04-12 10:24:45');
INSERT INTO car_config VALUES ('2967', '2920', '225', '2007款 1.8T舒适型(手动)', null, 'A', '2920.jpg', '4', '停销', '28.34万', '2007', '停产', '中型车', 'system', '2018-04-12 10:24:45', 'system', '2018-04-12 10:24:45');
INSERT INTO car_config VALUES ('2968', '2919', '225', '2007款 1.8T CVT 豪华型', null, 'A', '2919.jpg', '4', '停销', '33.55万', '2007', '停产', '中型车', 'system', '2018-04-12 10:24:45', 'system', '2018-04-12 10:24:45');
INSERT INTO car_config VALUES ('2969', '2918', '225', '2007款 1.8T CVT 个性风格版', null, 'A', '2918.jpg', '4', '停销', '31.9万', '2007', '停产', '中型车', 'system', '2018-04-12 10:24:45', 'system', '2018-04-12 10:24:45');
INSERT INTO car_config VALUES ('2970', '2917', '225', '2007款 1.8T CVT 舒适型', null, 'A', '2917.jpg', '4', '停销', '30.34万', '2007', '停产', '中型车', 'system', '2018-04-12 10:24:45', 'system', '2018-04-12 10:24:45');
INSERT INTO car_config VALUES ('2971', '2916', '225', '2007款 1.8T CVT 标准型', null, 'A', '2916.jpg', '4', '停销', '29.54万', '2007', '停产', '中型车', 'system', '2018-04-12 10:24:45', 'system', '2018-04-12 10:24:45');
INSERT INTO car_config VALUES ('2972', '2915', '225', '2007款 1.8T 手动 个性版', null, 'A', '2915.jpg', '4', '停销', '30.9万', '2007', '停产', '中型车', 'system', '2018-04-12 10:24:46', 'system', '2018-04-12 10:24:46');
INSERT INTO car_config VALUES ('2973', '2914', '225', '2007款 1.8T 手动 标准型', null, 'A', '2914.jpg', '4', '停销', '27.54万', '2007', '停产', '中型车', 'system', '2018-04-12 10:24:46', 'system', '2018-04-12 10:24:46');
INSERT INTO car_config VALUES ('2974', '2934', '225', '2006款 3.0quattro自动旗舰型', null, 'A', '2934.jpg', '4', '停销', '50.09万', '2006', '停产', '中型车', 'system', '2018-04-12 10:24:46', 'system', '2018-04-12 10:24:46');
INSERT INTO car_config VALUES ('2975', '2933', '225', '2006款 2.0TFSI 尊享型', null, 'A', '2933.jpg', '4', '停销', '39.91万', '2006', '停产', '中型车', 'system', '2018-04-12 10:24:46', 'system', '2018-04-12 10:24:46');
INSERT INTO car_config VALUES ('2976', '2932', '225', '2006款 2.0TFSI 标准型', null, 'A', '2932.jpg', '4', '停销', '37.31万', '2006', '停产', '中型车', 'system', '2018-04-12 10:24:46', 'system', '2018-04-12 10:24:46');
INSERT INTO car_config VALUES ('2977', '2931', '225', '2006款 2.0T CVT', null, 'A', '2931.jpg', '4', '停销', '31.75万', '2006', '停产', '中型车', 'system', '2018-04-12 10:24:46', 'system', '2018-04-12 10:24:46');
INSERT INTO car_config VALUES ('2978', '2930', '225', '2006款 1.8T CVT 豪华型', null, 'A', '2930.jpg', '4', '停销', '34.1万', '2006', '停产', '中型车', 'system', '2018-04-12 10:24:46', 'system', '2018-04-12 10:24:46');
INSERT INTO car_config VALUES ('2979', '2929', '225', '2006款 1.8T CVT 舒适型', null, 'A', '2929.jpg', '4', '停销', '31.62万', '2006', '停产', '中型车', 'system', '2018-04-12 10:24:46', 'system', '2018-04-12 10:24:46');
INSERT INTO car_config VALUES ('2980', '2928', '225', '2006款 1.8T CVT 基本型', null, 'A', '2928.jpg', '4', '停销', '30.34万', '2006', '停产', '中型车', 'system', '2018-04-12 10:24:47', 'system', '2018-04-12 10:24:47');
INSERT INTO car_config VALUES ('2981', '2927', '225', '2006款 1.8T CVT', null, 'A', '2927.jpg', '4', '停销', '29.54万', '2006', '停产', '中型车', 'system', '2018-04-12 10:24:47', 'system', '2018-04-12 10:24:47');
INSERT INTO car_config VALUES ('2982', '2926', '225', '2006款 1.8T 手动 基本型', null, 'A', '2926.jpg', '4', '停销', '28.34万', '2006', '停产', '中型车', 'system', '2018-04-12 10:24:47', 'system', '2018-04-12 10:24:47');
INSERT INTO car_config VALUES ('2983', '2925', '225', '2006款 1.8T 手动', null, 'A', '2925.jpg', '4', '停销', '27.54万', '2006', '停产', '中型车', 'system', '2018-04-12 10:24:47', 'system', '2018-04-12 10:24:47');
INSERT INTO car_config VALUES ('2984', '2956', '225', '2005款 3.0 运动型', null, 'A', '2956.jpg', '4', '停销', '50.99万', '2005', '停产', '中型车', 'system', '2018-04-12 10:24:47', 'system', '2018-04-12 10:24:47');
INSERT INTO car_config VALUES ('2985', '2955', '225', '2005款 3.0 quattro自动旗舰型', null, 'A', '2955.jpg', '4', '停销', '50.09万', '2005', '停产', '中型车', 'system', '2018-04-12 10:24:47', 'system', '2018-04-12 10:24:47');
INSERT INTO car_config VALUES ('2986', '2954', '225', '2005款 3.0 基本型', null, 'A', '2954.jpg', '4', '停销', '48.49万', '2005', '停产', '中型车', 'system', '2018-04-12 10:24:47', 'system', '2018-04-12 10:24:47');
INSERT INTO car_config VALUES ('2987', '2953', '225', '2005款 2.4L CVT 尊贵型', null, 'A', '2953.jpg', '4', '停销', '50.9万', '2005', '停产', '中型车', 'system', '2018-04-12 10:24:47', 'system', '2018-04-12 10:24:47');
INSERT INTO car_config VALUES ('2988', '2952', '225', '2005款 2.4L CVT 运动型', null, 'A', '2952.jpg', '4', '停销', '45.59万', '2005', '停产', '中型车', 'system', '2018-04-12 10:24:48', 'system', '2018-04-12 10:24:48');
INSERT INTO car_config VALUES ('2989', '2951', '225', '2005款 2.4L CVT 舒适型', null, 'A', '2951.jpg', '4', '停销', '42.59万', '2005', '停产', '中型车', 'system', '2018-04-12 10:24:48', 'system', '2018-04-12 10:24:48');
INSERT INTO car_config VALUES ('2990', '2950', '225', '2005款 2.4L CVT 基本加热型', null, 'A', '2950.jpg', '4', '停销', '37.44万', '2005', '停产', '中型车', 'system', '2018-04-12 10:24:48', 'system', '2018-04-12 10:24:48');
INSERT INTO car_config VALUES ('2991', '2949', '225', '2005款 2.0TFSI尊享型', null, 'A', '2949.jpg', '4', '停销', '39.91万', '2005', '停产', '中型车', 'system', '2018-04-12 10:24:48', 'system', '2018-04-12 10:24:48');
INSERT INTO car_config VALUES ('2992', '2948', '225', '2005款 2.0TFSI标准型', null, 'A', '2948.jpg', '4', '停销', '37.31万', '2005', '停产', '中型车', 'system', '2018-04-12 10:24:48', 'system', '2018-04-12 10:24:48');
INSERT INTO car_config VALUES ('2993', '2947', '225', '2005款 2.0TFSI豪华型', null, 'A', '2947.jpg', '4', '停销', '34.34万', '2005', '停产', '中型车', 'system', '2018-04-12 10:24:48', 'system', '2018-04-12 10:24:48');
INSERT INTO car_config VALUES ('2994', '2946', '225', '2005款 1.8T自动领先型', null, 'A', '2946.jpg', '4', '停销', '37.16万', '2005', '停产', '中型车', 'system', '2018-04-12 10:24:48', 'system', '2018-04-12 10:24:48');
INSERT INTO car_config VALUES ('2995', '2935', '225', '2005款 1.8T 手动 标准型', null, 'A', '2935.jpg', '4', '停销', '27.54万', '2005', '停产', '中型车', 'system', '2018-04-12 10:24:48', 'system', '2018-04-12 10:24:48');
INSERT INTO car_config VALUES ('2996', '2936', '225', '2005款 1.8T 手动 入门型', null, 'A', '2936.jpg', '4', '停销', '27.7万', '2005', '停产', '中型车', 'system', '2018-04-12 10:24:49', 'system', '2018-04-12 10:24:49');
INSERT INTO car_config VALUES ('2997', '2937', '225', '2005款 1.8T CVT 入门型', null, 'A', '2937.jpg', '4', '停销', '29.7万', '2005', '停产', '中型车', 'system', '2018-04-12 10:24:49', 'system', '2018-04-12 10:24:49');
INSERT INTO car_config VALUES ('2998', '2938', '225', '2005款 1.8T CVT 技术型', null, 'A', '2938.jpg', '4', '停销', '37.16万', '2005', '停产', '中型车', 'system', '2018-04-12 10:24:49', 'system', '2018-04-12 10:24:49');
INSERT INTO car_config VALUES ('2999', '2939', '225', '2005款 1.8T手动基本型', null, 'A', '2939.jpg', '4', '停销', '28.34万', '2005', '停产', '中型车', 'system', '2018-04-12 10:24:49', 'system', '2018-04-12 10:24:49');
INSERT INTO car_config VALUES ('3000', '2940', '225', '2005款 1.8T舒适型（自动）', null, 'A', '2940.jpg', '4', '停销', '29.43万', '2005', '停产', '中型车', 'system', '2018-04-12 10:24:49', 'system', '2018-04-12 10:24:49');
INSERT INTO car_config VALUES ('3001', '2941', '225', '2005款 1.8T自动基本型', null, 'A', '2941.jpg', '4', '停销', '30.34万', '2005', '停产', '中型车', 'system', '2018-04-12 10:24:49', 'system', '2018-04-12 10:24:49');
INSERT INTO car_config VALUES ('3002', '2942', '225', '2005款 1.8T S—line（个性风格版）', null, 'A', '2942.jpg', '4', '停销', '30.9万', '2005', '停产', '中型车', 'system', '2018-04-12 10:24:49', 'system', '2018-04-12 10:24:49');
INSERT INTO car_config VALUES ('3003', '2943', '225', '2005款 1.8T自动舒适型', null, 'A', '2943.jpg', '4', '停销', '31.62万', '2005', '停产', '中型车', 'system', '2018-04-12 10:24:49', 'system', '2018-04-12 10:24:49');
INSERT INTO car_config VALUES ('3004', '2944', '225', '2005款 1.8T自动舒适型(+)', null, 'A', '2944.jpg', '4', '停销', '33.55万', '2005', '停产', '中型车', 'system', '2018-04-12 10:24:50', 'system', '2018-04-12 10:24:50');
INSERT INTO car_config VALUES ('3005', '2945', '225', '2005款 1.8T自动豪华型', null, 'A', '2945.jpg', '4', '停销', '34.1万', '2005', '停产', '中型车', 'system', '2018-04-12 10:24:50', 'system', '2018-04-12 10:24:50');
INSERT INTO car_config VALUES ('3006', '2969', '225', '2004款 3.0quattro自动娱乐型', null, 'A', '2969.jpg', '4', '停销', '54.5万', '2004', '停产', '中型车', 'system', '2018-04-12 10:24:50', 'system', '2018-04-12 10:24:50');
INSERT INTO car_config VALUES ('3007', '2968', '225', '2004款 3.0quattro自动加温型', null, 'A', '2968.jpg', '4', '停销', '52.1万', '2004', '停产', '中型车', 'system', '2018-04-12 10:24:50', 'system', '2018-04-12 10:24:50');
INSERT INTO car_config VALUES ('3008', '2967', '225', '2004款 3.0quattro自动尊享型', null, 'A', '2967.jpg', '4', '停销', '50.09万', '2004', '停产', '中型车', 'system', '2018-04-12 10:24:50', 'system', '2018-04-12 10:24:50');
INSERT INTO car_config VALUES ('3009', '2966', '225', '2004款 A4 3.0 quattro敞蓬', null, 'A', '2966.jpg', '4', '停销', '76万', '2004', '停产', '中型车', 'system', '2018-04-12 10:24:50', 'system', '2018-04-12 10:24:50');
INSERT INTO car_config VALUES ('3010', '2965', '225', '2004款 3.0quattro自动豪华尊享型', null, 'A', '2965.jpg', '4', '停销', '54.65万', '2004', '停产', '中型车', 'system', '2018-04-12 10:24:50', 'system', '2018-04-12 10:24:50');
INSERT INTO car_config VALUES ('3011', '2964', '225', '2004款 2.4L CVT 豪华型', null, 'A', '2964.jpg', '4', '停销', '52.59万', '2004', '停产', '中型车', 'system', '2018-04-12 10:24:50', 'system', '2018-04-12 10:24:50');
INSERT INTO car_config VALUES ('3012', '2963', '225', '2004款 2.4L自动舒适尊享型', null, 'A', '2963.jpg', '4', '停销', '48.09万', '2004', '停产', '中型车', 'system', '2018-04-12 10:24:51', 'system', '2018-04-12 10:24:51');
INSERT INTO car_config VALUES ('3013', '2962', '225', '2004款 2.4L自动舒适运动型', null, 'A', '2962.jpg', '4', '停销', '43.59万', '2004', '停产', '中型车', 'system', '2018-04-12 10:24:51', 'system', '2018-04-12 10:24:51');
INSERT INTO car_config VALUES ('3014', '2961', '225', '2004款 2.4L自动舒适型', null, 'A', '2961.jpg', '4', '停销', '40.59万', '2004', '停产', '中型车', 'system', '2018-04-12 10:24:51', 'system', '2018-04-12 10:24:51');
INSERT INTO car_config VALUES ('3015', '2960', '225', '2004款 1.8T自动技术领先型', null, 'A', '2960.jpg', '4', '停销', '37.29万', '2004', '停产', '中型车', 'system', '2018-04-12 10:24:51', 'system', '2018-04-12 10:24:51');
INSERT INTO car_config VALUES ('3016', '2959', '225', '2004款 1.8T自动舒适型', null, 'A', '2959.jpg', '4', '停销', '35.35万', '2004', '停产', '中型车', 'system', '2018-04-12 10:24:51', 'system', '2018-04-12 10:24:51');
INSERT INTO car_config VALUES ('3017', '2958', '225', '2004款 1.8T自动基本型', null, 'A', '2958.jpg', '4', '停销', '32.95万', '2004', '停产', '中型车', 'system', '2018-04-12 10:24:51', 'system', '2018-04-12 10:24:51');
INSERT INTO car_config VALUES ('3018', '2957', '225', '2004款 1.8T手动基本型', null, 'A', '2957.jpg', '4', '停销', '32.35万', '2004', '停产', '中型车', 'system', '2018-04-12 10:24:51', 'system', '2018-04-12 10:24:51');
INSERT INTO car_config VALUES ('3019', '2981', '225', '2003款 3.0quattro舒适尊享型', null, 'A', '2981.jpg', '4', '停销', '53.9万', '2003', '停产', '中型车', 'system', '2018-04-12 10:24:52', 'system', '2018-04-12 10:24:52');
INSERT INTO car_config VALUES ('3020', '2980', '225', '2003款 3.0quattro自动舒适娱乐型', null, 'A', '2980.jpg', '4', '停销', '52.5万', '2003', '停产', '中型车', 'system', '2018-04-12 10:24:52', 'system', '2018-04-12 10:24:52');
INSERT INTO car_config VALUES ('3021', '2979', '225', '2003款 3.0quattro舒适加温型', null, 'A', '2979.jpg', '4', '停销', '50.1万', '2003', '停产', '中型车', 'system', '2018-04-12 10:24:52', 'system', '2018-04-12 10:24:52');
INSERT INTO car_config VALUES ('3022', '2978', '225', '2003款 3.0quattro自动舒适型', null, 'A', '2978.jpg', '4', '停销', '48.7万', '2003', '停产', '中型车', 'system', '2018-04-12 10:24:52', 'system', '2018-04-12 10:24:52');
INSERT INTO car_config VALUES ('3023', '2977', '225', '2003款 2.4L CVT 舒适运动型', null, 'A', '2977.jpg', '4', '停销', '50.7万', '2003', '停产', '中型车', 'system', '2018-04-12 10:24:52', 'system', '2018-04-12 10:24:52');
INSERT INTO car_config VALUES ('3024', '2976', '225', '2003款 2.4L CVT 舒适型', null, 'A', '2976.jpg', '4', '停销', '42.59万', '2003', '停产', '中型车', 'system', '2018-04-12 10:24:52', 'system', '2018-04-12 10:24:52');
INSERT INTO car_config VALUES ('3025', '2975', '225', '2003款 2.4L CVT 舒适尊享型', null, 'A', '2975.jpg', '4', '停销', '39.91万', '2003', '停产', '中型车', 'system', '2018-04-12 10:24:52', 'system', '2018-04-12 10:24:52');
INSERT INTO car_config VALUES ('3026', '2974', '225', '2003款 1.8T CVT 技术领先型', null, 'A', '2974.jpg', '4', '停销', '35万', '2003', '停产', '中型车', 'system', '2018-04-12 10:24:53', 'system', '2018-04-12 10:24:53');
INSERT INTO car_config VALUES ('3027', '2973', '225', '2003款 1.8T CVT 基本型', null, 'A', '2973.jpg', '4', '停销', '31.85万', '2003', '停产', '中型车', 'system', '2018-04-12 10:24:53', 'system', '2018-04-12 10:24:53');
INSERT INTO car_config VALUES ('3028', '2972', '225', '2003款 1.8T 手动 基本型', null, 'A', '2972.jpg', '4', '停销', '29.05万', '2003', '停产', '中型车', 'system', '2018-04-12 10:24:53', 'system', '2018-04-12 10:24:53');
INSERT INTO car_config VALUES ('3029', '2971', '225', '2003款 1.8T自动舒适加温型', null, 'A', '2971.jpg', '4', '停销', '40.7万', '2003', '停产', '中型车', 'system', '2018-04-12 10:24:53', 'system', '2018-04-12 10:24:53');
INSERT INTO car_config VALUES ('3030', '2970', '225', '2003款 1.8T自动基本型', null, 'A', '2970.jpg', '4', '停销', '35.9万', '2003', '停产', '中型车', 'system', '2018-04-12 10:24:53', 'system', '2018-04-12 10:24:53');
INSERT INTO car_config VALUES ('3031', '226', '219', '100', null, 'A', 'http://pic1.jisuapi.cn/car/static/images/logo/300/226.jpg', '3', '停销', null, null, null, null, 'system', '2018-04-12 10:24:53', 'system', '2018-04-12 10:24:53');
INSERT INTO car_config VALUES ('3032', '2982', '226', '1994款 1.8L', null, 'A', '2982.gif', '4', '停销', '30万', '1994', '停产', '中型车', 'system', '2018-04-12 10:24:53', 'system', '2018-04-12 10:24:53');
INSERT INTO car_config VALUES ('3033', '2983', '226', '1994款 2.0L', null, 'A', '2983.gif', '4', '停销', '32万', '1994', '停产', '中型车', 'system', '2018-04-12 10:24:54', 'system', '2018-04-12 10:24:54');
INSERT INTO car_config VALUES ('3034', '2984', '226', '1994款 2.2L（五缸）', null, 'A', '2984.gif', '4', '停销', '33.5万', '1994', '停产', '中型车', 'system', '2018-04-12 10:24:54', 'system', '2018-04-12 10:24:54');
INSERT INTO car_config VALUES ('3035', '2985', '226', '1994款 V6 2.4L MT', null, 'A', '2985.gif', '4', '停销', '42万', '1994', '停产', '中型车', 'system', '2018-04-12 10:24:54', 'system', '2018-04-12 10:24:54');
INSERT INTO car_config VALUES ('3036', '2986', '226', '1994款 2.6L（六缸）', null, 'A', '2986.gif', '4', '停销', '36万', '1994', '停产', '中型车', 'system', '2018-04-12 10:24:54', 'system', '2018-04-12 10:24:54');
INSERT INTO car_config VALUES ('3037', '2987', '226', '1992款 1.8 手动(化)', null, 'A', '2987.gif', '4', '停销', '30万', '1992', '停产', '中型车', 'system', '2018-04-12 10:24:54', 'system', '2018-04-12 10:24:54');
INSERT INTO car_config VALUES ('3038', '2988', '226', '1992款 2.0 手动(化)', null, 'A', '2988.gif', '4', '停销', '32万', '1992', '停产', '中型车', 'system', '2018-04-12 10:24:55', 'system', '2018-04-12 10:24:55');
INSERT INTO car_config VALUES ('3039', '2989', '226', '1992款 2.2E 手动(化)', null, 'A', '2989.gif', '4', '停销', '32.5万', '1992', '停产', '中型车', 'system', '2018-04-12 10:24:55', 'system', '2018-04-12 10:24:55');
INSERT INTO car_config VALUES ('3040', '2990', '226', '1992款 2.2E 自动(化)', null, 'A', '2990.gif', '4', '停销', '33.5万', '1992', '停产', '中型车', 'system', '2018-04-12 10:24:55', 'system', '2018-04-12 10:24:55');
INSERT INTO car_config VALUES ('3041', '2991', '226', '1992款 2.6E 手动(化)', null, 'A', '2991.gif', '4', '停销', '36万', '1992', '停产', '中型车', 'system', '2018-04-12 10:24:55', 'system', '2018-04-12 10:24:55');
INSERT INTO car_config VALUES ('3042', '227', '219', '200', null, 'A', 'http://pic1.jisuapi.cn/car/static/images/logo/300/227.jpg', '3', '停销', null, null, null, null, 'system', '2018-04-12 10:24:55', 'system', '2018-04-12 10:24:55');
INSERT INTO car_config VALUES ('3043', '2992', '227', '1999款 2.2L MT', null, 'A', '2992.gif', '4', '停销', '40.3万', '1999', '停产', '中型车', 'system', '2018-04-12 10:24:55', 'system', '2018-04-12 10:24:55');
INSERT INTO car_config VALUES ('3044', '2993', '227', '1999款 2.6L MT', null, 'A', '2993.gif', '4', '停销', '41.2万', '1999', '停产', '中型车', 'system', '2018-04-12 10:24:55', 'system', '2018-04-12 10:24:55');
INSERT INTO car_config VALUES ('3045', '2994', '227', '1998款 1.8T', null, 'A', '2994.gif', '4', '停销', '35.6万', '1998', '停产', '中型车', 'system', '2018-04-12 10:24:55', 'system', '2018-04-12 10:24:55');
INSERT INTO car_config VALUES ('3046', '2995', '227', '1998款 2.4L', null, 'A', '2995.gif', '4', '停销', '43.5万', '1998', '停产', '中型车', 'system', '2018-04-12 10:24:56', 'system', '2018-04-12 10:24:56');
INSERT INTO car_config VALUES ('3047', '2996', '227', '1998款 2.6 手动', null, 'A', '2996.gif', '4', '停销', '41.2万', '1998', '停产', '中型车', 'system', '2018-04-12 10:24:56', 'system', '2018-04-12 10:24:56');
INSERT INTO car_config VALUES ('3048', '2997', '227', '1996款 2.2 手动(化)', null, 'A', '2997.gif', '4', '停销', '40.3万', '1996', '停产', '中型车', 'system', '2018-04-12 10:24:56', 'system', '2018-04-12 10:24:56');
INSERT INTO car_config VALUES ('3049', '228', '1', '进口奥迪', null, 'A', null, '2', null, null, null, null, null, 'system', '2018-04-12 10:24:56', 'system', '2018-04-12 10:24:56');
INSERT INTO car_config VALUES ('3050', '229', '228', 'A1', null, 'A', 'http://pic1.jisuapi.cn/car/static/images/logo/300/229.jpg', '3', '在销', null, null, null, null, 'system', '2018-04-12 10:24:56', 'system', '2018-04-12 10:24:56');
INSERT INTO car_config VALUES ('3051', '3006', '229', '2016款 30 TFSI 风尚版', null, 'A', '3006.jpg', '4', '在销', '20.48万', '2016', '在产', '小型车', 'system', '2018-04-12 10:24:56', 'system', '2018-04-12 10:24:56');
INSERT INTO car_config VALUES ('3052', '3007', '229', '2016款 30 TFSI 运动版', null, 'A', '3007.jpg', '4', '在销', '23.48万', '2016', '在产', '小型车', 'system', '2018-04-12 10:24:56', 'system', '2018-04-12 10:24:56');
INSERT INTO car_config VALUES ('3053', '2998', '229', '2014款 30 TFSI 时尚型', null, 'A', '2998.jpg', '4', '停销', '19.98万', '2014', '停产', '小型车', 'system', '2018-04-12 10:24:57', 'system', '2018-04-12 10:24:57');
INSERT INTO car_config VALUES ('3054', '2999', '229', '2014款 Sportback 30TFSI 时尚型', null, 'A', '2999.jpg', '4', '停销', '20.98万', '2014', '停产', '小型车', 'system', '2018-04-12 10:24:57', 'system', '2018-04-12 10:24:57');
INSERT INTO car_config VALUES ('3055', '3000', '229', '2014款 30 TFSI 技术型', null, 'A', '3000.jpg', '4', '停销', '22.48万', '2014', '停产', '小型车', 'system', '2018-04-12 10:24:57', 'system', '2018-04-12 10:24:57');
INSERT INTO car_config VALUES ('3056', '3001', '229', '2014款 Sportback 30TFSI 技术型', null, 'A', '3001.JPG', '4', '停销', '23.48万', '2014', '停产', '小型车', 'system', '2018-04-12 10:24:57', 'system', '2018-04-12 10:24:57');
INSERT INTO car_config VALUES ('3057', '3002', '229', '2014款 30 TFSI 舒适型', null, 'A', '3002.JPG', '4', '停销', '24.98万', '2014', '停产', '小型车', 'system', '2018-04-12 10:24:57', 'system', '2018-04-12 10:24:57');
INSERT INTO car_config VALUES ('3058', '3003', '229', '2014款 Sportback 30TFSI 舒适型', null, 'A', '3003.JPG', '4', '停销', '25.98万', '2014', '停产', '小型车', 'system', '2018-04-12 10:24:57', 'system', '2018-04-12 10:24:57');
INSERT INTO car_config VALUES ('3059', '3004', '229', '2014款 30 TFSI 豪华型', null, 'A', '3004.jpg', '4', '停销', '28.98万', '2014', '停产', '小型车', 'system', '2018-04-12 10:24:57', 'system', '2018-04-12 10:24:57');
INSERT INTO car_config VALUES ('3060', '3005', '229', '2014款 Sportback 30TFSI 豪华型', null, 'A', '3005.jpg', '4', '停销', '29.98万', '2014', '停产', '小型车', 'system', '2018-04-12 10:24:57', 'system', '2018-04-12 10:24:57');
INSERT INTO car_config VALUES ('3061', '3015', '229', '2013款 30TFSI Ego plus 中国限量版', null, 'A', '3015.JPG', '4', '停销', '31.18万', '2013', '停产', '小型车', 'system', '2018-04-12 10:24:58', 'system', '2018-04-12 10:24:58');
INSERT INTO car_config VALUES ('3062', '3014', '229', '2013款 Sportback 30TFSI Ego plus', null, 'A', '3014.jpg', '4', '停销', '29.98万', '2013', '停产', '小型车', 'system', '2018-04-12 10:24:58', 'system', '2018-04-12 10:24:58');
INSERT INTO car_config VALUES ('3063', '3013', '229', '2013款 30TFSI Ego plus', null, 'A', '3013.JPG', '4', '停销', '28.98万', '2013', '停产', '小型车', 'system', '2018-04-12 10:24:58', 'system', '2018-04-12 10:24:58');
INSERT INTO car_config VALUES ('3064', '3012', '229', '2013款 30TFSI Ego 中国限量版', null, 'A', '3012.JPG', '4', '停销', '27.18万', '2013', '停产', '小型车', 'system', '2018-04-12 10:24:58', 'system', '2018-04-12 10:24:58');
INSERT INTO car_config VALUES ('3065', '3011', '229', '2013款 Sportback 30TFSI Ego', null, 'A', '3011.JPG', '4', '停销', '25.98万', '2013', '停产', '小型车', 'system', '2018-04-12 10:24:58', 'system', '2018-04-12 10:24:58');
INSERT INTO car_config VALUES ('3066', '3010', '229', '2013款 30TFSI Ego', null, 'A', '3010.jpg', '4', '停销', '24.98万', '2013', '停产', '小型车', 'system', '2018-04-12 10:24:58', 'system', '2018-04-12 10:24:58');
INSERT INTO car_config VALUES ('3067', '3009', '229', '2013款 Sportback 30TFSI Urban', null, 'A', '3009.JPG', '4', '停销', '23.48万', '2013', '停产', '小型车', 'system', '2018-04-12 10:24:59', 'system', '2018-04-12 10:24:59');
INSERT INTO car_config VALUES ('3068', '3008', '229', '2013款 30TFSI Urban', null, 'A', '3008.JPG', '4', '停销', '22.48万', '2013', '停产', '小型车', 'system', '2018-04-12 10:24:59', 'system', '2018-04-12 10:24:59');
INSERT INTO car_config VALUES ('3069', '3016', '229', '2012款 1.4 TFSI 双离合 Urban', null, 'A', '3016.JPG', '4', '停销', '22.48万', '2012', '停产', '小型车', 'system', '2018-04-12 10:24:59', 'system', '2018-04-12 10:24:59');
INSERT INTO car_config VALUES ('3070', '3017', '229', '2012款 1.4 TFSI 双离合 Ego', null, 'A', '3017.jpg', '4', '停销', '24.98万', '2012', '停产', '小型车', 'system', '2018-04-12 10:24:59', 'system', '2018-04-12 10:24:59');
INSERT INTO car_config VALUES ('3071', '3018', '229', '2012款 1.4 TFSI 双离合 Ego plus', null, 'A', '3018.JPG', '4', '停销', '28.98万', '2012', '停产', '小型车', 'system', '2018-04-12 10:24:59', 'system', '2018-04-12 10:24:59');
INSERT INTO car_config VALUES ('3072', '230', '228', 'A3', null, 'A', 'http://pic1.jisuapi.cn/car/static/images/logo/300/230.jpg', '3', '在销', null, null, null, null, 'system', '2018-04-12 10:24:59', 'system', '2018-04-12 10:24:59');
INSERT INTO car_config VALUES ('3073', '37171', '230', '2017款 Cabriolet', null, 'A', '37171.JPG', '4', '在销', '36.98万', '2017', '在产', '紧凑型车', 'system', '2018-04-12 10:24:59', 'system', '2018-04-12 10:24:59');
INSERT INTO car_config VALUES ('3074', '3025', '230', '2015款 Limousine 45 TFSI S line 豪华型', null, 'A', '3025.jpg', '4', '停销', '30.48万', '2015', '停产', '紧凑型车', 'system', '2018-04-12 10:25:00', 'system', '2018-04-12 10:25:00');
INSERT INTO car_config VALUES ('3075', '3024', '230', '2015款 Sportback 45 TFSI S line 运动型', null, 'A', '3024.JPG', '4', '停销', '29.98万', '2015', '停产', '紧凑型车', 'system', '2018-04-12 10:25:00', 'system', '2018-04-12 10:25:00');
INSERT INTO car_config VALUES ('3076', '3019', '230', '2015款 Cabriolet 40 TFSI', null, 'A', '3019.JPG', '4', '停销', '36.98万', '2015', '停产', '紧凑型车', 'system', '2018-04-12 10:25:00', 'system', '2018-04-12 10:25:00');
INSERT INTO car_config VALUES ('3077', '3020', '230', '2014款 Sportback 40 TFSI S line 舒适型', null, 'A', '3020.jpg', '4', '停销', '26.98万', '2014', '停产', '紧凑型车', 'system', '2018-04-12 10:25:00', 'system', '2018-04-12 10:25:00');
INSERT INTO car_config VALUES ('3078', '3022', '230', '2014款 Sportback 40 TFSI S line 豪华型', null, 'A', '3022.JPG', '4', '停销', '32.43万', '2014', '停产', '紧凑型车', 'system', '2018-04-12 10:25:00', 'system', '2018-04-12 10:25:00');
INSERT INTO car_config VALUES ('3079', '3021', '230', '2014款 Limousine 40 TFSI S line 舒适型', null, 'A', '3021.jpg', '4', '停销', '27.98万', '2014', '停产', '紧凑型车', 'system', '2018-04-12 10:25:00', 'system', '2018-04-12 10:25:00');
INSERT INTO car_config VALUES ('3080', '3023', '230', '2014款 Limousine 40 TFSI S line 豪华型', null, 'A', '3023.JPG', '4', '停销', '33.43万', '2014', '停产', '紧凑型车', 'system', '2018-04-12 10:25:00', 'system', '2018-04-12 10:25:00');
INSERT INTO car_config VALUES ('3081', '3030', '230', '2013款 Sportback 35 TFSI 尊贵型', null, 'A', '3030.JPG', '4', '停销', '32.8万', '2013', '停产', '紧凑型车', 'system', '2018-04-12 10:25:00', 'system', '2018-04-12 10:25:00');
INSERT INTO car_config VALUES ('3082', '3029', '230', '2013款 Sportback 35 TFSI 豪华型', null, 'A', '3029.JPG', '4', '停销', '30.9万', '2013', '停产', '紧凑型车', 'system', '2018-04-12 10:25:01', 'system', '2018-04-12 10:25:01');
INSERT INTO car_config VALUES ('3083', '3028', '230', '2013款 Sportback 30 TFSI 豪华型', null, 'A', '3028.JPG', '4', '停销', '28.9万', '2013', '停产', '紧凑型车', 'system', '2018-04-12 10:25:01', 'system', '2018-04-12 10:25:01');
INSERT INTO car_config VALUES ('3084', '3027', '230', '2013款 Sportback 30 TFSI 舒适型', null, 'A', '3027.jpg', '4', '停销', '26.8万', '2013', '停产', '紧凑型车', 'system', '2018-04-12 10:25:01', 'system', '2018-04-12 10:25:01');
INSERT INTO car_config VALUES ('3085', '3026', '230', '2013款 Sportback 30 TFSI 技术型', null, 'A', '3026.JPG', '4', '停销', '25.5万', '2013', '停产', '紧凑型车', 'system', '2018-04-12 10:25:01', 'system', '2018-04-12 10:25:01');
INSERT INTO car_config VALUES ('3086', '3031', '230', '2011款 Sportback 1.4T 自动 技术型', null, 'A', '3031.jpg', '4', '停销', '25.5万', '2011', '停产', '紧凑型车', 'system', '2018-04-12 10:25:01', 'system', '2018-04-12 10:25:01');
INSERT INTO car_config VALUES ('3087', '3032', '230', '2011款 Sportback 1.4T 自动 舒适型', null, 'A', '3032.JPG', '4', '停销', '26.8万', '2011', '停产', '紧凑型车', 'system', '2018-04-12 10:25:01', 'system', '2018-04-12 10:25:01');
INSERT INTO car_config VALUES ('3088', '3033', '230', '2011款 Sportback 1.4T 自动 豪华型', null, 'A', '3033.jpg', '4', '停销', '28.9万', '2011', '停产', '紧凑型车', 'system', '2018-04-12 10:25:01', 'system', '2018-04-12 10:25:01');
INSERT INTO car_config VALUES ('3089', '3034', '230', '2011款 Sportback 1.8T 自动 豪华型', null, 'A', '3034.jpg', '4', '停销', '30.9万', '2011', '停产', '紧凑型车', 'system', '2018-04-12 10:25:02', 'system', '2018-04-12 10:25:02');
INSERT INTO car_config VALUES ('3090', '3035', '230', '2011款 Sportback 1.8T 自动 尊贵型', null, 'A', '3035.jpg', '4', '停销', '32.8万', '2011', '停产', '紧凑型车', 'system', '2018-04-12 10:25:02', 'system', '2018-04-12 10:25:02');
INSERT INTO car_config VALUES ('3091', '3036', '230', '2010款 Sportback 1.4T 舒适型', null, 'A', '3036.JPG', '4', '停销', '26.8万', '2010', '停产', '紧凑型车', 'system', '2018-04-12 10:25:02', 'system', '2018-04-12 10:25:02');
INSERT INTO car_config VALUES ('3092', '3037', '230', '2010款 Sportback 1.4T 豪华型', null, 'A', '3037.jpg', '4', '停销', '28.9万', '2010', '停产', '紧凑型车', 'system', '2018-04-12 10:25:02', 'system', '2018-04-12 10:25:02');
INSERT INTO car_config VALUES ('3093', '3038', '230', '2010款 Sportback 首发限量版舒适型', null, 'A', '3038.JPG', '4', '停销', '29.8万', '2010', '停产', '紧凑型车', 'system', '2018-04-12 10:25:02', 'system', '2018-04-12 10:25:02');
INSERT INTO car_config VALUES ('3094', '3039', '230', '2010款 Sportback 1.8T 豪华型', null, 'A', '3039.JPG', '4', '停销', '30.9万', '2010', '停产', '紧凑型车', 'system', '2018-04-12 10:25:02', 'system', '2018-04-12 10:25:02');
INSERT INTO car_config VALUES ('3095', '3040', '230', '2010款 Sportback 首发限量版豪华型', null, 'A', '3040.JPG', '4', '停销', '31.8万', '2010', '停产', '紧凑型车', 'system', '2018-04-12 10:25:02', 'system', '2018-04-12 10:25:02');
INSERT INTO car_config VALUES ('3096', '3041', '230', '2010款 Sportback 1.8T 尊贵型', null, 'A', '3041.jpg', '4', '停销', '32.8万', '2010', '停产', '紧凑型车', 'system', '2018-04-12 10:25:03', 'system', '2018-04-12 10:25:03');
INSERT INTO car_config VALUES ('3097', '232', '228', 'A4', null, 'A', 'http://pic1.jisuapi.cn/car/static/images/logo/300/232.jpg', '3', '在销', null, null, null, null, 'system', '2018-04-12 10:25:03', 'system', '2018-04-12 10:25:03');
INSERT INTO car_config VALUES ('3098', '34085', '232', '2017款 45TFSI allroad quattro 运动版', null, 'A', '34085.jpg', '4', '在销', '46.88万', '2017', '在产', '中型车', 'system', '2018-04-12 10:25:03', 'system', '2018-04-12 10:25:03');
INSERT INTO car_config VALUES ('3099', '34084', '232', '2017款 45TFSI allroad quattro 时尚版', null, 'A', '34084.jpg', '4', '在销', '42.38万', '2017', '在产', '中型车', 'system', '2018-04-12 10:25:03', 'system', '2018-04-12 10:25:03');
INSERT INTO car_config VALUES ('3100', '3116', '232', '2016款 40TFSI allroad quattro', null, 'A', '3116.jpg', '4', '停销', '41.8万', '2016', '停产', '中型车', 'system', '2018-04-12 10:25:03', 'system', '2018-04-12 10:25:03');
INSERT INTO car_config VALUES ('3101', '33877', '232', '2014款 40TFSI allroad quattro', null, 'A', '33877.jpg', '4', '停销', '46.98万', '2014', '停产', '中型车', 'system', '2018-04-12 10:25:03', 'system', '2018-04-12 10:25:03');
INSERT INTO car_config VALUES ('3102', '3117', '232', '2014款 40TFSI allroad quattro plus', null, 'A', '3117.JPG', '4', '停销', '46.8万', '2014', '停产', '中型车', 'system', '2018-04-12 10:25:03', 'system', '2018-04-12 10:25:03');
INSERT INTO car_config VALUES ('3103', '3119', '232', '2013款 40TFSI allroad quattro 豪华型', null, 'A', '3119.jpg', '4', '停销', '51.98万', '2013', '停产', '中型车', 'system', '2018-04-12 10:25:03', 'system', '2018-04-12 10:25:03');
INSERT INTO car_config VALUES ('3104', '3118', '232', '2013款 40TFSI allroad quattro 舒适型', null, 'A', '3118.JPG', '4', '停销', '48.98万', '2013', '停产', '中型车', 'system', '2018-04-12 10:25:04', 'system', '2018-04-12 10:25:04');
INSERT INTO car_config VALUES ('3105', '3045', '232', '2008款 2.0 MT TFSI', null, 'A', '3045.jpg', '4', '停销', '30.33万', '2008', '停产', '中型车', 'system', '2018-04-12 10:25:04', 'system', '2018-04-12 10:25:04');
INSERT INTO car_config VALUES ('3106', '3046', '232', '2008款 2.0 CVT TFSI', null, 'A', '3046.jpg', '4', '停销', '35.76万', '2008', '停产', '中型车', 'system', '2018-04-12 10:25:04', 'system', '2018-04-12 10:25:04');
INSERT INTO car_config VALUES ('3107', '3047', '232', '2008款 2.7 AMT V6 TDI quattro柴油版', null, 'A', '3047.jpg', '4', '停销', '53.18万', '2008', '停产', '中型车', 'system', '2018-04-12 10:25:04', 'system', '2018-04-12 10:25:04');
INSERT INTO car_config VALUES ('3108', '3048', '232', '2007款 1.8 MT TFSI(120hp)', null, 'A', '3048.jpg', '4', '停销', '27.69万', '2007', '停产', '中型车', 'system', '2018-04-12 10:25:04', 'system', '2018-04-12 10:25:04');
INSERT INTO car_config VALUES ('3109', '3049', '232', '2007款 1.8 MT TFSI(160hp)', null, 'A', '3049.jpg', '4', '停销', '28.49万', '2007', '停产', '中型车', 'system', '2018-04-12 10:25:04', 'system', '2018-04-12 10:25:04');
INSERT INTO car_config VALUES ('3110', '3050', '232', '2007款 1.8 CVT TFSI(160hp)', null, 'A', '3050.jpg', '4', '停销', '32.55万', '2007', '停产', '中型车', 'system', '2018-04-12 10:25:05', 'system', '2018-04-12 10:25:05');
INSERT INTO car_config VALUES ('3111', '3051', '232', '2007款 2.0 MT TDI quattro柴油版', null, 'A', '3051.jpg', '4', '停销', '31.22万', '2007', '停产', '中型车', 'system', '2018-04-12 10:25:05', 'system', '2018-04-12 10:25:05');
INSERT INTO car_config VALUES ('3112', '3052', '232', '2007款 2.7 CVT V6 TDI柴油版', null, 'A', '3052.jpg', '4', '停销', '50.28万', '2007', '停产', '中型车', 'system', '2018-04-12 10:25:05', 'system', '2018-04-12 10:25:05');
INSERT INTO car_config VALUES ('3113', '3053', '232', '2007款 3.0 MT V6 TDI quattro柴油版', null, 'A', '3053.jpg', '4', '停销', '54.86万', '2007', '停产', '中型车', 'system', '2018-04-12 10:25:05', 'system', '2018-04-12 10:25:05');
INSERT INTO car_config VALUES ('3114', '3054', '232', '2007款 3.2 MT V6 FSI quattro', null, 'A', '3054.jpg', '4', '停销', '54.52万', '2007', '停产', '中型车', 'system', '2018-04-12 10:25:05', 'system', '2018-04-12 10:25:05');
INSERT INTO car_config VALUES ('3115', '3055', '232', '2005款 1.6 MT', null, 'A', '3055.jpg', '4', '停销', '24.98万', '2005', '停产', '中型车', 'system', '2018-04-12 10:25:05', 'system', '2018-04-12 10:25:05');
INSERT INTO car_config VALUES ('3116', '3056', '232', '2005款 1.8T AMT quattro(163hp)', null, 'A', '3056.jpg', '4', '停销', '36.22万', '2005', '停产', '中型车', 'system', '2018-04-12 10:25:05', 'system', '2018-04-12 10:25:05');
INSERT INTO car_config VALUES ('3117', '3057', '232', '2005款 1.9 MT TDI(116hp)柴油版', null, 'A', '3057.jpg', '4', '停销', '27.22万', '2005', '停产', '中型车', 'system', '2018-04-12 10:25:05', 'system', '2018-04-12 10:25:05');
INSERT INTO car_config VALUES ('3118', '3058', '232', '2004款 1.8T MT(163hp)', null, 'A', '3058.jpg', '4', '停销', '27.78万', '2004', '停产', '中型车', 'system', '2018-04-12 10:25:06', 'system', '2018-04-12 10:25:06');
INSERT INTO car_config VALUES ('3119', '3077', '232', '2004款 3.2 MT V6 FSI quattro', null, 'A', '3077.jpg', '4', '停销', '54.52万', '2004', '停产', '中型车', 'system', '2018-04-12 10:25:06', 'system', '2018-04-12 10:25:06');
INSERT INTO car_config VALUES ('3120', '3076', '232', '2004款 3.2 AT V6 FSI quattro', null, 'A', '3076.jpg', '4', '停销', '50.99万', '2004', '停产', '中型车', 'system', '2018-04-12 10:25:06', 'system', '2018-04-12 10:25:06');
INSERT INTO car_config VALUES ('3121', '3075', '232', '2004款 3.0 AMT V6 TDI quattro柴油版', null, 'A', '3075.jpg', '4', '停销', '55.66万', '2004', '停产', '中型车', 'system', '2018-04-12 10:25:06', 'system', '2018-04-12 10:25:06');
INSERT INTO car_config VALUES ('3122', '3074', '232', '2004款 3.0 MT V6 TDI quattro柴油版', null, 'A', '3074.jpg', '4', '停销', '54.86万', '2004', '停产', '中型车', 'system', '2018-04-12 10:25:06', 'system', '2018-04-12 10:25:06');
INSERT INTO car_config VALUES ('3123', '3073', '232', '2004款 2.7 AMT TDI柴油版', null, 'A', '3073.jpg', '4', '停销', '50.08万', '2004', '停产', '中型车', 'system', '2018-04-12 10:25:06', 'system', '2018-04-12 10:25:06');
INSERT INTO car_config VALUES ('3124', '3072', '232', '2004款 2.5 MT V6 TDI(163hp)柴油版', null, 'A', '3072.jpg', '4', '停销', '48.33万', '2004', '停产', '中型车', 'system', '2018-04-12 10:25:06', 'system', '2018-04-12 10:25:06');
INSERT INTO car_config VALUES ('3125', '3059', '232', '2004款 1.8T AMT(163hp)', null, 'A', '3059.jpg', '4', '停销', '28.98万', '2004', '停产', '中型车', 'system', '2018-04-12 10:25:06', 'system', '2018-04-12 10:25:06');
INSERT INTO car_config VALUES ('3126', '3060', '232', '2004款 1.8T MT quattro(163hp)', null, 'A', '3060.jpg', '4', '停销', '29.52万', '2004', '停产', '中型车', 'system', '2018-04-12 10:25:07', 'system', '2018-04-12 10:25:07');
INSERT INTO car_config VALUES ('3127', '3061', '232', '2004款 1.8T AMT quattro(163hp)', null, 'A', '3061.jpg', '4', '停销', '30.22万', '2004', '停产', '中型车', 'system', '2018-04-12 10:25:07', 'system', '2018-04-12 10:25:07');
INSERT INTO car_config VALUES ('3128', '3062', '232', '2004款 2.0 MT', null, 'A', '3062.jpg', '4', '停销', '38.12万', '2004', '停产', '中型车', 'system', '2018-04-12 10:25:07', 'system', '2018-04-12 10:25:07');
INSERT INTO car_config VALUES ('3129', '3063', '232', '2004款 2.0 AMT TDI(140hp)柴油版', null, 'A', '3063.jpg', '4', '停销', '29.98万', '2004', '停产', '中型车', 'system', '2018-04-12 10:25:07', 'system', '2018-04-12 10:25:07');
INSERT INTO car_config VALUES ('3130', '3064', '232', '2004款 2.0 MT TDI(170hp)柴油版', null, 'A', '3064.jpg', '4', '停销', '28.12万', '2004', '停产', '中型车', 'system', '2018-04-12 10:25:07', 'system', '2018-04-12 10:25:07');
INSERT INTO car_config VALUES ('3131', '3065', '232', '2004款 2.0 MT TDI quattro(170hp)柴油版', null, 'A', '3065.jpg', '4', '停销', '31.22万', '2004', '停产', '中型车', 'system', '2018-04-12 10:25:07', 'system', '2018-04-12 10:25:07');
INSERT INTO car_config VALUES ('3132', '3071', '232', '2004款 2.0 AMT TFSI DTM Edition quattro', null, 'A', '3071.jpg', '4', '停销', '48.5万', '2004', '停产', '中型车', 'system', '2018-04-12 10:25:07', 'system', '2018-04-12 10:25:07');
INSERT INTO car_config VALUES ('3133', '3070', '232', '2004款 2.0 AMT TFSI DTM Edition', null, 'A', '3070.jpg', '4', '停销', '40.2万', '2004', '停产', '中型车', 'system', '2018-04-12 10:25:07', 'system', '2018-04-12 10:25:07');
INSERT INTO car_config VALUES ('3134', '3069', '232', '2004款 2.0 AMT TFSI', null, 'A', '3069.jpg', '4', '停销', '39.52万', '2004', '停产', '中型车', 'system', '2018-04-12 10:25:08', 'system', '2018-04-12 10:25:08');
INSERT INTO car_config VALUES ('3135', '3068', '232', '2004款 2.0 AMT TFSI quattro', null, 'A', '3068.jpg', '4', '停销', '38.98万', '2004', '停产', '中型车', 'system', '2018-04-12 10:25:08', 'system', '2018-04-12 10:25:08');
INSERT INTO car_config VALUES ('3136', '3067', '232', '2004款 2.0 MT TFSI quattro', null, 'A', '3067.jpg', '4', '停销', '32.53万', '2004', '停产', '中型车', 'system', '2018-04-12 10:25:08', 'system', '2018-04-12 10:25:08');
INSERT INTO car_config VALUES ('3137', '3066', '232', '2004款 2.0 MT TFSI', null, 'A', '3066.jpg', '4', '停销', '30.33万', '2004', '停产', '中型车', 'system', '2018-04-12 10:25:08', 'system', '2018-04-12 10:25:08');
INSERT INTO car_config VALUES ('3138', '3078', '232', '2003款 3.0 quattro敞蓬', null, 'A', '3078.jpg', '4', '停销', '暂无', '2003', '停产', '中型车', 'system', '2018-04-12 10:25:08', 'system', '2018-04-12 10:25:08');
INSERT INTO car_config VALUES ('3139', '3079', '232', '2002款 1.8T', null, 'A', '3079.jpg', '4', '停销', '28.58万', '2002', '停产', '中型车', 'system', '2018-04-12 10:25:08', 'system', '2018-04-12 10:25:08');
INSERT INTO car_config VALUES ('3140', '3080', '232', '2002款 3.0L quattro', null, 'A', '3080.jpg', '4', '停销', '54.52万', '2002', '停产', '中型车', 'system', '2018-04-12 10:25:08', 'system', '2018-04-12 10:25:08');
INSERT INTO car_config VALUES ('3141', '3103', '232', '2001款 2.5 CVT TDI(155hp)柴油版', null, 'A', '3103.jpg', '4', '停销', '49.24万', '2001', '停产', '中型车', 'system', '2018-04-12 10:25:08', 'system', '2018-04-12 10:25:08');
INSERT INTO car_config VALUES ('3142', '3104', '232', '2001款 2.5 MT TDI quattro(155hp)柴油版', null, 'A', '3104.jpg', '4', '停销', '52.68万', '2001', '停产', '中型车', 'system', '2018-04-12 10:25:09', 'system', '2018-04-12 10:25:09');
INSERT INTO car_config VALUES ('3143', '3105', '232', '2001款 2.5 CVT TDI quattro(155hp)柴油版', null, 'A', '3105.jpg', '4', '停销', '53.28万', '2001', '停产', '中型车', 'system', '2018-04-12 10:25:09', 'system', '2018-04-12 10:25:09');
INSERT INTO car_config VALUES ('3144', '3106', '232', '2001款 2.5 CVT TDI(163hp)柴油版', null, 'A', '3106.jpg', '4', '停销', '49.48万', '2001', '停产', '中型车', 'system', '2018-04-12 10:25:09', 'system', '2018-04-12 10:25:09');
INSERT INTO car_config VALUES ('3145', '3107', '232', '2001款 2.5 MT TDI quattro(180hp)柴油版', null, 'A', '3107.jpg', '4', '停销', '53.08万', '2001', '停产', '中型车', 'system', '2018-04-12 10:25:09', 'system', '2018-04-12 10:25:09');
INSERT INTO car_config VALUES ('3146', '3108', '232', '2001款 2.5 AT TDI quattro(180hp)柴油版', null, 'A', '3108.jpg', '4', '停销', '53.88万', '2001', '停产', '中型车', 'system', '2018-04-12 10:25:09', 'system', '2018-04-12 10:25:09');
INSERT INTO car_config VALUES ('3147', '3109', '232', '2001款 3.0 MT', null, 'A', '3109.jpg', '4', '停销', '49.06万', '2001', '停产', '中型车', 'system', '2018-04-12 10:25:09', 'system', '2018-04-12 10:25:09');
INSERT INTO car_config VALUES ('3148', '3110', '232', '2001款 3.0 CVT', null, 'A', '3110.jpg', '4', '停销', '49.88万', '2001', '停产', '中型车', 'system', '2018-04-12 10:25:09', 'system', '2018-04-12 10:25:09');
INSERT INTO car_config VALUES ('3149', '3111', '232', '2001款 3.0 MT quattro', null, 'A', '3111.jpg', '4', '停销', '53.7万', '2001', '停产', '中型车', 'system', '2018-04-12 10:25:10', 'system', '2018-04-12 10:25:10');
INSERT INTO car_config VALUES ('3150', '3112', '232', '2001款 3.0 CVT quattro', null, 'A', '3112.jpg', '4', '停销', '54.52万', '2001', '停产', '中型车', 'system', '2018-04-12 10:25:10', 'system', '2018-04-12 10:25:10');
INSERT INTO car_config VALUES ('3151', '3085', '232', '2001款 1.8T MT quattro(150hp)', null, 'A', '3085.jpg', '4', '停销', '29.92万', '2001', '停产', '中型车', 'system', '2018-04-12 10:25:10', 'system', '2018-04-12 10:25:10');
INSERT INTO car_config VALUES ('3152', '3084', '232', '2001款 1.8T AMT(150hp)', null, 'A', '3084.jpg', '4', '停销', '28.58万', '2001', '停产', '中型车', 'system', '2018-04-12 10:25:10', 'system', '2018-04-12 10:25:10');
INSERT INTO car_config VALUES ('3153', '3083', '232', '2001款 1.8T CVT(150hp)', null, 'A', '3083.jpg', '4', '停销', '28.18万', '2001', '停产', '中型车', 'system', '2018-04-12 10:25:10', 'system', '2018-04-12 10:25:10');
INSERT INTO car_config VALUES ('3154', '3082', '232', '2001款 1.8T MT(150hp)', null, 'A', '3082.jpg', '4', '停销', '27.38万', '2001', '停产', '中型车', 'system', '2018-04-12 10:25:10', 'system', '2018-04-12 10:25:10');
INSERT INTO car_config VALUES ('3155', '3081', '232', '2001款 1.6 MT', null, 'A', '3081.jpg', '4', '停销', '24.98万', '2001', '停产', '中型车', 'system', '2018-04-12 10:25:10', 'system', '2018-04-12 10:25:10');
INSERT INTO car_config VALUES ('3156', '3086', '232', '2001款 1.8T CVT quattro(150hp)', null, 'A', '3086.jpg', '4', '停销', '30.78万', '2001', '停产', '中型车', 'system', '2018-04-12 10:25:11', 'system', '2018-04-12 10:25:11');
INSERT INTO car_config VALUES ('3157', '3087', '232', '2001款 1.8T MT(163hp)', null, 'A', '3087.jpg', '4', '停销', '27.78万', '2001', '停产', '中型车', 'system', '2018-04-12 10:25:11', 'system', '2018-04-12 10:25:11');
INSERT INTO car_config VALUES ('3158', '3088', '232', '2001款 1.8T MT quattro(163hp)', null, 'A', '3088.jpg', '4', '停销', '29.52万', '2001', '停产', '中型车', 'system', '2018-04-12 10:25:11', 'system', '2018-04-12 10:25:11');
INSERT INTO car_config VALUES ('3159', '3089', '232', '2001款 1.8T AMT quattro(163hp)', null, 'A', '3089.jpg', '4', '停销', '30.22万', '2001', '停产', '中型车', 'system', '2018-04-12 10:25:11', 'system', '2018-04-12 10:25:11');
INSERT INTO car_config VALUES ('3160', '3090', '232', '2001款 1.8T MT(190hp)', null, 'A', '3090.jpg', '4', '停销', '28.38万', '2001', '停产', '中型车', 'system', '2018-04-12 10:25:11', 'system', '2018-04-12 10:25:11');
INSERT INTO car_config VALUES ('3161', '3091', '232', '2001款 1.9 MT TDI(115hp)柴油版', null, 'A', '3091.jpg', '4', '停销', '29.22万', '2001', '停产', '中型车', 'system', '2018-04-12 10:25:11', 'system', '2018-04-12 10:25:11');
INSERT INTO car_config VALUES ('3162', '3092', '232', '2001款 1.9 AMT TDI(115hp)柴油版', null, 'A', '3092.jpg', '4', '停销', '30.12万', '2001', '停产', '中型车', 'system', '2018-04-12 10:25:11', 'system', '2018-04-12 10:25:11');
INSERT INTO car_config VALUES ('3163', '3093', '232', '2001款 1.9 MT TDI(130hp)柴油版', null, 'A', '3093.jpg', '4', '停销', '29.62万', '2001', '停产', '中型车', 'system', '2018-04-12 10:25:12', 'system', '2018-04-12 10:25:12');
INSERT INTO car_config VALUES ('3164', '3094', '232', '2001款 1.9 CVT TDI(130hp)柴油版', null, 'A', '3094.jpg', '4', '停销', '30.62万', '2001', '停产', '中型车', 'system', '2018-04-12 10:25:12', 'system', '2018-04-12 10:25:12');
INSERT INTO car_config VALUES ('3165', '3095', '232', '2001款 2.0 MT', null, 'A', '3095.jpg', '4', '停销', '38.12万', '2001', '停产', '中型车', 'system', '2018-04-12 10:25:12', 'system', '2018-04-12 10:25:12');
INSERT INTO car_config VALUES ('3166', '3096', '232', '2001款 2.0 CVT', null, 'A', '3096.jpg', '4', '停销', '39.52万', '2001', '停产', '中型车', 'system', '2018-04-12 10:25:12', 'system', '2018-04-12 10:25:12');
INSERT INTO car_config VALUES ('3167', '3097', '232', '2001款 2.0 MT FSI', null, 'A', '3097.jpg', '4', '停销', '38.78万', '2001', '停产', '中型车', 'system', '2018-04-12 10:25:12', 'system', '2018-04-12 10:25:12');
INSERT INTO car_config VALUES ('3168', '3098', '232', '2001款 2.0 CVT FSI', null, 'A', '3098.jpg', '4', '停销', '40.18万', '2001', '停产', '中型车', 'system', '2018-04-12 10:25:12', 'system', '2018-04-12 10:25:12');
INSERT INTO car_config VALUES ('3169', '3099', '232', '2001款 2.4 CVT', null, 'A', '3099.jpg', '4', '停销', '42.59万', '2001', '停产', '中型车', 'system', '2018-04-12 10:25:12', 'system', '2018-04-12 10:25:12');
INSERT INTO car_config VALUES ('3170', '3100', '232', '2001款 2.4 AMT', null, 'A', '3100.jpg', '4', '停销', '42.89万', '2001', '停产', '中型车', 'system', '2018-04-12 10:25:12', 'system', '2018-04-12 10:25:12');
INSERT INTO car_config VALUES ('3171', '3101', '232', '2001款 2.5 MT TDI(163hp)柴油版', null, 'A', '3101.jpg', '4', '停销', '48.33万', '2001', '停产', '中型车', 'system', '2018-04-12 10:25:13', 'system', '2018-04-12 10:25:13');
INSERT INTO car_config VALUES ('3172', '3102', '232', '2001款 2.5 MT TDI(155hp)柴油版', null, 'A', '3102.jpg', '4', '停销', '48.08万', '2001', '停产', '中型车', 'system', '2018-04-12 10:25:13', 'system', '2018-04-12 10:25:13');
INSERT INTO car_config VALUES ('3173', '3113', '232', '2000款 1.6 MT', null, 'A', '3113.jpg', '4', '停销', '24.98万', '2000', '停产', '中型车', 'system', '2018-04-12 10:25:13', 'system', '2018-04-12 10:25:13');
INSERT INTO car_config VALUES ('3174', '3114', '232', '2000款 1.9 AMT TDI(115hp)柴油版', null, 'A', '3114.jpg', '4', '停销', '30.12万', '2000', '停产', '中型车', 'system', '2018-04-12 10:25:13', 'system', '2018-04-12 10:25:13');
INSERT INTO car_config VALUES ('3175', '3115', '232', '2000款 2.0', null, 'A', '3115.jpg', '4', '停销', '暂无', '2000', '停产', '中型车', 'system', '2018-04-12 10:25:13', 'system', '2018-04-12 10:25:13');
INSERT INTO car_config VALUES ('3176', '234', '228', 'A5', null, 'A', 'http://pic1.jisuapi.cn/car/static/images/logo/300/234.jpg', '3', '在销', null, null, null, null, 'system', '2018-04-12 10:25:13', 'system', '2018-04-12 10:25:13');
INSERT INTO car_config VALUES ('3177', '37179', '234', '2017款 Cabriolet 45 TFSI quattro 运动版', null, 'A', '37179.jpg', '4', '在销', '64.28万', '2017', '在产', '中型车', 'system', '2018-04-12 10:25:13', 'system', '2018-04-12 10:25:13');
INSERT INTO car_config VALUES ('3178', '37178', '234', '2017款 Coupe 45 TFSI quattro 运动版', null, 'A', '37178.jpg', '4', '在销', '55.78万', '2017', '在产', '中型车', 'system', '2018-04-12 10:25:13', 'system', '2018-04-12 10:25:13');
INSERT INTO car_config VALUES ('3179', '37177', '234', '2017款 Sportback 45 TFSI quattro 运动版', null, 'A', '37177.jpg', '4', '在销', '51.78万', '2017', '在产', '中型车', 'system', '2018-04-12 10:25:14', 'system', '2018-04-12 10:25:14');
INSERT INTO car_config VALUES ('3180', '37176', '234', '2017款 Sportback 45 TFSI 运动版', null, 'A', '37176.jpg', '4', '在销', '49.78万', '2017', '在产', '中型车', 'system', '2018-04-12 10:25:14', 'system', '2018-04-12 10:25:14');
INSERT INTO car_config VALUES ('3181', '37175', '234', '2017款 Sportback 45 TFSI 时尚版', null, 'A', '37175.jpg', '4', '在销', '45.38万', '2017', '在产', '中型车', 'system', '2018-04-12 10:25:14', 'system', '2018-04-12 10:25:14');
INSERT INTO car_config VALUES ('3182', '37174', '234', '2017款 Cabriolet 40 TFSI 时尚版', null, 'A', '37174.jpg', '4', '在销', '56.98万', '2017', '在产', '中型车', 'system', '2018-04-12 10:25:14', 'system', '2018-04-12 10:25:14');
INSERT INTO car_config VALUES ('3183', '37173', '234', '2017款 Coupe 40 TFSI 时尚版', null, 'A', '37173.jpg', '4', '在销', '45.78万', '2017', '在产', '中型车', 'system', '2018-04-12 10:25:14', 'system', '2018-04-12 10:25:14');
INSERT INTO car_config VALUES ('3184', '37172', '234', '2017款 Sportback 40 TFSI 时尚版', null, 'A', '37172.jpg', '4', '在销', '39.8万', '2017', '在产', '中型车', 'system', '2018-04-12 10:25:14', 'system', '2018-04-12 10:25:14');
INSERT INTO car_config VALUES ('3185', '3136', '234', '2016款 Cabriolet 45 TFSI quattro', null, 'A', '3136.jpg', '4', '停销', '62.8万', '2016', '停产', '中型车', 'system', '2018-04-12 10:25:14', 'system', '2018-04-12 10:25:14');
INSERT INTO car_config VALUES ('3186', '3135', '234', '2016款 Coupe 45 TFSI quattro', null, 'A', '3135.jpg', '4', '停销', '57.8万', '2016', '停产', '中型车', 'system', '2018-04-12 10:25:14', 'system', '2018-04-12 10:25:14');
INSERT INTO car_config VALUES ('3187', '3134', '234', '2016款 Sportback 45 TFSI quattro', null, 'A', '3134.jpg', '4', '停销', '54.88万', '2016', '停产', '中型车', 'system', '2018-04-12 10:25:15', 'system', '2018-04-12 10:25:15');
INSERT INTO car_config VALUES ('3188', '3133', '234', '2016款 Cabriolet 45 TFSI 舒适型', null, 'A', '3133.JPG', '4', '停销', '59.8万', '2016', '停产', '中型车', 'system', '2018-04-12 10:25:15', 'system', '2018-04-12 10:25:15');
INSERT INTO car_config VALUES ('3189', '3120', '234', '2016款 改款 Sportback 35 TFSI 进取版', null, 'A', '3120.jpg', '4', '停销', '39.8万', '2016', '停产', '中型车', 'system', '2018-04-12 10:25:15', 'system', '2018-04-12 10:25:15');
INSERT INTO car_config VALUES ('3190', '3121', '234', '2016款 改款 Coupe 35 TFSI 进取版', null, 'A', '3121.jpg', '4', '停销', '45.78万', '2016', '停产', '中型车', 'system', '2018-04-12 10:25:15', 'system', '2018-04-12 10:25:15');
INSERT INTO car_config VALUES ('3191', '3122', '234', '2016款 改款 Sportback 45 TFSI 舒适版', null, 'A', '3122.jpg', '4', '停销', '43.8万', '2016', '停产', '中型车', 'system', '2018-04-12 10:25:15', 'system', '2018-04-12 10:25:15');
INSERT INTO car_config VALUES ('3192', '3123', '234', '2016款 改款 Coupe 45 TFSI 舒适版', null, 'A', '3123.jpg', '4', '停销', '52.5万', '2016', '停产', '中型车', 'system', '2018-04-12 10:25:15', 'system', '2018-04-12 10:25:15');
INSERT INTO car_config VALUES ('3193', '3124', '234', '2016款 改款 Cabriolet 45 TFSI 进取版', null, 'A', '3124.jpg', '4', '停销', '56.98万', '2016', '停产', '中型车', 'system', '2018-04-12 10:25:15', 'system', '2018-04-12 10:25:15');
INSERT INTO car_config VALUES ('3194', '3125', '234', '2016款 改款 Cabriolet 45 TFSI 舒适版', null, 'A', '3125.jpg', '4', '停销', '59.8万', '2016', '停产', '中型车', 'system', '2018-04-12 10:25:15', 'system', '2018-04-12 10:25:15');
INSERT INTO car_config VALUES ('3195', '3126', '234', '2016款 改款 Sportback 45 TFSI quattro', null, 'A', '3126.jpg', '4', '停销', '53.68万', '2016', '停产', '中型车', 'system', '2018-04-12 10:25:16', 'system', '2018-04-12 10:25:16');
INSERT INTO car_config VALUES ('3196', '3127', '234', '2016款 改款 Coupe 45 TFSI quattro', null, 'A', '3127.jpg', '4', '停销', '58.6万', '2016', '停产', '中型车', 'system', '2018-04-12 10:25:16', 'system', '2018-04-12 10:25:16');
INSERT INTO car_config VALUES ('3197', '3132', '234', '2016款 Cabriolet 45 TFSI 进取型', null, 'A', '3132.JPG', '4', '停销', '56.98万', '2016', '停产', '中型车', 'system', '2018-04-12 10:25:16', 'system', '2018-04-12 10:25:16');
INSERT INTO car_config VALUES ('3198', '3131', '234', '2016款 Coupe 45 TFSI 舒适型', null, 'A', '3131.JPG', '4', '停销', '52.5万', '2016', '停产', '中型车', 'system', '2018-04-12 10:25:16', 'system', '2018-04-12 10:25:16');
INSERT INTO car_config VALUES ('3199', '3130', '234', '2016款 Coupe 45 TFSI 进取型', null, 'A', '3130.jpg', '4', '停销', '49.98万', '2016', '停产', '中型车', 'system', '2018-04-12 10:25:16', 'system', '2018-04-12 10:25:16');
INSERT INTO car_config VALUES ('3200', '3129', '234', '2016款 Sportback 45 TFSI', null, 'A', '3129.jpg', '4', '停销', '45.88万', '2016', '停产', '中型车', 'system', '2018-04-12 10:25:16', 'system', '2018-04-12 10:25:16');
INSERT INTO car_config VALUES ('3201', '3128', '234', '2016款 改款 Cabriolet 45 TFSI quattro', null, 'A', '3128.jpg', '4', '停销', '62.8万', '2016', '停产', '中型车', 'system', '2018-04-12 10:25:16', 'system', '2018-04-12 10:25:16');
INSERT INTO car_config VALUES ('3202', '3137', '234', '2014款 Sportback 45 TFSI', null, 'A', '3137.jpg', '4', '停销', '49.98万', '2014', '停产', '中型车', 'system', '2018-04-12 10:25:16', 'system', '2018-04-12 10:25:16');
INSERT INTO car_config VALUES ('3203', '3138', '234', '2014款 Sportback 45 TFSI风尚版', null, 'A', '3138.JPG', '4', '停销', '51.97万', '2014', '停产', '中型车', 'system', '2018-04-12 10:25:17', 'system', '2018-04-12 10:25:17');
INSERT INTO car_config VALUES ('3204', '3139', '234', '2014款 Coupe 45 TFSI', null, 'A', '3139.JPG', '4', '停销', '52.5万', '2014', '停产', '中型车', 'system', '2018-04-12 10:25:17', 'system', '2018-04-12 10:25:17');
INSERT INTO car_config VALUES ('3205', '3152', '234', '2014款 Coupe 50 TFSI quattro风尚版', null, 'A', '3152.jpg', '4', '停销', '67.99万', '2014', '停产', '中型车', 'system', '2018-04-12 10:25:17', 'system', '2018-04-12 10:25:17');
INSERT INTO car_config VALUES ('3206', '3151', '234', '2014款 Coupe 50TFSI quattro', null, 'A', '3151.jpg', '4', '停销', '66万', '2014', '停产', '中型车', 'system', '2018-04-12 10:25:17', 'system', '2018-04-12 10:25:17');
INSERT INTO car_config VALUES ('3207', '3140', '234', '2014款 Coupe 45 TFSI风尚版', null, 'A', '3140.jpg', '4', '停销', '54.49万', '2014', '停产', '中型车', 'system', '2018-04-12 10:25:17', 'system', '2018-04-12 10:25:17');
INSERT INTO car_config VALUES ('3208', '3141', '234', '2014款 Cabriolet 45 TFSI', null, 'A', '3141.JPG', '4', '停销', '59.8万', '2014', '停产', '中型车', 'system', '2018-04-12 10:25:17', 'system', '2018-04-12 10:25:17');
INSERT INTO car_config VALUES ('3209', '3142', '234', '2014款 Cabriolet 45 TFSI风尚版', null, 'A', '3142.jpg', '4', '停销', '61.79万', '2014', '停产', '中型车', 'system', '2018-04-12 10:25:17', 'system', '2018-04-12 10:25:17');
INSERT INTO car_config VALUES ('3210', '3143', '234', '2014款 Coupe 45 TFSI quattro', null, 'A', '3143.JPG', '4', '停销', '57.8万', '2014', '停产', '中型车', 'system', '2018-04-12 10:25:18', 'system', '2018-04-12 10:25:18');
INSERT INTO car_config VALUES ('3211', '3144', '234', '2014款 Sportback 45 TFSI quattro', null, 'A', '3144.jpg', '4', '停销', '58.5万', '2014', '停产', '中型车', 'system', '2018-04-12 10:25:18', 'system', '2018-04-12 10:25:18');
INSERT INTO car_config VALUES ('3212', '3145', '234', '2014款 Coupe 45 TFSI quattro风尚版', null, 'A', '3145.jpg', '4', '停销', '59.79万', '2014', '停产', '中型车', 'system', '2018-04-12 10:25:18', 'system', '2018-04-12 10:25:18');
INSERT INTO car_config VALUES ('3213', '3146', '234', '2014款 Sportback 45 TFSI quattro风尚版', null, 'A', '3146.JPG', '4', '停销', '60.49万', '2014', '停产', '中型车', 'system', '2018-04-12 10:25:18', 'system', '2018-04-12 10:25:18');
INSERT INTO car_config VALUES ('3214', '3147', '234', '2014款 Cabriolet 45 TFSI quattro', null, 'A', '3147.JPG', '4', '停销', '62.8万', '2014', '停产', '中型车', 'system', '2018-04-12 10:25:18', 'system', '2018-04-12 10:25:18');
INSERT INTO car_config VALUES ('3215', '3150', '234', '2014款 Sportback 50 TFSI quattro风尚版', null, 'A', '3150.jpg', '4', '停销', '64.99万', '2014', '停产', '中型车', 'system', '2018-04-12 10:25:18', 'system', '2018-04-12 10:25:18');
INSERT INTO car_config VALUES ('3216', '3149', '234', '2014款 Sportback 50TFSI quattro', null, 'A', '3149.jpg', '4', '停销', '63万', '2014', '停产', '中型车', 'system', '2018-04-12 10:25:18', 'system', '2018-04-12 10:25:18');
INSERT INTO car_config VALUES ('3217', '3148', '234', '2014款 Cabriolet 45 TFSI quattro风尚版', null, 'A', '3148.jpg', '4', '停销', '64.79万', '2014', '停产', '中型车', 'system', '2018-04-12 10:25:18', 'system', '2018-04-12 10:25:18');
INSERT INTO car_config VALUES ('3218', '3153', '234', '2013款 Sportback 40TFSI', null, 'A', '3153.jpg', '4', '停销', '49.98万', '2013', '停产', '中型车', 'system', '2018-04-12 10:25:19', 'system', '2018-04-12 10:25:19');
INSERT INTO car_config VALUES ('3219', '3154', '234', '2013款 Sportback 40 TFSI风尚版', null, 'A', '3154.jpg', '4', '停销', '51.97万', '2013', '停产', '中型车', 'system', '2018-04-12 10:25:19', 'system', '2018-04-12 10:25:19');
INSERT INTO car_config VALUES ('3220', '3155', '234', '2013款 Coupe 40TFSI', null, 'A', '3155.jpg', '4', '停销', '52.5万', '2013', '停产', '中型车', 'system', '2018-04-12 10:25:19', 'system', '2018-04-12 10:25:19');
INSERT INTO car_config VALUES ('3221', '3156', '234', '2013款 Coupe 40 TFSI风尚版', null, 'A', '3156.JPG', '4', '停销', '54.49万', '2013', '停产', '中型车', 'system', '2018-04-12 10:25:19', 'system', '2018-04-12 10:25:19');
INSERT INTO car_config VALUES ('3222', '3157', '234', '2013款 Cabriolet 40TFSI', null, 'A', '3157.jpg', '4', '停销', '59.8万', '2013', '停产', '中型车', 'system', '2018-04-12 10:25:19', 'system', '2018-04-12 10:25:19');
INSERT INTO car_config VALUES ('3223', '3168', '234', '2013款 Coupe 50 TFSI quattro风尚版', null, 'A', '3168.jpg', '4', '停销', '67.99万', '2013', '停产', '中型车', 'system', '2018-04-12 10:25:19', 'system', '2018-04-12 10:25:19');
INSERT INTO car_config VALUES ('3224', '3158', '234', '2013款 Cabriolet 40 TFSI风尚版', null, 'A', '3158.jpg', '4', '停销', '61.79万', '2013', '停产', '中型车', 'system', '2018-04-12 10:25:19', 'system', '2018-04-12 10:25:19');
INSERT INTO car_config VALUES ('3225', '3159', '234', '2013款 Coupe 40TFSI quattro', null, 'A', '3159.JPG', '4', '停销', '57.8万', '2013', '停产', '中型车', 'system', '2018-04-12 10:25:20', 'system', '2018-04-12 10:25:20');
INSERT INTO car_config VALUES ('3226', '3160', '234', '2013款 Sportback 40TFSI quattro', null, 'A', '3160.jpg', '4', '停销', '58.5万', '2013', '停产', '中型车', 'system', '2018-04-12 10:25:20', 'system', '2018-04-12 10:25:20');
INSERT INTO car_config VALUES ('3227', '3161', '234', '2013款 Coupe 40 TFSI quattro风尚版', null, 'A', '3161.JPG', '4', '停销', '59.79万', '2013', '停产', '中型车', 'system', '2018-04-12 10:25:20', 'system', '2018-04-12 10:25:20');
INSERT INTO car_config VALUES ('3228', '3162', '234', '2013款 Sportback 40 TFSI quattro风尚版', null, 'A', '3162.jpg', '4', '停销', '60.49万', '2013', '停产', '中型车', 'system', '2018-04-12 10:25:20', 'system', '2018-04-12 10:25:20');
INSERT INTO car_config VALUES ('3229', '3163', '234', '2013款 Cabriolet 40TFSI quattro', null, 'A', '3163.JPG', '4', '停销', '62.8万', '2013', '停产', '中型车', 'system', '2018-04-12 10:25:20', 'system', '2018-04-12 10:25:20');
INSERT INTO car_config VALUES ('3230', '3164', '234', '2013款 Cabriolet 40 TFSI quattro风尚版', null, 'A', '3164.jpg', '4', '停销', '64.79万', '2013', '停产', '中型车', 'system', '2018-04-12 10:25:20', 'system', '2018-04-12 10:25:20');
INSERT INTO car_config VALUES ('3231', '3165', '234', '2013款 Sportback 50TFSI quattro', null, 'A', '3165.jpg', '4', '停销', '63万', '2013', '停产', '中型车', 'system', '2018-04-12 10:25:20', 'system', '2018-04-12 10:25:20');
INSERT INTO car_config VALUES ('3232', '3167', '234', '2013款 Coupe 50TFSI quattro', null, 'A', '3167.jpg', '4', '停销', '66万', '2013', '停产', '中型车', 'system', '2018-04-12 10:25:20', 'system', '2018-04-12 10:25:20');
INSERT INTO car_config VALUES ('3233', '3166', '234', '2013款 Sportback 50 TFSI quattro风尚版', null, 'A', '3166.jpg', '4', '停销', '64.99万', '2013', '停产', '中型车', 'system', '2018-04-12 10:25:21', 'system', '2018-04-12 10:25:21');
INSERT INTO car_config VALUES ('3234', '3169', '234', '2012款 Sportback 2.0T CVT', null, 'A', '3169.jpg', '4', '停销', '49.98万', '2012', '停产', '中型车', 'system', '2018-04-12 10:25:21', 'system', '2018-04-12 10:25:21');
INSERT INTO car_config VALUES ('3235', '3170', '234', '2012款 Coupe 2.0T CVT', null, 'A', '3170.JPG', '4', '停销', '52.5万', '2012', '停产', '中型车', 'system', '2018-04-12 10:25:21', 'system', '2018-04-12 10:25:21');
INSERT INTO car_config VALUES ('3236', '3171', '234', '2012款 Cabriolet 2.0T', null, 'A', '3171.JPG', '4', '停销', '59.8万', '2012', '停产', '中型车', 'system', '2018-04-12 10:25:21', 'system', '2018-04-12 10:25:21');
INSERT INTO car_config VALUES ('3237', '3172', '234', '2012款 Coupe 2.0T 双离合 quattro', null, 'A', '3172.jpg', '4', '停销', '57.8万', '2012', '停产', '中型车', 'system', '2018-04-12 10:25:21', 'system', '2018-04-12 10:25:21');
INSERT INTO car_config VALUES ('3238', '3173', '234', '2012款 Sportback 2.0T 双离合 quattro', null, 'A', '3173.JPG', '4', '停销', '58.8万', '2012', '停产', '中型车', 'system', '2018-04-12 10:25:21', 'system', '2018-04-12 10:25:21');
INSERT INTO car_config VALUES ('3239', '3174', '234', '2012款 Cabriolet 2.0T quattro', null, 'A', '3174.jpg', '4', '停销', '62.8万', '2012', '停产', '中型车', 'system', '2018-04-12 10:25:21', 'system', '2018-04-12 10:25:21');
INSERT INTO car_config VALUES ('3240', '3175', '234', '2012款 Sportback 3.0T 双离合 quattro', null, 'A', '3175.JPG', '4', '停销', '63万', '2012', '停产', '中型车', 'system', '2018-04-12 10:25:21', 'system', '2018-04-12 10:25:21');
INSERT INTO car_config VALUES ('3241', '3176', '234', '2012款 Coupe 3.0T 双离合 quattro', null, 'A', '3176.JPG', '4', '停销', '66万', '2012', '停产', '中型车', 'system', '2018-04-12 10:25:22', 'system', '2018-04-12 10:25:22');
INSERT INTO car_config VALUES ('3242', '3177', '234', '2011款 Sportback 2.0T 舒适型 CVT无级变速', null, 'A', '3177.JPG', '4', '停销', '49.39万', '2011', '停产', '中型车', 'system', '2018-04-12 10:25:22', 'system', '2018-04-12 10:25:22');
INSERT INTO car_config VALUES ('3243', '3178', '234', '2011款 Coupe 2.0T CVT无级变速', null, 'A', '3178.JPG', '4', '停销', '52.5万', '2011', '停产', '中型车', 'system', '2018-04-12 10:25:22', 'system', '2018-04-12 10:25:22');
INSERT INTO car_config VALUES ('3244', '3179', '234', '2011款 Sportback 2.0T 技术型 CVT无级变速', null, 'A', '3179.JPG', '4', '停销', '52.8万', '2011', '停产', '中型车', 'system', '2018-04-12 10:25:22', 'system', '2018-04-12 10:25:22');
INSERT INTO car_config VALUES ('3245', '3180', '234', '2011款 Coupe 2.0T 风尚版 CVT无级变速', null, 'A', '3180.jpg', '4', '停销', '56.8万', '2011', '停产', '中型车', 'system', '2018-04-12 10:25:22', 'system', '2018-04-12 10:25:22');
INSERT INTO car_config VALUES ('3246', '3181', '234', '2011款 Sportback 2.0T 豪华型 CVT无级变速', null, 'A', '3181.jpg', '4', '停销', '57.8万', '2011', '停产', '中型车', 'system', '2018-04-12 10:25:22', 'system', '2018-04-12 10:25:22');
INSERT INTO car_config VALUES ('3247', '3182', '234', '2011款 Cabriolet 2.0T CVT无级变速', null, 'A', '3182.jpg', '4', '停销', '59.8万', '2011', '停产', '中型车', 'system', '2018-04-12 10:25:22', 'system', '2018-04-12 10:25:22');
INSERT INTO car_config VALUES ('3248', '3183', '234', '2011款 Coupe 3.2 quattro 手自一体', null, 'A', '3183.jpg', '4', '停销', '67万', '2011', '停产', '中型车', 'system', '2018-04-12 10:25:22', 'system', '2018-04-12 10:25:22');
INSERT INTO car_config VALUES ('3249', '3190', '234', '2010款 Coupe 3.2 quattro', null, 'A', '3190.JPG', '4', '停销', '67万', '2010', '停产', '中型车', 'system', '2018-04-12 10:25:23', 'system', '2018-04-12 10:25:23');
INSERT INTO car_config VALUES ('3250', '3189', '234', '2010款 Cabriolet 2.0T', null, 'A', '3189.JPG', '4', '停销', '59.8万', '2010', '停产', '中型车', 'system', '2018-04-12 10:25:23', 'system', '2018-04-12 10:25:23');
INSERT INTO car_config VALUES ('3251', '3188', '234', '2010款 Sportback 2.0T 豪华型', null, 'A', '3188.JPG', '4', '停销', '57.8万', '2010', '停产', '中型车', 'system', '2018-04-12 10:25:23', 'system', '2018-04-12 10:25:23');
INSERT INTO car_config VALUES ('3252', '3187', '234', '2010款 Coupe 2.0T 风尚版', null, 'A', '3187.JPG', '4', '停销', '56.8万', '2010', '停产', '中型车', 'system', '2018-04-12 10:25:23', 'system', '2018-04-12 10:25:23');
INSERT INTO car_config VALUES ('3253', '3186', '234', '2010款 Sportback 2.0T 技术型', null, 'A', '3186.JPG', '4', '停销', '52.8万', '2010', '停产', '中型车', 'system', '2018-04-12 10:25:23', 'system', '2018-04-12 10:25:23');
INSERT INTO car_config VALUES ('3254', '3185', '234', '2010款 Coupe 2.0T', null, 'A', '3185.jpg', '4', '停销', '52.5万', '2010', '停产', '中型车', 'system', '2018-04-12 10:25:23', 'system', '2018-04-12 10:25:23');
INSERT INTO car_config VALUES ('3255', '3184', '234', '2010款 Sportback 2.0T 舒适型', null, 'A', '3184.JPG', '4', '停销', '49.39万', '2010', '停产', '中型车', 'system', '2018-04-12 10:25:23', 'system', '2018-04-12 10:25:23');
INSERT INTO car_config VALUES ('3256', '3191', '234', '2008款 2.0T coupe', null, 'A', '3191.jpg', '4', '停销', '52.5万', '2008', '停产', '中型车', 'system', '2018-04-12 10:25:24', 'system', '2018-04-12 10:25:24');
INSERT INTO car_config VALUES ('3257', '3192', '234', '2008款 3.2 coupe quattro', null, 'A', '3192.jpg', '4', '停销', '67万', '2008', '停产', '中型车', 'system', '2018-04-12 10:25:24', 'system', '2018-04-12 10:25:24');
INSERT INTO car_config VALUES ('3258', '3193', '234', '2008款 3.2 coupe', null, 'A', '3193.jpg', '4', '停销', '64万', '2008', '停产', '中型车', 'system', '2018-04-12 10:25:24', 'system', '2018-04-12 10:25:24');
INSERT INTO car_config VALUES ('3259', '235', '228', 'A6', null, 'A', 'http://pic1.jisuapi.cn/car/static/images/logo/300/235.jpg', '3', '在销', null, null, null, null, 'system', '2018-04-12 10:25:24', 'system', '2018-04-12 10:25:24');
INSERT INTO car_config VALUES ('3260', '40208', '235', '2018款 3.0T allroad quattro', null, 'A', '40208.jpg', '4', '在销', '59.98万', '2018', '在产', '中大型车', 'system', '2018-04-12 10:25:24', 'system', '2018-04-12 10:25:24');
INSERT INTO car_config VALUES ('3261', '37181', '235', '2017款 Avant 2.0T 双离合 Sport时尚版', null, 'A', '37181.JPG', '4', '在销', '49.98万', '2017', '在产', '中大型车', 'system', '2018-04-12 10:25:24', 'system', '2018-04-12 10:25:24');
INSERT INTO car_config VALUES ('3262', '37180', '235', '2017款 Avant 1.8T 双离合 时尚版', null, 'A', '37180.jpg', '4', '在销', '45.98万', '2017', '在产', '中大型车', 'system', '2018-04-12 10:25:24', 'system', '2018-04-12 10:25:24');
INSERT INTO car_config VALUES ('3263', '34318', '235', '2017款 3.0T allroad quattro', null, 'A', '34318.jpg', '4', '在销', '59.98万', '2017', '停产', '中大型车', 'system', '2018-04-12 10:25:24', 'system', '2018-04-12 10:25:24');
INSERT INTO car_config VALUES ('3264', '3207', '235', '2015款 allroad quattro', null, 'A', '3207.JPG', '4', '停销', '59.98万', '2015', '停产', '中大型车', 'system', '2018-04-12 10:25:25', 'system', '2018-04-12 10:25:25');
INSERT INTO car_config VALUES ('3265', '3194', '235', '2013款 40 hybrid', null, 'A', '3194.jpg', '4', '停销', '63.8万', '2013', '停产', '中大型车', 'system', '2018-04-12 10:25:25', 'system', '2018-04-12 10:25:25');
INSERT INTO car_config VALUES ('3266', '3195', '235', '2007款 2.0T FSI基本型', null, 'A', '3195.jpg', '4', '停销', '34.72万', '2007', '停产', '中大型车', 'system', '2018-04-12 10:25:25', 'system', '2018-04-12 10:25:25');
INSERT INTO car_config VALUES ('3267', '3196', '235', '2007款 2.0T FSI标准型(手动)', null, 'A', '3196.jpg', '4', '停销', '37.25万', '2007', '停产', '中大型车', 'system', '2018-04-12 10:25:25', 'system', '2018-04-12 10:25:25');
INSERT INTO car_config VALUES ('3268', '3197', '235', '2007款 2.0T FSI标准型(自动)', null, 'A', '3197.jpg', '4', '停销', '39.8万', '2007', '停产', '中大型车', 'system', '2018-04-12 10:25:25', 'system', '2018-04-12 10:25:25');
INSERT INTO car_config VALUES ('3269', '3198', '235', '2007款 2.4 技术型', null, 'A', '3198.jpg', '4', '停销', '42.45万', '2007', '停产', '中大型车', 'system', '2018-04-12 10:25:25', 'system', '2018-04-12 10:25:25');
INSERT INTO car_config VALUES ('3270', '3204', '235', '2007款 3.2FSI quattro 豪华型', null, 'A', '3204.jpg', '4', '停销', '65.57万', '2007', '停产', '中大型车', 'system', '2018-04-12 10:25:25', 'system', '2018-04-12 10:25:25');
INSERT INTO car_config VALUES ('3271', '3203', '235', '2007款 3.2FSI quattro 舒适娱乐型', null, 'A', '3203.jpg', '4', '停销', '57.99万', '2007', '停产', '中大型车', 'system', '2018-04-12 10:25:25', 'system', '2018-04-12 10:25:25');
INSERT INTO car_config VALUES ('3272', '3202', '235', '2007款 2.8FSI 尊享型', null, 'A', '3202.jpg', '4', '停销', '60.68万', '2007', '停产', '中大型车', 'system', '2018-04-12 10:25:26', 'system', '2018-04-12 10:25:26');
INSERT INTO car_config VALUES ('3273', '3201', '235', '2007款 2.8FSI 舒适娱乐型', null, 'A', '3201.jpg', '4', '停销', '52.5万', '2007', '停产', '中大型车', 'system', '2018-04-12 10:25:26', 'system', '2018-04-12 10:25:26');
INSERT INTO car_config VALUES ('3274', '3200', '235', '2007款 2.4 尊贵型', null, 'A', '3200.jpg', '4', '停销', '52.61万', '2007', '停产', '中大型车', 'system', '2018-04-12 10:25:26', 'system', '2018-04-12 10:25:26');
INSERT INTO car_config VALUES ('3275', '3199', '235', '2007款 2.4 舒适型', null, 'A', '3199.jpg', '4', '停销', '46.88万', '2007', '停产', '中大型车', 'system', '2018-04-12 10:25:26', 'system', '2018-04-12 10:25:26');
INSERT INTO car_config VALUES ('3276', '3205', '235', '2003款 A6 3.0L', null, 'A', '3205.jpg', '4', '停销', '45.28万', '2003', '停产', '中大型车', 'system', '2018-04-12 10:25:26', 'system', '2018-04-12 10:25:26');
INSERT INTO car_config VALUES ('3277', '37182', '235', '2003款 Allroad 2.7T quattro', null, 'A', '37182.jpg', '4', '停销', '82万', '2003', '停产', '中大型车', 'system', '2018-04-12 10:25:26', 'system', '2018-04-12 10:25:26');
INSERT INTO car_config VALUES ('3278', '37183', '235', '2002款 2.4 Quattro 5AT 四轮驱动', null, 'A', '37183.jpg', '4', '停销', '暂无', '2002', '停产', '中大型车', 'system', '2018-04-12 10:25:26', 'system', '2018-04-12 10:25:26');
INSERT INTO car_config VALUES ('3279', '37184', '235', '2002款 3.0 Quattro 5AT 四轮驱动', null, 'A', '37184.jpg', '4', '停销', '暂无', '2002', '停产', '中大型车', 'system', '2018-04-12 10:25:26', 'system', '2018-04-12 10:25:26');
INSERT INTO car_config VALUES ('3280', '37185', '235', '2002款 Allroad4.2Lquattro', null, 'A', '37185.jpg', '4', '停销', '120万', '2002', '停产', '中大型车', 'system', '2018-04-12 10:25:27', 'system', '2018-04-12 10:25:27');
INSERT INTO car_config VALUES ('3281', '3206', '235', '2000款 2.8L  手动', null, 'A', '3206.jpg', '4', '停销', '40.58万', '2000', '停产', '中大型车', 'system', '2018-04-12 10:25:27', 'system', '2018-04-12 10:25:27');
INSERT INTO car_config VALUES ('3282', '237', '228', 'A7', null, 'A', 'http://pic1.jisuapi.cn/car/static/images/logo/300/237.jpg', '3', '在销', null, null, null, null, 'system', '2018-04-12 10:25:27', 'system', '2018-04-12 10:25:27');
INSERT INTO car_config VALUES ('3283', '40213', '237', '2018款 50 TFSI quattro 动感版', null, 'A', '40213.jpg', '4', '在销', '89.8万', '2018', '在产', '中大型车', 'system', '2018-04-12 10:25:27', 'system', '2018-04-12 10:25:27');
INSERT INTO car_config VALUES ('3284', '40212', '237', '2018款 50 TFSI quattro 舒适版', null, 'A', '40212.jpg', '4', '在销', '81.8万', '2018', '在产', '中大型车', 'system', '2018-04-12 10:25:27', 'system', '2018-04-12 10:25:27');
INSERT INTO car_config VALUES ('3285', '40211', '237', '2018款 40 TFSI quattro 技术版', null, 'A', '40211.jpg', '4', '在销', '70.8万', '2018', '在产', '中大型车', 'system', '2018-04-12 10:25:27', 'system', '2018-04-12 10:25:27');
INSERT INTO car_config VALUES ('3286', '40210', '237', '2018款 40 TFSI 进取版', null, 'A', '40210.jpg', '4', '在销', '65.8万', '2018', '在产', '中大型车', 'system', '2018-04-12 10:25:27', 'system', '2018-04-12 10:25:27');
INSERT INTO car_config VALUES ('3287', '40209', '237', '2018款 35 TFSI 时尚版', null, 'A', '40209.jpg', '4', '在销', '59.8万', '2018', '在产', '中大型车', 'system', '2018-04-12 10:25:27', 'system', '2018-04-12 10:25:27');
INSERT INTO car_config VALUES ('3288', '34323', '237', '2017款 50 TFSI quattro 动感版', null, 'A', '34323.jpg', '4', '在销', '89.8万', '2017', '停产', '中大型车', 'system', '2018-04-12 10:25:27', 'system', '2018-04-12 10:25:27');
INSERT INTO car_config VALUES ('3289', '34322', '237', '2017款 50 TFSI quattro 舒适版', null, 'A', '34322.jpg', '4', '在销', '81.8万', '2017', '停产', '中大型车', 'system', '2018-04-12 10:25:28', 'system', '2018-04-12 10:25:28');
INSERT INTO car_config VALUES ('3290', '34321', '237', '2017款 40 TFSI quattro 技术版', null, 'A', '34321.jpg', '4', '在销', '70.8万', '2017', '停产', '中大型车', 'system', '2018-04-12 10:25:28', 'system', '2018-04-12 10:25:28');
INSERT INTO car_config VALUES ('3291', '34320', '237', '2017款 40 TFSI 进取版', null, 'A', '34320.jpg', '4', '在销', '65.8万', '2017', '停产', '中大型车', 'system', '2018-04-12 10:25:28', 'system', '2018-04-12 10:25:28');
INSERT INTO car_config VALUES ('3292', '34319', '237', '2017款 35 TFSI 时尚版', null, 'A', '34319.jpg', '4', '在销', '59.8万', '2017', '停产', '中大型车', 'system', '2018-04-12 10:25:28', 'system', '2018-04-12 10:25:28');
INSERT INTO car_config VALUES ('3293', '3208', '237', '2016款 35 TFSI 时尚型', null, 'A', '3208.jpg', '4', '停销', '59.8万', '2016', '停产', '中大型车', 'system', '2018-04-12 10:25:28', 'system', '2018-04-12 10:25:28');
INSERT INTO car_config VALUES ('3294', '3209', '237', '2016款 40 TFSI 进取型', null, 'A', '3209.jpg', '4', '停销', '65.8万', '2016', '停产', '中大型车', 'system', '2018-04-12 10:25:28', 'system', '2018-04-12 10:25:28');
INSERT INTO car_config VALUES ('3295', '3210', '237', '2016款 40 TFSI quattro 技术型', null, 'A', '3210.jpg', '4', '停销', '70.8万', '2016', '停产', '中大型车', 'system', '2018-04-12 10:25:28', 'system', '2018-04-12 10:25:28');
INSERT INTO car_config VALUES ('3296', '3211', '237', '2016款 50 TFSI quattro 舒适型', null, 'A', '3211.jpg', '4', '停销', '81.8万', '2016', '停产', '中大型车', 'system', '2018-04-12 10:25:28', 'system', '2018-04-12 10:25:28');
INSERT INTO car_config VALUES ('3297', '3212', '237', '2016款 50 TFSI quattro 动感型', null, 'A', '3212.jpg', '4', '停销', '93.8万', '2016', '停产', '中大型车', 'system', '2018-04-12 10:25:29', 'system', '2018-04-12 10:25:29');
INSERT INTO car_config VALUES ('3298', '3213', '237', '2014款 30 FSI 时尚型', null, 'A', '3213.jpg', '4', '停销', '62.8万', '2014', '停产', '中大型车', 'system', '2018-04-12 10:25:29', 'system', '2018-04-12 10:25:29');
INSERT INTO car_config VALUES ('3299', '3214', '237', '2014款 30 FSI 进取型', null, 'A', '3214.jpg', '4', '停销', '69.8万', '2014', '停产', '中大型车', 'system', '2018-04-12 10:25:29', 'system', '2018-04-12 10:25:29');
INSERT INTO car_config VALUES ('3300', '3215', '237', '2014款 35 FSI quattro 技术型', null, 'A', '3215.jpg', '4', '停销', '72.8万', '2014', '停产', '中大型车', 'system', '2018-04-12 10:25:29', 'system', '2018-04-12 10:25:29');
INSERT INTO car_config VALUES ('3301', '3216', '237', '2014款 50 TFSI quattro 舒适型', null, 'A', '3216.jpg', '4', '停销', '82.8万', '2014', '停产', '中大型车', 'system', '2018-04-12 10:25:29', 'system', '2018-04-12 10:25:29');
INSERT INTO car_config VALUES ('3302', '3217', '237', '2014款 50 TFSI quattro 豪华型', null, 'A', '3217.jpg', '4', '停销', '95.8万', '2014', '停产', '中大型车', 'system', '2018-04-12 10:25:29', 'system', '2018-04-12 10:25:29');
INSERT INTO car_config VALUES ('3303', '3221', '237', '2013款 50 TFSI quattro 豪华型', null, 'A', '3221.JPG', '4', '停销', '95.8万', '2013', '停产', '中大型车', 'system', '2018-04-12 10:25:29', 'system', '2018-04-12 10:25:29');
INSERT INTO car_config VALUES ('3304', '3220', '237', '2013款 50 TFSI quattro 舒适型', null, 'A', '3220.jpg', '4', '停销', '81.8万', '2013', '停产', '中大型车', 'system', '2018-04-12 10:25:29', 'system', '2018-04-12 10:25:29');
INSERT INTO car_config VALUES ('3305', '3219', '237', '2013款 35 FSI quattro 进取型', null, 'A', '3219.jpg', '4', '停销', '72.8万', '2013', '停产', '中大型车', 'system', '2018-04-12 10:25:30', 'system', '2018-04-12 10:25:30');
INSERT INTO car_config VALUES ('3306', '3218', '237', '2013款 30 FSI 标准型', null, 'A', '3218.jpg', '4', '停销', '69.8万', '2013', '停产', '中大型车', 'system', '2018-04-12 10:25:30', 'system', '2018-04-12 10:25:30');
INSERT INTO car_config VALUES ('3307', '3224', '237', '2011款 3.0 自动 豪华型', null, 'A', '3224.jpg', '4', '停销', '95.8万', '2011', '停产', '中大型车', 'system', '2018-04-12 10:25:30', 'system', '2018-04-12 10:25:30');
INSERT INTO car_config VALUES ('3308', '3223', '237', '2011款 3.0 自动 舒适型', null, 'A', '3223.jpg', '4', '停销', '81.8万', '2011', '停产', '中大型车', 'system', '2018-04-12 10:25:30', 'system', '2018-04-12 10:25:30');
INSERT INTO car_config VALUES ('3309', '3222', '237', '2011款 2.8 自动 进取型', null, 'A', '3222.jpg', '4', '停销', '72.8万', '2011', '停产', '中大型车', 'system', '2018-04-12 10:25:30', 'system', '2018-04-12 10:25:30');
INSERT INTO car_config VALUES ('3310', '238', '228', 'A8L', null, 'A', 'http://pic1.jisuapi.cn/car/static/images/logo/300/238.png', '3', '在销', null, null, null, null, 'system', '2018-04-12 10:25:30', 'system', '2018-04-12 10:25:30');
INSERT INTO car_config VALUES ('3311', '43519', '238', '2018款 55 TFSI quattro 尊贵版', null, 'A', '', '4', '待销', '132万', '2018', '待产', '豪华车', 'system', '2018-04-12 10:25:30', 'system', '2018-04-12 10:25:30');
INSERT INTO car_config VALUES ('3312', '43518', '238', '2018款 55 TFSI quattro 豪华版', null, 'A', '', '4', '待销', '116万', '2018', '待产', '豪华车', 'system', '2018-04-12 10:25:30', 'system', '2018-04-12 10:25:30');
INSERT INTO car_config VALUES ('3313', '43517', '238', '2018款 55 TFSI quattro 尊享版', null, 'A', '', '4', '待销', '101万', '2018', '待产', '豪华车', 'system', '2018-04-12 10:25:31', 'system', '2018-04-12 10:25:31');
INSERT INTO car_config VALUES ('3314', '41984', '238', '2018款 50 TFSI quattro 都市尊荣典藏版', null, 'A', '41984.jpg', '4', '在销', '118.88万', '2018', '停产', '豪华车', 'system', '2018-04-12 10:25:31', 'system', '2018-04-12 10:25:31');
INSERT INTO car_config VALUES ('3315', '41983', '238', '2018款 45 TFSI quattro 领先精英典藏版', null, 'A', '41983.jpg', '4', '在销', '102.88万', '2018', '停产', '豪华车', 'system', '2018-04-12 10:25:31', 'system', '2018-04-12 10:25:31');
INSERT INTO car_config VALUES ('3316', '41982', '238', '2018款 45 TFSI quattro 卓越先锋典藏版', null, 'A', '41982.jpg', '4', '在销', '92.78万', '2018', '停产', '豪华车', 'system', '2018-04-12 10:25:31', 'system', '2018-04-12 10:25:31');
INSERT INTO car_config VALUES ('3317', '41393', '238', '2018款 55 TFSI quattro 精英版', null, 'A', '41393.jpg', '4', '待销', '95万', '2018', '待产', '豪华车', 'system', '2018-04-12 10:25:31', 'system', '2018-04-12 10:25:31');
INSERT INTO car_config VALUES ('3318', '34086', '238', '2017款 45 TFSI quattro 舒适版', null, 'A', '34086.jpg', '4', '在销', '92.68万', '2017', '停产', '豪华车', 'system', '2018-04-12 10:25:31', 'system', '2018-04-12 10:25:31');
INSERT INTO car_config VALUES ('3319', '34087', '238', '2017款 45 TFSI quattro 豪华版', null, 'A', '34087.jpg', '4', '在销', '102.2万', '2017', '停产', '豪华车', 'system', '2018-04-12 10:25:31', 'system', '2018-04-12 10:25:31');
INSERT INTO car_config VALUES ('3320', '34089', '238', '2017款 50 TFSI quattro 豪华版', null, 'A', '34089.jpg', '4', '在销', '118.8万', '2017', '停产', '豪华车', 'system', '2018-04-12 10:25:32', 'system', '2018-04-12 10:25:32');
INSERT INTO car_config VALUES ('3321', '34090', '238', '2017款 50 TFSI quattro 尊贵版', null, 'A', '34090.jpg', '4', '在销', '138.2万', '2017', '停产', '豪华车', 'system', '2018-04-12 10:25:32', 'system', '2018-04-12 10:25:32');
INSERT INTO car_config VALUES ('3322', '34091', '238', '2017款 60 TFSI quattro 豪华版', null, 'A', '34091.jpg', '4', '在销', '184.8万', '2017', '停产', '豪华车', 'system', '2018-04-12 10:25:32', 'system', '2018-04-12 10:25:32');
INSERT INTO car_config VALUES ('3323', '34092', '238', '2017款 6.3 FSI W12 quattro 旗舰版', null, 'A', '34092.jpg', '4', '在销', '256.8万', '2017', '停产', '豪华车', 'system', '2018-04-12 10:25:32', 'system', '2018-04-12 10:25:32');
INSERT INTO car_config VALUES ('3324', '34093', '238', '2017款 40 TFSI 舒适版', null, 'A', '34093.jpg', '4', '在销', '87.98万', '2017', '停产', '豪华车', 'system', '2018-04-12 10:25:32', 'system', '2018-04-12 10:25:32');
INSERT INTO car_config VALUES ('3325', '37186', '238', '2017款 45 TFSI quattro 卓越先锋版', null, 'A', '37186.jpg', '4', '在销', '92.78万', '2017', '停产', '豪华车', 'system', '2018-04-12 10:25:32', 'system', '2018-04-12 10:25:32');
INSERT INTO car_config VALUES ('3326', '37187', '238', '2017款 45 TFSI quattro 领先精英版', null, 'A', '37187.jpg', '4', '在销', '102.88万', '2017', '停产', '豪华车', 'system', '2018-04-12 10:25:32', 'system', '2018-04-12 10:25:32');
INSERT INTO car_config VALUES ('3327', '3249', '238', '2016款 6.3 FSI W12 quattro 专享型', null, 'A', '3249.jpg', '4', '停销', '271.5万', '2016', '停产', '豪华车', 'system', '2018-04-12 10:25:32', 'system', '2018-04-12 10:25:32');
INSERT INTO car_config VALUES ('3328', '3248', '238', '2016款 6.3 FSI W12 quattro 旗舰型', null, 'A', '3248.jpg', '4', '停销', '256.8万', '2016', '停产', '豪华车', 'system', '2018-04-12 10:25:33', 'system', '2018-04-12 10:25:33');
INSERT INTO car_config VALUES ('3329', '3227', '238', '2016款 40 hybrid', null, 'A', '3227.jpg', '4', '停销', '109.8万', '2016', '停产', '豪华车', 'system', '2018-04-12 10:25:33', 'system', '2018-04-12 10:25:33');
INSERT INTO car_config VALUES ('3330', '3229', '238', '2016款 30 FSI 舒适型', null, 'A', '3229.jpg', '4', '停销', '87.98万', '2016', '停产', '豪华车', 'system', '2018-04-12 10:25:33', 'system', '2018-04-12 10:25:33');
INSERT INTO car_config VALUES ('3331', '3231', '238', '2016款 45 TFSI 时尚型', null, 'A', '3231.jpg', '4', '停销', '89.88万', '2016', '停产', '豪华车', 'system', '2018-04-12 10:25:33', 'system', '2018-04-12 10:25:33');
INSERT INTO car_config VALUES ('3332', '3232', '238', '2016款 45 TFSI quattro 舒适型', null, 'A', '3232.jpg', '4', '停销', '92.68万', '2016', '停产', '豪华车', 'system', '2018-04-12 10:25:33', 'system', '2018-04-12 10:25:33');
INSERT INTO car_config VALUES ('3333', '3233', '238', '2016款 45 TFSI quattro 豪华型', null, 'A', '3233.jpg', '4', '停销', '102.2万', '2016', '停产', '豪华车', 'system', '2018-04-12 10:25:33', 'system', '2018-04-12 10:25:33');
INSERT INTO car_config VALUES ('3334', '3234', '238', '2016款 45 TFSI quattro 专享型', null, 'A', '3234.jpg', '4', '停销', '111.9万', '2016', '停产', '豪华车', 'system', '2018-04-12 10:25:33', 'system', '2018-04-12 10:25:33');
INSERT INTO car_config VALUES ('3335', '3238', '238', '2016款 50 TFSI quattro 豪华型', null, 'A', '3238.jpg', '4', '停销', '122.2万', '2016', '停产', '豪华车', 'system', '2018-04-12 10:25:33', 'system', '2018-04-12 10:25:33');
INSERT INTO car_config VALUES ('3336', '3239', '238', '2016款 50 TFSI quattro 尊贵型', null, 'A', '3239.jpg', '4', '停销', '138.2万', '2016', '停产', '豪华车', 'system', '2018-04-12 10:25:34', 'system', '2018-04-12 10:25:34');
INSERT INTO car_config VALUES ('3337', '3240', '238', '2016款 50 TFSI quattro 专享型', null, 'A', '3240.jpg', '4', '停销', '148.2万', '2016', '停产', '豪华车', 'system', '2018-04-12 10:25:34', 'system', '2018-04-12 10:25:34');
INSERT INTO car_config VALUES ('3338', '3245', '238', '2016款 60 TFSI quattro 专享型', null, 'A', '3245.jpg', '4', '停销', '194.5万', '2016', '停产', '豪华车', 'system', '2018-04-12 10:25:34', 'system', '2018-04-12 10:25:34');
INSERT INTO car_config VALUES ('3339', '3244', '238', '2016款 60 TFSI quattro 豪华型', null, 'A', '3244.jpg', '4', '停销', '184.8万', '2016', '停产', '豪华车', 'system', '2018-04-12 10:25:34', 'system', '2018-04-12 10:25:34');
INSERT INTO car_config VALUES ('3340', '3228', '238', '2014款 40 hybrid', null, 'A', '3228.jpg', '4', '停销', '109.8万', '2014', '停产', '豪华车', 'system', '2018-04-12 10:25:34', 'system', '2018-04-12 10:25:34');
INSERT INTO car_config VALUES ('3341', '3246', '238', '2014款 60 TFSI quattro 豪华型', null, 'A', '3246.JPG', '4', '停销', '184.8万', '2014', '停产', '豪华车', 'system', '2018-04-12 10:25:34', 'system', '2018-04-12 10:25:34');
INSERT INTO car_config VALUES ('3342', '3230', '238', '2014款 30 FSI 舒适型', null, 'A', '3230.jpg', '4', '停销', '87.98万', '2014', '停产', '豪华车', 'system', '2018-04-12 10:25:34', 'system', '2018-04-12 10:25:34');
INSERT INTO car_config VALUES ('3343', '3247', '238', '2014款 60 TFSI quattro 专享型', null, 'A', '3247.jpg', '4', '停销', '196.5万', '2014', '停产', '豪华车', 'system', '2018-04-12 10:25:34', 'system', '2018-04-12 10:25:34');
INSERT INTO car_config VALUES ('3344', '3243', '238', '2014款 50 TFSI quattro 专享型', null, 'A', '3243.jpg', '4', '停销', '150.2万', '2014', '停产', '豪华车', 'system', '2018-04-12 10:25:35', 'system', '2018-04-12 10:25:35');
INSERT INTO car_config VALUES ('3345', '3250', '238', '2014款 6.3 FSI W12 quattro 旗舰型', null, 'A', '3250.JPG', '4', '停销', '256.8万', '2014', '停产', '豪华车', 'system', '2018-04-12 10:25:35', 'system', '2018-04-12 10:25:35');
INSERT INTO car_config VALUES ('3346', '3235', '238', '2014款 45 TFSI quattro 舒适型', null, 'A', '3235.jpg', '4', '停销', '92.68万', '2014', '停产', '豪华车', 'system', '2018-04-12 10:25:35', 'system', '2018-04-12 10:25:35');
INSERT INTO car_config VALUES ('3347', '3236', '238', '2014款 45 TFSI quattro 豪华型', null, 'A', '3236.jpg', '4', '停销', '102.2万', '2014', '停产', '豪华车', 'system', '2018-04-12 10:25:35', 'system', '2018-04-12 10:25:35');
INSERT INTO car_config VALUES ('3348', '3237', '238', '2014款 45 TFSI quattro 专享型', null, 'A', '3237.jpg', '4', '停销', '113.9万', '2014', '停产', '豪华车', 'system', '2018-04-12 10:25:35', 'system', '2018-04-12 10:25:35');
INSERT INTO car_config VALUES ('3349', '3251', '238', '2014款 6.3 FSI W12 quattro 专享型', null, 'A', '3251.JPG', '4', '停销', '271.5万', '2014', '停产', '豪华车', 'system', '2018-04-12 10:25:35', 'system', '2018-04-12 10:25:35');
INSERT INTO car_config VALUES ('3350', '3241', '238', '2014款 50 TFSI quattro 豪华型', null, 'A', '3241.JPG', '4', '停销', '122.2万', '2014', '停产', '豪华车', 'system', '2018-04-12 10:25:35', 'system', '2018-04-12 10:25:35');
INSERT INTO car_config VALUES ('3351', '3242', '238', '2014款 50 TFSI quattro 尊贵型', null, 'A', '3242.JPG', '4', '停销', '138.2万', '2014', '停产', '豪华车', 'system', '2018-04-12 10:25:35', 'system', '2018-04-12 10:25:35');
INSERT INTO car_config VALUES ('3352', '3252', '238', '2013款 40 hybrid', null, 'A', '3252.JPG', '4', '停销', '109万', '2013', '停产', '豪华车', 'system', '2018-04-12 10:25:35', 'system', '2018-04-12 10:25:35');
INSERT INTO car_config VALUES ('3353', '3253', '238', '2013款 30 FSI 舒适型', null, 'A', '3253.jpg', '4', '停销', '87.1万', '2013', '停产', '豪华车', 'system', '2018-04-12 10:25:36', 'system', '2018-04-12 10:25:36');
INSERT INTO car_config VALUES ('3354', '3254', '238', '2013款 30 FSI 专享型', null, 'A', '3254.JPG', '4', '停销', '98.1万', '2013', '停产', '豪华车', 'system', '2018-04-12 10:25:36', 'system', '2018-04-12 10:25:36');
INSERT INTO car_config VALUES ('3355', '3255', '238', '2013款 45 TFSI quattro舒适型', null, 'A', '3255.jpg', '4', '停销', '93.1万', '2013', '停产', '豪华车', 'system', '2018-04-12 10:25:36', 'system', '2018-04-12 10:25:36');
INSERT INTO car_config VALUES ('3356', '3256', '238', '2013款 45 TFSI quattro豪华型', null, 'A', '3256.JPG', '4', '停销', '100.1万', '2013', '停产', '豪华车', 'system', '2018-04-12 10:25:36', 'system', '2018-04-12 10:25:36');
INSERT INTO car_config VALUES ('3357', '3257', '238', '2013款 45 TFSI quattro专享型', null, 'A', '3257.JPG', '4', '停销', '110.8万', '2013', '停产', '豪华车', 'system', '2018-04-12 10:25:36', 'system', '2018-04-12 10:25:36');
INSERT INTO car_config VALUES ('3358', '3258', '238', '2013款 50 TFSI quattro舒适型', null, 'A', '3258.JPG', '4', '停销', '116.8万', '2013', '停产', '豪华车', 'system', '2018-04-12 10:25:36', 'system', '2018-04-12 10:25:36');
INSERT INTO car_config VALUES ('3359', '3259', '238', '2013款 50 TFSI quattro豪华型', null, 'A', '3259.jpg', '4', '停销', '122.8万', '2013', '停产', '豪华车', 'system', '2018-04-12 10:25:36', 'system', '2018-04-12 10:25:36');
INSERT INTO car_config VALUES ('3360', '3260', '238', '2013款 50 TFSI quattro尊贵型', null, 'A', '3260.jpg', '4', '停销', '136.5万', '2013', '停产', '豪华车', 'system', '2018-04-12 10:25:36', 'system', '2018-04-12 10:25:36');
INSERT INTO car_config VALUES ('3361', '3261', '238', '2013款 50 TFSI quattro专享型', null, 'A', '3261.JPG', '4', '停销', '147.5万', '2013', '停产', '豪华车', 'system', '2018-04-12 10:25:37', 'system', '2018-04-12 10:25:37');
INSERT INTO car_config VALUES ('3362', '3262', '238', '2013款 55 TFSI quattro豪华型', null, 'A', '3262.jpg', '4', '停销', '179.1万', '2013', '停产', '豪华车', 'system', '2018-04-12 10:25:37', 'system', '2018-04-12 10:25:37');
INSERT INTO car_config VALUES ('3363', '3263', '238', '2013款 55 TFSI quattro尊贵型', null, 'A', '3263.JPG', '4', '停销', '193.1万', '2013', '停产', '豪华车', 'system', '2018-04-12 10:25:37', 'system', '2018-04-12 10:25:37');
INSERT INTO car_config VALUES ('3364', '3264', '238', '2013款 55 TFSI quattro专享型', null, 'A', '3264.JPG', '4', '停销', '204.8万', '2013', '停产', '豪华车', 'system', '2018-04-12 10:25:37', 'system', '2018-04-12 10:25:37');
INSERT INTO car_config VALUES ('3365', '3265', '238', '2013款 6.3FSI W12 quattro旗舰型', null, 'A', '3265.jpg', '4', '停销', '250.1万', '2013', '停产', '豪华车', 'system', '2018-04-12 10:25:37', 'system', '2018-04-12 10:25:37');
INSERT INTO car_config VALUES ('3366', '3266', '238', '2013款 6.3FSI W12 quattro专享型', null, 'A', '3266.JPG', '4', '停销', '264.8万', '2013', '停产', '豪华车', 'system', '2018-04-12 10:25:37', 'system', '2018-04-12 10:25:37');
INSERT INTO car_config VALUES ('3367', '3267', '238', '2012款 45 TFSI quattro 舒适型', null, 'A', '3267.jpg', '4', '停销', '93.1万', '2012', '停产', '豪华车', 'system', '2018-04-12 10:25:37', 'system', '2018-04-12 10:25:37');
INSERT INTO car_config VALUES ('3368', '3268', '238', '2012款 45 TFSI quattro 豪华型', null, 'A', '3268.jpg', '4', '停销', '100.1万', '2012', '停产', '豪华车', 'system', '2018-04-12 10:25:38', 'system', '2018-04-12 10:25:38');
INSERT INTO car_config VALUES ('3369', '3269', '238', '2012款 45 TFSI quattro 专享型', null, 'A', '3269.JPG', '4', '停销', '110.8万', '2012', '停产', '豪华车', 'system', '2018-04-12 10:25:38', 'system', '2018-04-12 10:25:38');
INSERT INTO car_config VALUES ('3370', '3270', '238', '2012款 50 TFSI quattro 舒适型', null, 'A', '3270.JPG', '4', '停销', '116.8万', '2012', '停产', '豪华车', 'system', '2018-04-12 10:25:38', 'system', '2018-04-12 10:25:38');
INSERT INTO car_config VALUES ('3371', '3271', '238', '2012款 50 TFSI quattro 豪华型', null, 'A', '3271.JPG', '4', '停销', '122.8万', '2012', '停产', '豪华车', 'system', '2018-04-12 10:25:38', 'system', '2018-04-12 10:25:38');
INSERT INTO car_config VALUES ('3372', '3272', '238', '2012款 50 TFSI quattro 尊贵型', null, 'A', '3272.jpg', '4', '停销', '136.5万', '2012', '停产', '豪华车', 'system', '2018-04-12 10:25:38', 'system', '2018-04-12 10:25:38');
INSERT INTO car_config VALUES ('3373', '3273', '238', '2012款 6.3 FSI W12 quattro 旗舰型', null, 'A', '3273.JPG', '4', '停销', '250.1万', '2012', '停产', '豪华车', 'system', '2018-04-12 10:25:38', 'system', '2018-04-12 10:25:38');
INSERT INTO car_config VALUES ('3374', '3274', '238', '2011款 3.0 TFSI quattro 舒适型(213kW)', null, 'A', '3274.jpg', '4', '停销', '92.8万', '2011', '停产', '豪华车', 'system', '2018-04-12 10:25:38', 'system', '2018-04-12 10:25:38');
INSERT INTO car_config VALUES ('3375', '3275', '238', '2011款 3.0 TFSI quattro 豪华型(213KW)', null, 'A', '3275.JPG', '4', '停销', '99.8万', '2011', '停产', '豪华车', 'system', '2018-04-12 10:25:38', 'system', '2018-04-12 10:25:38');
INSERT INTO car_config VALUES ('3376', '3276', '238', '2011款 3.0 TFSI quattro 舒适型(245kW)', null, 'A', '3276.jpg', '4', '停销', '116.5万', '2011', '停产', '豪华车', 'system', '2018-04-12 10:25:39', 'system', '2018-04-12 10:25:39');
INSERT INTO car_config VALUES ('3377', '3277', '238', '2011款 3.0 TFSI quattro 豪华型(245kW)', null, 'A', '3277.jpg', '4', '停销', '122.5万', '2011', '停产', '豪华车', 'system', '2018-04-12 10:25:39', 'system', '2018-04-12 10:25:39');
INSERT INTO car_config VALUES ('3378', '3278', '238', '2011款 3.0 TFSI high quattro 尊贵型(245kW)', null, 'A', '3278.jpg', '4', '停销', '136.2万', '2011', '停产', '豪华车', 'system', '2018-04-12 10:25:39', 'system', '2018-04-12 10:25:39');
INSERT INTO car_config VALUES ('3379', '3279', '238', '2011款 6.3 FSI W12 quattro 旗舰型', null, 'A', '3279.JPG', '4', '停销', '249.8万', '2011', '停产', '豪华车', 'system', '2018-04-12 10:25:39', 'system', '2018-04-12 10:25:39');
INSERT INTO car_config VALUES ('3380', '3280', '238', '2010款 2.8 FSI 标准型', null, 'A', '3280.jpg', '4', '停销', '85.8万', '2010', '停产', '豪华车', 'system', '2018-04-12 10:25:39', 'system', '2018-04-12 10:25:39');
INSERT INTO car_config VALUES ('3381', '3281', '238', '2010款 百年纪念版 3.0 FSI', null, 'A', '3281.jpg', '4', '停销', '105.8万', '2010', '停产', '豪华车', 'system', '2018-04-12 10:25:39', 'system', '2018-04-12 10:25:39');
INSERT INTO car_config VALUES ('3382', '3282', '238', '2010款 3.0 FSI 标准型', null, 'A', '3282.jpg', '4', '停销', '92.8万', '2010', '停产', '豪华车', 'system', '2018-04-12 10:25:39', 'system', '2018-04-12 10:25:39');
INSERT INTO car_config VALUES ('3383', '3283', '238', '2010款 3.0 FSI 豪华型', null, 'A', '3283.jpg', '4', '停销', '95.8万', '2010', '停产', '豪华车', 'system', '2018-04-12 10:25:39', 'system', '2018-04-12 10:25:39');
INSERT INTO car_config VALUES ('3384', '3284', '238', '2010款 3.0 FSI 尊贵型', null, 'A', '3284.jpg', '4', '停销', '99.8万', '2010', '停产', '豪华车', 'system', '2018-04-12 10:25:40', 'system', '2018-04-12 10:25:40');
INSERT INTO car_config VALUES ('3385', '3285', '238', '2010款 4.2 FSI quattro 尊贵型', null, 'A', '3285.jpg', '4', '停销', '168万', '2010', '停产', '豪华车', 'system', '2018-04-12 10:25:40', 'system', '2018-04-12 10:25:40');
INSERT INTO car_config VALUES ('3386', '3286', '238', '2010款 6.0 W12 quattro 旗舰型', null, 'A', '3286.jpg', '4', '停销', '249.8万', '2010', '停产', '豪华车', 'system', '2018-04-12 10:25:40', 'system', '2018-04-12 10:25:40');
INSERT INTO car_config VALUES ('3387', '3287', '238', '2010款 百年纪念版 6.0 W12 quattro', null, 'A', '3287.jpg', '4', '停销', '254万', '2010', '停产', '豪华车', 'system', '2018-04-12 10:25:40', 'system', '2018-04-12 10:25:40');
INSERT INTO car_config VALUES ('3388', '3288', '238', '2010款 6.0 W12 quattro 专享尊崇型', null, 'A', '3288.jpg', '4', '停销', '291.9万', '2010', '停产', '豪华车', 'system', '2018-04-12 10:25:40', 'system', '2018-04-12 10:25:40');
INSERT INTO car_config VALUES ('3389', '3289', '238', '2009款 3.0 FSI 标准型', null, 'A', '3289.jpg', '4', '停销', '92.8万', '2009', '停产', '豪华车', 'system', '2018-04-12 10:25:40', 'system', '2018-04-12 10:25:40');
INSERT INTO car_config VALUES ('3390', '3290', '238', '2009款 3.0 FSI 豪华型', null, 'A', '3290.jpg', '4', '停销', '95.8万', '2009', '停产', '豪华车', 'system', '2018-04-12 10:25:40', 'system', '2018-04-12 10:25:40');
INSERT INTO car_config VALUES ('3391', '3291', '238', '2009款 3.0 FSI 尊贵型', null, 'A', '3291.jpg', '4', '停销', '99.8万', '2009', '停产', '豪华车', 'system', '2018-04-12 10:25:40', 'system', '2018-04-12 10:25:40');
INSERT INTO car_config VALUES ('3392', '3292', '238', '2008款 2.8FSI 标准型', null, 'A', '3292.jpg', '4', '停销', '85.8万', '2008', '停产', '豪华车', 'system', '2018-04-12 10:25:41', 'system', '2018-04-12 10:25:41');
INSERT INTO car_config VALUES ('3393', '3293', '238', '2008款 2.8FSI 豪华型', null, 'A', '3293.jpg', '4', '停销', '89.8万', '2008', '停产', '豪华车', 'system', '2018-04-12 10:25:41', 'system', '2018-04-12 10:25:41');
INSERT INTO car_config VALUES ('3394', '3294', '238', '2008款 3.2 FSI尊贵型', null, 'A', '3294.jpg', '4', '停销', '114.5万', '2008', '停产', '豪华车', 'system', '2018-04-12 10:25:41', 'system', '2018-04-12 10:25:41');
INSERT INTO car_config VALUES ('3395', '3295', '238', '2008款 3.2FSI 标准型', null, 'A', '3295.jpg', '4', '停销', '99.5万', '2008', '停产', '豪华车', 'system', '2018-04-12 10:25:41', 'system', '2018-04-12 10:25:41');
INSERT INTO car_config VALUES ('3396', '3296', '238', '2008款 3.2FSI 豪华型', null, 'A', '3296.jpg', '4', '停销', '106.5万', '2008', '停产', '豪华车', 'system', '2018-04-12 10:25:41', 'system', '2018-04-12 10:25:41');
INSERT INTO car_config VALUES ('3397', '3297', '238', '2008款 4.2 FSI quattro 尊贵型', null, 'A', '3297.jpg', '4', '停销', '168万', '2008', '停产', '豪华车', 'system', '2018-04-12 10:25:41', 'system', '2018-04-12 10:25:41');
INSERT INTO car_config VALUES ('3398', '3298', '238', '2008款 6.0 W12 quattro 旗舰型', null, 'A', '3298.jpg', '4', '停销', '249.8万', '2008', '停产', '豪华车', 'system', '2018-04-12 10:25:41', 'system', '2018-04-12 10:25:41');
INSERT INTO car_config VALUES ('3399', '3299', '238', '2008款 6.0 W12 quattro 专享尊崇型', null, 'A', '3299.jpg', '4', '停销', '291.9万', '2008', '停产', '豪华车', 'system', '2018-04-12 10:25:42', 'system', '2018-04-12 10:25:42');
INSERT INTO car_config VALUES ('3400', '3300', '238', '2006款 3.2 FSI技术型', null, 'A', '3300.jpg', '4', '停销', '98.55万', '2006', '停产', '豪华车', 'system', '2018-04-12 10:25:42', 'system', '2018-04-12 10:25:42');
INSERT INTO car_config VALUES ('3401', '33878', '238', '2006款 6.0 W12 quattro 旗舰型', null, 'A', '33878.jpg', '4', '停销', '193.5万', '2006', '停产', '豪华车', 'system', '2018-04-12 10:25:42', 'system', '2018-04-12 10:25:42');
INSERT INTO car_config VALUES ('3402', '3301', '238', '2005款 3.0 TFSI quattro 豪华型', null, 'A', '3301.jpg', '4', '停销', '93.8万', '2005', '停产', '豪华车', 'system', '2018-04-12 10:25:42', 'system', '2018-04-12 10:25:42');
INSERT INTO car_config VALUES ('3403', '3304', '238', '2003款 4.2 FSI quattro至尊型', null, 'A', '3304.jpg', '4', '停销', '132万', '2003', '停产', '豪华车', 'system', '2018-04-12 10:25:42', 'system', '2018-04-12 10:25:42');
INSERT INTO car_config VALUES ('3404', '3303', '238', '2003款 3.7 quattro', null, 'A', '3303.jpg', '4', '停销', '138万', '2003', '停产', '豪华车', 'system', '2018-04-12 10:25:42', 'system', '2018-04-12 10:25:42');
INSERT INTO car_config VALUES ('3405', '3302', '238', '2003款 3.0', null, 'A', '3302.jpg', '4', '停销', '87.9万', '2003', '停产', '豪华车', 'system', '2018-04-12 10:25:42', 'system', '2018-04-12 10:25:42');
INSERT INTO car_config VALUES ('3406', '3305', '238', '2002款 6.0 quattro', null, 'A', '3305.jpg', '4', '停销', '170万', '2002', '停产', '豪华车', 'system', '2018-04-12 10:25:42', 'system', '2018-04-12 10:25:42');
INSERT INTO car_config VALUES ('3407', '3307', '238', '2000款 4.2 quattro', null, 'A', '3307.jpg', '4', '停销', '132万', '2000', '停产', '豪华车', 'system', '2018-04-12 10:25:43', 'system', '2018-04-12 10:25:43');
INSERT INTO car_config VALUES ('3408', '3306', '238', '2000款 2.8 quattro', null, 'A', '3306.jpg', '4', '停销', '86.4万', '2000', '停产', '豪华车', 'system', '2018-04-12 10:25:43', 'system', '2018-04-12 10:25:43');
INSERT INTO car_config VALUES ('3409', '240', '228', 'Q3', null, 'A', 'http://pic1.jisuapi.cn/car/static/images/logo/300/240.jpg', '3', '停销', null, null, null, null, 'system', '2018-04-12 10:25:43', 'system', '2018-04-12 10:25:43');
INSERT INTO car_config VALUES ('3410', '3313', '240', '2015款 40 TFSI quattro 越野型', null, 'A', '3313.JPG', '4', '停销', '42.88万', '2015', '停产', '紧凑型SUV', 'system', '2018-04-12 10:25:43', 'system', '2018-04-12 10:25:43');
INSERT INTO car_config VALUES ('3411', '3312', '240', '2012款 35 TFSI 舒适型', null, 'A', '3312.JPG', '4', '停销', '37.7万', '2012', '停产', '紧凑型SUV', 'system', '2018-04-12 10:25:43', 'system', '2018-04-12 10:25:43');
INSERT INTO car_config VALUES ('3412', '3314', '240', '2012款 40 TFSI 运动型', null, 'A', '3314.jpg', '4', '停销', '45.5万', '2012', '停产', '紧凑型SUV', 'system', '2018-04-12 10:25:43', 'system', '2018-04-12 10:25:43');
INSERT INTO car_config VALUES ('3413', '37188', '240', '2012款 2.0T 双离合 越野型', null, 'A', '37188.jpg', '4', '停销', '47.9万', '2012', '停产', '紧凑型SUV', 'system', '2018-04-12 10:25:43', 'system', '2018-04-12 10:25:43');
INSERT INTO car_config VALUES ('3414', '241', '228', 'Q5', null, 'A', 'http://pic1.jisuapi.cn/car/static/images/logo/300/241.jpg', '3', '在销', null, null, null, null, 'system', '2018-04-12 10:25:44', 'system', '2018-04-12 10:25:44');
INSERT INTO car_config VALUES ('3415', '3315', '241', '2013款 40 TFSI Hybrid', null, 'A', '3315.jpg', '4', '在销', '60.8万', '2013', '在产', '中型SUV', 'system', '2018-04-12 10:25:44', 'system', '2018-04-12 10:25:44');
INSERT INTO car_config VALUES ('3416', '3316', '241', '2013款 45 TFSI quattro 运动版', null, 'A', '3316.JPG', '4', '在销', '58.8万', '2013', '在产', '中型SUV', 'system', '2018-04-12 10:25:44', 'system', '2018-04-12 10:25:44');
INSERT INTO car_config VALUES ('3417', '3317', '241', '2013款 45 TFSI quattro 越野版', null, 'A', '3317.jpg', '4', '在销', '61.8万', '2013', '在产', '中型SUV', 'system', '2018-04-12 10:25:44', 'system', '2018-04-12 10:25:44');
INSERT INTO car_config VALUES ('3418', '3318', '241', '2012款 2.0 TFSI Hybrid quattro', null, 'A', '3318.jpg', '4', '停销', '60.8万', '2012', '停产', '中型SUV', 'system', '2018-04-12 10:25:44', 'system', '2018-04-12 10:25:44');
INSERT INTO car_config VALUES ('3419', '3319', '241', '2011款 3.2 FSI 运动款', null, 'A', '3319.jpg', '4', '停销', '65.8万', '2011', '停产', '中型SUV', 'system', '2018-04-12 10:25:44', 'system', '2018-04-12 10:25:44');
INSERT INTO car_config VALUES ('3420', '3320', '241', '2011款 3.2 FSI 越野款', null, 'A', '3320.JPG', '4', '停销', '67.8万', '2011', '停产', '中型SUV', 'system', '2018-04-12 10:25:44', 'system', '2018-04-12 10:25:44');
INSERT INTO car_config VALUES ('3421', '3321', '241', '2010款 2.0T 首发限量版 运动款', null, 'A', '3321.jpg', '4', '停销', '57.7万', '2010', '停产', '中型SUV', 'system', '2018-04-12 10:25:44', 'system', '2018-04-12 10:25:44');
INSERT INTO car_config VALUES ('3422', '3322', '241', '2010款 2.0T 首发限量版 越野款', null, 'A', '3322.jpg', '4', '停销', '63.5万', '2010', '停产', '中型SUV', 'system', '2018-04-12 10:25:45', 'system', '2018-04-12 10:25:45');
INSERT INTO car_config VALUES ('3423', '3323', '241', '2010款 3.2 运动款', null, 'A', '3323.jpg', '4', '停销', '65.8万', '2010', '停产', '中型SUV', 'system', '2018-04-12 10:25:45', 'system', '2018-04-12 10:25:45');
INSERT INTO car_config VALUES ('3424', '3324', '241', '2010款 3.2 越野款', null, 'A', '3324.jpg', '4', '停销', '67.8万', '2010', '停产', '中型SUV', 'system', '2018-04-12 10:25:45', 'system', '2018-04-12 10:25:45');
INSERT INTO car_config VALUES ('3425', '242', '228', 'Q7', null, 'A', 'http://pic1.jisuapi.cn/car/static/images/logo/300/242.jpg', '3', '在销', null, null, null, null, 'system', '2018-04-12 10:25:45', 'system', '2018-04-12 10:25:45');
INSERT INTO car_config VALUES ('3426', '41986', '242', '2018款 45 TFSI S line 南方尊享版', null, 'A', '41986.jpg', '4', '在销', '94.05万', '2018', '在产', '中大型SUV', 'system', '2018-04-12 10:25:45', 'system', '2018-04-12 10:25:45');
INSERT INTO car_config VALUES ('3427', '41985', '242', '2018款 40 TFSI S line 南方专享版', null, 'A', '41985.jpg', '4', '在销', '82.39万', '2018', '在产', '中大型SUV', 'system', '2018-04-12 10:25:45', 'system', '2018-04-12 10:25:45');
INSERT INTO car_config VALUES ('3428', '41398', '242', '2018款 45 TFSI 尊贵版', null, 'A', '41398.jpg', '4', '在销', '104.88万', '2018', '在产', '中大型SUV', 'system', '2018-04-12 10:25:45', 'system', '2018-04-12 10:25:45');
INSERT INTO car_config VALUES ('3429', '41397', '242', '2018款 45 TFSI S line运动版', null, 'A', '41397.jpg', '4', '在销', '90.98万', '2018', '在产', '中大型SUV', 'system', '2018-04-12 10:25:45', 'system', '2018-04-12 10:25:45');
INSERT INTO car_config VALUES ('3430', '41396', '242', '2018款 45 TFSI 技术版', null, 'A', '41396.jpg', '4', '在销', '84.78万', '2018', '在产', '中大型SUV', 'system', '2018-04-12 10:25:46', 'system', '2018-04-12 10:25:46');
INSERT INTO car_config VALUES ('3431', '41395', '242', '2018款 40 TFSI S line运动版', null, 'A', '41395.jpg', '4', '在销', '78.88万', '2018', '在产', '中大型SUV', 'system', '2018-04-12 10:25:46', 'system', '2018-04-12 10:25:46');
INSERT INTO car_config VALUES ('3432', '41394', '242', '2018款 40 TFSI 舒适版', null, 'A', '41394.jpg', '4', '在销', '75.38万', '2018', '在产', '中大型SUV', 'system', '2018-04-12 10:25:46', 'system', '2018-04-12 10:25:46');
INSERT INTO car_config VALUES ('3433', '40217', '242', '2017款 3.0T(墨西哥版)', null, 'A', '40217.jpg', '4', '停销', '73.8万', '2017', '停产', '中大型SUV', 'system', '2018-04-12 10:25:46', 'system', '2018-04-12 10:25:46');
INSERT INTO car_config VALUES ('3434', '40216', '242', '2017款 3.0T(加拿大版)', null, 'A', '40216.jpg', '4', '停销', '73.8万', '2017', '停产', '中大型SUV', 'system', '2018-04-12 10:25:46', 'system', '2018-04-12 10:25:46');
INSERT INTO car_config VALUES ('3435', '40215', '242', '2017款 3.0T(欧规版)', null, 'A', '40215.jpg', '4', '停销', '73.8万', '2017', '停产', '中大型SUV', 'system', '2018-04-12 10:25:46', 'system', '2018-04-12 10:25:46');
INSERT INTO car_config VALUES ('3436', '3325', '242', '2016款 40 TFSI 舒适版', null, 'A', '3325.jpg', '4', '在销', '75.38万', '2016', '停产', '中大型SUV', 'system', '2018-04-12 10:25:46', 'system', '2018-04-12 10:25:46');
INSERT INTO car_config VALUES ('3437', '3326', '242', '2016款 40 TFSI S line 运动版', null, 'A', '3326.jpg', '4', '在销', '78.88万', '2016', '停产', '中大型SUV', 'system', '2018-04-12 10:25:47', 'system', '2018-04-12 10:25:47');
INSERT INTO car_config VALUES ('3438', '3327', '242', '2016款 45 TFSI 技术版', null, 'A', '3327.jpg', '4', '在销', '84.78万', '2016', '停产', '中大型SUV', 'system', '2018-04-12 10:25:47', 'system', '2018-04-12 10:25:47');
INSERT INTO car_config VALUES ('3439', '3328', '242', '2016款 45 TFSI S line 运动版', null, 'A', '3328.jpg', '4', '在销', '90.98万', '2016', '停产', '中大型SUV', 'system', '2018-04-12 10:25:47', 'system', '2018-04-12 10:25:47');
INSERT INTO car_config VALUES ('3440', '3329', '242', '2016款 45 TFSI S line 尊贵版', null, 'A', '3329.jpg', '4', '在销', '104.88万', '2016', '停产', '中大型SUV', 'system', '2018-04-12 10:25:47', 'system', '2018-04-12 10:25:47');
INSERT INTO car_config VALUES ('3441', '3330', '242', '2015款 40 TFSI quattro 典藏版', null, 'A', '3330.jpg', '4', '停销', '93.98万', '2015', '停产', '中大型SUV', 'system', '2018-04-12 10:25:47', 'system', '2018-04-12 10:25:47');
INSERT INTO car_config VALUES ('3442', '3331', '242', '2015款 40 TFSI quattro 尊藏版', null, 'A', '3331.jpg', '4', '停销', '123.98万', '2015', '停产', '中大型SUV', 'system', '2018-04-12 10:25:47', 'system', '2018-04-12 10:25:47');
INSERT INTO car_config VALUES ('3443', '3332', '242', '2015款 35 TDI quattro 卓越版', null, 'A', '3332.jpg', '4', '停销', '87.48万', '2015', '停产', '中大型SUV', 'system', '2018-04-12 10:25:47', 'system', '2018-04-12 10:25:47');
INSERT INTO car_config VALUES ('3444', '3333', '242', '2015款 35 TFSI quattro 进取型', null, 'A', '3333.JPG', '4', '停销', '82.8万', '2015', '停产', '中大型SUV', 'system', '2018-04-12 10:25:48', 'system', '2018-04-12 10:25:48');
INSERT INTO car_config VALUES ('3445', '3334', '242', '2015款 35 TFSI quattro 运动型', null, 'A', '3334.jpg', '4', '停销', '89.7万', '2015', '停产', '中大型SUV', 'system', '2018-04-12 10:25:48', 'system', '2018-04-12 10:25:48');
INSERT INTO car_config VALUES ('3446', '37189', '242', '2014款 35 TDI quattro 运动型', null, 'A', '37189.jpg', '4', '停销', '90.28万', '2014', '停产', '中大型SUV', 'system', '2018-04-12 10:25:48', 'system', '2018-04-12 10:25:48');
INSERT INTO car_config VALUES ('3447', '37190', '242', '2014款 35 TDI quattro 越野型', null, 'A', '37190.jpg', '4', '停销', '90.28万', '2014', '停产', '中大型SUV', 'system', '2018-04-12 10:25:48', 'system', '2018-04-12 10:25:48');
INSERT INTO car_config VALUES ('3448', '37191', '242', '2014款 35 TDI quattro 专享型', null, 'A', '37191.jpg', '4', '停销', '105.18万', '2014', '停产', '中大型SUV', 'system', '2018-04-12 10:25:48', 'system', '2018-04-12 10:25:48');
INSERT INTO car_config VALUES ('3449', '37192', '242', '2014款 35 TFSI quattro 进取型', null, 'A', '37192.JPG', '4', '停销', '82.7万', '2014', '停产', '中大型SUV', 'system', '2018-04-12 10:25:48', 'system', '2018-04-12 10:25:48');
INSERT INTO car_config VALUES ('3450', '37193', '242', '2014款 35 TFSI quattro 运动型', null, 'A', '37193.jpg', '4', '停销', '89.78万', '2014', '停产', '中大型SUV', 'system', '2018-04-12 10:25:48', 'system', '2018-04-12 10:25:48');
INSERT INTO car_config VALUES ('3451', '37194', '242', '2014款 35 TFSI quattro 越野型', null, 'A', '37194.JPG', '4', '停销', '97.18万', '2014', '停产', '中大型SUV', 'system', '2018-04-12 10:25:49', 'system', '2018-04-12 10:25:49');
INSERT INTO car_config VALUES ('3452', '37195', '242', '2014款 35 TFSI quattro 专享型', null, 'A', '37195.jpg', '4', '停销', '111.2万', '2014', '停产', '中大型SUV', 'system', '2018-04-12 10:25:49', 'system', '2018-04-12 10:25:49');
INSERT INTO car_config VALUES ('3453', '37196', '242', '2014款 40 TFSI quattro 运动型', null, 'A', '37196.jpg', '4', '停销', '111.18万', '2014', '停产', '中大型SUV', 'system', '2018-04-12 10:25:49', 'system', '2018-04-12 10:25:49');
INSERT INTO car_config VALUES ('3454', '37197', '242', '2014款 40 TFSI quattro 越野型', null, 'A', '37197.JPG', '4', '停销', '118.38万', '2014', '停产', '中大型SUV', 'system', '2018-04-12 10:25:49', 'system', '2018-04-12 10:25:49');
INSERT INTO car_config VALUES ('3455', '37198', '242', '2014款 40 TFSI quattro 专享型', null, 'A', '37198.JPG', '4', '停销', '133.9万', '2014', '停产', '中大型SUV', 'system', '2018-04-12 10:25:49', 'system', '2018-04-12 10:25:49');
INSERT INTO car_config VALUES ('3456', '3336', '242', '2014款 中东版', null, 'A', '3336.jpg', '4', '停销', '64万', '2014', '停产', '中大型SUV', 'system', '2018-04-12 10:25:49', 'system', '2018-04-12 10:25:49');
INSERT INTO car_config VALUES ('3457', '3337', '242', '2014款 美规版', null, 'A', '3337.jpg', '4', '停销', '89.7万', '2014', '停产', '中大型SUV', 'system', '2018-04-12 10:25:50', 'system', '2018-04-12 10:25:50');
INSERT INTO car_config VALUES ('3458', '3347', '242', '2013款 40 TFSI 专享型', null, 'A', '3347.jpg', '4', '停销', '133.3万', '2013', '停产', '中大型SUV', 'system', '2018-04-12 10:25:50', 'system', '2018-04-12 10:25:50');
INSERT INTO car_config VALUES ('3459', '3346', '242', '2013款 40 TFSI 舒适型', null, 'A', '3346.jpg', '4', '停销', '116.7万', '2013', '停产', '中大型SUV', 'system', '2018-04-12 10:25:50', 'system', '2018-04-12 10:25:50');
INSERT INTO car_config VALUES ('3460', '3345', '242', '2013款 40 TFSI 技术型', null, 'A', '3345.JPG', '4', '停销', '109.5万', '2013', '停产', '中大型SUV', 'system', '2018-04-12 10:25:50', 'system', '2018-04-12 10:25:50');
INSERT INTO car_config VALUES ('3461', '3344', '242', '2013款 35 TFSI 专享型', null, 'A', '3344.jpg', '4', '停销', '110.6万', '2013', '停产', '中大型SUV', 'system', '2018-04-12 10:25:50', 'system', '2018-04-12 10:25:50');
INSERT INTO car_config VALUES ('3462', '3343', '242', '2013款 35 TFSI 舒适型', null, 'A', '3343.jpg', '4', '停销', '95.5万', '2013', '停产', '中大型SUV', 'system', '2018-04-12 10:25:50', 'system', '2018-04-12 10:25:50');
INSERT INTO car_config VALUES ('3463', '3342', '242', '2013款 35 TFSI 技术型', null, 'A', '3342.JPG', '4', '停销', '88.1万', '2013', '停产', '中大型SUV', 'system', '2018-04-12 10:25:50', 'system', '2018-04-12 10:25:50');
INSERT INTO car_config VALUES ('3464', '3341', '242', '2013款 35 TFSI 进取型', null, 'A', '3341.jpg', '4', '停销', '82.1万', '2013', '停产', '中大型SUV', 'system', '2018-04-12 10:25:50', 'system', '2018-04-12 10:25:50');
INSERT INTO car_config VALUES ('3465', '3340', '242', '2013款 35 TDI 专享型', null, 'A', '3340.jpg', '4', '停销', '104.58万', '2013', '停产', '中大型SUV', 'system', '2018-04-12 10:25:51', 'system', '2018-04-12 10:25:51');
INSERT INTO car_config VALUES ('3466', '3339', '242', '2013款 35 TDI 领先型', null, 'A', '3339.jpg', '4', '停销', '88.6万', '2013', '停产', '中大型SUV', 'system', '2018-04-12 10:25:51', 'system', '2018-04-12 10:25:51');
INSERT INTO car_config VALUES ('3467', '3348', '242', '2012款 TDI V6 3.0 柴油', null, 'A', '3348.jpg', '4', '停销', '88.6万', '2012', '停产', '中大型SUV', 'system', '2018-04-12 10:25:51', 'system', '2018-04-12 10:25:51');
INSERT INTO car_config VALUES ('3468', '3349', '242', '2012款 3.0 TDI quattro 领先型', null, 'A', '3349.jpg', '4', '停销', '88.6万', '2012', '停产', '中大型SUV', 'system', '2018-04-12 10:25:51', 'system', '2018-04-12 10:25:51');
INSERT INTO car_config VALUES ('3469', '3350', '242', '2012款 3.0 TDI quattro 专享型', null, 'A', '3350.jpg', '4', '停销', '104.58万', '2012', '停产', '中大型SUV', 'system', '2018-04-12 10:25:51', 'system', '2018-04-12 10:25:51');
INSERT INTO car_config VALUES ('3470', '3351', '242', '2012款 3.0 TFSI quattro(200kW)进取型', null, 'A', '3351.jpg', '4', '停销', '82.1万', '2012', '停产', '中大型SUV', 'system', '2018-04-12 10:25:51', 'system', '2018-04-12 10:25:51');
INSERT INTO car_config VALUES ('3471', '3352', '242', '2012款 3.0 TFSI quattro(200kW)技术型', null, 'A', '3352.jpg', '4', '停销', '88.1万', '2012', '停产', '中大型SUV', 'system', '2018-04-12 10:25:51', 'system', '2018-04-12 10:25:51');
INSERT INTO car_config VALUES ('3472', '3353', '242', '2012款 3.0 TFSI quattro(200kW)舒适型', null, 'A', '3353.JPG', '4', '停销', '95.5万', '2012', '停产', '中大型SUV', 'system', '2018-04-12 10:25:51', 'system', '2018-04-12 10:25:51');
INSERT INTO car_config VALUES ('3473', '3354', '242', '2012款 3.0 TFSI quattro(200kW)专享型', null, 'A', '3354.jpg', '4', '停销', '110.6万', '2012', '停产', '中大型SUV', 'system', '2018-04-12 10:25:52', 'system', '2018-04-12 10:25:52');
INSERT INTO car_config VALUES ('3474', '3355', '242', '2012款 3.0 TFSI quattro(245kW)技术型', null, 'A', '3355.jpg', '4', '停销', '109.5万', '2012', '停产', '中大型SUV', 'system', '2018-04-12 10:25:52', 'system', '2018-04-12 10:25:52');
INSERT INTO car_config VALUES ('3475', '3356', '242', '2012款 3.0 TFSI quattro(245kW)舒适型', null, 'A', '3356.jpg', '4', '停销', '116.7万', '2012', '停产', '中大型SUV', 'system', '2018-04-12 10:25:52', 'system', '2018-04-12 10:25:52');
INSERT INTO car_config VALUES ('3476', '3357', '242', '2012款 3.0 TFSI quattro(245kW)专享型', null, 'A', '3357.jpg', '4', '停销', '131.9万', '2012', '停产', '中大型SUV', 'system', '2018-04-12 10:25:52', 'system', '2018-04-12 10:25:52');
INSERT INTO car_config VALUES ('3477', '3358', '242', '2012款 6.0 TDI quattro 旗舰型', null, 'A', '3358.jpg', '4', '停销', '257.8万', '2012', '停产', '中大型SUV', 'system', '2018-04-12 10:25:52', 'system', '2018-04-12 10:25:52');
INSERT INTO car_config VALUES ('3478', '3365', '242', '2011款 3.0 TFSI quattro(245kW) 专享型', null, 'A', '3365.jpg', '4', '停销', '131.9万', '2011', '停产', '中大型SUV', 'system', '2018-04-12 10:25:52', 'system', '2018-04-12 10:25:52');
INSERT INTO car_config VALUES ('3479', '3364', '242', '2011款 3.0 TFSI quattro(245kW) 舒适型', null, 'A', '3364.jpg', '4', '停销', '116.7万', '2011', '停产', '中大型SUV', 'system', '2018-04-12 10:25:52', 'system', '2018-04-12 10:25:52');
INSERT INTO car_config VALUES ('3480', '3363', '242', '2011款 3.0 TFSI quattro(245kW) 技术型', null, 'A', '3363.jpg', '4', '停销', '109.5万', '2011', '停产', '中大型SUV', 'system', '2018-04-12 10:25:52', 'system', '2018-04-12 10:25:52');
INSERT INTO car_config VALUES ('3481', '3362', '242', '2011款 3.0 TFSI quattro(200kW) 专享型', null, 'A', '3362.jpg', '4', '停销', '110.6万', '2011', '停产', '中大型SUV', 'system', '2018-04-12 10:25:53', 'system', '2018-04-12 10:25:53');
INSERT INTO car_config VALUES ('3482', '3361', '242', '2011款 3.0 TFSI quattro(200kW) 舒适型', null, 'A', '3361.jpg', '4', '停销', '95.5万', '2011', '停产', '中大型SUV', 'system', '2018-04-12 10:25:53', 'system', '2018-04-12 10:25:53');
INSERT INTO car_config VALUES ('3483', '3360', '242', '2011款 3.0 TFSI quattro(200kW) 技术型', null, 'A', '3360.jpg', '4', '停销', '88.1万', '2011', '停产', '中大型SUV', 'system', '2018-04-12 10:25:53', 'system', '2018-04-12 10:25:53');
INSERT INTO car_config VALUES ('3484', '3359', '242', '2011款 3.0 TFSI quattro(200kW) 进取型', null, 'A', '3359.jpg', '4', '停销', '82.1万', '2011', '停产', '中大型SUV', 'system', '2018-04-12 10:25:53', 'system', '2018-04-12 10:25:53');
INSERT INTO car_config VALUES ('3485', '3366', '242', '2010款 3.0 TDI领先型', null, 'A', '3366.jpg', '4', '停销', '87.6万', '2010', '停产', '中大型SUV', 'system', '2018-04-12 10:25:53', 'system', '2018-04-12 10:25:53');
INSERT INTO car_config VALUES ('3486', '3367', '242', '2010款 3.0 TDI quattro 领先型运动典藏版', null, 'A', '3367.jpg', '4', '停销', '95.71万', '2010', '停产', '中大型SUV', 'system', '2018-04-12 10:25:53', 'system', '2018-04-12 10:25:53');
INSERT INTO car_config VALUES ('3487', '3368', '242', '2010款 3.6 FSI基本型', null, 'A', '3368.jpg', '4', '停销', '81.5万', '2010', '停产', '中大型SUV', 'system', '2018-04-12 10:25:53', 'system', '2018-04-12 10:25:53');
INSERT INTO car_config VALUES ('3488', '3369', '242', '2010款 3.6 FSI技术型', null, 'A', '3369.jpg', '4', '停销', '87.5万', '2010', '停产', '中大型SUV', 'system', '2018-04-12 10:25:54', 'system', '2018-04-12 10:25:54');
INSERT INTO car_config VALUES ('3489', '3370', '242', '2010款 3.6 FSI quattro 技术型越野典藏版', null, 'A', '3370.jpg', '4', '停销', '91.9万', '2010', '停产', '中大型SUV', 'system', '2018-04-12 10:25:54', 'system', '2018-04-12 10:25:54');
INSERT INTO car_config VALUES ('3490', '3371', '242', '2010款 3.6 FSI舒适型', null, 'A', '3371.jpg', '4', '停销', '94.8万', '2010', '停产', '中大型SUV', 'system', '2018-04-12 10:25:54', 'system', '2018-04-12 10:25:54');
INSERT INTO car_config VALUES ('3491', '3372', '242', '2010款 3.6 FSI quattro 技术型运动典藏版', null, 'A', '3372.jpg', '4', '停销', '95.61万', '2010', '停产', '中大型SUV', 'system', '2018-04-12 10:25:54', 'system', '2018-04-12 10:25:54');
INSERT INTO car_config VALUES ('3492', '3373', '242', '2010款 3.6 FSI quattro 舒适型越野典藏版', null, 'A', '3373.jpg', '4', '停销', '98万', '2010', '停产', '中大型SUV', 'system', '2018-04-12 10:25:54', 'system', '2018-04-12 10:25:54');
INSERT INTO car_config VALUES ('3493', '3377', '242', '2010款 4.2 FSI豪华型', null, 'A', '3377.jpg', '4', '停销', '165万', '2010', '停产', '中大型SUV', 'system', '2018-04-12 10:25:54', 'system', '2018-04-12 10:25:54');
INSERT INTO car_config VALUES ('3494', '3378', '242', '2010款 4.8L  120英寸加长车', null, 'A', '3378.jpg', '4', '停销', '暂无', '2010', '停产', '中大型SUV', 'system', '2018-04-12 10:25:54', 'system', '2018-04-12 10:25:54');
INSERT INTO car_config VALUES ('3495', '3379', '242', '2010款 6.0 V12 TDI旗舰型', null, 'A', '3379.jpg', '4', '停销', '256.8万', '2010', '停产', '中大型SUV', 'system', '2018-04-12 10:25:54', 'system', '2018-04-12 10:25:54');
INSERT INTO car_config VALUES ('3496', '3376', '242', '2010款 4.2 FSI技术型', null, 'A', '3376.jpg', '4', '停销', '149.8万', '2010', '停产', '中大型SUV', 'system', '2018-04-12 10:25:55', 'system', '2018-04-12 10:25:55');
INSERT INTO car_config VALUES ('3497', '3375', '242', '2010款 3.6 FSI quattro 舒适型运动典藏版', null, 'A', '3375.jpg', '4', '停销', '102.01万', '2010', '停产', '中大型SUV', 'system', '2018-04-12 10:25:55', 'system', '2018-04-12 10:25:55');
INSERT INTO car_config VALUES ('3498', '3374', '242', '2010款 3.6 FSI豪华型', null, 'A', '3374.jpg', '4', '停销', '99.8万', '2010', '停产', '中大型SUV', 'system', '2018-04-12 10:25:55', 'system', '2018-04-12 10:25:55');
INSERT INTO car_config VALUES ('3499', '3383', '242', '2009款 3.6 FSI quattro 舒适型 越野版', null, 'A', '3383.jpg', '4', '停销', '99.8万', '2009', '停产', '中大型SUV', 'system', '2018-04-12 10:25:55', 'system', '2018-04-12 10:25:55');
INSERT INTO car_config VALUES ('3500', '3382', '242', '2009款 3.6 FSI quattro 舒适型 风尚版', null, 'A', '3382.jpg', '4', '停销', '99.8万', '2009', '停产', '中大型SUV', 'system', '2018-04-12 10:25:55', 'system', '2018-04-12 10:25:55');
INSERT INTO car_config VALUES ('3501', '3381', '242', '2009款 3.6 FSI quattro 技术型 越野版', null, 'A', '3381.jpg', '4', '停销', '91.7万', '2009', '停产', '中大型SUV', 'system', '2018-04-12 10:25:55', 'system', '2018-04-12 10:25:55');
INSERT INTO car_config VALUES ('3502', '3380', '242', '2009款 3.6 FSI quattro 技术型 风尚版', null, 'A', '3380.jpg', '4', '停销', '91.7万', '2009', '停产', '中大型SUV', 'system', '2018-04-12 10:25:55', 'system', '2018-04-12 10:25:55');
INSERT INTO car_config VALUES ('3503', '3388', '242', '2007款 4.2 FSI quattro 豪华型', null, 'A', '3388.jpg', '4', '停销', '165万', '2007', '停产', '中大型SUV', 'system', '2018-04-12 10:25:56', 'system', '2018-04-12 10:25:56');
INSERT INTO car_config VALUES ('3504', '3387', '242', '2007款 4.2 FSI quattro 舒适型', null, 'A', '3387.jpg', '4', '停销', '158万', '2007', '停产', '中大型SUV', 'system', '2018-04-12 10:25:56', 'system', '2018-04-12 10:25:56');
INSERT INTO car_config VALUES ('3505', '3386', '242', '2007款 3.6 FSI quattro 豪华型', null, 'A', '3386.jpg', '4', '停销', '102万', '2007', '停产', '中大型SUV', 'system', '2018-04-12 10:25:56', 'system', '2018-04-12 10:25:56');
INSERT INTO car_config VALUES ('3506', '3385', '242', '2007款 3.6 FSI quattro 舒适型', null, 'A', '3385.jpg', '4', '停销', '96.8万', '2007', '停产', '中大型SUV', 'system', '2018-04-12 10:25:56', 'system', '2018-04-12 10:25:56');
INSERT INTO car_config VALUES ('3507', '3384', '242', '2007款 3.6 FSI quattro 技术型', null, 'A', '3384.jpg', '4', '停销', '87.5万', '2007', '停产', '中大型SUV', 'system', '2018-04-12 10:25:56', 'system', '2018-04-12 10:25:56');
INSERT INTO car_config VALUES ('3508', '3390', '242', '2006款 4.2 FSI quattro 技术型', null, 'A', '3390.jpg', '4', '停销', '149.8万', '2006', '停产', '中大型SUV', 'system', '2018-04-12 10:25:56', 'system', '2018-04-12 10:25:56');
INSERT INTO car_config VALUES ('3509', '3389', '242', '2006款 3.6 FSI quattro 基本型', null, 'A', '3389.jpg', '4', '停销', '81.5万', '2006', '停产', '中大型SUV', 'system', '2018-04-12 10:25:56', 'system', '2018-04-12 10:25:56');
INSERT INTO car_config VALUES ('3510', '249', '228', 'TT', null, 'A', 'http://pic1.jisuapi.cn/car/static/images/logo/300/249.jpg', '3', '在销', null, null, null, null, 'system', '2018-04-12 10:25:56', 'system', '2018-04-12 10:25:56');
INSERT INTO car_config VALUES ('3511', '41399', '249', '2017款 Coupe 40 TFSI', null, 'A', '41399.JPG', '4', '在销', '49.98万', '2017', '在产', '跑车', 'system', '2018-04-12 10:25:57', 'system', '2018-04-12 10:25:57');
INSERT INTO car_config VALUES ('3512', '37208', '249', '2017款 Roadster 45 TFSI quattro', null, 'A', '37208.jpg', '4', '在销', '58.68万', '2017', '在产', '跑车', 'system', '2018-04-12 10:25:57', 'system', '2018-04-12 10:25:57');
INSERT INTO car_config VALUES ('3513', '37207', '249', '2017款 Roadster 45 TFSI', null, 'A', '37207.jpg', '4', '在销', '55.98万', '2017', '在产', '跑车', 'system', '2018-04-12 10:25:57', 'system', '2018-04-12 10:25:57');
INSERT INTO car_config VALUES ('3514', '37206', '249', '2017款 Coupe 45 TFSI quattro', null, 'A', '37206.jpg', '4', '在销', '54.68万', '2017', '在产', '跑车', 'system', '2018-04-12 10:25:57', 'system', '2018-04-12 10:25:57');
INSERT INTO car_config VALUES ('3515', '37205', '249', '2017款 Coupe 45 TFSI', null, 'A', '37205.jpg', '4', '在销', '51.98万', '2017', '在产', '跑车', 'system', '2018-04-12 10:25:57', 'system', '2018-04-12 10:25:57');
INSERT INTO car_config VALUES ('3516', '3431', '249', '2016款 TTS Coupe', null, 'A', '3431.jpg', '4', '停销', '68.18万', '2016', '停产', '跑车', 'system', '2018-04-12 10:25:57', 'system', '2018-04-12 10:25:57');
INSERT INTO car_config VALUES ('3517', '3432', '249', '2016款 TTS Roadster', null, 'A', '3432.jpg', '4', '停销', '72.98万', '2016', '停产', '跑车', 'system', '2018-04-12 10:25:57', 'system', '2018-04-12 10:25:57');
INSERT INTO car_config VALUES ('3518', '37211', '249', '2015款 Coupe 45 TFSI quattro 复仇者联盟决胜版', null, 'A', '37211.JPG', '4', '停销', '62.18万', '2015', '停产', '跑车', 'system', '2018-04-12 10:25:57', 'system', '2018-04-12 10:25:57');
INSERT INTO car_config VALUES ('3519', '3427', '249', '2015款 Coupe 45 TFSI', null, 'A', '3427.jpg', '4', '停销', '54.28万', '2015', '停产', '跑车', 'system', '2018-04-12 10:25:58', 'system', '2018-04-12 10:25:58');
INSERT INTO car_config VALUES ('3520', '3428', '249', '2015款 Coupe 45 TFSI quattro', null, 'A', '3428.JPG', '4', '停销', '56.98万', '2015', '停产', '跑车', 'system', '2018-04-12 10:25:58', 'system', '2018-04-12 10:25:58');
INSERT INTO car_config VALUES ('3521', '3429', '249', '2015款 Roadster 45 TFSI', null, 'A', '3429.JPG', '4', '停销', '59.08万', '2015', '停产', '跑车', 'system', '2018-04-12 10:25:58', 'system', '2018-04-12 10:25:58');
INSERT INTO car_config VALUES ('3522', '3430', '249', '2015款 Roadster 45 TFSI quattro', null, 'A', '3430.jpg', '4', '停销', '61.78万', '2015', '停产', '跑车', 'system', '2018-04-12 10:25:58', 'system', '2018-04-12 10:25:58');
INSERT INTO car_config VALUES ('3523', '3435', '249', '2014款 Coupe 45 TFSI 悦尚型', null, 'A', '3435.jpg', '4', '停销', '52.94万', '2014', '停产', '跑车', 'system', '2018-04-12 10:25:58', 'system', '2018-04-12 10:25:58');
INSERT INTO car_config VALUES ('3524', '3436', '249', '2014款 Coupe 45 TFSI 劲动型', null, 'A', '3436.jpg', '4', '停销', '53.5万', '2014', '停产', '跑车', 'system', '2018-04-12 10:25:58', 'system', '2018-04-12 10:25:58');
INSERT INTO car_config VALUES ('3525', '3437', '249', '2014款 Coupe 45 TFSI quattro 悦尚型', null, 'A', '3437.jpg', '4', '停销', '55.54万', '2014', '停产', '跑车', 'system', '2018-04-12 10:25:58', 'system', '2018-04-12 10:25:58');
INSERT INTO car_config VALUES ('3526', '3438', '249', '2014款 Coupe 45 TFSI quattro 劲动型', null, 'A', '3438.jpg', '4', '停销', '56.1万', '2014', '停产', '跑车', 'system', '2018-04-12 10:25:59', 'system', '2018-04-12 10:25:59');
INSERT INTO car_config VALUES ('3527', '3433', '249', '2013款 Roadster 45 TFSI', null, 'A', '3433.jpg', '4', '停销', '56.5万', '2013', '停产', '跑车', 'system', '2018-04-12 10:25:59', 'system', '2018-04-12 10:25:59');
INSERT INTO car_config VALUES ('3528', '3434', '249', '2013款 Roadster 45 TFSI quattro', null, 'A', '3434.jpg', '4', '停销', '59.2万', '2013', '停产', '跑车', 'system', '2018-04-12 10:25:59', 'system', '2018-04-12 10:25:59');
INSERT INTO car_config VALUES ('3529', '33888', '249', '2013款 TTS Roadster 2.0TFSI quattro', null, 'A', '33888.JPG', '4', '停销', '70.8万', '2013', '停产', '跑车', 'system', '2018-04-12 10:25:59', 'system', '2018-04-12 10:25:59');
INSERT INTO car_config VALUES ('3530', '33887', '249', '2013款 TTS Coupe 2.0TFSI quattro', null, 'A', '33887.JPG', '4', '停销', '66.2万', '2013', '停产', '跑车', 'system', '2018-04-12 10:25:59', 'system', '2018-04-12 10:25:59');
INSERT INTO car_config VALUES ('3531', '33886', '249', '2013款 Coupe 45 TFSI quattro 黑色旋风版', null, 'A', '33886.jpg', '4', '停销', '56.6万', '2013', '停产', '跑车', 'system', '2018-04-12 10:25:59', 'system', '2018-04-12 10:25:59');
INSERT INTO car_config VALUES ('3532', '33885', '249', '2013款 Coupe 45 TFSI quattro 彩色梦幻版', null, 'A', '33885.jpg', '4', '停销', '56.3万', '2013', '停产', '跑车', 'system', '2018-04-12 10:25:59', 'system', '2018-04-12 10:25:59');
INSERT INTO car_config VALUES ('3533', '33884', '249', '2013款 Coupe 45 TFSI quattro 白色经典版', null, 'A', '33884.JPG', '4', '停销', '56万', '2013', '停产', '跑车', 'system', '2018-04-12 10:25:59', 'system', '2018-04-12 10:25:59');
INSERT INTO car_config VALUES ('3534', '33883', '249', '2013款 Coupe 45 TFSI quattro', null, 'A', '33883.JPG', '4', '停销', '54.6万', '2013', '停产', '跑车', 'system', '2018-04-12 10:26:00', 'system', '2018-04-12 10:26:00');
INSERT INTO car_config VALUES ('3535', '33882', '249', '2013款 Coupe 45 TFSI 黑色旋风版', null, 'A', '33882.jpg', '4', '停销', '53.9万', '2013', '停产', '跑车', 'system', '2018-04-12 10:26:00', 'system', '2018-04-12 10:26:00');
INSERT INTO car_config VALUES ('3536', '33881', '249', '2013款 Coupe 45 TFSI 彩色梦幻版', null, 'A', '33881.jpg', '4', '停销', '53.6万', '2013', '停产', '跑车', 'system', '2018-04-12 10:26:00', 'system', '2018-04-12 10:26:00');
INSERT INTO car_config VALUES ('3537', '33880', '249', '2013款 Coupe 45 TFSI 白色经典版', null, 'A', '33880.jpg', '4', '停销', '53.3万', '2013', '停产', '跑车', 'system', '2018-04-12 10:26:00', 'system', '2018-04-12 10:26:00');
INSERT INTO car_config VALUES ('3538', '33879', '249', '2013款 Coupe 45 TFSI', null, 'A', '33879.JPG', '4', '停销', '51.9万', '2013', '停产', '跑车', 'system', '2018-04-12 10:26:00', 'system', '2018-04-12 10:26:00');
INSERT INTO car_config VALUES ('3539', '3439', '249', '2012款 TT Roadster 2.0 TFSI S tronic典雅版', null, 'A', '3439.JPG', '4', '停销', '58万', '2012', '停产', '跑车', 'system', '2018-04-12 10:26:00', 'system', '2018-04-12 10:26:00');
INSERT INTO car_config VALUES ('3540', '3440', '249', '2012款 TT Roadster 2.0 TFSI S tronic quattro典雅版', null, 'A', '3440.JPG', '4', '停销', '60.7万', '2012', '停产', '跑车', 'system', '2018-04-12 10:26:00', 'system', '2018-04-12 10:26:00');
INSERT INTO car_config VALUES ('3541', '3441', '249', '2011款 TT Coupé 2.0 TFSI S tronic', null, 'A', '3441.JPG', '4', '停销', '51.9万', '2011', '停产', '跑车', 'system', '2018-04-12 10:26:00', 'system', '2018-04-12 10:26:00');
INSERT INTO car_config VALUES ('3542', '3442', '249', '2011款 TT Coupe 2.0 TFSI S tronic quattro', null, 'A', '3442.jpg', '4', '停销', '54.6万', '2011', '停产', '跑车', 'system', '2018-04-12 10:26:01', 'system', '2018-04-12 10:26:01');
INSERT INTO car_config VALUES ('3543', '3443', '249', '2011款 TT Roadster 2.0 TFSI S tronic', null, 'A', '3443.JPG', '4', '停销', '56.5万', '2011', '停产', '跑车', 'system', '2018-04-12 10:26:01', 'system', '2018-04-12 10:26:01');
INSERT INTO car_config VALUES ('3544', '3444', '249', '2011款 TT Roadster 2.0 TFSI S tronic quattro', null, 'A', '3444.JPG', '4', '停销', '59.2万', '2011', '停产', '跑车', 'system', '2018-04-12 10:26:01', 'system', '2018-04-12 10:26:01');
INSERT INTO car_config VALUES ('3545', '3445', '249', '2011款 TTS Coupe 2.0 TFSI quattro S tronic', null, 'A', '3445.JPG', '4', '停销', '66.2万', '2011', '停产', '跑车', 'system', '2018-04-12 10:26:01', 'system', '2018-04-12 10:26:01');
INSERT INTO car_config VALUES ('3546', '3446', '249', '2011款 TTS Roadster 2.0 TFSI quattro S tronic', null, 'A', '3446.jpg', '4', '停销', '70.8万', '2011', '停产', '跑车', 'system', '2018-04-12 10:26:01', 'system', '2018-04-12 10:26:01');
INSERT INTO car_config VALUES ('3547', '3447', '249', '2010款 典藏版 2.0TFSI', null, 'A', '3447.jpg', '4', '停销', '53.9万', '2010', '停产', '跑车', 'system', '2018-04-12 10:26:01', 'system', '2018-04-12 10:26:01');
INSERT INTO car_config VALUES ('3548', '3448', '249', '2008款 TT Roadster 2.0 TFSI S tronic', null, 'A', '3448.jpg', '4', '停销', '55.5万', '2008', '停产', '跑车', 'system', '2018-04-12 10:26:01', 'system', '2018-04-12 10:26:01');
INSERT INTO car_config VALUES ('3549', '3449', '249', '2008款 TTS Coupe 2.0 TFSI quattro S tronic', null, 'A', '3449.jpg', '4', '停销', '65.9万', '2008', '停产', '跑车', 'system', '2018-04-12 10:26:01', 'system', '2018-04-12 10:26:01');
INSERT INTO car_config VALUES ('3550', '3450', '249', '2008款 TTS Roadster 2.0TFSI quattro S tronic', null, 'A', '3450.jpg', '4', '停销', '70.5万', '2008', '停产', '跑车', 'system', '2018-04-12 10:26:02', 'system', '2018-04-12 10:26:02');
INSERT INTO car_config VALUES ('3551', '3451', '249', '2007款 TT Coupe 2.0 TFSI S tronic', null, 'A', '3451.jpg', '4', '停销', '50.9万', '2007', '停产', '跑车', 'system', '2018-04-12 10:26:02', 'system', '2018-04-12 10:26:02');
INSERT INTO car_config VALUES ('3552', '3452', '249', '2007款 3.2 quattro S tronic', null, 'A', '3452.jpg', '4', '停销', '64.5万', '2007', '停产', '跑车', 'system', '2018-04-12 10:26:02', 'system', '2018-04-12 10:26:02');
INSERT INTO car_config VALUES ('3553', '3453', '249', '2007款 TT coupe 3.2quattro', null, 'A', '3453.jpg', '4', '停销', '78万', '2007', '停产', '跑车', 'system', '2018-04-12 10:26:02', 'system', '2018-04-12 10:26:02');
INSERT INTO car_config VALUES ('3554', '3454', '249', '2005款 TT 3.2roadster', null, 'A', '3454.jpg', '4', '停销', '70万', '2005', '停产', '跑车', 'system', '2018-04-12 10:26:02', 'system', '2018-04-12 10:26:02');
INSERT INTO car_config VALUES ('3555', '3457', '249', '2003款 Roadster 1.8T quattro', null, 'A', '3457.jpg', '4', '停销', '57万', '2003', '停产', '跑车', 'system', '2018-04-12 10:26:02', 'system', '2018-04-12 10:26:02');
INSERT INTO car_config VALUES ('3556', '3456', '249', '2003款 TT Roadster1.8T quattro', null, 'A', '3456.jpg', '4', '停销', '59.2万', '2003', '停产', '跑车', 'system', '2018-04-12 10:26:02', 'system', '2018-04-12 10:26:02');
INSERT INTO car_config VALUES ('3557', '3455', '249', '2003款 TT coupe 1.8T quattro', null, 'A', '3455.jpg', '4', '停销', '51.2万', '2003', '停产', '跑车', 'system', '2018-04-12 10:26:02', 'system', '2018-04-12 10:26:02');
INSERT INTO car_config VALUES ('3558', '251', '228', 'Q2', null, 'A', 'http://pic1.jisuapi.cn/car/static/images/logo/300/251.JPG', '3', '待销', null, null, null, null, 'system', '2018-04-12 10:26:03', 'system', '2018-04-12 10:26:03');
INSERT INTO car_config VALUES ('3559', '43520', '251', '2018款 1.4TSI S-Line', null, 'A', '', '4', '待销', '暂无', '2018', '待产', '紧凑型SUV', 'system', '2018-04-12 10:26:03', 'system', '2018-04-12 10:26:03');
INSERT INTO car_config VALUES ('3560', '252', '228', 'Q8', null, 'A', 'http://pic1.jisuapi.cn/car/static/images/logo/300/252.jpg', '3', '待销', null, null, null, null, 'system', '2018-04-12 10:26:03', 'system', '2018-04-12 10:26:03');

-- ----------------------------
-- Table structure for `clientdetails`
-- ----------------------------
DROP TABLE IF EXISTS `clientdetails`;
CREATE TABLE `clientdetails` (
  `appId` varchar(128) NOT NULL,
  `resourceIds` varchar(256) DEFAULT NULL,
  `appSecret` varchar(256) DEFAULT NULL,
  `scope` varchar(256) DEFAULT NULL,
  `grantTypes` varchar(256) DEFAULT NULL,
  `redirectUrl` varchar(256) DEFAULT NULL,
  `authorities` varchar(256) DEFAULT NULL,
  `access_token_validity` int(11) DEFAULT NULL,
  `refresh_token_validity` int(11) DEFAULT NULL,
  `additionalInformation` varchar(4096) DEFAULT NULL,
  `autoApproveScopes` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`appId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of clientdetails
-- ----------------------------

-- ----------------------------
-- Table structure for `driver`
-- ----------------------------
DROP TABLE IF EXISTS `driver`;
CREATE TABLE `driver` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `sex` tinyint(4) NOT NULL DEFAULT '1' COMMENT '性别: 0 女 1 男',
  `phone` varchar(50) DEFAULT NULL COMMENT '手机号',
  `working_hours` double DEFAULT '0' COMMENT '工作时长',
  `rating` double NOT NULL DEFAULT '0' COMMENT '评分',
  `create_person` varchar(64) NOT NULL DEFAULT 'system' COMMENT '创建人',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_person` varchar(64) NOT NULL DEFAULT 'system' COMMENT '更新人',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='司机基础信息';

-- ----------------------------
-- Records of driver
-- ----------------------------
INSERT INTO driver VALUES ('1', 'mark', '1', '1567778888', '12', '5', 'system', '2018-04-12 14:29:11', 'system', '2018-04-12 14:29:11');

-- ----------------------------
-- Table structure for `driver_car`
-- ----------------------------
DROP TABLE IF EXISTS `driver_car`;
CREATE TABLE `driver_car` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `driver_id` bigint(20) NOT NULL,
  `car_id` bigint(20) NOT NULL,
  `license_number` varchar(100) DEFAULT NULL COMMENT '牌照',
  `create_person` varchar(64) NOT NULL DEFAULT 'system' COMMENT '创建人',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_person` varchar(64) NOT NULL DEFAULT 'system' COMMENT '更新人',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='司机车辆';

-- ----------------------------
-- Records of driver_car
-- ----------------------------

-- ----------------------------
-- Table structure for `driver_location`
-- ----------------------------
DROP TABLE IF EXISTS `driver_location`;
CREATE TABLE `driver_location` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `driver_id` bigint(20) DEFAULT NULL COMMENT '关联司机Id',
  `location_id` bigint(20) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0' COMMENT '状态: 0 无效 1 有效',
  `create_person` varchar(64) NOT NULL DEFAULT 'system' COMMENT '创建人',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_person` varchar(64) NOT NULL DEFAULT 'system' COMMENT '更新人',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='司机位置';

-- ----------------------------
-- Records of driver_location
-- ----------------------------
INSERT INTO driver_location VALUES ('1', '1', '17', '1', 'system', '2018-04-12 16:20:01', 'system', '2018-04-18 15:59:52');

-- ----------------------------
-- Table structure for `item`
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `gmt_create` datetime DEFAULT NULL,
  `gmt_modified` datetime DEFAULT NULL,
  `sales_area` varchar(9) DEFAULT NULL COMMENT '销售地区（省编号）',
  `face_price` varchar(20) DEFAULT NULL COMMENT '面值',
  `cost_price` int(11) DEFAULT NULL COMMENT '成本价格',
  `sales_price1` int(11) DEFAULT NULL COMMENT '销售价格',
  `sales_price2` int(11) DEFAULT NULL COMMENT '销售价格',
  `sales_price3` int(11) DEFAULT NULL COMMENT '销售价格',
  `carrier_type` tinyint(3) DEFAULT NULL COMMENT '运营商类型：1移动，2 电信，3联通',
  `item_category` tinyint(3) DEFAULT NULL COMMENT '商品类别（1充值，2兑换）',
  `item_type` tinyint(3) DEFAULT NULL COMMENT '商品类型：1流量，2话费，3兑换卡',
  `item_status` tinyint(3) DEFAULT NULL COMMENT '状态：1 初始，2正常，3下架',
  `item_no` varchar(50) DEFAULT NULL COMMENT '商品编号',
  `item_name` varchar(100) DEFAULT NULL COMMENT '商品名称',
  `item_desc` varchar(255) DEFAULT NULL COMMENT '商品描述',
  `flow_scope` tinyint(3) DEFAULT NULL COMMENT '使用范围：1本地，2全国',
  `flow_package_type` tinyint(3) DEFAULT NULL COMMENT '包体类型：1日包，2月包，3季度包，4年包',
  `flow_stream_type` tinyint(3) DEFAULT NULL COMMENT '通道类型：1全国，2分省',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='商品管理';

-- ----------------------------
-- Records of item
-- ----------------------------
INSERT INTO item VALUES ('2', '2018-01-05 14:34:05', '2018-01-05 14:41:13', '100000', '100元', '95000', '98000', '97000', '96000', '2', '2', '2', '2', '31100000100000', '全国移动100元充值卡', null, null, null, null);
INSERT INTO item VALUES ('3', '2018-01-05 14:34:36', '2018-01-05 14:41:10', '100000', '100元', '99000', '99800', '99600', '99400', '1', '1', '2', '2', '21100000100000', '全国移动100元话费', null, null, null, null);
INSERT INTO item VALUES ('5', '2018-01-05 14:44:09', '2018-01-05 17:57:56', '100000', '100MB', '1000', '3000', '2000', '1000', '1', '1', '1', '2', '11100000100111', '全国移动100MB流量全国月包全国', null, '1', '1', '1');
INSERT INTO item VALUES ('6', '2018-01-09 11:10:28', '2018-01-09 11:10:37', '100000', '50', '49000', '49800', '49600', '49400', '1', '1', '2', '2', '2110000050000', '全国移动50话费', null, null, null, null);

-- ----------------------------
-- Table structure for `item_supply`
-- ----------------------------
DROP TABLE IF EXISTS `item_supply`;
CREATE TABLE `item_supply` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `gmt_create` datetime DEFAULT NULL,
  `gmt_modified` datetime DEFAULT NULL,
  `item_status` tinyint(3) DEFAULT NULL COMMENT '状态：1 初始，2正常，3下架',
  `item_id` bigint(20) DEFAULT NULL COMMENT '商品iD',
  `item_no` varchar(50) DEFAULT NULL COMMENT '商品编号',
  `item_name` varchar(100) DEFAULT NULL COMMENT '商品名称',
  `supply_info_id` bigint(20) DEFAULT NULL COMMENT '供应商编号',
  `supply_code` varchar(50) DEFAULT NULL COMMENT '上游编码',
  `supply_name` varchar(255) DEFAULT NULL COMMENT '名称',
  `priority` tinyint(3) DEFAULT NULL COMMENT '优先级',
  `loss_type` tinyint(3) DEFAULT NULL COMMENT '是否折损',
  `loss_time` int(11) DEFAULT NULL COMMENT '折损次数',
  `face_price` varchar(20) DEFAULT NULL COMMENT '商品面值',
  `cost_price` int(11) DEFAULT NULL COMMENT '成本价',
  `supply_product_code` varchar(50) DEFAULT NULL COMMENT '上游商品ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='供应商商品管理';

-- ----------------------------
-- Records of item_supply
-- ----------------------------
INSERT INTO item_supply VALUES ('1', '2018-01-05 14:47:39', '2018-01-09 10:21:25', '2', '5', '11100000100111', '全国移动100MB流量全国月包全国', '2', 'longguochongzhi', '龙果充值', '10', null, null, '100MB', '2000', '');
INSERT INTO item_supply VALUES ('2', '2018-01-05 14:47:53', '2018-01-09 10:18:28', '2', '3', '21100000100000', '全国移动100元话费', '2', 'longguochongzhi', '龙果充值', '10', null, null, '100元', '99000', '');
INSERT INTO item_supply VALUES ('3', '2018-01-05 14:47:58', '2018-01-09 10:19:20', '2', '2', '31100000100000', '全国移动100元充值卡', '1', 'longguoduihuan', '龙果兑换', '10', null, null, '100元', '95000', '');
INSERT INTO item_supply VALUES ('4', '2018-01-09 15:16:17', '2018-01-09 15:16:17', '2', '6', '2110000050000', '全国移动50话费', '2', 'longguochongzhi', '龙果充值', '10', null, null, '50', '49000', '');

-- ----------------------------
-- Table structure for `location`
-- ----------------------------
DROP TABLE IF EXISTS `location`;
CREATE TABLE `location` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `latitude` varchar(50) DEFAULT NULL COMMENT '经度',
  `longitude` varchar(50) DEFAULT NULL COMMENT '纬度',
  `geo_hash` varchar(50) DEFAULT NULL COMMENT '哈希值',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `create_person` varchar(64) NOT NULL DEFAULT 'system' COMMENT '创建人',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_person` varchar(64) NOT NULL DEFAULT 'system' COMMENT '更新人',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COMMENT='地理信息表';

-- ----------------------------
-- Records of location
-- ----------------------------
INSERT INTO location VALUES ('11', '39.927205', '116.693739', 'wx4gpksb', '北京市通州区京贸国际城(芙蓉东路西)', 'system', '2018-04-16 15:02:52', 'system', '2018-04-17 17:06:14');
INSERT INTO location VALUES ('12', '39.937758', '116.140581', 'wx4e4y6y', '北京市石景山区广宁路20号附近', 'system', '2018-04-16 15:03:00', 'system', '2018-04-16 15:03:00');
INSERT INTO location VALUES ('13', '30.306312', '120.114451', 'wtmkmm0e', '浙江省杭州市拱墅区萍水街450', 'system', '2018-04-18 15:15:31', 'system', '2018-04-18 15:15:31');
INSERT INTO location VALUES ('14', '30.306312', '120.114451', 'wtmkmm0e', '浙江省杭州市拱墅区萍水街450', 'system', '2018-04-18 15:16:15', 'system', '2018-04-18 15:16:15');
INSERT INTO location VALUES ('15', '30.306312', '120.114451', 'wtmkmm0e', '浙江省杭州市拱墅区萍水街450', 'system', '2018-04-18 15:18:25', 'system', '2018-04-18 15:18:25');
INSERT INTO location VALUES ('16', '30.306312', '120.114451', 'wtmkmm0e', '浙江省杭州市拱墅区萍水街450', 'system', '2018-04-18 15:19:38', 'system', '2018-04-18 15:19:38');
INSERT INTO location VALUES ('17', '30.306312', '120.114451', 'wtmkmm0e', '浙江省杭州市拱墅区萍水街450', 'system', '2018-04-18 15:23:08', 'system', '2018-04-18 15:23:08');
INSERT INTO location VALUES ('18', '30.305116', '120.113861', 'wtmkmkbh', '浙江省杭州市拱墅区丰潭路380号城西银泰城F1层', 'system', '2018-04-18 15:30:22', 'system', '2018-04-18 15:30:22');
INSERT INTO location VALUES ('19', '30.316469', '120.089504', 'wtmkkwyw', '石祥西路s14号', 'system', '2018-04-18 15:30:22', 'system', '2018-04-18 15:30:22');
INSERT INTO location VALUES ('20', '30.305116', '120.113861', 'wtmkmkbh', '浙江省杭州市拱墅区丰潭路380号城西银泰城F1层', 'system', '2018-04-18 15:30:33', 'system', '2018-04-18 15:30:33');
INSERT INTO location VALUES ('21', '30.316469', '120.089504', 'wtmkkwyw', '石祥西路s14号', 'system', '2018-04-18 15:30:33', 'system', '2018-04-18 15:30:33');
INSERT INTO location VALUES ('22', '30.305116', '120.113861', 'wtmkmkbh', '浙江省杭州市拱墅区丰潭路380号城西银泰城F1层', 'system', '2018-04-18 15:38:55', 'system', '2018-04-18 15:38:55');
INSERT INTO location VALUES ('23', '30.316469', '120.089504', 'wtmkkwyw', '石祥西路s14号', 'system', '2018-04-18 15:38:55', 'system', '2018-04-18 15:38:55');
INSERT INTO location VALUES ('24', '30.305116', '120.113861', 'wtmkmkbh', '浙江省杭州市拱墅区丰潭路380号城西银泰城F1层', 'system', '2018-04-18 15:45:58', 'system', '2018-04-18 15:45:58');
INSERT INTO location VALUES ('25', '30.316469', '120.089504', 'wtmkkwyw', '石祥西路s14号', 'system', '2018-04-18 15:45:58', 'system', '2018-04-18 15:45:58');
INSERT INTO location VALUES ('26', '30.305116', '120.113861', 'wtmkmkbh', '浙江省杭州市拱墅区丰潭路380号城西银泰城F1层', 'system', '2018-04-18 15:57:57', 'system', '2018-04-18 15:57:57');
INSERT INTO location VALUES ('27', '30.316469', '120.089504', 'wtmkkwyw', '', 'system', '2018-04-18 15:57:57', 'system', '2018-04-18 15:57:57');
INSERT INTO location VALUES ('28', '30.305116', '120.113861', 'wtmkmkbh', '浙江省杭州市拱墅区丰潭路380号城西银泰城F1层', 'system', '2018-04-18 15:58:34', 'system', '2018-04-18 15:58:34');
INSERT INTO location VALUES ('29', '30.316469', '120.089504', 'wtmkkwyw', 'rewrewrewrew', 'system', '2018-04-18 15:58:34', 'system', '2018-04-18 15:58:34');
INSERT INTO location VALUES ('30', '30.305116', '120.113861', 'wtmkmkbh', '浙江省杭州市拱墅区丰潭路380号城西银泰城F1层', 'system', '2018-04-18 16:02:23', 'system', '2018-04-18 16:02:23');
INSERT INTO location VALUES ('31', '30.316469', '120.089504', 'wtmkkwyw', 'rewrewrewrew', 'system', '2018-04-18 16:02:23', 'system', '2018-04-18 16:02:23');
INSERT INTO location VALUES ('32', '30.305116', '120.113861', 'wtmkmkbh', '浙江省杭州市拱墅区丰潭路380号城西银泰城F1层', 'system', '2018-04-18 16:05:12', 'system', '2018-04-18 16:05:12');
INSERT INTO location VALUES ('33', '30.316469', '120.089504', 'wtmkkwyw', 'rewrewrewrew', 'system', '2018-04-18 16:05:12', 'system', '2018-04-18 16:05:12');
INSERT INTO location VALUES ('34', '30.305116', '120.113861', 'wtmkmkbh', '浙江省杭州市拱墅区丰潭路380号城西银泰城F1层', 'system', '2018-04-18 16:06:52', 'system', '2018-04-18 16:06:52');
INSERT INTO location VALUES ('35', '30.316469', '120.089504', 'wtmkkwyw', 'daadas', 'system', '2018-04-18 16:06:52', 'system', '2018-04-18 16:06:52');
INSERT INTO location VALUES ('36', '30.306787', '120.115195', 'wtmkmm1j', '大大大鳄问问我', 'system', '2018-04-27 11:21:05', 'system', '2018-04-27 11:21:05');
INSERT INTO location VALUES ('37', '30.280821', '120.095325', 'wtmkkb6w', '但撒的撒打算嘻', 'system', '2018-04-27 11:21:05', 'system', '2018-04-27 11:21:05');
INSERT INTO location VALUES ('38', '30.306787', '120.115195', 'wtmkmm1j', '大大大鳄问问我', 'system', '2018-04-27 11:21:45', 'system', '2018-04-27 11:21:45');
INSERT INTO location VALUES ('39', '30.280821', '120.095325', 'wtmkkb6w', '但撒的撒打算嘻', 'system', '2018-04-27 11:21:46', 'system', '2018-04-27 11:21:46');

-- ----------------------------
-- Table structure for `merchant_info`
-- ----------------------------
DROP TABLE IF EXISTS `merchant_info`;
CREATE TABLE `merchant_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `gmt_create` datetime DEFAULT NULL,
  `gmt_modified` datetime DEFAULT NULL,
  `status_id` tinyint(3) DEFAULT NULL COMMENT '1 正常 2 冻结 9 注销',
  `user_info_id` bigint(20) DEFAULT NULL COMMENT '用户ID',
  `acct_info_id` bigint(20) DEFAULT NULL COMMENT '账户ID',
  `app_id` varchar(50) DEFAULT NULL COMMENT 'APPID',
  `price_level` tinyint(3) DEFAULT NULL COMMENT '价格级别(对应商品的销售价位)',
  `nick_name` varchar(50) DEFAULT NULL COMMENT '昵称',
  `compay_name` varchar(255) DEFAULT NULL COMMENT '公司全称',
  `charging_limit` int(11) DEFAULT NULL COMMENT '充值限制',
  `warning_balance` int(11) DEFAULT NULL COMMENT '余额阈值',
  `deposit_balance` int(1) DEFAULT NULL COMMENT '保证金',
  `api_verify_type` tinyint(3) DEFAULT NULL COMMENT '接口校验类型：1秘钥，2秘钥+白名单',
  `app_seceret` varchar(255) DEFAULT NULL COMMENT 'AppSeceret',
  `white_list` varchar(511) DEFAULT NULL COMMENT '白名单',
  `tx_verify_type` tinyint(3) DEFAULT NULL COMMENT '提现校验类型：1支付密码，2支付密码+动态码',
  `pay_pwd` char(32) DEFAULT NULL COMMENT '支付密码',
  `verify_code_key` varchar(255) DEFAULT NULL COMMENT '动态秘钥',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='下游代理商';

-- ----------------------------
-- Records of merchant_info
-- ----------------------------
INSERT INTO merchant_info VALUES ('1', '2018-03-19 22:04:52', '2018-03-19 22:04:52', '1', '2', '1', 'RCbc0f20736d264c96b525d62e97428aba', '1', '测试用户', '测试公司', '500', '1000', '2000', '1', '6bdef1a23d5c466cadf51dccd651f7ba', '', '1', '123456', '');

-- ----------------------------
-- Table structure for `mobile_info`
-- ----------------------------
DROP TABLE IF EXISTS `mobile_info`;
CREATE TABLE `mobile_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `mobile_prefix` char(7) DEFAULT NULL COMMENT '号码片段',
  `province_code` char(6) DEFAULT NULL COMMENT '省份代码',
  `city_code` char(6) DEFAULT NULL COMMENT '市代码',
  `area_code` char(4) DEFAULT NULL COMMENT '区号',
  `province_name` varchar(10) DEFAULT NULL COMMENT '省份',
  `city_name` varchar(20) DEFAULT NULL COMMENT '市',
  `carrier_name` varchar(10) DEFAULT NULL COMMENT '运营商名称',
  `carrier_type` tinyint(3) DEFAULT NULL COMMENT '运营商类型：1移动，2 电信，3联通',
  PRIMARY KEY (`id`),
  KEY `index_mobile` (`mobile_prefix`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=282044 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='号码归属地';

-- ----------------------------
-- Records of mobile_info
-- ----------------------------
INSERT INTO mobile_info VALUES ('1', '1300000', '110000', '110000', '010', '北京', '北京', '联通', '3');
INSERT INTO mobile_info VALUES ('2', '1300001', '320000', '320400', '0519', '江苏', '常州', '联通', '3');
INSERT INTO mobile_info VALUES ('3', '1300006', '320000', '320100', '025', '江苏', '南京', '联通', '3');
INSERT INTO mobile_info VALUES ('4', '1300008', '420000', '', '027', '湖北', '武汉', '联通', '3');
INSERT INTO mobile_info VALUES ('5', '1300010', '110000', '110000', '010', '北京', '北京', '联通', '3');
INSERT INTO mobile_info VALUES ('6', '1300011', '110000', '110000', '010', '北京', '北京', '联通', '3');
INSERT INTO mobile_info VALUES ('7', '1300012', '120000', '120000', '022', '天津', '天津', '联通', '3');
INSERT INTO mobile_info VALUES ('8', '1300013', '120000', '120000', '022', '天津', '天津', '联通', '3');
INSERT INTO mobile_info VALUES ('9', '1300014', '120000', '120000', '022', '天津', '天津', '联通', '3');
INSERT INTO mobile_info VALUES ('10', '1300015', '370000', '370300', '0533', '山东', '淄博', '联通', '3');
INSERT INTO mobile_info VALUES ('11', '1300016', '370000', '370600', '0535', '山东', '烟台', '联通', '3');
INSERT INTO mobile_info VALUES ('12', '1300017', '370000', '370100', '0531', '山东', '济南', '联通', '3');
INSERT INTO mobile_info VALUES ('13', '1300018', '120000', '120000', '022', '天津', '天津', '联通', '3');
INSERT INTO mobile_info VALUES ('14', '1300019', '120000', '120000', '022', '天津', '天津', '联通', '3');
INSERT INTO mobile_info VALUES ('15', '1300020', '310000', '310000', '021', '上海', '上海', '联通', '3');
INSERT INTO mobile_info VALUES ('16', '1300021', '310000', '310000', '021', '上海', '上海', '联通', '3');
INSERT INTO mobile_info VALUES ('17', '1300022', '310000', '310000', '021', '上海', '上海', '联通', '3');
INSERT INTO mobile_info VALUES ('18', '1300023', '310000', '310000', '021', '上海', '上海', '联通', '3');
INSERT INTO mobile_info VALUES ('19', '1300024', '310000', '310000', '021', '上海', '上海', '联通', '3');
INSERT INTO mobile_info VALUES ('20', '1300025', '320000', '320100', '025', '江苏', '南京', '联通', '3');
INSERT INTO mobile_info VALUES ('21', '1300026', '320000', '320100', '025', '江苏', '南京', '联通', '3');
INSERT INTO mobile_info VALUES ('22', '1300027', '370000', '370600', '0535', '山东', '烟台', '联通', '3');
INSERT INTO mobile_info VALUES ('23', '1300028', '320000', '320100', '025', '江苏', '南京', '联通', '3');
INSERT INTO mobile_info VALUES ('24', '1300029', '320000', '320100', '025', '江苏', '南京', '联通', '3');
INSERT INTO mobile_info VALUES ('25', '1300030', '320000', '320100', '025', '江苏', '南京', '联通', '3');


-- ----------------------------
-- Table structure for `oauth_access_token`
-- ----------------------------
DROP TABLE IF EXISTS `oauth_access_token`;
CREATE TABLE `oauth_access_token` (
  `token_id` varchar(256) DEFAULT NULL,
  `token` blob,
  `authentication_id` varchar(128) NOT NULL,
  `user_name` varchar(256) DEFAULT NULL,
  `client_id` varchar(256) DEFAULT NULL,
  `authentication` blob,
  `refresh_token` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`authentication_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oauth_access_token
-- ----------------------------
INSERT INTO oauth_access_token VALUES ('4a3b61b2273ed77fa72e98f8156fc321', 0xACED0005737200436F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E636F6D6D6F6E2E44656661756C744F4175746832416363657373546F6B656E0CB29E361B24FACE0200064C00156164646974696F6E616C496E666F726D6174696F6E74000F4C6A6176612F7574696C2F4D61703B4C000A65787069726174696F6E7400104C6A6176612F7574696C2F446174653B4C000C72656672657368546F6B656E74003F4C6F72672F737072696E676672616D65776F726B2F73656375726974792F6F61757468322F636F6D6D6F6E2F4F417574683252656672657368546F6B656E3B4C000573636F706574000F4C6A6176612F7574696C2F5365743B4C0009746F6B656E547970657400124C6A6176612F6C616E672F537472696E673B4C000576616C756571007E000578707372001E6A6176612E7574696C2E436F6C6C656374696F6E7324456D7074794D6170593614855ADCE7D002000078707372000E6A6176612E7574696C2E44617465686A81014B5974190300007870770800000167ABC7A31F7870737200256A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65536574801D92D18F9B80550200007872002C6A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65436F6C6C656374696F6E19420080CB5EF71E0200014C0001637400164C6A6176612F7574696C2F436F6C6C656374696F6E3B7870737200176A6176612E7574696C2E4C696E6B656448617368536574D86CD75A95DD2A1E020000787200116A6176612E7574696C2E48617368536574BA44859596B8B7340300007870770C000000023F400000000000017400036170707874000662656172657274002461383362666333342D303730372D346264622D393134372D366664393661613638666533, 'c2086e03389e60b9845aa0373396df58', null, 'acme', 0xACED0005737200416F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E4F417574683241757468656E7469636174696F6EBD400B02166252130200024C000D73746F7265645265717565737474003C4C6F72672F737072696E676672616D65776F726B2F73656375726974792F6F61757468322F70726F76696465722F4F4175746832526571756573743B4C00127573657241757468656E7469636174696F6E7400324C6F72672F737072696E676672616D65776F726B2F73656375726974792F636F72652F41757468656E7469636174696F6E3B787200476F72672E737072696E676672616D65776F726B2E73656375726974792E61757468656E7469636174696F6E2E416273747261637441757468656E7469636174696F6E546F6B656ED3AA287E6E47640E0200035A000D61757468656E746963617465644C000B617574686F7269746965737400164C6A6176612F7574696C2F436F6C6C656374696F6E3B4C000764657461696C737400124C6A6176612F6C616E672F4F626A6563743B787000737200266A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C654C697374FC0F2531B5EC8E100200014C00046C6973747400104C6A6176612F7574696C2F4C6973743B7872002C6A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65436F6C6C656374696F6E19420080CB5EF71E0200014C00016371007E00047870737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000007704000000007871007E000C707372003A6F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E4F41757468325265717565737400000000000000010200075A0008617070726F7665644C000B617574686F72697469657371007E00044C000A657874656E73696F6E7374000F4C6A6176612F7574696C2F4D61703B4C000B72656469726563745572697400124C6A6176612F6C616E672F537472696E673B4C00077265667265736874003B4C6F72672F737072696E676672616D65776F726B2F73656375726974792F6F61757468322F70726F76696465722F546F6B656E526571756573743B4C000B7265736F7572636549647374000F4C6A6176612F7574696C2F5365743B4C000D726573706F6E7365547970657371007E0011787200386F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E426173655265717565737436287A3EA37169BD0200034C0008636C69656E74496471007E000F4C001172657175657374506172616D657465727371007E000E4C000573636F706571007E0011787074000461636D65737200256A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C654D6170F1A5A8FE74F507420200014C00016D71007E000E7870737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F400000000000067708000000080000000374000A6772616E745F74797065740012636C69656E745F63726564656E7469616C73740009636C69656E745F696474000461636D6574000573636F706574000361707078737200256A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65536574801D92D18F9B80550200007871007E0009737200176A6176612E7574696C2E4C696E6B656448617368536574D86CD75A95DD2A1E020000787200116A6176612E7574696C2E48617368536574BA44859596B8B7340300007870770C000000103F4000000000000171007E001E78017371007E0022770C000000103F40000000000000787371007E00173F40000000000000770800000010000000007870707371007E0022770C000000103F4000000000000174000F6F61757468322D7265736F75726365787371007E0022770C000000103F400000000000007870, null);

-- ----------------------------
-- Table structure for `oauth_approvals`
-- ----------------------------
DROP TABLE IF EXISTS `oauth_approvals`;
CREATE TABLE `oauth_approvals` (
  `userId` varchar(256) DEFAULT NULL,
  `clientId` varchar(256) DEFAULT NULL,
  `scope` varchar(256) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `expiresAt` datetime DEFAULT NULL,
  `lastModifiedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oauth_approvals
-- ----------------------------

-- ----------------------------
-- Table structure for `oauth_client_details`
-- ----------------------------
DROP TABLE IF EXISTS `oauth_client_details`;
CREATE TABLE `oauth_client_details` (
  `client_id` varchar(128) NOT NULL,
  `resource_ids` varchar(256) DEFAULT NULL,
  `client_secret` varchar(256) DEFAULT NULL,
  `scope` varchar(256) DEFAULT NULL,
  `authorized_grant_types` varchar(256) DEFAULT NULL,
  `web_server_redirect_uri` varchar(256) DEFAULT NULL,
  `authorities` varchar(256) DEFAULT NULL,
  `access_token_validity` int(11) DEFAULT NULL,
  `refresh_token_validity` int(11) DEFAULT NULL,
  `additional_information` varchar(4096) DEFAULT NULL,
  `autoapprove` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oauth_client_details
-- ----------------------------
INSERT INTO oauth_client_details VALUES ('acme', 'oauth2-resource', 'acmesecret', 'app', 'client_credentials', '', null, null, null, null, 'app');
INSERT INTO oauth_client_details VALUES ('client', 'oauth2-resource', 'secret', 'app', 'authorization_code', '', null, null, null, null, null);
INSERT INTO oauth_client_details VALUES ('my-trusted-client', 'oauth2-resource', null, 'read', 'authorization_code', null, null, null, null, null, '');

-- ----------------------------
-- Table structure for `oauth_client_token`
-- ----------------------------
DROP TABLE IF EXISTS `oauth_client_token`;
CREATE TABLE `oauth_client_token` (
  `token_id` varchar(256) DEFAULT NULL,
  `token` blob,
  `authentication_id` varchar(128) NOT NULL,
  `user_name` varchar(256) DEFAULT NULL,
  `client_id` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`authentication_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oauth_client_token
-- ----------------------------

-- ----------------------------
-- Table structure for `oauth_code`
-- ----------------------------
DROP TABLE IF EXISTS `oauth_code`;
CREATE TABLE `oauth_code` (
  `code` varchar(256) DEFAULT NULL,
  `authentication` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oauth_code
-- ----------------------------

-- ----------------------------
-- Table structure for `oauth_refresh_token`
-- ----------------------------
DROP TABLE IF EXISTS `oauth_refresh_token`;
CREATE TABLE `oauth_refresh_token` (
  `token_id` varchar(256) DEFAULT NULL,
  `token` blob,
  `authentication` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oauth_refresh_token
-- ----------------------------

-- ----------------------------
-- Table structure for `order_supply`
-- ----------------------------
DROP TABLE IF EXISTS `order_supply`;
CREATE TABLE `order_supply` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `gmt_create` datetime DEFAULT NULL,
  `gmt_modified` datetime DEFAULT NULL,
  `order_status` tinyint(3) DEFAULT NULL COMMENT '0创建 1处理中 2 成功 3 失败 9 未确认',
  `order_trade_no` bigint(20) DEFAULT NULL COMMENT '平台交易号',
  `item_supply_id` bigint(20) DEFAULT NULL COMMENT '供应商商品ID',
  `user_info_id` bigint(20) DEFAULT NULL COMMENT '用户ID',
  `item_id` bigint(20) DEFAULT NULL COMMENT '商品ID',
  `item_category` tinyint(3) DEFAULT NULL COMMENT '商品类别（1充值，2兑换）',
  `item_type` tinyint(3) DEFAULT NULL COMMENT '商品类型：1流量，2话费',
  `item_no` varchar(50) DEFAULT NULL COMMENT '商品编号',
  `item_name` varchar(100) DEFAULT NULL COMMENT '商品名称',
  `mobile` char(11) DEFAULT NULL COMMENT '客户手机号码',
  `supply_info_id` bigint(20) DEFAULT NULL COMMENT '上游商户编号',
  `supply_code` varchar(50) DEFAULT NULL COMMENT '上游编码',
  `supply_name` varchar(50) DEFAULT NULL COMMENT '上游商户名称',
  `supply_serial_no` bigint(20) DEFAULT NULL COMMENT '上游供货流水号',
  `supply_face_price` varchar(20) DEFAULT NULL COMMENT '商品面值',
  `supply_cost_price` int(11) DEFAULT NULL COMMENT '平台录入成本价',
  `supply_actual_cost` int(11) DEFAULT NULL COMMENT '上游实际扣款价',
  `supply_desc` varchar(200) DEFAULT NULL COMMENT '上游充值信息',
  `repeat_type` tinyint(3) DEFAULT NULL COMMENT '是否补充',
  PRIMARY KEY (`id`),
  KEY `index_bizorder` (`order_trade_no`) USING BTREE,
  KEY `index_date_biz_trader` (`gmt_create`,`supply_info_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='供应商订单';

-- ----------------------------
-- Records of order_supply
-- ----------------------------
INSERT INTO order_supply VALUES ('1', '2018-03-19 23:00:07', '2018-03-19 23:00:07', '2', '2018031923000607594', '3', '2', '2', '2', '2', '31100000100000', '全国移动100元充值卡', '', '1', 'longguoduihuan', '龙果兑换', '975748755587862529', '100元', '95000', '98000', '成功', null);
INSERT INTO order_supply VALUES ('2', '2018-03-19 23:00:07', '2018-03-19 23:00:07', '2', '2018031923000683451', '3', '2', '2', '2', '2', '31100000100000', '全国移动100元充值卡', '', '1', 'longguoduihuan', '龙果兑换', '975748755801772033', '100元', '95000', '98000', '成功', null);
INSERT INTO order_supply VALUES ('3', '2018-03-19 23:00:07', '2018-03-19 23:00:07', '2', '2018031923000679197', '3', '2', '2', '2', '2', '31100000100000', '全国移动100元充值卡', '', '1', 'longguoduihuan', '龙果兑换', '975748755944378369', '100元', '95000', '98000', '成功', null);
INSERT INTO order_supply VALUES ('4', '2018-03-19 23:00:07', '2018-03-19 23:00:07', '2', '2018031923000654834', '3', '2', '2', '2', '2', '31100000100000', '全国移动100元充值卡', '', '1', 'longguoduihuan', '龙果兑换', '975748756066013186', '100元', '95000', '98000', '成功', null);
INSERT INTO order_supply VALUES ('5', '2018-03-19 23:00:07', '2018-03-19 23:00:07', '2', '2018031923000600798', '3', '2', '2', '2', '2', '31100000100000', '全国移动100元充值卡', '', '1', 'longguoduihuan', '龙果兑换', '975748756200230913', '100元', '95000', '98000', '成功', null);
INSERT INTO order_supply VALUES ('6', '2018-03-19 23:00:07', '2018-03-19 23:00:07', '2', '2018031923000603379', '3', '2', '2', '2', '2', '31100000100000', '全国移动100元充值卡', '', '1', 'longguoduihuan', '龙果兑换', '975748756342837250', '100元', '95000', '98000', '成功', null);
INSERT INTO order_supply VALUES ('7', '2018-03-19 23:00:07', '2018-03-19 23:00:07', '2', '2018031923000645370', '3', '2', '2', '2', '2', '31100000100000', '全国移动100元充值卡', '', '1', 'longguoduihuan', '龙果兑换', '975748756481249281', '100元', '95000', '98000', '成功', null);
INSERT INTO order_supply VALUES ('8', '2018-03-19 23:00:07', '2018-03-19 23:00:07', '2', '2018031923000667778', '3', '2', '2', '2', '2', '31100000100000', '全国移动100元充值卡', '', '1', 'longguoduihuan', '龙果兑换', '975748756644827138', '100元', '95000', '98000', '成功', null);
INSERT INTO order_supply VALUES ('9', '2018-03-19 23:00:07', '2018-03-19 23:00:07', '2', '2018031923000686114', '3', '2', '2', '2', '2', '31100000100000', '全国移动100元充值卡', '', '1', 'longguoduihuan', '龙果兑换', '975748756829376513', '100元', '95000', '98000', '成功', null);
INSERT INTO order_supply VALUES ('10', '2018-03-19 23:00:07', '2018-03-19 23:00:07', '2', '2018031923000654482', '3', '2', '2', '2', '2', '31100000100000', '全国移动100元充值卡', '', '1', 'longguoduihuan', '龙果兑换', '975748757034897409', '100元', '95000', '98000', '成功', null);
INSERT INTO order_supply VALUES ('11', '2018-03-19 23:00:07', '2018-03-19 23:00:07', '2', '2018031923000704108', '3', '2', '2', '2', '2', '31100000100000', '全国移动100元充值卡', '', '1', 'longguoduihuan', '龙果兑换', '975748757672431617', '100元', '95000', '98000', '成功', null);
INSERT INTO order_supply VALUES ('12', '2018-03-19 23:00:07', '2018-03-19 23:00:07', '2', '2018031923000784885', '3', '2', '2', '2', '2', '31100000100000', '全国移动100元充值卡', '', '1', 'longguoduihuan', '龙果兑换', '975748757865369601', '100元', '95000', '98000', '成功', null);
INSERT INTO order_supply VALUES ('13', '2018-03-19 23:00:07', '2018-03-19 23:00:07', '2', '2018031923000773772', '3', '2', '2', '2', '2', '31100000100000', '全国移动100元充值卡', '', '1', 'longguoduihuan', '龙果兑换', '975748758708424705', '100元', '95000', '98000', '成功', null);
INSERT INTO order_supply VALUES ('14', '2018-03-19 23:00:07', '2018-03-19 23:00:08', '2', '2018031923000727605', '3', '2', '2', '2', '2', '31100000100000', '全国移动100元充值卡', '', '1', 'longguoduihuan', '龙果兑换', '975748759236907010', '100元', '95000', '98000', '成功', null);
INSERT INTO order_supply VALUES ('15', '2018-03-19 23:00:07', '2018-03-19 23:00:08', '2', '2018031923000721943', '3', '2', '2', '2', '2', '31100000100000', '全国移动100元充值卡', '', '1', 'longguoduihuan', '龙果兑换', '975748759459205122', '100元', '95000', '98000', '成功', null);
INSERT INTO order_supply VALUES ('16', '2018-03-19 23:00:07', '2018-03-19 23:00:08', '2', '2018031923000719301', '3', '2', '2', '2', '2', '31100000100000', '全国移动100元充值卡', '', '1', 'longguoduihuan', '龙果兑换', '975748759593422849', '100元', '95000', '98000', '成功', null);
INSERT INTO order_supply VALUES ('17', '2018-03-19 23:00:08', '2018-03-19 23:00:08', '2', '2018031923000715905', '3', '2', '2', '2', '2', '31100000100000', '全国移动100元充值卡', '', '1', 'longguoduihuan', '龙果兑换', '975748759731834881', '100元', '95000', '98000', '成功', null);
INSERT INTO order_supply VALUES ('18', '2018-03-19 23:00:08', '2018-03-19 23:00:08', '2', '2018031923000748266', '3', '2', '2', '2', '2', '31100000100000', '全国移动100元充值卡', '', '1', 'longguoduihuan', '龙果兑换', '975748759933161473', '100元', '95000', '98000', '成功', null);
INSERT INTO order_supply VALUES ('19', '2018-03-19 23:00:08', '2018-03-19 23:00:08', '2', '2018031923000782027', '3', '2', '2', '2', '2', '31100000100000', '全国移动100元充值卡', '', '1', 'longguoduihuan', '龙果兑换', '975748760117710849', '100元', '95000', '98000', '成功', null);
INSERT INTO order_supply VALUES ('20', '2018-03-19 23:00:08', '2018-03-19 23:00:08', '2', '2018031923000793562', '3', '2', '2', '2', '2', '31100000100000', '全国移动100元充值卡', '', '1', 'longguoduihuan', '龙果兑换', '975748760281288706', '100元', '95000', '98000', '成功', null);
INSERT INTO order_supply VALUES ('21', '2018-03-19 23:00:08', '2018-03-19 23:00:08', '2', '2018031923000777545', '3', '2', '2', '2', '2', '31100000100000', '全国移动100元充值卡', '', '1', 'longguoduihuan', '龙果兑换', '975748760415506433', '100元', '95000', '98000', '成功', null);
INSERT INTO order_supply VALUES ('22', '2018-03-19 23:00:08', '2018-03-19 23:00:08', '2', '2018031923000798571', '3', '2', '2', '2', '2', '31100000100000', '全国移动100元充值卡', '', '1', 'longguoduihuan', '龙果兑换', '975748760553918466', '100元', '95000', '98000', '成功', null);
INSERT INTO order_supply VALUES ('23', '2018-03-19 23:00:08', '2018-03-19 23:00:08', '2', '2018031923000793167', '3', '2', '2', '2', '2', '31100000100000', '全国移动100元充值卡', '', '1', 'longguoduihuan', '龙果兑换', '975748760713302018', '100元', '95000', '98000', '成功', null);
INSERT INTO order_supply VALUES ('24', '2018-03-19 23:00:08', '2018-03-19 23:00:08', '2', '2018031923000720377', '3', '2', '2', '2', '2', '31100000100000', '全国移动100元充值卡', '', '1', 'longguoduihuan', '龙果兑换', '975748760855908353', '100元', '95000', '98000', '成功', null);
INSERT INTO order_supply VALUES ('25', '2018-03-19 23:00:08', '2018-03-19 23:00:08', '2', '2018031923000739622', '3', '2', '2', '2', '2', '31100000100000', '全国移动100元充值卡', '', '1', 'longguoduihuan', '龙果兑换', '975748761002708993', '100元', '95000', '98000', '成功', null);
INSERT INTO order_supply VALUES ('26', '2018-03-19 23:00:08', '2018-03-19 23:00:08', '2', '2018031923000785299', '3', '2', '2', '2', '2', '31100000100000', '全国移动100元充值卡', '', '1', 'longguoduihuan', '龙果兑换', '975748761493442561', '100元', '95000', '98000', '成功', null);
INSERT INTO order_supply VALUES ('27', '2018-03-19 23:00:08', '2018-03-19 23:00:08', '2', '2018031923000729141', '3', '2', '2', '2', '2', '31100000100000', '全国移动100元充值卡', '', '1', 'longguoduihuan', '龙果兑换', '975748761623465985', '100元', '95000', '98000', '成功', null);
INSERT INTO order_supply VALUES ('28', '2018-03-19 23:00:08', '2018-03-19 23:00:08', '2', '2018031923000787838', '3', '2', '2', '2', '2', '31100000100000', '全国移动100元充值卡', '', '1', 'longguoduihuan', '龙果兑换', '975748761749295106', '100元', '95000', '98000', '成功', null);
INSERT INTO order_supply VALUES ('29', '2018-03-19 23:00:08', '2018-03-19 23:00:08', '2', '2018031923000825751', '3', '2', '2', '2', '2', '31100000100000', '全国移动100元充值卡', '', '1', 'longguoduihuan', '龙果兑换', '975748761862541313', '100元', '95000', '98000', '成功', null);
INSERT INTO order_supply VALUES ('30', '2018-03-19 23:00:08', '2018-03-19 23:00:08', '2', '2018031923000883995', '3', '2', '2', '2', '2', '31100000100000', '全国移动100元充值卡', '', '1', 'longguoduihuan', '龙果兑换', '975748761984176130', '100元', '95000', '98000', '成功', null);
INSERT INTO order_supply VALUES ('31', '2018-03-19 23:00:08', '2018-03-19 23:00:08', '2', '2018031923000867711', '3', '2', '2', '2', '2', '31100000100000', '全国移动100元充值卡', '', '1', 'longguoduihuan', '龙果兑换', '975748762118393858', '100元', '95000', '98000', '成功', null);
INSERT INTO order_supply VALUES ('32', '2018-03-19 23:00:08', '2018-03-19 23:00:08', '2', '2018031923000865157', '3', '2', '2', '2', '2', '31100000100000', '全国移动100元充值卡', '', '1', 'longguoduihuan', '龙果兑换', '975748762261000193', '100元', '95000', '98000', '成功', null);
INSERT INTO order_supply VALUES ('33', '2018-03-19 23:00:08', '2018-03-19 23:00:08', '2', '2018031923000868731', '3', '2', '2', '2', '2', '31100000100000', '全国移动100元充值卡', '', '1', 'longguoduihuan', '龙果兑换', '975748762420383746', '100元', '95000', '98000', '成功', null);
INSERT INTO order_supply VALUES ('34', '2018-03-19 23:00:08', '2018-03-19 23:00:08', '2', '2018031923000846406', '3', '2', '2', '2', '2', '31100000100000', '全国移动100元充值卡', '', '1', 'longguoduihuan', '龙果兑换', '975748762554601474', '100元', '95000', '98000', '成功', null);
INSERT INTO order_supply VALUES ('35', '2018-03-19 23:00:08', '2018-03-19 23:00:08', '2', '2018031923000859508', '3', '2', '2', '2', '2', '31100000100000', '全国移动100元充值卡', '', '1', 'longguoduihuan', '龙果兑换', '975748762680430593', '100元', '95000', '98000', '成功', null);
INSERT INTO order_supply VALUES ('36', '2018-03-19 23:00:08', '2018-03-19 23:00:08', '2', '2018031923000833066', '3', '2', '2', '2', '2', '31100000100000', '全国移动100元充值卡', '', '1', 'longguoduihuan', '龙果兑换', '975748762823036930', '100元', '95000', '98000', '成功', null);
INSERT INTO order_supply VALUES ('37', '2018-03-19 23:00:08', '2018-03-19 23:00:08', '2', '2018031923000844479', '3', '2', '2', '2', '2', '31100000100000', '全国移动100元充值卡', '', '1', 'longguoduihuan', '龙果兑换', '975748762957254658', '100元', '95000', '98000', '成功', null);
INSERT INTO order_supply VALUES ('38', '2018-03-19 23:00:08', '2018-03-19 23:00:08', '2', '2018031923000883871', '3', '2', '2', '2', '2', '31100000100000', '全国移动100元充值卡', '', '1', 'longguoduihuan', '龙果兑换', '975748763095666689', '100元', '95000', '98000', '成功', null);
INSERT INTO order_supply VALUES ('39', '2018-03-19 23:00:08', '2018-03-19 23:00:08', '2', '2018031923000878187', '3', '2', '2', '2', '2', '31100000100000', '全国移动100元充值卡', '', '1', 'longguoduihuan', '龙果兑换', '975748763225690113', '100元', '95000', '98000', '成功', null);
INSERT INTO order_supply VALUES ('40', '2018-03-19 23:00:08', '2018-03-19 23:00:08', '2', '2018031923000849610', '3', '2', '2', '2', '2', '31100000100000', '全国移动100元充值卡', '', '1', 'longguoduihuan', '龙果兑换', '975748763359907841', '100元', '95000', '98000', '成功', null);
INSERT INTO order_supply VALUES ('41', '2018-03-19 23:00:08', '2018-03-19 23:00:09', '2', '2018031923000816118', '3', '2', '2', '2', '2', '31100000100000', '全国移动100元充值卡', '', '1', 'longguoduihuan', '龙果兑换', '975748763515097089', '100元', '95000', '98000', '成功', null);
INSERT INTO order_supply VALUES ('42', '2018-03-19 23:00:08', '2018-03-19 23:00:09', '2', '2018031923000855830', '3', '2', '2', '2', '2', '31100000100000', '全国移动100元充值卡', '', '1', 'longguoduihuan', '龙果兑换', '975748763661897730', '100元', '95000', '98000', '成功', null);
INSERT INTO order_supply VALUES ('43', '2018-03-19 23:00:08', '2018-03-19 23:00:09', '2', '2018031923000870710', '3', '2', '2', '2', '2', '31100000100000', '全国移动100元充值卡', '', '1', 'longguoduihuan', '龙果兑换', '975748763787726849', '100元', '95000', '98000', '成功', null);
INSERT INTO order_supply VALUES ('44', '2018-03-19 23:00:09', '2018-03-19 23:00:09', '2', '2018031923000819676', '3', '2', '2', '2', '2', '31100000100000', '全国移动100元充值卡', '', '1', 'longguoduihuan', '龙果兑换', '975748763913555970', '100元', '95000', '98000', '成功', null);
INSERT INTO order_supply VALUES ('45', '2018-03-19 23:00:09', '2018-03-19 23:00:09', '2', '2018031923000852367', '3', '2', '2', '2', '2', '31100000100000', '全国移动100元充值卡', '', '1', 'longguoduihuan', '龙果兑换', '975748764035190786', '100元', '95000', '98000', '成功', null);
INSERT INTO order_supply VALUES ('46', '2018-03-19 23:00:09', '2018-03-19 23:00:09', '2', '2018031923000857056', '3', '2', '2', '2', '2', '31100000100000', '全国移动100元充值卡', '', '1', 'longguoduihuan', '龙果兑换', '975748764173602818', '100元', '95000', '98000', '成功', null);
INSERT INTO order_supply VALUES ('47', '2018-03-19 23:00:09', '2018-03-19 23:00:09', '2', '2018031923000851525', '3', '2', '2', '2', '2', '31100000100000', '全国移动100元充值卡', '', '1', 'longguoduihuan', '龙果兑换', '975748764295237633', '100元', '95000', '98000', '成功', null);
INSERT INTO order_supply VALUES ('48', '2018-03-19 23:00:09', '2018-03-19 23:00:09', '2', '2018031923000881165', '3', '2', '2', '2', '2', '31100000100000', '全国移动100元充值卡', '', '1', 'longguoduihuan', '龙果兑换', '975748764442038274', '100元', '95000', '98000', '成功', null);
INSERT INTO order_supply VALUES ('49', '2018-03-19 23:00:09', '2018-03-19 23:00:09', '2', '2018031923000864375', '3', '2', '2', '2', '2', '31100000100000', '全国移动100元充值卡', '', '1', 'longguoduihuan', '龙果兑换', '975748765054406657', '100元', '95000', '98000', '成功', null);
INSERT INTO order_supply VALUES ('50', '2018-03-19 23:00:09', '2018-03-19 23:00:09', '2', '2018031923000934932', '3', '2', '2', '2', '2', '31100000100000', '全国移动100元充值卡', '', '1', 'longguoduihuan', '龙果兑换', '975748766358835201', '100元', '95000', '98000', '成功', null);
INSERT INTO order_supply VALUES ('51', '2018-03-19 23:00:09', '2018-03-19 23:00:09', '2', '2018031923000975285', '3', '2', '2', '2', '2', '31100000100000', '全国移动100元充值卡', '', '1', 'longguoduihuan', '龙果兑换', '975748766518218754', '100元', '95000', '98000', '成功', null);
INSERT INTO order_supply VALUES ('52', '2018-03-19 23:00:09', '2018-03-19 23:00:09', '2', '2018031923000939409', '3', '2', '2', '2', '2', '31100000100000', '全国移动100元充值卡', '', '1', 'longguoduihuan', '龙果兑换', '975748766631464962', '100元', '95000', '98000', '成功', null);
INSERT INTO order_supply VALUES ('53', '2018-03-19 23:00:09', '2018-03-19 23:00:09', '2', '2018031923000974865', '3', '2', '2', '2', '2', '31100000100000', '全国移动100元充值卡', '', '1', 'longguoduihuan', '龙果兑换', '975748766748905473', '100元', '95000', '98000', '成功', null);
INSERT INTO order_supply VALUES ('54', '2018-03-19 23:00:09', '2018-03-19 23:00:09', '2', '2018031923000914539', '3', '2', '2', '2', '2', '31100000100000', '全国移动100元充值卡', '', '1', 'longguoduihuan', '龙果兑换', '975748766887317506', '100元', '95000', '98000', '成功', null);
INSERT INTO order_supply VALUES ('55', '2018-03-19 23:00:09', '2018-03-19 23:00:09', '2', '2018031923000934526', '3', '2', '2', '2', '2', '31100000100000', '全国移动100元充值卡', '', '1', 'longguoduihuan', '龙果兑换', '975748767025729538', '100元', '95000', '98000', '成功', null);
INSERT INTO order_supply VALUES ('56', '2018-03-19 23:00:09', '2018-03-19 23:00:09', '2', '2018031923000913143', '3', '2', '2', '2', '2', '31100000100000', '全国移动100元充值卡', '', '1', 'longguoduihuan', '龙果兑换', '975748767197696001', '100元', '95000', '98000', '成功', null);

-- ----------------------------
-- Table structure for `order_trade`
-- ----------------------------
DROP TABLE IF EXISTS `order_trade`;
CREATE TABLE `order_trade` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '相当于流水号',
  `gmt_create` datetime DEFAULT NULL,
  `gmt_modified` datetime DEFAULT NULL,
  `order_status` tinyint(3) DEFAULT NULL COMMENT ' 1创建 处理中 2 成功 3 失败 9 未确认',
  `user_info_id` bigint(20) DEFAULT NULL COMMENT '下游用户ID',
  `acct_info_id` bigint(20) DEFAULT NULL COMMENT '支付单ID',
  `item_supply_id` bigint(20) DEFAULT NULL COMMENT '供应商商品ID',
  `item_id` bigint(20) DEFAULT NULL COMMENT '商品ID',
  `item_category` tinyint(3) DEFAULT NULL COMMENT '商品类别（1充值，2兑换）',
  `item_type` tinyint(3) DEFAULT NULL COMMENT '商品类型：1流量，2话费',
  `item_no` varchar(50) DEFAULT NULL COMMENT '商品编号',
  `item_name` varchar(100) DEFAULT NULL COMMENT '商品名称',
  `sales_price` int(11) DEFAULT NULL COMMENT '销售价格',
  `face_price` varchar(20) DEFAULT NULL COMMENT '面值',
  `cost_price` int(11) DEFAULT NULL COMMENT '成本价',
  `actual_cost` int(11) DEFAULT NULL COMMENT '实际扣费',
  `mobile` char(11) DEFAULT NULL COMMENT '手机',
  `channel` tinyint(3) DEFAULT NULL COMMENT '接口方式：1外放 2 WEB 3 APP',
  `trade_no` bigint(20) DEFAULT NULL COMMENT '交易订单',
  `pay_serial_no` bigint(20) DEFAULT NULL COMMENT '支付流水号',
  `order_no` varchar(100) DEFAULT NULL COMMENT '下游订单号',
  `order_time` datetime DEFAULT NULL COMMENT '下游订单时间',
  `carrier_type` tinyint(3) DEFAULT NULL COMMENT '运营商类型：1移动，2 电信，3联通',
  `supply_desc` varchar(200) DEFAULT NULL COMMENT '上游供货摘要',
  `supply_count` int(11) DEFAULT NULL COMMENT '供货次数',
  `supply_index` int(11) DEFAULT NULL COMMENT '供货索引',
  `notify_url` varchar(255) DEFAULT NULL COMMENT '回调地址',
  `flow_mode` tinyint(3) DEFAULT NULL COMMENT '流量生效方式：1立即生效，2下月生效',
  `flow_scope` tinyint(3) DEFAULT NULL COMMENT '流量范围：1全国，2本地',
  `flow_package_type` tinyint(3) DEFAULT NULL COMMENT '包体类型：1日包，2月包，3季度包，4年包',
  `flow_stream_type` tinyint(3) DEFAULT NULL COMMENT '通道类型：1全国，2分省',
  `card_no` varchar(255) DEFAULT NULL COMMENT '卡号',
  `card_pwd` varchar(255) DEFAULT NULL COMMENT '卡密',
  `repeat_type` tinyint(3) DEFAULT NULL COMMENT '是否补充',
  `supply_serial_no` bigint(20) DEFAULT NULL COMMENT '上游供货流水号',
  PRIMARY KEY (`id`),
  KEY `index_payorder` (`acct_info_id`) USING BTREE,
  KEY `index_serilno_user` (`order_no`,`user_info_id`) USING BTREE,
  KEY `index_date_biz_user_item` (`gmt_create`,`user_info_id`,`item_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=878 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='交易订单';

-- ----------------------------
-- Records of order_trade
-- ----------------------------

-- ----------------------------
-- Table structure for `order_trade_pay`
-- ----------------------------
DROP TABLE IF EXISTS `order_trade_pay`;
CREATE TABLE `order_trade_pay` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `gmt_create` datetime DEFAULT NULL,
  `gmt_modified` datetime DEFAULT NULL,
  `pay_status` tinyint(3) DEFAULT NULL COMMENT '1创建 2支付成功 3支付失败 9异常',
  `pay_serial_no` bigint(20) DEFAULT NULL COMMENT '交易订单ID',
  `order_trade_no` bigint(20) DEFAULT NULL COMMENT '平台交易号',
  `user_info_id` bigint(20) DEFAULT NULL COMMENT '用户ID',
  `acct_info_id` bigint(20) DEFAULT NULL COMMENT '账户ID',
  `acct_log_id` bigint(20) DEFAULT NULL COMMENT '账户日志ID',
  `item_id` bigint(20) DEFAULT NULL COMMENT '商品ID',
  `item_no` varchar(50) DEFAULT NULL COMMENT '商品编号',
  `sales_price` int(11) DEFAULT NULL COMMENT '销售价',
  `pay_type` tinyint(3) DEFAULT NULL COMMENT '支付类型：1余额',
  `trade_type` tinyint(3) DEFAULT NULL COMMENT '交易类型：1 入账 2 出账',
  `error_msg` varchar(255) DEFAULT NULL COMMENT '错误信息',
  PRIMARY KEY (`id`),
  KEY `index_bizorder` (`pay_serial_no`) USING BTREE,
  KEY `index_create_user_acct` (`gmt_create`,`user_info_id`,`acct_info_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=321 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='支付订单';

-- ----------------------------
-- Records of order_trade_pay
-- ----------------------------
INSERT INTO order_trade_pay VALUES ('1', '2018-03-19 22:40:02', '2018-03-19 22:40:02', '3', '975743703682912258', '2018031922400173222', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('2', '2018-03-19 22:40:02', '2018-03-19 22:40:02', '3', '975743704504995842', '2018031922400232870', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('3', '2018-03-19 22:40:02', '2018-03-19 22:40:02', '3', '975743704848928770', '2018031922400222426', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('4', '2018-03-19 22:40:02', '2018-03-19 22:40:02', '3', '975743705146724353', '2018031922400218192', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('5', '2018-03-19 22:40:02', '2018-03-19 22:40:02', '3', '975743705444519938', '2018031922400286940', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('6', '2018-03-19 22:40:03', '2018-03-19 22:40:03', '3', '975743705717149697', '2018031922400292982', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('7', '2018-03-19 22:40:03', '2018-03-19 22:40:03', '3', '975743706031722498', '2018031922400298596', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('8', '2018-03-19 22:40:03', '2018-03-19 22:40:03', '3', '975743706300157954', '2018031922400292730', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('9', '2018-03-19 22:40:03', '2018-03-19 22:40:03', '3', '975743706560204801', '2018031922400259107', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('10', '2018-03-19 22:40:03', '2018-03-19 22:40:03', '3', '975743706778308609', '2018031922400218986', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('11', '2018-03-19 22:40:03', '2018-03-19 22:40:03', '3', '975743706996412418', '2018031922400241260', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('12', '2018-03-19 22:40:03', '2018-03-19 22:40:03', '3', '975743707172573185', '2018031922400227359', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('13', '2018-03-19 22:40:03', '2018-03-19 22:40:03', '3', '975743707378094081', '2018031922400287555', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('14', '2018-03-19 22:40:03', '2018-03-19 22:40:03', '3', '975743707596197889', '2018031922400295542', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('15', '2018-03-19 22:40:03', '2018-03-19 22:40:03', '3', '975743707793330177', '2018031922400340064', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('16', '2018-03-19 22:40:03', '2018-03-19 22:40:03', '3', '975743708166623233', '2018031922400360760', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('17', '2018-03-19 22:40:03', '2018-03-19 22:40:03', '3', '975743708430864385', '2018031922400351078', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('18', '2018-03-19 22:40:03', '2018-03-19 22:40:03', '3', '975743708711882754', '2018031922400393867', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('19', '2018-03-19 22:40:03', '2018-03-19 22:40:03', '3', '975743708971929602', '2018031922400376592', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('20', '2018-03-19 22:40:03', '2018-03-19 22:40:03', '3', '975743709223587841', '2018031922400335909', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('21', '2018-03-19 22:40:03', '2018-03-19 22:40:03', '3', '975743709479440385', '2018031922400361392', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('22', '2018-03-19 22:40:03', '2018-03-19 22:40:04', '3', '975743709731098626', '2018031922400337557', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('23', '2018-03-19 22:40:04', '2018-03-19 22:40:04', '3', '975743709945008130', '2018031922400323171', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('24', '2018-03-19 22:40:04', '2018-03-19 22:40:04', '3', '975743710175694850', '2018031922400300105', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('25', '2018-03-19 22:40:04', '2018-03-19 22:40:04', '3', '975743710418964481', '2018031922400385691', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('26', '2018-03-19 22:40:04', '2018-03-19 22:40:04', '3', '975743710662234113', '2018031922400308840', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('27', '2018-03-19 22:40:04', '2018-03-19 22:40:04', '3', '975743710909698050', '2018031922400301372', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('28', '2018-03-19 22:40:04', '2018-03-19 22:40:04', '3', '975743711165550594', '2018031922400304105', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('29', '2018-03-19 22:40:04', '2018-03-19 22:40:04', '3', '975743711383654401', '2018031922400345961', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('30', '2018-03-19 22:40:04', '2018-03-19 22:40:04', '3', '975743711870193666', '2018031922400369432', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('31', '2018-03-19 22:40:04', '2018-03-19 22:40:04', '3', '975743712126046210', '2018031922400431584', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('32', '2018-03-19 22:40:04', '2018-03-19 22:40:04', '3', '975743712365121537', '2018031922400482903', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('33', '2018-03-19 22:40:04', '2018-03-19 22:40:04', '3', '975743712809717762', '2018031922400432345', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('34', '2018-03-19 22:40:04', '2018-03-19 22:40:04', '3', '975743713363365890', '2018031922400401969', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('35', '2018-03-19 22:40:05', '2018-03-19 22:40:05', '3', '975743714294501378', '2018031922400423038', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('36', '2018-03-19 22:40:05', '2018-03-19 22:40:05', '3', '975743714516799489', '2018031922400425529', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('37', '2018-03-19 22:40:05', '2018-03-19 22:40:05', '3', '975743714713931778', '2018031922400419113', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('38', '2018-03-19 22:40:05', '2018-03-19 22:40:05', '3', '975743714923646978', '2018031922400463538', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('39', '2018-03-19 22:40:05', '2018-03-19 22:40:05', '3', '975743715145945089', '2018031922400474221', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('40', '2018-03-19 22:40:05', '2018-03-19 22:40:05', '3', '975743715405991937', '2018031922400498275', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('41', '2018-03-19 22:40:05', '2018-03-19 22:40:05', '3', '975743715607318530', '2018031922400406948', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('42', '2018-03-19 22:40:05', '2018-03-19 22:40:05', '3', '975743715846393858', '2018031922400494761', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('43', '2018-03-19 22:40:05', '2018-03-19 22:40:05', '3', '975743716077080578', '2018031922400537343', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('44', '2018-03-19 22:40:05', '2018-03-19 22:40:05', '3', '975743716290990081', '2018031922400554003', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('45', '2018-03-19 22:40:05', '2018-03-19 22:40:05', '3', '975743716488122370', '2018031922400546924', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('46', '2018-03-19 22:40:05', '2018-03-19 22:40:05', '3', '975743717083713537', '2018031922400598557', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('47', '2018-03-19 22:40:05', '2018-03-19 22:40:05', '3', '975743717318594562', '2018031922400511976', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('48', '2018-03-19 22:40:05', '2018-03-19 22:40:05', '3', '975743717553475585', '2018031922400596415', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('49', '2018-03-19 22:40:05', '2018-03-19 22:40:05', '3', '975743717796745218', '2018031922400583056', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('50', '2018-03-19 22:40:05', '2018-03-19 22:40:05', '3', '975743718002266113', '2018031922400528213', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('51', '2018-03-19 22:40:06', '2018-03-19 22:40:06', '3', '975743718232952834', '2018031922400525075', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('52', '2018-03-19 22:40:06', '2018-03-19 22:40:06', '3', '975743718513971201', '2018031922400575580', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('53', '2018-03-19 22:40:06', '2018-03-19 22:40:06', '3', '975743718702714882', '2018031922400548906', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('54', '2018-03-19 22:40:06', '2018-03-19 22:40:06', '3', '975743718883069954', '2018031922400502020', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('55', '2018-03-19 22:40:06', '2018-03-19 22:40:06', '3', '975743719034064898', '2018031922400555629', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('56', '2018-03-19 22:40:06', '2018-03-19 22:40:06', '3', '975743719260557314', '2018031922400536317', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('57', '2018-03-19 22:40:06', '2018-03-19 22:40:06', '3', '975743719449300993', '2018031922400577076', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('58', '2018-03-19 22:40:06', '2018-03-19 22:40:06', '3', '975743719642238977', '2018031922400576817', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('59', '2018-03-19 22:40:06', '2018-03-19 22:40:06', '3', '975743719814205442', '2018031922400546645', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('60', '2018-03-19 22:40:06', '2018-03-19 22:40:06', '3', '975743720002949122', '2018031922400553300', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('61', '2018-03-19 22:40:06', '2018-03-19 22:40:06', '3', '975743720204275713', '2018031922400566555', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('62', '2018-03-19 22:40:06', '2018-03-19 22:40:06', '3', '975743720393019393', '2018031922400645373', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('63', '2018-03-19 22:40:06', '2018-03-19 22:40:06', '3', '975743720556597250', '2018031922400612798', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('64', '2018-03-19 22:40:06', '2018-03-19 22:40:06', '3', '975743720774701058', '2018031922400655361', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('65', '2018-03-19 22:40:06', '2018-03-19 22:40:06', '3', '975743720942473218', '2018031922400640542', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('66', '2018-03-19 22:40:06', '2018-03-19 22:40:06', '3', '975743721118633985', '2018031922400610476', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('67', '2018-03-19 22:40:06', '2018-03-19 22:40:06', '3', '975743721290600450', '2018031922400628649', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('68', '2018-03-19 22:40:06', '2018-03-19 22:40:06', '3', '975743721475149825', '2018031922400653784', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('69', '2018-03-19 22:40:06', '2018-03-19 22:40:06', '3', '975743721722613761', '2018031922400663280', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('70', '2018-03-19 22:40:06', '2018-03-19 22:40:06', '3', '975743721894580225', '2018031922400697996', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('71', '2018-03-19 22:40:06', '2018-03-19 22:40:06', '3', '975743722074935297', '2018031922400641674', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('72', '2018-03-19 22:40:06', '2018-03-19 22:40:06', '3', '975743722242707457', '2018031922400687523', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('73', '2018-03-19 22:40:07', '2018-03-19 22:40:07', '3', '975743722397896705', '2018031922400645455', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('74', '2018-03-19 22:40:07', '2018-03-19 22:40:07', '3', '975743722683109378', '2018031922400632182', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('75', '2018-03-19 22:40:07', '2018-03-19 22:40:07', '3', '975743723593273346', '2018031922400628656', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('76', '2018-03-19 22:40:07', '2018-03-19 22:40:07', '3', '975743723777822722', '2018031922400634131', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('77', '2018-03-19 22:40:07', '2018-03-19 22:40:07', '3', '975743723974955009', '2018031922400611966', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('78', '2018-03-19 22:40:07', '2018-03-19 22:40:07', '3', '975743724159504385', '2018031922400679139', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('79', '2018-03-19 22:40:07', '2018-03-19 22:40:07', '3', '975743724335665153', '2018031922400656223', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('80', '2018-03-19 22:40:07', '2018-03-19 22:40:07', '3', '975743724553768961', '2018031922400743924', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('81', '2018-03-19 22:40:07', '2018-03-19 22:40:07', '3', '975743724780261377', '2018031922400731339', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('82', '2018-03-19 22:40:07', '2018-03-19 22:40:07', '3', '975743724969005058', '2018031922400775215', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('83', '2018-03-19 22:40:07', '2018-03-19 22:40:07', '3', '975743725149360130', '2018031922400799826', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('84', '2018-03-19 22:40:07', '2018-03-19 22:40:07', '3', '975743725401018369', '2018031922400746083', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('85', '2018-03-19 22:40:07', '2018-03-19 22:40:07', '3', '975743725568790529', '2018031922400788264', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('86', '2018-03-19 22:40:07', '2018-03-19 22:40:07', '3', '975743725812060161', '2018031922400731360', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('87', '2018-03-19 22:40:07', '2018-03-19 22:40:07', '3', '975743725992415233', '2018031922400758479', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('88', '2018-03-19 22:40:07', '2018-03-19 22:40:07', '3', '975743726197936129', '2018031922400719500', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('89', '2018-03-19 22:40:07', '2018-03-19 22:40:07', '3', '975743726378291201', '2018031922400774038', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('90', '2018-03-19 22:40:08', '2018-03-19 22:40:08', '3', '975743726533480449', '2018031922400783556', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('91', '2018-03-19 22:40:08', '2018-03-19 22:40:08', '3', '975743726701252609', '2018031922400759073', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('92', '2018-03-19 22:40:08', '2018-03-19 22:40:08', '3', '975743726860636161', '2018031922400734552', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('93', '2018-03-19 22:40:08', '2018-03-19 22:40:08', '3', '975743727028408321', '2018031922400731782', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('94', '2018-03-19 22:40:08', '2018-03-19 22:40:08', '3', '975743727183597569', '2018031922400766912', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('95', '2018-03-19 22:40:08', '2018-03-19 22:40:08', '3', '975743727342981122', '2018031922400786069', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('96', '2018-03-19 22:40:08', '2018-03-19 22:40:08', '3', '975743727514947586', '2018031922400777265', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('97', '2018-03-19 22:40:08', '2018-03-19 22:40:08', '3', '975743727695302657', '2018031922400798998', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('98', '2018-03-19 22:40:08', '2018-03-19 22:40:08', '3', '975743727888240642', '2018031922400769125', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('99', '2018-03-19 22:40:08', '2018-03-19 22:40:08', '3', '975743728056012802', '2018031922400749093', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('100', '2018-03-19 22:40:08', '2018-03-19 22:40:08', '3', '975743728227979266', '2018031922400724534', '2', '1', null, '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('101', '2018-03-19 22:51:06', '2018-03-19 22:51:06', '3', '975746487874490369', '2018031922510569905', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('102', '2018-03-19 22:51:06', '2018-03-19 22:51:06', '3', '975746488197451778', '2018031922510559839', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('103', '2018-03-19 22:51:06', '2018-03-19 22:51:06', '3', '975746488407166978', '2018031922510566915', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('104', '2018-03-19 22:51:06', '2018-03-19 22:51:06', '3', '975746488595910658', '2018031922510644881', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('105', '2018-03-19 22:51:06', '2018-03-19 22:51:06', '3', '975746488797237249', '2018031922510696820', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('106', '2018-03-19 22:51:06', '2018-03-19 22:51:06', '3', '975746488952426498', '2018031922510688876', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('107', '2018-03-19 22:51:06', '2018-03-19 22:51:06', '3', '975746489103421441', '2018031922510671247', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('108', '2018-03-19 22:51:06', '2018-03-19 22:51:06', '3', '975746489258610689', '2018031922510606436', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('109', '2018-03-19 22:51:06', '2018-03-19 22:51:06', '3', '975746489409605634', '2018031922510617431', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('110', '2018-03-19 22:51:06', '2018-03-19 22:51:06', '3', '975746489577377794', '2018031922510619504', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('111', '2018-03-19 22:51:06', '2018-03-19 22:51:06', '3', '975746489770315778', '2018031922510655216', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('112', '2018-03-19 22:51:06', '2018-03-19 22:51:06', '3', '975746489946476546', '2018031922510631743', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('113', '2018-03-19 22:51:06', '2018-03-19 22:51:06', '3', '975746490101665794', '2018031922510673263', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('114', '2018-03-19 22:51:06', '2018-03-19 22:51:06', '3', '975746490302992386', '2018031922510657885', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('115', '2018-03-19 22:51:06', '2018-03-19 22:51:06', '3', '975746490462375937', '2018031922510614478', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('116', '2018-03-19 22:51:07', '2018-03-19 22:51:07', '3', '975746490684674049', '2018031922510629401', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('117', '2018-03-19 22:51:07', '2018-03-19 22:51:07', '3', '975746490877612033', '2018031922510644241', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('118', '2018-03-19 22:51:07', '2018-03-19 22:51:07', '3', '975746491024412674', '2018031922510660530', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('119', '2018-03-19 22:51:07', '2018-03-19 22:51:07', '3', '975746491179601922', '2018031922510610204', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('120', '2018-03-19 22:51:07', '2018-03-19 22:51:07', '3', '975746491573866497', '2018031922510648237', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('121', '2018-03-19 22:51:07', '2018-03-19 22:51:07', '3', '975746491724861441', '2018031922510671237', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('122', '2018-03-19 22:51:07', '2018-03-19 22:51:07', '3', '975746491942965250', '2018031922510693146', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('123', '2018-03-19 22:51:07', '2018-03-19 22:51:07', '3', '975746492425310209', '2018031922510622269', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('124', '2018-03-19 22:51:07', '2018-03-19 22:51:07', '3', '975746493373222914', '2018031922510734535', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('125', '2018-03-19 22:51:07', '2018-03-19 22:51:07', '3', '975746493691990018', '2018031922510799303', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('126', '2018-03-19 22:51:07', '2018-03-19 22:51:07', '3', '975746493884928001', '2018031922510771199', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('127', '2018-03-19 22:51:07', '2018-03-19 22:51:07', '3', '975746494035922946', '2018031922510703031', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('128', '2018-03-19 22:51:07', '2018-03-19 22:51:07', '3', '975746494195306498', '2018031922510729985', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('129', '2018-03-19 22:51:07', '2018-03-19 22:51:07', '3', '975746494371467266', '2018031922510775617', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('130', '2018-03-19 22:51:07', '2018-03-19 22:51:07', '3', '975746494547628034', '2018031922510710590', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('131', '2018-03-19 22:51:07', '2018-03-19 22:51:08', '3', '975746494727983106', '2018031922510782474', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('132', '2018-03-19 22:51:08', '2018-03-19 22:51:08', '3', '975746494883172354', '2018031922510723981', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('133', '2018-03-19 22:51:08', '2018-03-19 22:51:08', '3', '975746495071916034', '2018031922510715017', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('134', '2018-03-19 22:51:08', '2018-03-19 22:51:08', '3', '975746495248076802', '2018031922510716529', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('135', '2018-03-19 22:51:08', '2018-03-19 22:51:08', '3', '975746495432626177', '2018031922510783908', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('136', '2018-03-19 22:51:08', '2018-03-19 22:51:08', '3', '975746495948525570', '2018031922510757000', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('137', '2018-03-19 22:51:08', '2018-03-19 22:51:08', '3', '975746496116297729', '2018031922510754087', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('138', '2018-03-19 22:51:08', '2018-03-19 22:51:08', '3', '975746496279875585', '2018031922510752990', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('139', '2018-03-19 22:51:08', '2018-03-19 22:51:08', '3', '975746496451842050', '2018031922510719019', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('140', '2018-03-19 22:51:08', '2018-03-19 22:51:08', '3', '975746496611225602', '2018031922510788875', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('141', '2018-03-19 22:51:08', '2018-03-19 22:51:08', '3', '975746496799969282', '2018031922510701705', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('142', '2018-03-19 22:51:08', '2018-03-19 22:51:08', '3', '975746496971935746', '2018031922510868061', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('143', '2018-03-19 22:51:08', '2018-03-19 22:51:08', '3', '975746497143902209', '2018031922510832584', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('144', '2018-03-19 22:51:08', '2018-03-19 22:51:08', '3', '975746497349423105', '2018031922510891771', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('145', '2018-03-19 22:51:08', '2018-03-19 22:51:08', '3', '975746497554944001', '2018031922510875535', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('146', '2018-03-19 22:51:08', '2018-03-19 22:51:08', '3', '975746497764659202', '2018031922510880851', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('147', '2018-03-19 22:51:08', '2018-03-19 22:51:08', '3', '975746497953402882', '2018031922510896451', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('148', '2018-03-19 22:51:08', '2018-03-19 22:51:08', '3', '975746498116980738', '2018031922510852027', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('149', '2018-03-19 22:51:08', '2018-03-19 22:51:08', '3', '975746498280558593', '2018031922510846886', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('150', '2018-03-19 22:51:08', '2018-03-19 22:51:08', '3', '975746498423164929', '2018031922510815636', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('151', '2018-03-19 22:51:08', '2018-03-19 22:51:08', '3', '975746498578354178', '2018031922510833427', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('152', '2018-03-19 22:51:08', '2018-03-19 22:51:08', '3', '975746498762903554', '2018031922510851196', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('153', '2018-03-19 22:51:09', '2018-03-19 22:51:09', '3', '975746498951647233', '2018031922510832081', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('154', '2018-03-19 22:51:09', '2018-03-19 22:51:09', '3', '975746499111030786', '2018031922510826098', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('155', '2018-03-19 22:51:09', '2018-03-19 22:51:09', '3', '975746499291385858', '2018031922510836870', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('156', '2018-03-19 22:51:09', '2018-03-19 22:51:09', '3', '975746499459158017', '2018031922510830507', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('157', '2018-03-19 22:51:09', '2018-03-19 22:51:09', '3', '975746499647901698', '2018031922510855941', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('158', '2018-03-19 22:51:09', '2018-03-19 22:51:09', '3', '975746499912142849', '2018031922510849793', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('159', '2018-03-19 22:51:09', '2018-03-19 22:51:09', '3', '975746500084109314', '2018031922510847795', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('160', '2018-03-19 22:51:09', '2018-03-19 22:51:09', '3', '975746500243492866', '2018031922510809668', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('161', '2018-03-19 22:51:09', '2018-03-19 22:51:09', '3', '975746500537094146', '2018031922510887542', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('162', '2018-03-19 22:51:09', '2018-03-19 22:51:09', '3', '975746501694722049', '2018031922510980859', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('163', '2018-03-19 22:51:09', '2018-03-19 22:51:09', '3', '975746501833134082', '2018031922510978110', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('164', '2018-03-19 22:51:09', '2018-03-19 22:51:09', '3', '975746501988323329', '2018031922510948354', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('165', '2018-03-19 22:51:09', '2018-03-19 22:51:09', '3', '975746502160289794', '2018031922510949472', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('166', '2018-03-19 22:51:09', '2018-03-19 22:51:09', '3', '975746502302896129', '2018031922510949232', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('167', '2018-03-19 22:51:09', '2018-03-19 22:51:09', '3', '975746502441308161', '2018031922510959055', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('168', '2018-03-19 22:51:09', '2018-03-19 22:51:09', '3', '975746502604886017', '2018031922510968795', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('169', '2018-03-19 22:51:09', '2018-03-19 22:51:09', '3', '975746502747492354', '2018031922510961275', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('170', '2018-03-19 22:51:09', '2018-03-19 22:51:09', '3', '975746502902681602', '2018031922510978804', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('171', '2018-03-19 22:51:09', '2018-03-19 22:51:09', '3', '975746503066259458', '2018031922510997117', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('172', '2018-03-19 22:51:10', '2018-03-19 22:51:10', '3', '975746503225643009', '2018031922510937542', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('173', '2018-03-19 22:51:10', '2018-03-19 22:51:10', '3', '975746503376637953', '2018031922510934701', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('174', '2018-03-19 22:51:10', '2018-03-19 22:51:10', '3', '975746503531827201', '2018031922510920330', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('175', '2018-03-19 22:51:10', '2018-03-19 22:51:10', '3', '975746503678627841', '2018031922510933649', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('176', '2018-03-19 22:51:10', '2018-03-19 22:51:10', '3', '975746503833817089', '2018031922510952824', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('177', '2018-03-19 22:51:10', '2018-03-19 22:51:10', '3', '975746503993200641', '2018031922510932329', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('178', '2018-03-19 22:51:10', '2018-03-19 22:51:10', '3', '975746504156778497', '2018031922510909518', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('179', '2018-03-19 22:51:10', '2018-03-19 22:51:10', '3', '975746504311967745', '2018031922510912745', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('180', '2018-03-19 22:51:10', '2018-03-19 22:51:10', '3', '975746504467156993', '2018031922510978817', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('181', '2018-03-19 22:51:10', '2018-03-19 22:51:10', '3', '975746504601374722', '2018031922510946275', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('182', '2018-03-19 22:51:10', '2018-03-19 22:51:10', '3', '975746504752369665', '2018031922510977411', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('183', '2018-03-19 22:51:10', '2018-03-19 22:51:10', '3', '975746504899170305', '2018031922510944749', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('184', '2018-03-19 22:51:10', '2018-03-19 22:51:10', '3', '975746505033388033', '2018031922510936621', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('185', '2018-03-19 22:51:10', '2018-03-19 22:51:10', '3', '975746505167605762', '2018031922510998581', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('186', '2018-03-19 22:51:10', '2018-03-19 22:51:10', '3', '975746505335377921', '2018031922511090526', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('187', '2018-03-19 22:51:10', '2018-03-19 22:51:10', '3', '975746505515732993', '2018031922511009109', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('188', '2018-03-19 22:51:10', '2018-03-19 22:51:10', '3', '975746505679310850', '2018031922511093811', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('189', '2018-03-19 22:51:10', '2018-03-19 22:51:10', '3', '975746505842888705', '2018031922511075232', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('190', '2018-03-19 22:51:10', '2018-03-19 22:51:10', '3', '975746506006466562', '2018031922511037485', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('191', '2018-03-19 22:51:10', '2018-03-19 22:51:10', '3', '975746506165850114', '2018031922511070057', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('192', '2018-03-19 22:51:10', '2018-03-19 22:51:10', '3', '975746506325233666', '2018031922511099910', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('193', '2018-03-19 22:51:10', '2018-03-19 22:51:10', '3', '975746506472034305', '2018031922511062516', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('194', '2018-03-19 22:51:10', '2018-03-19 22:51:10', '3', '975746506623029249', '2018031922511069123', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('195', '2018-03-19 22:51:10', '2018-03-19 22:51:10', '3', '975746506778218498', '2018031922511043260', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('196', '2018-03-19 22:51:10', '2018-03-19 22:51:10', '3', '975746506925019138', '2018031922511026768', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('197', '2018-03-19 22:51:10', '2018-03-19 22:51:10', '3', '975746507076014082', '2018031922511070901', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('198', '2018-03-19 22:51:10', '2018-03-19 22:51:10', '3', '975746507235397633', '2018031922511042202', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('199', '2018-03-19 22:51:11', '2018-03-19 22:51:11', '3', '975746507403169793', '2018031922511056775', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('200', '2018-03-19 22:51:11', '2018-03-19 22:51:11', '3', '975746507562553345', '2018031922511073968', '2', '1', null, '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('201', '2018-03-19 23:00:07', '2018-03-19 23:00:07', '0', '975748757106200577', '2018031923000600798', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('202', '2018-03-19 23:00:07', '2018-03-19 23:00:07', '0', '975748757106200579', '2018031923000654834', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('203', '2018-03-19 23:00:07', '2018-03-19 23:00:07', '0', '975748757106200580', '2018031923000679197', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('204', '2018-03-19 23:00:07', '2018-03-19 23:00:07', '0', '975748757106200578', '2018031923000607594', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('205', '2018-03-19 23:00:07', '2018-03-19 23:00:07', '0', '975748757164920833', '2018031923000603379', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('206', '2018-03-19 23:00:07', '2018-03-19 23:00:07', '0', '975748757273972737', '2018031923000683451', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('207', '2018-03-19 23:00:07', '2018-03-19 23:00:07', '0', '975748757257195522', '2018031923000645370', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('208', '2018-03-19 23:00:07', '2018-03-19 23:00:07', '0', '975748757328498689', '2018031923000667778', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('209', '2018-03-19 23:00:07', '2018-03-19 23:00:07', '0', '975748757626294274', '2018031923000654482', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('210', '2018-03-19 23:00:07', '2018-03-19 23:00:07', '0', '975748757634682881', '2018031923000686114', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('211', '2018-03-19 23:00:07', '2018-03-19 23:00:07', '0', '975748758410629122', '2018031923000704108', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('212', '2018-03-19 23:00:07', '2018-03-19 23:00:07', '0', '975748758431600641', '2018031923000784885', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('213', '2018-03-19 23:00:07', '2018-03-19 23:00:07', '0', '975748759429844993', '2018031923000773772', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('214', '2018-03-19 23:00:08', '2018-03-19 23:00:08', '0', '975748759790555138', '2018031923000727605', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('215', '2018-03-19 23:00:08', '2018-03-19 23:00:08', '0', '975748759949938690', '2018031923000721943', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('216', '2018-03-19 23:00:08', '2018-03-19 23:00:08', '0', '975748760130293762', '2018031923000719301', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('217', '2018-03-19 23:00:08', '2018-03-19 23:00:08', '0', '975748760256122881', '2018031923000715905', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('218', '2018-03-19 23:00:08', '2018-03-19 23:00:08', '0', '975748760432283649', '2018031923000748266', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('219', '2018-03-19 23:00:08', '2018-03-19 23:00:08', '0', '975748760604250114', '2018031923000782027', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('220', '2018-03-19 23:00:08', '2018-03-19 23:00:08', '0', '975748760776216578', '2018031923000793562', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('221', '2018-03-19 23:00:08', '2018-03-19 23:00:08', '0', '975748760906240002', '2018031923000777545', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('222', '2018-03-19 23:00:08', '2018-03-19 23:00:08', '0', '975748761044652033', '2018031923000798571', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('223', '2018-03-19 23:00:08', '2018-03-19 23:00:08', '0', '975748761388584962', '2018031923000793167', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('224', '2018-03-19 23:00:08', '2018-03-19 23:00:08', '0', '975748761388584963', '2018031923000720377', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('225', '2018-03-19 23:00:08', '2018-03-19 23:00:08', '0', '975748761485053953', '2018031923000739622', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('226', '2018-03-19 23:00:08', '2018-03-19 23:00:08', '0', '975748761975787522', '2018031923000785299', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('227', '2018-03-19 23:00:08', '2018-03-19 23:00:08', '0', '975748762097422338', '2018031923000729141', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('228', '2018-03-19 23:00:08', '2018-03-19 23:00:08', '0', '975748762227445762', '2018031923000787838', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('229', '2018-03-19 23:00:08', '2018-03-19 23:00:08', '0', '975748762336497665', '2018031923000825751', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('230', '2018-03-19 23:00:08', '2018-03-19 23:00:08', '0', '975748762470715393', '2018031923000883995', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('231', '2018-03-19 23:00:08', '2018-03-19 23:00:08', '0', '975748762596544513', '2018031923000867711', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('232', '2018-03-19 23:00:08', '2018-03-19 23:00:08', '0', '975748762755928066', '2018031923000865157', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('233', '2018-03-19 23:00:08', '2018-03-19 23:00:08', '0', '975748762890145793', '2018031923000868731', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('234', '2018-03-19 23:00:08', '2018-03-19 23:00:08', '0', '975748763041140738', '2018031923000846406', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('235', '2018-03-19 23:00:08', '2018-03-19 23:00:08', '0', '975748763162775553', '2018031923000859508', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('236', '2018-03-19 23:00:08', '2018-03-19 23:00:08', '0', '975748763296993281', '2018031923000833066', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('237', '2018-03-19 23:00:08', '2018-03-19 23:00:08', '0', '975748763439599617', '2018031923000844479', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('238', '2018-03-19 23:00:08', '2018-03-19 23:00:08', '0', '975748763573817346', '2018031923000883871', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('239', '2018-03-19 23:00:08', '2018-03-19 23:00:08', '0', '975748763708035073', '2018031923000878187', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('240', '2018-03-19 23:00:08', '2018-03-19 23:00:08', '0', '975748763842252802', '2018031923000849610', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('241', '2018-03-19 23:00:09', '2018-03-19 23:00:09', '0', '975748763993247745', '2018031923000816118', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('242', '2018-03-19 23:00:09', '2018-03-19 23:00:09', '0', '975748764144242690', '2018031923000855830', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('243', '2018-03-19 23:00:09', '2018-03-19 23:00:09', '0', '975748764270071809', '2018031923000870710', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('244', '2018-03-19 23:00:09', '2018-03-19 23:00:09', '0', '975748764395900930', '2018031923000819676', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('245', '2018-03-19 23:00:09', '2018-03-19 23:00:09', '0', '975748764521730050', '2018031923000852367', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('246', '2018-03-19 23:00:09', '2018-03-19 23:00:09', '0', '975748764999880706', '2018031923000851525', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('247', '2018-03-19 23:00:09', '2018-03-19 23:00:09', '0', '975748764999880707', '2018031923000857056', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('248', '2018-03-19 23:00:09', '2018-03-19 23:00:09', '0', '975748765004075010', '2018031923000881165', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('249', '2018-03-19 23:00:09', '2018-03-19 23:00:09', '0', '975748765599666177', '2018031923000864375', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('250', '2018-03-19 23:00:09', '2018-03-19 23:00:09', '0', '975748766862151682', '2018031923000934932', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('251', '2018-03-19 23:00:09', '2018-03-19 23:00:09', '0', '975748767004758017', '2018031923000975285', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('252', '2018-03-19 23:00:09', '2018-03-19 23:00:09', '0', '975748767122198530', '2018031923000939409', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('253', '2018-03-19 23:00:09', '2018-03-19 23:00:09', '0', '975748767260610561', '2018031923000974865', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('254', '2018-03-19 23:00:09', '2018-03-19 23:00:09', '0', '975748767373856770', '2018031923000914539', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('255', '2018-03-19 23:00:09', '2018-03-19 23:00:09', '0', '975748767520657409', '2018031923000934526', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('256', '2018-03-19 23:00:09', '2018-03-19 23:00:09', '0', '975748767701012481', '2018031923000913143', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('257', '2018-03-19 23:00:09', '2018-03-19 23:00:09', '0', '975748767856201730', '2018031923000933576', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('258', '2018-03-19 23:00:09', '2018-03-19 23:00:09', '0', '975748768011390978', '2018031923000971432', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('259', '2018-03-19 23:00:10', '2018-03-19 23:00:10', '0', '975748768141414401', '2018031923000971944', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('260', '2018-03-19 23:00:10', '2018-03-19 23:00:10', '0', '975748768271437826', '2018031923000916944', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('261', '2018-03-19 23:00:10', '2018-03-19 23:00:10', '0', '975748768439209986', '2018031923000926627', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('262', '2018-03-19 23:00:10', '2018-03-19 23:00:10', '0', '975748768594399234', '2018031923000953519', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('263', '2018-03-19 23:00:10', '2018-03-19 23:00:10', '0', '975748768766365698', '2018031923000927607', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('264', '2018-03-19 23:00:10', '2018-03-19 23:00:10', '0', '975748768913166337', '2018031923000948501', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('265', '2018-03-19 23:00:10', '2018-03-19 23:00:10', '0', '975748769059966977', '2018031923000900539', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('266', '2018-03-19 23:00:10', '2018-03-19 23:00:10', '0', '975748769219350529', '2018031923000996441', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('267', '2018-03-19 23:00:10', '2018-03-19 23:00:10', '0', '975748769403899905', '2018031923000924110', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('268', '2018-03-19 23:00:10', '2018-03-19 23:00:10', '0', '975748769554894850', '2018031923000977715', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('269', '2018-03-19 23:00:10', '2018-03-19 23:00:10', '0', '975748769689112578', '2018031923000987474', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('270', '2018-03-19 23:00:10', '2018-03-19 23:00:10', '0', '975748769852690434', '2018031923000912336', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('271', '2018-03-19 23:00:10', '2018-03-19 23:00:10', '0', '975748770012073986', '2018031923000974331', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('272', '2018-03-19 23:00:10', '2018-03-19 23:00:10', '0', '975748770163068929', '2018031923000957129', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('273', '2018-03-19 23:00:10', '2018-03-19 23:00:10', '0', '975748770284703745', '2018031923000950906', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('274', '2018-03-19 23:00:10', '2018-03-19 23:00:10', '0', '975748770431504385', '2018031923000975312', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('275', '2018-03-19 23:00:10', '2018-03-19 23:00:10', '0', '975748770603470849', '2018031923000934737', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('276', '2018-03-19 23:00:10', '2018-03-19 23:00:10', '0', '975748770729299970', '2018031923001092044', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('277', '2018-03-19 23:00:10', '2018-03-19 23:00:10', '0', '975748770855129089', '2018031923001058943', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('278', '2018-03-19 23:00:10', '2018-03-19 23:00:10', '0', '975748770959986689', '2018031923001071597', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('279', '2018-03-19 23:00:10', '2018-03-19 23:00:10', '0', '975748771077427202', '2018031923001019968', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('280', '2018-03-19 23:00:10', '2018-03-19 23:00:10', '0', '975748771232616449', '2018031923001041437', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('281', '2018-03-19 23:00:10', '2018-03-19 23:00:10', '0', '975748771366834177', '2018031923001052983', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('282', '2018-03-19 23:00:10', '2018-03-19 23:00:10', '0', '975748771542994945', '2018031923001041206', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('283', '2018-03-19 23:00:10', '2018-03-19 23:00:10', '0', '975748771702378498', '2018031923001009023', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('284', '2018-03-19 23:00:10', '2018-03-19 23:00:10', '0', '975748771794653185', '2018031923001040385', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('285', '2018-03-19 23:00:10', '2018-03-19 23:00:10', '0', '975748771907899394', '2018031923001041534', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('286', '2018-03-19 23:00:10', '2018-03-19 23:00:10', '0', '975748772012756993', '2018031923001013003', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('287', '2018-03-19 23:00:10', '2018-03-19 23:00:10', '0', '975748772205694977', '2018031923001085299', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('288', '2018-03-19 23:00:11', '2018-03-19 23:00:11', '0', '975748772344107010', '2018031923001088896', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('289', '2018-03-19 23:00:11', '2018-03-19 23:00:11', '0', '975748772469936130', '2018031923001088971', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('290', '2018-03-19 23:00:11', '2018-03-19 23:00:11', '0', '975748772633513985', '2018031923001043532', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('291', '2018-03-19 23:00:11', '2018-03-19 23:00:11', '0', '975748773489152002', '2018031923001044303', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('292', '2018-03-19 23:00:11', '2018-03-19 23:00:11', '0', '975748773661118466', '2018031923001088526', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('293', '2018-03-19 23:00:11', '2018-03-19 23:00:11', '0', '975748773866639362', '2018031923001035560', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('294', '2018-03-19 23:00:11', '2018-03-19 23:00:11', '0', '975748774088937473', '2018031923001037943', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('295', '2018-03-19 23:00:11', '2018-03-19 23:00:11', '0', '975748774231543810', '2018031923001014306', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('296', '2018-03-19 23:00:11', '2018-03-19 23:00:11', '0', '975748774378344450', '2018031923001037124', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('297', '2018-03-19 23:00:11', '2018-03-19 23:00:11', '0', '975748774562893826', '2018031923001018467', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('298', '2018-03-19 23:00:11', '2018-03-19 23:00:11', '0', '975748774709694465', '2018031923001028604', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('299', '2018-03-19 23:00:11', '2018-03-19 23:00:11', '0', '975748774864883713', '2018031923001067120', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('300', '2018-03-19 23:00:11', '2018-03-19 23:00:11', '0', '975748775020072962', '2018031923001165390', '2', '1', null, '2', '31100000100000', '98000', '1', '1', null);
INSERT INTO order_trade_pay VALUES ('301', '2018-03-19 23:00:38', '2018-03-19 23:00:38', '2', '975748888765403138', '2018031923003893997', '2', '1', '101', '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('302', '2018-03-19 23:00:38', '2018-03-19 23:00:38', '2', '975748889017061378', '2018031923003856215', '2', '1', '102', '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('303', '2018-03-19 23:00:38', '2018-03-19 23:00:38', '2', '975748889289691138', '2018031923003845998', '2', '1', '103', '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('304', '2018-03-19 23:00:38', '2018-03-19 23:00:38', '2', '975748889511989250', '2018031923003812521', '2', '1', '104', '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('305', '2018-03-19 23:00:39', '2018-03-19 23:00:39', '2', '975748889704927233', '2018031923003870979', '2', '1', '105', '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('306', '2018-03-19 23:00:39', '2018-03-19 23:00:39', '2', '975748889931419650', '2018031923003870342', '2', '1', '106', '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('307', '2018-03-19 23:00:39', '2018-03-19 23:00:39', '2', '975748890174689282', '2018031923003824994', '2', '1', '107', '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('308', '2018-03-19 23:00:39', '2018-03-19 23:00:39', '2', '975748891634307074', '2018031923003829260', '2', '1', '108', '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('309', '2018-03-19 23:00:39', '2018-03-19 23:00:39', '2', '975748891835633666', '2018031923003939546', '2', '1', '109', '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('310', '2018-03-19 23:00:39', '2018-03-19 23:00:39', '2', '975748892057931777', '2018031923003938394', '2', '1', '110', '5', '11100000100111', '3000', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('311', '2018-03-19 23:00:51', '2018-03-19 23:00:51', '2', '975748940531503106', '2018031923005019764', '2', '1', '111', '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('312', '2018-03-19 23:00:51', '2018-03-19 23:00:51', '2', '975748940804132866', '2018031923005039751', '2', '1', '112', '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('313', '2018-03-19 23:00:51', '2018-03-19 23:00:51', '2', '975748941051596802', '2018031923005045893', '2', '1', '113', '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('314', '2018-03-19 23:00:51', '2018-03-19 23:00:51', '2', '975748941269700609', '2018031923005047084', '2', '1', '114', '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('315', '2018-03-19 23:00:51', '2018-03-19 23:00:51', '2', '975748941508775938', '2018031923005063499', '2', '1', '115', '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('316', '2018-03-19 23:00:51', '2018-03-19 23:00:51', '2', '975748941752045570', '2018031923005058130', '2', '1', '116', '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('317', '2018-03-19 23:00:51', '2018-03-19 23:00:51', '2', '975748941995315201', '2018031923005059557', '2', '1', '117', '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('318', '2018-03-19 23:00:51', '2018-03-19 23:00:51', '2', '975748942242779137', '2018031923005196333', '2', '1', '118', '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('319', '2018-03-19 23:00:51', '2018-03-19 23:00:51', '2', '975748942486048770', '2018031923005131799', '2', '1', '119', '3', '21100000100000', '99800', '1', '2', null);
INSERT INTO order_trade_pay VALUES ('320', '2018-03-19 23:00:51', '2018-03-19 23:00:51', '2', '975748942720929794', '2018031923005177459', '2', '1', '120', '3', '21100000100000', '99800', '1', '2', null);

-- ----------------------------
-- Table structure for `passenger`
-- ----------------------------
DROP TABLE IF EXISTS `passenger`;
CREATE TABLE `passenger` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '姓名',
  `email` varchar(100) NOT NULL COMMENT '邮箱',
  `phone` varchar(50) NOT NULL COMMENT '手机号',
  `create_person` varchar(64) NOT NULL DEFAULT 'system' COMMENT '创建人',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_person` varchar(64) NOT NULL DEFAULT 'system' COMMENT '更新人',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `phone_index` (`phone`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='乘客表';

-- ----------------------------
-- Records of passenger
-- ----------------------------
INSERT INTO passenger VALUES ('1', 'test', 'test@qq.com', '1567778889', 'system', '2018-04-16 10:40:24', 'system', '2018-04-16 10:40:24');

-- ----------------------------
-- Table structure for `request_info`
-- ----------------------------
DROP TABLE IF EXISTS `request_info`;
CREATE TABLE `request_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `serial_no` varchar(120) NOT NULL COMMENT '流水号',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '状态: 0-挂起  1-成功 2-失败',
  `phone` varchar(50) NOT NULL COMMENT '手机号',
  `passenger_id` bigint(20) NOT NULL COMMENT '乘客Id',
  `departure_id` bigint(20) NOT NULL COMMENT '出发地',
  `destination_id` bigint(20) NOT NULL COMMENT '出发地',
  `surge` int(11) NOT NULL DEFAULT '0' COMMENT '是否加价: 0 否 1 是',
  `create_person` varchar(64) NOT NULL DEFAULT 'system' COMMENT '创建人',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_person` varchar(64) NOT NULL DEFAULT 'system' COMMENT '更新人',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='打车请求信息';

-- ----------------------------
-- Records of request_info
-- ----------------------------
INSERT INTO request_info VALUES ('1', '32131', '0', '153555677', '1', '11', '12', '0', 'system', '2018-04-16 15:03:04', 'system', '2018-04-16 15:03:04');
INSERT INTO request_info VALUES ('2', '20184518915e6ebc', '0', '1567778889', '1', '24', '25', '0', 'system', '2018-04-18 15:45:58', 'system', '2018-04-18 15:45:58');
INSERT INTO request_info VALUES ('3', '2018571800cacbb4', '0', '1567778889', '1', '26', '27', '0', 'system', '2018-04-18 15:57:57', 'system', '2018-04-18 15:57:57');
INSERT INTO request_info VALUES ('4', '2018581803d26ffb', '0', '1567778889', '1', '28', '29', '0', 'system', '2018-04-18 15:58:34', 'system', '2018-04-18 15:58:34');
INSERT INTO request_info VALUES ('5', '2018021850476254', '0', '1567778889', '1', '30', '31', '0', 'system', '2018-04-18 16:02:23', 'system', '2018-04-18 16:02:23');
INSERT INTO request_info VALUES ('6', '2018051848a95967', '0', '1567778889', '1', '32', '33', '0', 'system', '2018-04-18 16:05:13', 'system', '2018-04-18 16:05:13');
INSERT INTO request_info VALUES ('7', '2018061882c86141', '0', '1567778889', '1', '34', '35', '0', 'system', '2018-04-18 16:06:53', 'system', '2018-04-18 16:06:53');
INSERT INTO request_info VALUES ('8', '2018212752c093ae', '0', '1567778889', '1', '36', '37', '0', 'system', '2018-04-27 11:21:05', 'system', '2018-04-27 11:21:05');
INSERT INTO request_info VALUES ('9', '201821273409f32a', '0', '1567778889', '1', '38', '39', '0', 'system', '2018-04-27 11:21:46', 'system', '2018-04-27 11:21:46');

-- ----------------------------
-- Table structure for `supply_info`
-- ----------------------------
DROP TABLE IF EXISTS `supply_info`;
CREATE TABLE `supply_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `gmt_create` datetime DEFAULT NULL,
  `gmt_modified` datetime DEFAULT NULL,
  `status_id` tinyint(3) DEFAULT NULL COMMENT '1 正常 2 冻结 9 注销',
  `supply_category` tinyint(3) DEFAULT NULL COMMENT '供货商类别（1充值，2兑换）',
  `supply_code` varchar(50) DEFAULT NULL COMMENT '上游编码',
  `supply_name` varchar(50) DEFAULT NULL COMMENT '名称',
  `compay_name` varchar(255) DEFAULT NULL COMMENT '公司名',
  `para_request_url` varchar(255) DEFAULT NULL COMMENT '参数：请求URl',
  `para_order_url` varchar(255) DEFAULT NULL COMMENT '参数：订单查询url',
  `para_balance_url` varchar(255) DEFAULT NULL COMMENT '参数：余额查询URL',
  `para_user_id` varchar(255) DEFAULT NULL COMMENT '参数：用户ID',
  `para_key` varchar(255) DEFAULT NULL COMMENT '参数：key',
  `para_seceret` varchar(255) DEFAULT NULL COMMENT '参数：seceret',
  `para_ext1` varchar(255) DEFAULT NULL COMMENT '扩展参数1',
  `para_ext2` varchar(255) DEFAULT NULL COMMENT '扩展参数2',
  `para_ext3` varchar(255) DEFAULT NULL COMMENT '扩展参数3',
  `para_ext4` varchar(255) DEFAULT NULL COMMENT '扩展参数4',
  `para_ext5` varchar(255) DEFAULT NULL COMMENT '扩展参数5',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='上游供货商';

-- ----------------------------
-- Records of supply_info
-- ----------------------------
INSERT INTO supply_info VALUES ('1', null, null, '1', '2', 'longguoduihuan', '龙果兑换', '广州市领课网络科技有限公司', 'http://recharge.roncoo.com/exchange', 'http://recharge.roncoo.com/exchange/order', 'http://recharge.roncoo.com/balance/query', '88', '88', '88', '88', '88', '88', '88', '88');
INSERT INTO supply_info VALUES ('2', null, null, '1', '1', 'longguochongzhi', '龙果充值', '广州市领课网络科技有限公司', 'http://recharge.roncoo.com/recharge', 'http://recharge.roncoo.com/recharge/order', 'http://recharge.roncoo.com/balance/query', '99', '99', '99', '99', '99', '99', '99', '99');
INSERT INTO supply_info VALUES ('3', null, null, '1', '1', 'roncoochongzhi', 'roncoo充值', '龙果学院', 'http://www.roncoo.com/recharge', 'http://www.roncoo.com/recharge/order', 'http://www.roncoo.com/balance/query', '77', '77', '77', '77', '77', '77', '77', '77');
INSERT INTO supply_info VALUES ('4', null, null, '1', '2', 'roncooduihuan', 'roncoo兑换', '龙果学院', 'http://www.roncoo.com/exchange', 'http://www.roncoo.com/exchange/order', 'http://www.roncoo.com/balance/query', '66', '66', '66', '66', '66', '66', '66', '66');

-- ----------------------------
-- Table structure for `sys_log_login`
-- ----------------------------
DROP TABLE IF EXISTS `sys_log_login`;
CREATE TABLE `sys_log_login` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `user_info_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `login_name` varchar(30) NOT NULL DEFAULT '' COMMENT '登录名',
  `login_ip` varchar(30) NOT NULL DEFAULT '' COMMENT '登录IP',
  `last_login_ip` varchar(30) NOT NULL DEFAULT '' COMMENT '上次登录IP',
  `last_login_time` datetime NOT NULL COMMENT '上次登录时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='用户登陆日志';

-- ----------------------------
-- Records of sys_log_login
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_log_opt`
-- ----------------------------
DROP TABLE IF EXISTS `sys_log_opt`;
CREATE TABLE `sys_log_opt` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `user_info_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `login_name` varchar(50) NOT NULL DEFAULT '' COMMENT '真实姓名',
  `action` tinyint(3) NOT NULL DEFAULT '0' COMMENT '动作',
  `remark` varchar(1023) NOT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='用户操作日志表';

-- ----------------------------
-- Records of sys_log_opt
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `sort` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '排序',
  `status_id` tinyint(3) NOT NULL DEFAULT '1' COMMENT '1 正常 2 冻结 9 注销',
  `platform_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '平台ID',
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '父ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `menu_url` varchar(255) NOT NULL COMMENT '菜单路径',
  `target_name` varchar(50) DEFAULT NULL COMMENT '目标名称',
  `menu_icon` varchar(255) DEFAULT NULL COMMENT '菜单图标',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='菜单信息';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO sys_menu VALUES ('1', '2017-12-27 21:59:23', '2017-12-27 21:59:23', '10', '1', '1', '0', '系统管理', '', '', '', '');
INSERT INTO sys_menu VALUES ('2', '2017-12-27 22:00:08', '2017-12-27 22:00:08', '90', '1', '1', '0', '商品管理', '', '', '', '');
INSERT INTO sys_menu VALUES ('3', '2017-12-27 22:06:02', '2017-12-27 22:06:02', '100', '1', '1', '0', '订单管理', '', '', '', '');
INSERT INTO sys_menu VALUES ('4', '2017-12-27 22:06:51', '2017-12-27 22:06:51', '10', '1', '1', '1', '用户管理', '', '', '', '');
INSERT INTO sys_menu VALUES ('5', '2017-12-27 22:07:06', '2017-12-27 22:07:06', '10', '1', '1', '4', '用户管理', '/admin/sysUserInfo/list', 'admin-sysUserInfo', 'list', '');
INSERT INTO sys_menu VALUES ('6', '2017-12-27 22:09:16', '2017-12-27 22:09:16', '1', '1', '1', '5', '添加', '/admin/sysUserInfo/add', '', '', '');
INSERT INTO sys_menu VALUES ('7', '2017-12-27 22:10:11', '2017-12-27 22:10:11', '1', '1', '1', '6', '保存', '/admin/sysUserInfo/save', '', '', '');
INSERT INTO sys_menu VALUES ('8', '2017-12-27 22:10:32', '2017-12-27 22:10:32', '1', '1', '1', '5', '修改', '/admin/sysUserInfo/edit', '', '', '');
INSERT INTO sys_menu VALUES ('9', '2017-12-27 22:12:26', '2017-12-27 22:12:26', '1', '1', '1', '8', '更新', '/admin/sysUserInfo/update', '', '', '');
INSERT INTO sys_menu VALUES ('10', '2017-12-27 22:12:44', '2017-12-27 22:12:44', '1', '1', '1', '5', '删除', '/admin/sysUserInfo/delete', '', '', '');
INSERT INTO sys_menu VALUES ('12', '2017-12-27 22:20:56', '2017-12-27 22:20:56', '1', '1', '1', '1', '权限管理', '', '', '', '');
INSERT INTO sys_menu VALUES ('13', '2017-12-27 22:21:36', '2017-12-27 22:21:36', '10', '1', '1', '12', '角色管理', '/admin/sysRole/list', 'admin-sysRole', 'list', '');
INSERT INTO sys_menu VALUES ('14', '2017-12-27 22:22:22', '2017-12-27 22:22:22', '8', '1', '1', '12', '菜单管理', '/admin/sysMenu/list', 'admin-sysMenu', 'list', '');
INSERT INTO sys_menu VALUES ('15', '2017-12-27 22:22:46', '2017-12-27 22:22:46', '1', '1', '1', '12', '平台管理', '/admin/sysPlatform/list', 'admin-sysPlatform', 'list', '');
INSERT INTO sys_menu VALUES ('16', '2017-12-27 22:23:25', '2017-12-27 22:23:25', '8', '1', '1', '4', '下游代理商', '/admin/merchantInfo/list', 'admin-merchantInfo', 'list', '');
INSERT INTO sys_menu VALUES ('17', '2017-12-27 22:23:38', '2017-12-27 22:23:38', '1', '1', '1', '4', '上游供货商', '/admin/supplyInfo/list', 'admin-supplyInfo', 'list', '');
INSERT INTO sys_menu VALUES ('18', '2017-12-27 22:29:41', '2017-12-27 22:29:41', '1', '1', '1', '16', '添加', '/admin/merchantInfo/add', '', '', '');
INSERT INTO sys_menu VALUES ('19', '2017-12-27 22:31:34', '2017-12-27 22:31:34', '1', '1', '1', '17', '新增Item', '/admin/sysUserInfo/list', 'admin-sysUserInfo', 'list', '');
INSERT INTO sys_menu VALUES ('20', '2017-12-27 22:33:59', '2017-12-27 22:33:59', '1', '1', '1', '18', '新增Item', '/admin/mec/list', 'admin-sysUserInfo', 'list', '');
INSERT INTO sys_menu VALUES ('21', '2017-12-27 22:34:54', '2017-12-27 22:34:54', '1', '1', '1', '2', '商品管理', '', '', '', '');
INSERT INTO sys_menu VALUES ('26', '2017-12-27 22:40:45', '2017-12-27 22:40:45', '1', '1', '1', '3', '订单管理', '', '', '', '');
INSERT INTO sys_menu VALUES ('27', '2017-12-27 22:42:03', '2017-12-27 22:42:03', '10', '1', '1', '26', '交易订单', '/admin/orderTrade/list', 'admin-orderTrade', 'list', '');
INSERT INTO sys_menu VALUES ('38', '2017-12-27 22:53:33', '2017-12-27 22:53:33', '10', '1', '1', '21', '商品管理', '/admin/item/list', 'admin-item', 'list', '');
INSERT INTO sys_menu VALUES ('39', '2017-12-27 22:53:58', '2017-12-27 22:53:58', '1', '1', '1', '38', '新增Item', '', '', '', '');
INSERT INTO sys_menu VALUES ('40', '2017-12-27 22:54:05', '2017-12-27 22:54:05', '1', '1', '1', '39', '新增Item', '', '', '', '');
INSERT INTO sys_menu VALUES ('58', '2017-12-27 23:02:30', '2017-12-27 23:02:30', '1', '1', '1', '13', '添加', '/admin/sysRole/add', '', '', '');
INSERT INTO sys_menu VALUES ('59', '2017-12-27 23:02:45', '2017-12-27 23:02:45', '1', '1', '1', '58', '保存', '/admin/sysRole/save', '', '', '');
INSERT INTO sys_menu VALUES ('60', '2017-12-27 23:03:14', '2017-12-27 23:03:14', '1', '1', '1', '13', '修改', '/admin/sysRole/edit', '', '', '');
INSERT INTO sys_menu VALUES ('61', '2017-12-27 23:03:26', '2017-12-27 23:03:26', '1', '1', '1', '60', '更新', '/admin/sysRole/update', '', '', '');
INSERT INTO sys_menu VALUES ('62', '2017-12-27 23:03:48', '2017-12-27 23:03:48', '1', '1', '1', '13', '删除', '/admin/sysRole/delete', '', '', '');
INSERT INTO sys_menu VALUES ('63', '2017-12-28 09:47:25', '2017-12-28 09:47:25', '1', '1', '1', '14', '添加', '/admin/sysMenu/add', '', '', '');
INSERT INTO sys_menu VALUES ('64', '2017-12-28 09:47:39', '2017-12-28 09:47:39', '1', '1', '1', '63', '保存', '/admin/sysMenu/save', '', '', '');
INSERT INTO sys_menu VALUES ('65', '2017-12-28 09:47:51', '2017-12-28 09:47:51', '1', '1', '1', '14', '修改', '/admin/sysMenu/edit', '', '', '');
INSERT INTO sys_menu VALUES ('66', '2017-12-28 09:48:05', '2017-12-28 09:48:05', '1', '1', '1', '65', '更新', '/admin/sysMenu/update', '', '', '');
INSERT INTO sys_menu VALUES ('67', '2017-12-28 09:48:49', '2017-12-28 09:48:49', '1', '1', '1', '15', '添加', '/admin/sysPlatform/add', '', '', '');
INSERT INTO sys_menu VALUES ('68', '2017-12-28 09:48:58', '2017-12-28 09:48:58', '1', '1', '1', '67', '保存', '/admin/sysPlatform/save', '', '', '');
INSERT INTO sys_menu VALUES ('69', '2017-12-28 09:49:15', '2017-12-28 09:49:15', '1', '1', '1', '15', '修改', '/admin/sysPlatform/edit', '', '', '');
INSERT INTO sys_menu VALUES ('70', '2017-12-28 09:49:25', '2017-12-28 09:49:25', '1', '1', '1', '69', '更新', '/admin/sysPlatform/update', '', '', '');
INSERT INTO sys_menu VALUES ('71', '2017-12-28 09:49:50', '2017-12-28 09:49:50', '1', '1', '1', '14', '删除', '/admin/sysMenu/delete', '', '', '');
INSERT INTO sys_menu VALUES ('72', '2017-12-28 09:50:09', '2017-12-28 09:50:09', '1', '1', '1', '15', '删除', '/admin/sysPlatform/delete', '', '', '');
INSERT INTO sys_menu VALUES ('73', '2017-12-28 21:43:36', '2017-12-28 21:43:36', '1', '1', '1', '21', '供货商商品', '/admin/itemSupply/list', 'admin-itemSupply', 'list', '');
INSERT INTO sys_menu VALUES ('74', '2017-12-28 21:44:07', '2017-12-28 21:44:07', '1', '1', '1', '73', '添加', '/admin/itemSupply/add', '', '', '');
INSERT INTO sys_menu VALUES ('75', '2017-12-28 21:54:39', '2017-12-28 21:54:39', '1', '1', '1', '26', '供货订单', '/admin/orderSupply/list', 'admin-orderSupply', 'list', '');
INSERT INTO sys_menu VALUES ('76', '2018-04-10 11:19:48', '2018-04-10 11:19:48', '110', '1', '1', '0', '基础管理', '', '', '', '');
INSERT INTO sys_menu VALUES ('77', '2018-04-10 11:20:25', '2018-04-10 11:20:25', '1', '1', '1', '76', '基础数据', '', '', '', '');
INSERT INTO sys_menu VALUES ('78', '2018-04-10 11:20:45', '2018-04-10 11:20:45', '1', '1', '1', '77', '车型数据', '/admin/carConfig/list', 'admin-carConfig', 'list', '');
INSERT INTO sys_menu VALUES ('79', '2018-04-12 14:21:51', '2018-04-12 14:21:51', '12', '1', '1', '77', '司机信息', '/admin/driver/list', 'admin-driver', 'list', '');
INSERT INTO sys_menu VALUES ('80', '2018-04-16 10:42:31', '2018-04-16 10:42:31', '11', '1', '1', '77', '乘客信息', '/admin/passenger/list', 'admin-passenger', 'list', '');
INSERT INTO sys_menu VALUES ('81', '2018-04-16 15:07:04', '2018-04-16 15:07:04', '1', '1', '1', '26', '打车请求', '/admin/requestInfo/list', 'admin-requestInfo', 'list', '');
INSERT INTO sys_menu VALUES ('82', '2019-03-21 18:04:23', '2019-03-21 18:04:23', '1', '1', '1', '77', '妹纸信息', '/admin/girl/list', 'admin-girl', 'list', '');
INSERT INTO sys_menu VALUES ('83', '2019-03-25 16:27:00', '2019-03-25 16:27:00', '110', '1', '1', '76', '电商管理', '', '', '', '');
INSERT INTO sys_menu VALUES ('84', '2019-03-25 16:27:37', '2019-03-25 16:27:37', '111', '1', '1', '83', '品牌管理', '/admin/brand/list', 'admin-brand', 'list', '');
INSERT INTO sys_menu VALUES ('85', '2019-03-25 16:50:03', '2019-03-25 16:50:03', '110', '1', '1', '83', '类目管理', '/admin/category/list?parentId=0', 'admin-category', '', '');
INSERT INTO sys_menu VALUES ('86', '2019-03-25 19:39:08', '2019-03-25 19:39:08', '109', '1', '1', '83', '规格管理', '/admin/brand/list', 'admin-brand', 'list', '');
INSERT INTO sys_menu VALUES ('87', '2019-03-25 19:39:29', '2019-03-25 19:39:29', '108', '1', '1', '83', 'SPU管理', '/admin/brand/list', 'admin-brand', 'list', '');
INSERT INTO sys_menu VALUES ('88', '2019-03-25 19:40:08', '2019-03-25 19:40:08', '107', '1', '1', '83', 'SKU管理', '/admin/brand/list', 'admin-brand', 'list', '');
INSERT INTO sys_menu VALUES ('89', '2019-03-25 19:40:21', '2019-03-25 19:40:21', '106', '1', '1', '83', '库存管理', '/admin/brand/list', 'admin-brand', 'list', '');

-- ----------------------------
-- Table structure for `sys_menu_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu_role`;
CREATE TABLE `sys_menu_role` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `sort` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '排序',
  `status_id` tinyint(3) NOT NULL DEFAULT '1' COMMENT '1 正常 2 冻结 9 注销',
  `platform_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '平台ID',
  `menu_id` bigint(20) unsigned NOT NULL COMMENT '菜单ID',
  `role_id` bigint(20) unsigned NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=615 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='菜单角色关联表';

-- ----------------------------
-- Records of sys_menu_role
-- ----------------------------
INSERT INTO sys_menu_role VALUES ('202', '2018-03-19 21:57:48', '2018-03-19 21:57:48', '1', '1', '1', '3', '2');
INSERT INTO sys_menu_role VALUES ('203', '2018-03-19 21:57:48', '2018-03-19 21:57:48', '1', '1', '1', '26', '2');
INSERT INTO sys_menu_role VALUES ('204', '2018-03-19 21:57:48', '2018-03-19 21:57:48', '1', '1', '1', '27', '2');
INSERT INTO sys_menu_role VALUES ('205', '2018-03-19 21:57:48', '2018-03-19 21:57:48', '1', '1', '1', '75', '2');
INSERT INTO sys_menu_role VALUES ('206', '2018-03-19 21:57:48', '2018-03-19 21:57:48', '1', '1', '1', '2', '2');
INSERT INTO sys_menu_role VALUES ('207', '2018-03-19 21:57:48', '2018-03-19 21:57:48', '1', '1', '1', '21', '2');
INSERT INTO sys_menu_role VALUES ('208', '2018-03-19 21:57:48', '2018-03-19 21:57:48', '1', '1', '1', '38', '2');
INSERT INTO sys_menu_role VALUES ('209', '2018-03-19 21:57:48', '2018-03-19 21:57:48', '1', '1', '1', '39', '2');
INSERT INTO sys_menu_role VALUES ('210', '2018-03-19 21:57:48', '2018-03-19 21:57:48', '1', '1', '1', '40', '2');
INSERT INTO sys_menu_role VALUES ('211', '2018-03-19 21:57:48', '2018-03-19 21:57:48', '1', '1', '1', '73', '2');
INSERT INTO sys_menu_role VALUES ('212', '2018-03-19 21:57:48', '2018-03-19 21:57:48', '1', '1', '1', '74', '2');
INSERT INTO sys_menu_role VALUES ('558', '2019-03-25 19:42:09', '2019-03-25 19:42:09', '1', '1', '1', '76', '1');
INSERT INTO sys_menu_role VALUES ('559', '2019-03-25 19:42:09', '2019-03-25 19:42:09', '1', '1', '1', '83', '1');
INSERT INTO sys_menu_role VALUES ('560', '2019-03-25 19:42:09', '2019-03-25 19:42:09', '1', '1', '1', '84', '1');
INSERT INTO sys_menu_role VALUES ('561', '2019-03-25 19:42:09', '2019-03-25 19:42:09', '1', '1', '1', '89', '1');
INSERT INTO sys_menu_role VALUES ('562', '2019-03-25 19:42:09', '2019-03-25 19:42:09', '1', '1', '1', '88', '1');
INSERT INTO sys_menu_role VALUES ('563', '2019-03-25 19:42:09', '2019-03-25 19:42:09', '1', '1', '1', '87', '1');
INSERT INTO sys_menu_role VALUES ('564', '2019-03-25 19:42:09', '2019-03-25 19:42:09', '1', '1', '1', '85', '1');
INSERT INTO sys_menu_role VALUES ('565', '2019-03-25 19:42:09', '2019-03-25 19:42:09', '1', '1', '1', '86', '1');
INSERT INTO sys_menu_role VALUES ('566', '2019-03-25 19:42:10', '2019-03-25 19:42:10', '1', '1', '1', '77', '1');
INSERT INTO sys_menu_role VALUES ('567', '2019-03-25 19:42:10', '2019-03-25 19:42:10', '1', '1', '1', '79', '1');
INSERT INTO sys_menu_role VALUES ('568', '2019-03-25 19:42:10', '2019-03-25 19:42:10', '1', '1', '1', '80', '1');
INSERT INTO sys_menu_role VALUES ('569', '2019-03-25 19:42:10', '2019-03-25 19:42:10', '1', '1', '1', '82', '1');
INSERT INTO sys_menu_role VALUES ('570', '2019-03-25 19:42:10', '2019-03-25 19:42:10', '1', '1', '1', '78', '1');
INSERT INTO sys_menu_role VALUES ('571', '2019-03-25 19:42:10', '2019-03-25 19:42:10', '1', '1', '1', '3', '1');
INSERT INTO sys_menu_role VALUES ('572', '2019-03-25 19:42:10', '2019-03-25 19:42:10', '1', '1', '1', '26', '1');
INSERT INTO sys_menu_role VALUES ('573', '2019-03-25 19:42:10', '2019-03-25 19:42:10', '1', '1', '1', '27', '1');
INSERT INTO sys_menu_role VALUES ('574', '2019-03-25 19:42:10', '2019-03-25 19:42:10', '1', '1', '1', '81', '1');
INSERT INTO sys_menu_role VALUES ('575', '2019-03-25 19:42:11', '2019-03-25 19:42:11', '1', '1', '1', '75', '1');
INSERT INTO sys_menu_role VALUES ('576', '2019-03-25 19:42:11', '2019-03-25 19:42:11', '1', '1', '1', '2', '1');
INSERT INTO sys_menu_role VALUES ('577', '2019-03-25 19:42:11', '2019-03-25 19:42:11', '1', '1', '1', '21', '1');
INSERT INTO sys_menu_role VALUES ('578', '2019-03-25 19:42:11', '2019-03-25 19:42:11', '1', '1', '1', '38', '1');
INSERT INTO sys_menu_role VALUES ('579', '2019-03-25 19:42:11', '2019-03-25 19:42:11', '1', '1', '1', '39', '1');
INSERT INTO sys_menu_role VALUES ('580', '2019-03-25 19:42:11', '2019-03-25 19:42:11', '1', '1', '1', '40', '1');
INSERT INTO sys_menu_role VALUES ('581', '2019-03-25 19:42:11', '2019-03-25 19:42:11', '1', '1', '1', '73', '1');
INSERT INTO sys_menu_role VALUES ('582', '2019-03-25 19:42:11', '2019-03-25 19:42:11', '1', '1', '1', '74', '1');
INSERT INTO sys_menu_role VALUES ('583', '2019-03-25 19:42:12', '2019-03-25 19:42:12', '1', '1', '1', '1', '1');
INSERT INTO sys_menu_role VALUES ('584', '2019-03-25 19:42:12', '2019-03-25 19:42:12', '1', '1', '1', '4', '1');
INSERT INTO sys_menu_role VALUES ('585', '2019-03-25 19:42:12', '2019-03-25 19:42:12', '1', '1', '1', '5', '1');
INSERT INTO sys_menu_role VALUES ('586', '2019-03-25 19:42:12', '2019-03-25 19:42:12', '1', '1', '1', '10', '1');
INSERT INTO sys_menu_role VALUES ('587', '2019-03-25 19:42:12', '2019-03-25 19:42:12', '1', '1', '1', '8', '1');
INSERT INTO sys_menu_role VALUES ('588', '2019-03-25 19:42:12', '2019-03-25 19:42:12', '1', '1', '1', '9', '1');
INSERT INTO sys_menu_role VALUES ('589', '2019-03-25 19:42:12', '2019-03-25 19:42:12', '1', '1', '1', '6', '1');
INSERT INTO sys_menu_role VALUES ('590', '2019-03-25 19:42:12', '2019-03-25 19:42:12', '1', '1', '1', '7', '1');
INSERT INTO sys_menu_role VALUES ('591', '2019-03-25 19:42:12', '2019-03-25 19:42:12', '1', '1', '1', '16', '1');
INSERT INTO sys_menu_role VALUES ('592', '2019-03-25 19:42:13', '2019-03-25 19:42:13', '1', '1', '1', '18', '1');
INSERT INTO sys_menu_role VALUES ('593', '2019-03-25 19:42:13', '2019-03-25 19:42:13', '1', '1', '1', '20', '1');
INSERT INTO sys_menu_role VALUES ('594', '2019-03-25 19:42:13', '2019-03-25 19:42:13', '1', '1', '1', '17', '1');
INSERT INTO sys_menu_role VALUES ('595', '2019-03-25 19:42:13', '2019-03-25 19:42:13', '1', '1', '1', '19', '1');
INSERT INTO sys_menu_role VALUES ('596', '2019-03-25 19:42:13', '2019-03-25 19:42:13', '1', '1', '1', '12', '1');
INSERT INTO sys_menu_role VALUES ('597', '2019-03-25 19:42:13', '2019-03-25 19:42:13', '1', '1', '1', '13', '1');
INSERT INTO sys_menu_role VALUES ('598', '2019-03-25 19:42:13', '2019-03-25 19:42:13', '1', '1', '1', '62', '1');
INSERT INTO sys_menu_role VALUES ('599', '2019-03-25 19:42:13', '2019-03-25 19:42:13', '1', '1', '1', '60', '1');
INSERT INTO sys_menu_role VALUES ('600', '2019-03-25 19:42:14', '2019-03-25 19:42:14', '1', '1', '1', '61', '1');
INSERT INTO sys_menu_role VALUES ('601', '2019-03-25 19:42:14', '2019-03-25 19:42:14', '1', '1', '1', '58', '1');
INSERT INTO sys_menu_role VALUES ('602', '2019-03-25 19:42:14', '2019-03-25 19:42:14', '1', '1', '1', '59', '1');
INSERT INTO sys_menu_role VALUES ('603', '2019-03-25 19:42:14', '2019-03-25 19:42:14', '1', '1', '1', '14', '1');
INSERT INTO sys_menu_role VALUES ('604', '2019-03-25 19:42:14', '2019-03-25 19:42:14', '1', '1', '1', '71', '1');
INSERT INTO sys_menu_role VALUES ('605', '2019-03-25 19:42:14', '2019-03-25 19:42:14', '1', '1', '1', '65', '1');
INSERT INTO sys_menu_role VALUES ('606', '2019-03-25 19:42:14', '2019-03-25 19:42:14', '1', '1', '1', '66', '1');
INSERT INTO sys_menu_role VALUES ('607', '2019-03-25 19:42:14', '2019-03-25 19:42:14', '1', '1', '1', '63', '1');
INSERT INTO sys_menu_role VALUES ('608', '2019-03-25 19:42:14', '2019-03-25 19:42:14', '1', '1', '1', '64', '1');
INSERT INTO sys_menu_role VALUES ('609', '2019-03-25 19:42:15', '2019-03-25 19:42:15', '1', '1', '1', '15', '1');
INSERT INTO sys_menu_role VALUES ('610', '2019-03-25 19:42:15', '2019-03-25 19:42:15', '1', '1', '1', '72', '1');
INSERT INTO sys_menu_role VALUES ('611', '2019-03-25 19:42:15', '2019-03-25 19:42:15', '1', '1', '1', '69', '1');
INSERT INTO sys_menu_role VALUES ('612', '2019-03-25 19:42:15', '2019-03-25 19:42:15', '1', '1', '1', '70', '1');
INSERT INTO sys_menu_role VALUES ('613', '2019-03-25 19:42:15', '2019-03-25 19:42:15', '1', '1', '1', '67', '1');
INSERT INTO sys_menu_role VALUES ('614', '2019-03-25 19:42:15', '2019-03-25 19:42:15', '1', '1', '1', '68', '1');

-- ----------------------------
-- Table structure for `sys_platform`
-- ----------------------------
DROP TABLE IF EXISTS `sys_platform`;
CREATE TABLE `sys_platform` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `sort` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '排序',
  `status_id` tinyint(3) NOT NULL DEFAULT '1' COMMENT '1 正常 2 冻结 9 注销',
  `platform_app_id` char(34) NOT NULL DEFAULT '' COMMENT '平台APPID',
  `platform_app_secret` char(64) NOT NULL DEFAULT '' COMMENT '平台APPSECRET',
  `platform_name` varchar(255) NOT NULL DEFAULT '' COMMENT '平台名称',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `client_id` (`platform_app_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='授权客户端表';

-- ----------------------------
-- Records of sys_platform
-- ----------------------------
INSERT INTO sys_platform VALUES ('1', '2017-12-27 21:31:16', '2017-12-27 21:31:16', '1', '1', 'RC9560472864454143847a270bd4436532', '86aa6ab90d5b4379afaeb905fc1c7019', '龙果充值-运营后台', '我的平台');

-- ----------------------------
-- Table structure for `sys_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `sort` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '排序',
  `status_id` tinyint(3) NOT NULL DEFAULT '1' COMMENT '1 正常 2 冻结 9 注销',
  `platform_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '平台ID',
  `role_name` varchar(50) NOT NULL COMMENT '名称',
  `remark` varchar(255) NOT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='角色信息';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO sys_role VALUES ('1', '2017-12-28 09:58:04', '2017-12-28 09:58:04', '1', '1', '1', '超级管理员', '超级管理员');
INSERT INTO sys_role VALUES ('2', '2018-03-19 21:56:44', '2018-03-19 21:56:44', '1', '1', '1', '运营人员', '运营人员');

-- ----------------------------
-- Table structure for `sys_role_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_user`;
CREATE TABLE `sys_role_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `sort` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '排序',
  `status_id` tinyint(3) NOT NULL DEFAULT '1' COMMENT '1 正常 2 冻结 9 注销',
  `platform_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '平台ID',
  `role_id` bigint(20) unsigned NOT NULL COMMENT '角色ID',
  `user_info_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='角色用户关联表';

-- ----------------------------
-- Records of sys_role_user
-- ----------------------------
INSERT INTO sys_role_user VALUES ('1', '2017-12-28 12:28:51', '2017-12-28 12:28:51', '1', '1', '1', '1', '1');
INSERT INTO sys_role_user VALUES ('2', '2018-03-19 21:59:05', '2018-03-19 21:59:05', '1', '1', '1', '2', '2');

-- ----------------------------
-- Table structure for `sys_user_info`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_info`;
CREATE TABLE `sys_user_info` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `sort` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '排序',
  `status_id` tinyint(3) NOT NULL DEFAULT '1' COMMENT '1 正常 2 冻结 9 注销',
  `user_type` tinyint(3) DEFAULT NULL COMMENT '1 内部 2 下游',
  `login_name` varchar(50) DEFAULT NULL COMMENT '登录名',
  `nick_name` varchar(50) DEFAULT NULL COMMENT '用户名',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `mobile` char(11) DEFAULT NULL COMMENT '手机',
  `addr` varchar(255) DEFAULT NULL COMMENT '地址',
  `salt` char(32) DEFAULT NULL COMMENT '密码盐',
  `pwd` char(32) DEFAULT NULL COMMENT '登录密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='后台用户信息';

-- ----------------------------
-- Records of sys_user_info
-- ----------------------------
INSERT INTO sys_user_info VALUES ('1', '2017-12-27 10:14:14', '2017-12-27 10:14:14', '1', '1', '1', 'admin', 'feng', 'xxx@qq.com', '18333333333', '测试地址', 'b38c649a32cd418487bc4927bdf74ff6', 'f908e5c74e3b13ae14388afd42f3f13d');
INSERT INTO sys_user_info VALUES ('2', '2018-03-19 22:02:23', '2018-03-19 22:02:23', '1', '1', '2', 'test', '测试用户', 'xxx@qq.com', '18333333333', '测试地址', 'b38c649a32cd418487bc4927bdf74ff6', '48c1268105758e0f7d69c6b4758eeff5');

-- ----------------------------
-- Table structure for `tb_attribute`
-- ----------------------------
DROP TABLE IF EXISTS `tb_attribute`;
CREATE TABLE `tb_attribute` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` bigint(20) DEFAULT NULL COMMENT '所属分类(最小分类)',
  `attr_name` varchar(255) DEFAULT NULL COMMENT '分类名称',
  `attr_input_type` tinyint(4) DEFAULT NULL COMMENT ' 0为类别:0手功输入;1为选择输入;2为多行文本输入',
  `attr_type` tinyint(4) DEFAULT NULL COMMENT 'SKU属性; 0否; 1是',
  `attr_values` varchar(255) DEFAULT NULL COMMENT '即选择输入,则attr_name对应的值的取值就是该这字段值 ',
  `attr_index` tinyint(4) DEFAULT NULL COMMENT '性是否可以检索;0不需要检索; 1关键字检索2范围检索,该属性应该是如果检索的话,可以通过该属性找到有该属性的商品',
  `sort_order` tinyint(4) DEFAULT NULL COMMENT '属性排序,数字越大越靠前,如果数字一样则按id顺序',
  `is_linked` tinyint(4) DEFAULT '0' COMMENT '是否关联,0 不关联 1关联; 如果关联, 那么用户在购买该商品时,具有有该属性相同的商品将被推荐给用户',
  `create_person` varchar(64) NOT NULL DEFAULT 'system' COMMENT '创建人',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_person` varchar(64) NOT NULL DEFAULT 'system' COMMENT '更新人',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='属性表';

-- ----------------------------
-- Records of tb_attribute
-- ----------------------------
INSERT INTO tb_attribute VALUES ('1', '8', '材质', '1', '0', 'A,B', '1', '1', '0', 'system', '2019-03-27 20:25:32', 'system', '2019-03-28 09:34:32');
INSERT INTO tb_attribute VALUES ('3', '8', '产地', '0', '0', '亚洲，欧洲', '1', '2', '0', 'system', '2019-03-28 09:20:45', 'system', '2019-03-28 09:34:34');

-- ----------------------------
-- Table structure for `tb_brand`
-- ----------------------------
DROP TABLE IF EXISTS `tb_brand`;
CREATE TABLE `tb_brand` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '品牌名称',
  `letter` varchar(10) DEFAULT NULL COMMENT '品牌首字母',
  `create_person` varchar(64) NOT NULL DEFAULT 'system' COMMENT '创建人',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_person` varchar(64) NOT NULL DEFAULT 'system' COMMENT '更新人',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='品牌表';

-- ----------------------------
-- Records of tb_brand
-- ----------------------------
INSERT INTO tb_brand VALUES ('1', '苹果', 'A', 'system', '2019-03-25 16:28:50', 'system', '2019-03-25 16:28:50');

-- ----------------------------
-- Table structure for `tb_category`
-- ----------------------------
DROP TABLE IF EXISTS `tb_category`;
CREATE TABLE `tb_category` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '分类名称',
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父节点Id',
  `image` varchar(800) DEFAULT '' COMMENT '类目图片',
  `is_leaf` int(11) DEFAULT '0' COMMENT '叶子结点: 0否 1是',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `create_person` varchar(64) NOT NULL DEFAULT 'system' COMMENT '创建人',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_person` varchar(64) NOT NULL DEFAULT 'system' COMMENT '更新人',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='分类信息';

-- ----------------------------
-- Records of tb_category
-- ----------------------------
INSERT INTO tb_category VALUES ('1', '玉翠珠宝', '0', null, '0', '1', 'system', '2019-03-25 16:51:44', 'system', '2019-03-25 16:51:44');
INSERT INTO tb_category VALUES ('2', '饰品配件', '0', null, '0', '2', 'system', '2019-03-25 16:51:58', 'system', '2019-03-25 16:51:58');
INSERT INTO tb_category VALUES ('3', '文玩杂项', '0', null, '0', '3', 'system', '2019-03-25 16:52:17', 'system', '2019-03-25 16:52:17');
INSERT INTO tb_category VALUES ('5', '翡翠', '3', 'https://markkkkdkd.oss-cn-beijing.aliyuncs.com/demo20181122/20190327/661984e2f8bb487e93146785f4d9eba6.jpg', '1', '2', 'system', '2019-03-27 14:38:40', 'system', '2019-03-27 14:41:22');
INSERT INTO tb_category VALUES ('6', '吊坠', '3', 'https://markkkkdkd.oss-cn-beijing.aliyuncs.com/demo20181122/20190327/bd055c5e3f18425db7225f18c707ce73.jpg', '1', '3', 'system', '2019-03-27 14:52:02', 'system', '2019-03-27 14:52:52');
INSERT INTO tb_category VALUES ('7', '和田玉', '3', 'https://markkkkdkd.oss-cn-beijing.aliyuncs.com/demo20181122/20190327/c430f1edb0eb444b89724b6e6daa9a34.jpg', '1', '4', 'system', '2019-03-27 15:50:08', 'system', '2019-03-27 15:50:24');
INSERT INTO tb_category VALUES ('8', '南红', '3', 'https://markkkkdkd.oss-cn-beijing.aliyuncs.com/demo20181122/20190327/a37e56f7d45d4a1ba8acbd33be652cf8.jpg', '1', '5', 'system', '2019-03-27 15:53:48', 'system', '2019-03-27 15:54:05');

-- ----------------------------
-- Table structure for `tb_goods`
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods`;
CREATE TABLE `tb_goods` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `seller_id` bigint(20) DEFAULT '0' COMMENT '商家Id',
  `goods_name` varchar(600) DEFAULT NULL COMMENT '商品名称(SPU名称)',
  `goods_description` varchar(600) DEFAULT NULL COMMENT '商品描述',
  `default_item_id` bigint(20) DEFAULT NULL COMMENT '默认SKU',
  `is_marketable` int(11) DEFAULT NULL COMMENT '是否上架(0否 1是)',
  `brand_id` bigint(20) DEFAULT NULL COMMENT '所属品牌Id',
  `category1_id` bigint(20) DEFAULT NULL COMMENT '一级类目Id',
  `category2_id` bigint(20) DEFAULT NULL COMMENT '二级类目Id',
  `category3_id` bigint(20) DEFAULT NULL COMMENT '三级类目Id',
  `small_image` varchar(255) DEFAULT NULL COMMENT '小图',
  `price` int(10) DEFAULT NULL COMMENT '商城价(单位:分)',
  `type_template_id` bigint(20) DEFAULT NULL COMMENT '分类模版Id',
  `is_enable_spec` int(11) DEFAULT NULL COMMENT '是否开启规格(0否 1是)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品表';

-- ----------------------------
-- Records of tb_goods
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_goods_desc`
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods_desc`;
CREATE TABLE `tb_goods_desc` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT '',
  `specifcation_items` varchar(255) DEFAULT NULL,
  `custom_attribute_items` varchar(255) DEFAULT NULL,
  `items_image` varchar(1000) DEFAULT NULL,
  `package_list` varchar(255) DEFAULT NULL,
  `sale_service` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_goods_desc
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_resource_idea_three_party_audit`
-- ----------------------------
DROP TABLE IF EXISTS `tb_resource_idea_three_party_audit`;
CREATE TABLE `tb_resource_idea_three_party_audit` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `resource_idea_id` bigint(20) NOT NULL COMMENT '创意Id',
  `material_id` varchar(100) NOT NULL COMMENT '第三方创意Id',
  `adx_type` int(11) NOT NULL DEFAULT '0' COMMENT 'adx类型: 7-vivo ',
  `status` int(11) NOT NULL COMMENT '审核状态',
  `message` varchar(200) DEFAULT NULL COMMENT '审核备注',
  `audit_on` datetime NOT NULL COMMENT '审核日期',
  `audit_id` varchar(100) NOT NULL COMMENT '审核批次',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='资源创意第三方审核记录';

-- ----------------------------
-- Records of tb_resource_idea_three_party_audit
-- ----------------------------

-- ----------------------------
-- Table structure for `trip_info`
-- ----------------------------
DROP TABLE IF EXISTS `trip_info`;
CREATE TABLE `trip_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `request_id` bigint(20) NOT NULL COMMENT '所属请求Id',
  `passenger_id` bigint(20) NOT NULL COMMENT '所属乘客Id',
  `driver_id` bigint(20) NOT NULL COMMENT '司机Id',
  `car_id` bigint(20) NOT NULL COMMENT '所属车辆Id',
  `status` int(11) NOT NULL COMMENT '状态: 0-取消订单 1-司机接驾 2-司机到达 3-开始行程 4-结束行程 5-互评',
  `pick_up_time` datetime NOT NULL COMMENT '上车时间',
  `drop_of_time` datetime NOT NULL COMMENT '下车时间',
  `price` int(11) NOT NULL COMMENT '价格(单位:分)',
  `create_person` varchar(64) NOT NULL DEFAULT 'system' COMMENT '创建人',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_person` varchar(64) NOT NULL DEFAULT 'system' COMMENT '更新人',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='打车行程';

-- ----------------------------
-- Records of trip_info
-- ----------------------------

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `enabled` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO users VALUES ('reader', 'reader', 'Y');
INSERT INTO users VALUES ('writer', 'writer', 'Y');
