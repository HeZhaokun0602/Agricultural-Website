/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50717
 Source Host           : localhost:3306
 Source Schema         : springboot333w4

 Target Server Type    : MySQL
 Target Server Version : 50717
 File Encoding         : 65001

 Date: 14/01/2024 22:11:53
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '地址',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收货人',
  `phone` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '电话',
  `isdefault` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`) USING BTREE,
	foreign key(userid) references yonghu(id)
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '地址' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES (1, '2024-09-17 15:18:51', 11, '地址1号', 'user', '13823888881', '是');
INSERT INTO `address` VALUES (2, '2024-09-17 15:18:51', 12, '地址2号', '用户1', '13823888882', '是');
INSERT INTO `address` VALUES (3, '2024-09-17 15:18:51', 13, '地址3号', '用户2', '13823888883', '是');
INSERT INTO `address` VALUES (4, '2024-09-17 15:18:51', 14, '地址4号', '用户3', '13823888884', '是');
INSERT INTO `address` VALUES (5, '2024-09-17 15:18:51', 15, '地址5号', '用户4', '13823888885', '是');
INSERT INTO `address` VALUES (6, '2024-09-17 15:18:51', 16, '地址6号', '用户5', '13823888886', '是');

-- ----------------------------
-- Table structure for aixinjuanzeng
-- ----------------------------
DROP TABLE IF EXISTS `aixinjuanzeng`;
CREATE TABLE `aixinjuanzeng`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `aixinbianhao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '爱心编号',
  `diqu` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地区',
  `dianjiaming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '店家名',
  `juanzengjine` int(11) NULL DEFAULT NULL COMMENT '捐赠金额',
  `juanzengshuoming` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '捐赠说明',
  `zhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `ispay` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '已支付' COMMENT '是否支付',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 77 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '爱心捐赠' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of aixinjuanzeng
-- ----------------------------
INSERT INTO `aixinjuanzeng` VALUES (71, '2024-04-18 15:18:50', '爱心编号1', '地区1', '店家1', 10000, '捐赠说明1', '账号1', '姓名1', '已支付');
INSERT INTO `aixinjuanzeng` VALUES (72, '2024-04-18 15:18:50', '爱心编号2', '地区2', '店家2', 20000, '捐赠说明2', '账号2', '姓名2', '已支付');
INSERT INTO `aixinjuanzeng` VALUES (73, '2024-04-18 15:18:50', '爱心编号3', '地区3', '店家3', 30000, '捐赠说明3', '账号3', '姓名3', '已支付');
INSERT INTO `aixinjuanzeng` VALUES (74, '2024-04-18 15:18:50', '爱心编号4', '地区4', '店家4', 40000, '捐赠说明4', '账号4', '姓名4', '已支付');
INSERT INTO `aixinjuanzeng` VALUES (75, '2024-04-18 15:18:50', '爱心编号5', '地区5', '店家5', 50000, '捐赠说明5', '账号5', '姓名5', '已支付');
INSERT INTO `aixinjuanzeng` VALUES (76, '2024-04-18 15:18:50', '爱心编号6', '地区6', '店家6', 60000, '捐赠说明6', '账号6', '姓名6', '已支付');

-- ----------------------------
-- Table structure for aixinxiang
-- ----------------------------
DROP TABLE IF EXISTS `aixinxiang`;
CREATE TABLE `aixinxiang`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `aixinbianhao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '爱心编号',
  `diqu` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地区',
  `dianjiaming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '店家名',
  `dizhi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `pinkunrenzheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '贫困认证',
  `fengmian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '封面',
  `pinkunjieshao` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '贫困介绍',
  `thumbsupnum` int(11) NULL DEFAULT 0 COMMENT '赞',
  `crazilynum` int(11) NULL DEFAULT 0 COMMENT '踩',
  PRIMARY KEY (`id`) USING BTREE,
	foreign key(dianjiaming) references dianjia(dianjiaming),
  UNIQUE INDEX `aixinbianhao`(`aixinbianhao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 117 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '爱心箱' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of aixinxiang
-- ----------------------------
INSERT INTO `aixinxiang` VALUES (111, '2024-04-18 15:18:51', '爱心编号1', '地区1', '店家1', '地址1', '是', 'http://localhost:8080/springboot333w4/upload/aixinxiang_fengmian1.png', '贫困介绍1', 1, 1);
INSERT INTO `aixinxiang` VALUES (112, '2024-04-18 15:18:51', '爱心编号2', '地区2', '店家2', '地址2', '是', 'http://localhost:8080/springboot333w4/upload/aixinxiang_fengmian2.png', '贫困介绍2', 2, 2);
INSERT INTO `aixinxiang` VALUES (113, '2024-04-18 15:18:51', '爱心编号3', '地区3', '店家3', '地址3', '是', 'http://localhost:8080/springboot333w4/upload/aixinxiang_fengmian3.png', '贫困介绍3', 3, 3);
INSERT INTO `aixinxiang` VALUES (114, '2024-04-18 15:18:51', '爱心编号4', '地区4', '店家4', '地址4', '是', 'http://localhost:8080/springboot333w4/upload/aixinxiang_fengmian4.png', '贫困介绍4', 4, 4);
INSERT INTO `aixinxiang` VALUES (115, '2024-04-18 15:18:51', '爱心编号5', '地区5', '店家5', '地址5', '是', 'http://localhost:8080/springboot333w4/upload/aixinxiang_fengmian5.png', '贫困介绍5', 5, 5);
INSERT INTO `aixinxiang` VALUES (116, '2024-04-18 15:18:51', '爱心编号6', '地区6', '店家6', '地址6', '是', 'http://localhost:8080/springboot333w4/upload/aixinxiang_fengmian6.png', '贫困介绍6', 6, 6);

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `tablename` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'shangpin' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NULL DEFAULT NULL COMMENT '单价',
  `discountprice` float NULL DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`) USING BTREE,
	foreign key(userid) references yonghu(id),
	foreign key(goodid) references shangpin(id)
) ENGINE = InnoDB AUTO_INCREMENT = 1705239442642 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '购物车表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES (1705239442641, '2024-01-14 21:37:21', 'shangpin', 11, 42, '胡罗卜', 'http://localhost:8080/springboot333w4/upload/shangpin_tupian2.jpg', 1, 99.9, 0);
-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '配置文件' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES (1, 'picture1', 'http://localhost:8080/springboot333w4/upload/picture1.jpg');
INSERT INTO `config` VALUES (2, 'picture2', 'http://localhost:8080/springboot333w4/upload/picture2.jpg');
INSERT INTO `config` VALUES (3, 'picture3', 'http://localhost:8080/springboot333w4/upload/picture3.jpg');
INSERT INTO `config` VALUES (6, 'homepage', NULL);

-- ----------------------------
-- Table structure for dianjia
-- ----------------------------
DROP TABLE IF EXISTS `dianjia`;
CREATE TABLE `dianjia`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `dianjiaming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '店家名',
  `mima` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `xingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '手机',
  `youxiang` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '身份证',
  `dizhi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `zhaopian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '照片',
  `tuihuodizhi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '退货地址',
  `money` float NULL DEFAULT 0 COMMENT '余额',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `dianjiaming`(`dianjiaming`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '店家' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dianjia
-- ----------------------------
INSERT INTO `dianjia` VALUES (21, '2024-04-18 15:18:50', '店家1', '123456', '姓名1', '男', '13823888881', '773890001@qq.com', '440300199101010001', '地址1', 'http://localhost:8080/springboot333w4/upload/dianjia_zhaopian1.png', '退货地址1', 100);
INSERT INTO `dianjia` VALUES (22, '2024-04-18 15:18:50', '店家2', '123456', '姓名2', '男', '13823888882', '773890002@qq.com', '440300199202020002', '地址2', 'http://localhost:8080/springboot333w4/upload/dianjia_zhaopian2.png', '退货地址2', 100);
INSERT INTO `dianjia` VALUES (23, '2024-04-18 15:18:50', '店家3', '123456', '姓名3', '男', '13823888883', '773890003@qq.com', '440300199303030003', '地址3', 'http://localhost:8080/springboot333w4/upload/dianjia_zhaopian3.png', '退货地址3', 100);
INSERT INTO `dianjia` VALUES (24, '2024-04-18 15:18:50', '店家4', '123456', '姓名4', '男', '13823888884', '773890004@qq.com', '440300199404040004', '地址4', 'http://localhost:8080/springboot333w4/upload/dianjia_zhaopian4.png', '退货地址4', 100);
INSERT INTO `dianjia` VALUES (25, '2024-04-18 15:18:50', '店家5', '123456', '姓名5', '男', '13823888885', '773890005@qq.com', '440300199505050005', '地址5', 'http://localhost:8080/springboot333w4/upload/dianjia_zhaopian5.png', '退货地址5', 100);
INSERT INTO `dianjia` VALUES (26, '2024-04-18 15:18:50', '店家6', '123456', '姓名6', '男', '13823888886', '773890006@qq.com', '440300199606060006', '地址6', 'http://localhost:8080/springboot333w4/upload/dianjia_zhaopian6.png', '退货地址6', 100);

-- ----------------------------
-- Table structure for dianpu
-- ----------------------------
DROP TABLE IF EXISTS `dianpu`;
CREATE TABLE `dianpu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `leibie` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类别',
  `dianjiaming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '店家名',
  `shengchandi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生产地',
  `tupian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片',
  `shangpinjieshao` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '商品介绍',
  `thumbsupnum` int(11) NULL DEFAULT 0 COMMENT '赞',
  `crazilynum` int(11) NULL DEFAULT 0 COMMENT '踩',
  `price` float NOT NULL COMMENT '价格',
  `onelimittimes` int(11) NULL DEFAULT -1 COMMENT '单限',
  `alllimittimes` int(11) NULL DEFAULT -1 COMMENT '库存',
  PRIMARY KEY (`id`) USING BTREE,
	foreign key(dianjiaming) references dianjia(dianjiaming)
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '店铺' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dianpu
-- ----------------------------

-- ----------------------------
-- Table structure for discussaixinxiang
-- ----------------------------
DROP TABLE IF EXISTS `discussaixinxiang`;
CREATE TABLE `discussaixinxiang`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '评论内容',
  `reply` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '回复内容',
  PRIMARY KEY (`id`) USING BTREE,
	foreign key(userid) references yonghu(id),
	foreign key(refid) references aixinxiang(id)
) ENGINE = InnoDB AUTO_INCREMENT = 217 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '爱心箱评论表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of discussaixinxiang
-- ----------------------------
INSERT INTO `discussaixinxiang` VALUES (211, '2024-04-18 15:18:51', 1, 1, '用户1', '评论内容1', '回复内容1');
INSERT INTO `discussaixinxiang` VALUES (212, '2024-04-18 15:18:51', 2, 2, '用户2', '评论内容2', '回复内容2');
INSERT INTO `discussaixinxiang` VALUES (213, '2024-04-18 15:18:51', 3, 3, '用户3', '评论内容3', '回复内容3');
INSERT INTO `discussaixinxiang` VALUES (214, '2024-04-18 15:18:51', 4, 4, '用户4', '评论内容4', '回复内容4');
INSERT INTO `discussaixinxiang` VALUES (215, '2024-04-18 15:18:51', 5, 5, '用户5', '评论内容5', '回复内容5');
INSERT INTO `discussaixinxiang` VALUES (216, '2024-04-18 15:18:51', 6, 6, '用户6', '评论内容6', '回复内容6');

-- ----------------------------
-- Table structure for discussdianpu
-- ----------------------------
DROP TABLE IF EXISTS `discussdianpu`;
CREATE TABLE `discussdianpu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '评论内容',
  `reply` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '回复内容',
  PRIMARY KEY (`id`) USING BTREE,
	foreign key(userid) references yonghu(id),
	foreign key(refid) references dianpu(id)
) ENGINE = InnoDB AUTO_INCREMENT = 187 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '店铺评论表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of discussdianpu
-- ----------------------------
INSERT INTO `discussdianpu` VALUES (181, '2024-04-18 15:18:51', 1, 1, '用户1', '评论内容1', '回复内容1');
INSERT INTO `discussdianpu` VALUES (182, '2024-04-18 15:18:51', 2, 2, '用户2', '评论内容2', '回复内容2');
INSERT INTO `discussdianpu` VALUES (183, '2024-04-18 15:18:51', 3, 3, '用户3', '评论内容3', '回复内容3');
INSERT INTO `discussdianpu` VALUES (184, '2024-04-18 15:18:51', 4, 4, '用户4', '评论内容4', '回复内容4');
INSERT INTO `discussdianpu` VALUES (185, '2024-04-18 15:18:51', 5, 5, '用户5', '评论内容5', '回复内容5');
INSERT INTO `discussdianpu` VALUES (186, '2024-04-18 15:18:51', 6, 6, '用户6', '评论内容6', '回复内容6');

-- ----------------------------
-- Table structure for discussfupinzhengce
-- ----------------------------
DROP TABLE IF EXISTS `discussfupinzhengce`;
CREATE TABLE `discussfupinzhengce`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '评论内容',
  `reply` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '回复内容',
  PRIMARY KEY (`id`) USING BTREE,
	foreign key(userid) references yonghu(id),
	foreign key(refid) references fupinzhengce(id)
) ENGINE = InnoDB AUTO_INCREMENT = 207 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '扶贫政策评论表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of discussfupinzhengce
-- ----------------------------
INSERT INTO `discussfupinzhengce` VALUES (201, '2024-04-18 15:18:51', 1, 1, '用户1', '评论内容1', '回复内容1');
INSERT INTO `discussfupinzhengce` VALUES (202, '2024-04-18 15:18:51', 2, 2, '用户2', '评论内容2', '回复内容2');
INSERT INTO `discussfupinzhengce` VALUES (203, '2024-04-18 15:18:51', 3, 3, '用户3', '评论内容3', '回复内容3');
INSERT INTO `discussfupinzhengce` VALUES (204, '2024-04-18 15:18:51', 4, 4, '用户4', '评论内容4', '回复内容4');
INSERT INTO `discussfupinzhengce` VALUES (205, '2024-04-18 15:18:51', 5, 5, '用户5', '评论内容5', '回复内容5');
INSERT INTO `discussfupinzhengce` VALUES (206, '2024-04-18 15:18:51', 6, 6, '用户6', '评论内容6', '回复内容6');

-- ----------------------------
-- Table structure for discussshangpin
-- ----------------------------
DROP TABLE IF EXISTS `discussshangpin`;
CREATE TABLE `discussshangpin`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '评论内容',
  `reply` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '回复内容',
  PRIMARY KEY (`id`) USING BTREE,
	foreign key(userid) references yonghu(id),
	foreign key(refid) references shangpin(id)
) ENGINE = InnoDB AUTO_INCREMENT = 197 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商品评论表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of discussshangpin
-- ----------------------------
INSERT INTO `discussshangpin` VALUES (191, '2024-04-18 15:18:51', 1, 1, '用户1', '评论内容1', '回复内容1');
INSERT INTO `discussshangpin` VALUES (192, '2024-04-18 15:18:51', 2, 2, '用户2', '评论内容2', '回复内容2');
INSERT INTO `discussshangpin` VALUES (193, '2024-04-18 15:18:51', 3, 3, '用户3', '评论内容3', '回复内容3');
INSERT INTO `discussshangpin` VALUES (194, '2024-04-18 15:18:51', 4, 4, '用户4', '评论内容4', '回复内容4');
INSERT INTO `discussshangpin` VALUES (195, '2024-04-18 15:18:51', 5, 5, '用户5', '评论内容5', '回复内容5');
INSERT INTO `discussshangpin` VALUES (196, '2024-04-18 15:18:51', 6, 6, '用户6', '评论内容6', '回复内容6');

-- ----------------------------
-- Table structure for fupinzhengce
-- ----------------------------
DROP TABLE IF EXISTS `fupinzhengce`;
CREATE TABLE `fupinzhengce`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `biaoti` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `zhengcemingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '政策名称',
  `fabudanwei` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发布单位',
  `fabushijian` date NULL DEFAULT NULL COMMENT '发布时间',
  `zhengcewenjian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '政策文件',
  `fengmian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '封面',
  `zhengcejieshao` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '政策介绍',
  `thumbsupnum` int(11) NULL DEFAULT 0 COMMENT '赞',
  `crazilynum` int(11) NULL DEFAULT 0 COMMENT '踩',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 104 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '扶贫政策' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fupinzhengce
-- ----------------------------
INSERT INTO `fupinzhengce` VALUES (101, '2024-04-18 15:18:50', '标题1', '政策名称1', '发布单位1', '2024-04-18', '', 'http://localhost:8080/springboot333w4/upload/fupinzhengce_fengmian1.png', '政策介绍1', 1, 1);
INSERT INTO `fupinzhengce` VALUES (102, '2024-04-18 15:18:51', '标题2', '政策名称2', '发布单位2', '2024-04-18', '', 'http://localhost:8080/springboot333w4/upload/fupinzhengce_fengmian2.png', '政策介绍2', 2, 2);
INSERT INTO `fupinzhengce` VALUES (103, '2024-04-18 15:18:51', '标题3', '政策名称3', '发布单位3', '2024-04-18', '', 'http://localhost:8080/springboot333w4/upload/fupinzhengce_fengmian3.png', '政策介绍3', 3, 3);

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题',
  `introduction` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '简介',
  `picture` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图片',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 177 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '自然风光介绍' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (171, '2024-04-18 15:18:51', '标题1', '简介1', 'http://localhost:8080/springboot333w4/upload/news_picture1.png', '内容1');
INSERT INTO `news` VALUES (172, '2024-04-18 15:18:51', '标题2', '简介2', 'http://localhost:8080/springboot333w4/upload/news_picture2.png', '内容2');
INSERT INTO `news` VALUES (173, '2024-04-18 15:18:51', '标题3', '简介3', 'http://localhost:8080/springboot333w4/upload/news_picture3.png', '内容3');
INSERT INTO `news` VALUES (174, '2024-04-18 15:18:51', '标题4', '简介4', 'http://localhost:8080/springboot333w4/upload/news_picture4.png', '内容4');
INSERT INTO `news` VALUES (175, '2024-04-18 15:18:51', '标题5', '简介5', 'http://localhost:8080/springboot333w4/upload/news_picture5.png', '内容5');
INSERT INTO `news` VALUES (176, '2024-04-18 15:18:51', '标题6', '简介6', 'http://localhost:8080/springboot333w4/upload/news_picture6.png', '内容6');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `orderid` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'shangpin' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT 0 COMMENT '价格/积分',
  `discountprice` float NULL DEFAULT 0 COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT 0 COMMENT '总价格/总积分',
  `discounttotal` float NULL DEFAULT 0 COMMENT '折扣总价格',
  `type` int(11) NULL DEFAULT 1 COMMENT '支付类型',
  `status` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态',
  `address` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `tel` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货人',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `orderid`(`orderid`) USING BTREE,
	foreign key(userid) references yonghu(id),
	foreign key(goodid) references shangpin(id)
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pinkundianjiashenqing
-- ----------------------------
DROP TABLE IF EXISTS `pinkundianjiashenqing`;
CREATE TABLE `pinkundianjiashenqing`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `shenqingbianhao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '申请编号',
  `diqu` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地区',
  `dianjiaming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '店家名',
  `xingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `shenfenzheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证',
  `shouji` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机',
  `dizhi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `shenqingziliao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '申请资料',
  `shenqingshuoming` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '申请说明',
  `sfsh` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '审核回复',
  PRIMARY KEY (`id`) USING BTREE,
	foreign key(dianjiaming) references dianjia(dianjiaming),
  UNIQUE INDEX `shenqingbianhao`(`shenqingbianhao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 87 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '贫困店家申请' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pinkundianjiashenqing
-- ----------------------------
INSERT INTO `pinkundianjiashenqing` VALUES (81, '2024-04-18 15:18:50', '申请编号1', '地区1', '店家1', '姓名1', '身份证1', '手机1', '地址1', '', '申请说明1', '是', '');
INSERT INTO `pinkundianjiashenqing` VALUES (82, '2024-04-18 15:18:50', '申请编号2', '地区2', '店家2', '姓名2', '身份证2', '手机2', '地址2', '', '申请说明2', '是', '');
INSERT INTO `pinkundianjiashenqing` VALUES (83, '2024-04-18 15:18:50', '申请编号3', '地区3', '店家3', '姓名3', '身份证3', '手机3', '地址3', '', '申请说明3', '是', '');
INSERT INTO `pinkundianjiashenqing` VALUES (84, '2024-04-18 15:18:50', '申请编号4', '地区4', '店家4', '姓名4', '身份证4', '手机4', '地址4', '', '申请说明4', '是', '');
INSERT INTO `pinkundianjiashenqing` VALUES (85, '2024-04-18 15:18:50', '申请编号5', '地区5', '店家5', '姓名5', '身份证5', '手机5', '地址5', '', '申请说明5', '是', '');
INSERT INTO `pinkundianjiashenqing` VALUES (86, '2024-04-18 15:18:50', '申请编号6', '地区6', '店家6', '姓名6', '身份证6', '手机6', '地址6', '', '申请说明6', '是', '');

-- ----------------------------
-- Table structure for pinkundianjiaxinxi
-- ----------------------------
DROP TABLE IF EXISTS `pinkundianjiaxinxi`;
CREATE TABLE `pinkundianjiaxinxi`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `diqu` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地区',
  `dianjiaming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '店家名',
  `xingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `shenfenzheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证',
  `shouji` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机',
  `dizhi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `shenqingziliao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '申请资料',
  PRIMARY KEY (`id`) USING BTREE,
	foreign key(dianjiaming) references dianjia(dianjiaming)
) ENGINE = InnoDB AUTO_INCREMENT = 97 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '贫困店家信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pinkundianjiaxinxi
-- ----------------------------
INSERT INTO `pinkundianjiaxinxi` VALUES (91, '2024-04-18 15:18:50', '地区1', '店家1', '姓名1', '身份证1', '手机1', '地址1', '');
INSERT INTO `pinkundianjiaxinxi` VALUES (92, '2024-04-18 15:18:50', '地区2', '店家2', '姓名2', '身份证2', '手机2', '地址2', '');
INSERT INTO `pinkundianjiaxinxi` VALUES (93, '2024-04-18 15:18:50', '地区3', '店家3', '姓名3', '身份证3', '手机3', '地址3', '');
INSERT INTO `pinkundianjiaxinxi` VALUES (94, '2024-04-18 15:18:50', '地区4', '店家4', '姓名4', '身份证4', '手机4', '地址4', '');
INSERT INTO `pinkundianjiaxinxi` VALUES (95, '2024-04-18 15:18:50', '地区5', '店家5', '姓名5', '身份证5', '手机5', '地址5', '');
INSERT INTO `pinkundianjiaxinxi` VALUES (96, '2024-04-18 15:18:50', '地区6', '店家6', '姓名6', '身份证6', '手机6', '地址6', '');

-- ----------------------------
-- Table structure for shangpin
-- ----------------------------
DROP TABLE IF EXISTS `shangpin`;
CREATE TABLE `shangpin`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `leibie` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类别',
  `dianjiaming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '店家名',
  `shengchandi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生产地',
  `tupian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片',
  `shangpinjieshao` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '商品介绍',
  `thumbsupnum` int(11) NULL DEFAULT 0 COMMENT '赞',
  `crazilynum` int(11) NULL DEFAULT 0 COMMENT '踩',
  `clicktime` datetime(0) NULL DEFAULT NULL COMMENT '最近点击时间',
  `price` float NOT NULL COMMENT '价格',
  `onelimittimes` int(11) NULL DEFAULT -1 COMMENT '单限',
  `alllimittimes` int(11) NULL DEFAULT -1 COMMENT '库存',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 47 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商品' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shangpin
-- ----------------------------
INSERT INTO `shangpin` VALUES (41, '2024-04-18 15:18:50', '土豆', '蔬菜', '店家1', '蔬菜生产地', 'http://localhost:8080/springboot333w4/upload/shangpin_tupian1.png', '商品介绍1', 1, 1, '2024-01-14 21:41:42', 2.1, 99, 1000);
INSERT INTO `shangpin` VALUES (42, '2024-04-18 15:18:50', '胡萝卜', '蔬菜', '店家2', '蔬菜生产地', 'http://localhost:8080/springboot333w4/upload/shangpin_tupian2.png', '商品介绍2', 2, 2, '2024-01-14 21:37:01', 3.1, 99, 1000);
INSERT INTO `shangpin` VALUES (43, '2024-04-18 15:18:50', '橙子', '瓜、果', '店家3', '瓜、果生产地', 'http://localhost:8080/springboot333w4/upload/shangpin_tupian3.png', '商品介绍3', 3, 3, '2024-04-18 15:18:50', 10, 99, 1000);
INSERT INTO `shangpin` VALUES (44, '2024-04-18 15:18:50', '香蕉', '瓜、果', '店家4', '瓜、果生产地', 'http://localhost:8080/springboot333w4/upload/shangpin_tupian4.png', '商品介绍4', 4, 4, '2024-04-18 15:18:50', 11, 99, 1000);
INSERT INTO `shangpin` VALUES (45, '2024-04-18 15:18:50', '茄子', '蔬菜', '店家5', '蔬菜生产地', 'http://localhost:8080/springboot333w4/upload/shangpin_tupian5.png', '商品介绍5', 5, 5, '2024-04-18 15:18:50', 6, 99, 1000);
INSERT INTO `shangpin` VALUES (46, '2024-04-18 15:18:50', '菠萝', '瓜、果', '店家6', '瓜、果生产地', 'http://localhost:8080/springboot333w4/upload/shangpin_tupian6.png', '商品介绍6', 6, 6, '2024-04-18 15:18:50', 9, 99, 1000);

-- ----------------------------
-- Table structure for shangpinfenlei
-- ----------------------------
DROP TABLE IF EXISTS `shangpinfenlei`;
CREATE TABLE `shangpinfenlei`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `leibie` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类别',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 57 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商品分类' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shangpinfenlei
-- ----------------------------
INSERT INTO `shangpinfenlei` VALUES (51, '2024-04-18 15:18:50', '粮油作物');
INSERT INTO `shangpinfenlei` VALUES (52, '2024-04-18 15:18:50', '瓜、果');
INSERT INTO `shangpinfenlei` VALUES (53, '2024-04-18 15:18:50', '食用菌');
INSERT INTO `shangpinfenlei` VALUES (54, '2024-04-18 15:18:50', '蔬菜');
INSERT INTO `shangpinfenlei` VALUES (55, '2024-04-18 15:18:50', '花卉');
INSERT INTO `shangpinfenlei` VALUES (56, '2024-04-18 15:18:50', '药材');

-- ----------------------------
-- Table structure for shengchandifenlei
-- ----------------------------
DROP TABLE IF EXISTS `shengchandifenlei`;
CREATE TABLE `shengchandifenlei`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `shengchandi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生产地',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 67 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '生产地分类' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shengchandifenlei
-- ----------------------------
INSERT INTO `shengchandifenlei` VALUES (61, '2024-04-18 15:18:50', '粮油作物生产地');
INSERT INTO `shengchandifenlei` VALUES (62, '2024-04-18 15:18:50', '瓜、果生产地');
INSERT INTO `shengchandifenlei` VALUES (63, '2024-04-18 15:18:50', '食用菌生产地');
INSERT INTO `shengchandifenlei` VALUES (64, '2024-04-18 15:18:50', '蔬菜生产地');
INSERT INTO `shengchandifenlei` VALUES (65, '2024-04-18 15:18:50', '花卉生产地');
INSERT INTO `shengchandifenlei` VALUES (66, '2024-04-18 15:18:50', '药材生产地');

-- ----------------------------
-- Table structure for storeup
-- ----------------------------
DROP TABLE IF EXISTS `storeup`;
CREATE TABLE `storeup`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) NULL DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表名',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`) USING BTREE,
	foreign key(userid) references yonghu(id)
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '收藏表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `tablename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表名',
  `role` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色',
  `token` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '新增时间',
  `expiratedtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'token表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES (1, 11, '用户1', 'yonghu', '用户', 'cxkzo5vbcpb2hv72ll33bfpcmquncs7f', '2024-04-18 15:20:25', '2024-01-14 22:35:26');
INSERT INTO `token` VALUES (2, 1, 'abo', 'users', '管理员', 'mfb0928veciwphiiye14ec5yliz82xv8', '2024-07-14 19:07:51', '2024-01-14 22:39:59');

-- ----------------------------
-- Table structure for tuihuoshenqing
-- ----------------------------
DROP TABLE IF EXISTS `tuihuoshenqing`;
CREATE TABLE `tuihuoshenqing`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品名称',
  `leibie` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类别',
  `dianjiaming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '店家名',
  `shengchandi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生产地',
  `tuihuoyuanyin` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '退货原因',
  `zhaopian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '照片',
  `zhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `shenqingshijian` datetime(0) NULL DEFAULT NULL COMMENT '申请时间',
  `sfsh` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '审核回复',
  PRIMARY KEY (`id`) USING BTREE,
	foreign key(zhanghao) references yonghu(zhanghao),
	foreign key(dianjiaming) references dianjia(dianjiaming)
) ENGINE = InnoDB AUTO_INCREMENT = 127 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '退货申请' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tuihuoshenqing
-- ----------------------------
INSERT INTO `tuihuoshenqing` VALUES (121, '2024-04-18 15:18:51', '土豆', '蔬菜', '店家1', '蔬菜生产地', '退货原因1', 'http://localhost:8080/springboot333w4/upload/tuihuoshenqing_zhaopian1.png', '账号1', '姓名1', '2024-04-18 15:18:51', '是', '');
INSERT INTO `tuihuoshenqing` VALUES (122, '2024-04-18 15:18:51', '胡萝卜', '蔬菜', '店家2', '蔬菜生产地', '退货原因2', 'http://localhost:8080/springboot333w4/upload/tuihuoshenqing_zhaopian2.png', '账号2', '姓名2', '2024-04-18 15:18:51', '是', '');
INSERT INTO `tuihuoshenqing` VALUES (123, '2024-04-18 15:18:51', '橙子', '瓜、果', '店家3', '瓜、果生产地', '退货原因3', 'http://localhost:8080/springboot333w4/upload/tuihuoshenqing_zhaopian3.png', '账号3', '姓名3', '2024-04-18 15:18:51', '是', '');
INSERT INTO `tuihuoshenqing` VALUES (124, '2024-04-18 15:18:51', '香蕉', '瓜、果', '店家4', '瓜、果生产地', '退货原因4', 'http://localhost:8080/springboot333w4/upload/tuihuoshenqing_zhaopian4.png', '账号4', '姓名4', '2024-04-18 15:18:51', '是', '');
INSERT INTO `tuihuoshenqing` VALUES (125, '2024-04-18 15:18:51', '茄子', '蔬菜', '店家5', '蔬菜生产地', '退货原因5', 'http://localhost:8080/springboot333w4/upload/tuihuoshenqing_zhaopian5.png', '账号5', '姓名5', '2024-04-18 15:18:51', '是', '');
INSERT INTO `tuihuoshenqing` VALUES (126, '2024-04-18 15:18:51', '菠萝', '瓜、果', '店家6', '瓜、果生产地', '退货原因6', 'http://localhost:8080/springboot333w4/upload/tuihuoshenqing_zhaopian6.png', '账号6', '姓名6', '2024-04-18 15:18:51', '是', '');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `role` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', '123456', '管理员', '2024-04-18 15:18:51');

-- ----------------------------
-- Table structure for yonghu
-- ----------------------------
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE `yonghu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `zhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '账号',
  `mima` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `xingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '手机',
  `youxiang` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '身份证',
  `zhaopian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '照片',
  `money` float NULL DEFAULT 0 COMMENT '余额',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `zhanghao`(`zhanghao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yonghu
-- ----------------------------
INSERT INTO `yonghu` VALUES (11, '2024-04-18 15:18:50', 'user', '123456', '姓名1', '男', '13823888881', '773890001@qq.com', '440300199101010001', 'http://localhost:8080/springboot333w4/upload/yonghu_zhaopian1.png', 100);
INSERT INTO `yonghu` VALUES (12, '2024-04-18 15:18:50', '用户2', '123456', '姓名2', '男', '13823888882', '773890002@qq.com', '440300199202020002', 'http://localhost:8080/springboot333w4/upload/yonghu_zhaopian2.png', 100);
INSERT INTO `yonghu` VALUES (13, '2024-04-18 15:18:50', '用户3', '123456', '姓名3', '男', '13823888883', '773890003@qq.com', '440300199303030003', 'http://localhost:8080/springboot333w4/upload/yonghu_zhaopian3.png', 100);
INSERT INTO `yonghu` VALUES (14, '2024-04-18 15:18:50', '用户4', '123456', '姓名4', '男', '13823888884', '773890004@qq.com', '440300199404040004', 'http://localhost:8080/springboot333w4/upload/yonghu_zhaopian4.png', 100);
INSERT INTO `yonghu` VALUES (15, '2024-04-18 15:18:50', '用户5', '123456', '姓名5', '男', '13823888885', '773890005@qq.com', '440300199505050005', 'http://localhost:8080/springboot333w4/upload/yonghu_zhaopian5.png', 100);
INSERT INTO `yonghu` VALUES (16, '2024-04-18 15:18:50', '用户6', '123456', '姓名6', '男', '13823888886', '773890006@qq.com', '440300199606060006', 'http://localhost:8080/springboot333w4/upload/yonghu_zhaopian6.png', 100);

SET FOREIGN_KEY_CHECKS = 1;
