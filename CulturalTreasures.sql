/*
 Navicat Premium Data Transfer

 Source Server         : 192.168.136.100
 Source Server Type    : MySQL
 Source Server Version : 80027
 Source Host           : 192.168.136.100:3306
 Source Schema         : CulturalTreasures

 Target Server Type    : MySQL
 Target Server Version : 80027
 File Encoding         : 65001

 Date: 12/03/2024 20:53:05
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `address` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '地址',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收货人',
  `phone` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '电话',
  `isdefault` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1614757746498 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '地址' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES (1, '2021-03-03 15:14:31', 1, '宇宙银河系金星1号', '金某', '13823888881', '是');
INSERT INTO `address` VALUES (2, '2021-03-03 15:14:31', 2, '宇宙银河系木星1号', '木某', '13823888882', '是');
INSERT INTO `address` VALUES (3, '2021-03-03 15:14:31', 3, '宇宙银河系水星1号', '水某', '13823888883', '是');
INSERT INTO `address` VALUES (4, '2021-03-03 15:14:31', 4, '宇宙银河系火星1号', '火某', '13823888884', '是');
INSERT INTO `address` VALUES (5, '2021-03-03 15:14:31', 5, '宇宙银河系土星1号', '土某', '13823888885', '是');
INSERT INTO `address` VALUES (6, '2021-03-03 15:14:31', 6, '宇宙银河系月球1号', '月某', '13823888886', '是');
INSERT INTO `address` VALUES (1614757033717, '2021-03-03 15:37:13', 1614756982123, '广东省揭阳市榕城区中山街道北环城路16号中兴园', '陈一', '12312312312', '是');
INSERT INTO `address` VALUES (1614757746498, '2021-03-03 15:49:05', 1614757696160, '广东省揭阳市榕城区中山街道Show艺数字油画中兴园', '陈一', '12312312312', '是');

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'zuixinxianlu' COMMENT '商品表名',
  `userid` bigint NOT NULL COMMENT '用户id',
  `goodid` bigint NOT NULL COMMENT '商品id',
  `goodname` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片',
  `buynumber` int NOT NULL COMMENT '购买数量',
  `price` float NULL DEFAULT NULL COMMENT '单价',
  `discountprice` float NULL DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1706103185884 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '购物车表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES (1614757109452, '2021-03-03 15:38:28', 'lvyouxianlu', 1614756982123, 1614756810110, '云南大理丽江6天5晚', 'http://localhost:8080/CulturalTreasures/upload/1614756714294.jpg', 1, 2000, 0);
INSERT INTO `cart` VALUES (1614758018421, '2021-03-03 15:53:37', 'zuixinxianlu', 1614757696160, 1614757619035, '桂林4天3晚', 'http://localhost:8080/CulturalTreasures/upload/1614757585872.png', 1, 1200, 0);
INSERT INTO `cart` VALUES (1705415548324, '2024-01-16 14:32:27', 'zuixinxianlu', 1705223339196, 41, '线路名称1', 'http://localhost:8080/CulturalTreasures/upload/zuixinxianlu_fengmiantu1.jpg', 1, 99.9, 0);
INSERT INTO `cart` VALUES (1706103173748, '2024-01-24 13:32:52', 'lvyouxianlu', 1705223339196, 36, '线路名称6', 'http://localhost:8080/CulturalTreasures/upload/1614756249981.jpg', 1, 99.9, 0);
INSERT INTO `cart` VALUES (1706103185884, '2024-01-24 13:33:05', 'lvyouxianlu', 1705223339196, 33, '线路名称3', 'http://localhost:8080/CulturalTreasures/upload/1614756178466.jpg', 1, 99.9, 0);

-- ----------------------------
-- Table structure for chat
-- ----------------------------
DROP TABLE IF EXISTS `chat`;
CREATE TABLE `chat`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `adminid` bigint NULL DEFAULT NULL COMMENT '管理员id',
  `ask` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '提问',
  `reply` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '回复',
  `isreply` int NULL DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1705226730655 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '客服聊天表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chat
-- ----------------------------
INSERT INTO `chat` VALUES (51, '2021-03-03 15:14:31', 1, 1, '提问1', '回复1', 1);
INSERT INTO `chat` VALUES (52, '2021-03-03 15:14:31', 2, 2, '提问2', '回复2', 2);
INSERT INTO `chat` VALUES (53, '2021-03-03 15:14:31', 3, 3, '提问3', '回复3', 3);
INSERT INTO `chat` VALUES (54, '2021-03-03 15:14:31', 4, 4, '提问4', '回复4', 4);
INSERT INTO `chat` VALUES (55, '2021-03-03 15:14:31', 5, 5, '提问5', '回复5', 5);
INSERT INTO `chat` VALUES (56, '2021-03-03 15:14:31', 6, 6, '提问6', '回复6', 6);
INSERT INTO `chat` VALUES (1614757183618, '2021-03-03 15:39:43', 1614756982123, NULL, '请问有国外旅游线路吗', NULL, 0);
INSERT INTO `chat` VALUES (1614757346257, '2021-03-03 15:42:26', 1614756982123, 1, NULL, '1', NULL);
INSERT INTO `chat` VALUES (1614757887672, '2021-03-03 15:51:26', 1614757696160, NULL, '请问有国外的旅游线路吗', NULL, 0);
INSERT INTO `chat` VALUES (1614757928392, '2021-03-03 15:52:07', 1614757696160, 1, NULL, '暂时没有', NULL);
INSERT INTO `chat` VALUES (1705226730655, '2024-01-14 10:05:30', 1705223339196, NULL, '你好', NULL, 1);

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '配置文件' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES (1, 'picture1', 'http://localhost:8080/CulturalTreasures/upload/1614756378449.jpg');
INSERT INTO `config` VALUES (2, 'picture2', 'http://localhost:8080/CulturalTreasures/upload/1614757632893.jpg');
INSERT INTO `config` VALUES (3, 'picture3', 'http://localhost:8080/CulturalTreasures/upload/1614756387289.jpg');
INSERT INTO `config` VALUES (6, 'homepage', NULL);

-- ----------------------------
-- Table structure for discusslvyouxianlu
-- ----------------------------
DROP TABLE IF EXISTS `discusslvyouxianlu`;
CREATE TABLE `discusslvyouxianlu`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '评论内容',
  `reply` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '回复内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1705226689198 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '旅游线路评论表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of discusslvyouxianlu
-- ----------------------------
INSERT INTO `discusslvyouxianlu` VALUES (111, '2021-03-03 15:14:31', 1, 1, '评论内容1', '回复内容1');
INSERT INTO `discusslvyouxianlu` VALUES (112, '2021-03-03 15:14:31', 2, 2, '评论内容2', '回复内容2');
INSERT INTO `discusslvyouxianlu` VALUES (113, '2021-03-03 15:14:31', 3, 3, '评论内容3', '回复内容3');
INSERT INTO `discusslvyouxianlu` VALUES (114, '2021-03-03 15:14:31', 4, 4, '评论内容4', '回复内容4');
INSERT INTO `discusslvyouxianlu` VALUES (115, '2021-03-03 15:14:31', 5, 5, '评论内容5', '回复内容5');
INSERT INTO `discusslvyouxianlu` VALUES (116, '2021-03-03 15:14:31', 6, 6, '评论内容6', '回复内容6');
INSERT INTO `discusslvyouxianlu` VALUES (1614757117444, '2021-03-03 15:38:37', 1614756810110, 1614756982123, '不错的路线', NULL);
INSERT INTO `discusslvyouxianlu` VALUES (1705226687268, '2024-01-14 10:04:46', 36, 1705223339196, '不错', NULL);
INSERT INTO `discusslvyouxianlu` VALUES (1705226689198, '2024-01-14 10:04:48', 36, 1705223339196, '不错', NULL);

-- ----------------------------
-- Table structure for discusszuixinxianlu
-- ----------------------------
DROP TABLE IF EXISTS `discusszuixinxianlu`;
CREATE TABLE `discusszuixinxianlu`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '评论内容',
  `reply` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '回复内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1614757866074 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '最新线路评论表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of discusszuixinxianlu
-- ----------------------------
INSERT INTO `discusszuixinxianlu` VALUES (121, '2021-03-03 15:14:31', 1, 1, '评论内容1', '回复内容1');
INSERT INTO `discusszuixinxianlu` VALUES (122, '2021-03-03 15:14:31', 2, 2, '评论内容2', '回复内容2');
INSERT INTO `discusszuixinxianlu` VALUES (123, '2021-03-03 15:14:31', 3, 3, '评论内容3', '回复内容3');
INSERT INTO `discusszuixinxianlu` VALUES (124, '2021-03-03 15:14:31', 4, 4, '评论内容4', '回复内容4');
INSERT INTO `discusszuixinxianlu` VALUES (125, '2021-03-03 15:14:31', 5, 5, '评论内容5', '回复内容5');
INSERT INTO `discusszuixinxianlu` VALUES (126, '2021-03-03 15:14:31', 6, 6, '评论内容6', '回复内容6');
INSERT INTO `discusszuixinxianlu` VALUES (1614757866074, '2021-03-03 15:51:05', 1614757619035, 1614757696160, '不错的旅游线路', NULL);

-- ----------------------------
-- Table structure for lvyouxianlu
-- ----------------------------
DROP TABLE IF EXISTS `lvyouxianlu`;
CREATE TABLE `lvyouxianlu`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xianlumingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '线路名称',
  `xianlufenlei` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '线路分类',
  `fengmiantu` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '封面图',
  `jingdianmingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '景点名称',
  `chufadi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '出发地',
  `mudedi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '目的地',
  `jiaotongfangshi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '交通方式',
  `chuxingshijian` datetime NULL DEFAULT NULL COMMENT '出行时间',
  `feiyongbaohan` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '费用包含',
  `xingchengluxian` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '行程路线',
  `clicktime` datetime NULL DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int NULL DEFAULT 0 COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1614757564118 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '旅游线路' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lvyouxianlu
-- ----------------------------
INSERT INTO `lvyouxianlu` VALUES (31, '2021-03-03 15:14:31', '线路名称1', '度假旅游', 'http://localhost:8080/CulturalTreasures/upload/lvyouxianlu_fengmiantu1.jpg', '景点名称1', '出发地1', '目的地1', '大巴', '2021-03-03 15:14:31', '费用包含1', '<p>行程路线1</p>', '2024-01-16 14:29:23', 15, 99.9);
INSERT INTO `lvyouxianlu` VALUES (32, '2021-03-03 15:14:31', '线路名称2', '探险考察', 'http://localhost:8080/CulturalTreasures/upload/1614756156025.jpg', '景点名称2', '出发地2', '目的地2', '大巴', '2021-03-03 15:14:31', '费用包含2', '<p>行程路线2</p>', '2024-01-24 13:07:23', 6, 99.9);
INSERT INTO `lvyouxianlu` VALUES (33, '2021-03-03 15:14:31', '线路名称3', '文化旅游', 'http://localhost:8080/CulturalTreasures/upload/1614756178466.jpg', '景点名称3', '出发地3', '目的地3', '大巴', '2021-03-03 15:14:31', '费用包含3', '<p>行程路线3</p>', '2024-01-24 13:33:04', 6, 99.9);
INSERT INTO `lvyouxianlu` VALUES (34, '2021-03-03 15:14:31', '线路名称4', '短程旅游', 'http://localhost:8080/CulturalTreasures/upload/1614756198807.jpg', '景点名称4', '出发地4', '目的地4', '大巴', '2021-03-03 15:14:31', '费用包含4', '<p>行程路线4</p>', '2021-03-03 07:23:03', 5, 99.9);
INSERT INTO `lvyouxianlu` VALUES (35, '2021-03-03 15:14:31', '线路名称5', '观光旅游', 'http://localhost:8080/CulturalTreasures/upload/1614756215284.jpg', '景点名称5', '出发地5', '目的地5', '大巴', '2021-03-03 15:14:31', '费用包含5', '<p>行程路线5</p>', '2021-03-03 07:49:27', 14, 99.9);
INSERT INTO `lvyouxianlu` VALUES (36, '2021-03-03 15:14:31', '线路名称6', '文化旅游', 'http://localhost:8080/CulturalTreasures/upload/1614756249981.jpg', '景点名称6', '出发地6', '目的地6', '大巴', '2021-03-03 15:14:31', '费用包含6', '<p>行程路线6</p>', '2024-01-24 13:32:48', 29, 99.9);
INSERT INTO `lvyouxianlu` VALUES (1614757564118, '2021-03-03 15:46:03', '云南6天5晚', '观光旅游', 'http://localhost:8080/CulturalTreasures/upload/1614757486132.jpg', '丽江古城，玉龙雪山，苍山洱海', '广州', '云南', '飞机', '2021-03-04 05:00:00', '机票，住宿费，餐费等', '<p>第1天 昆明长水机场接机--入住酒店--云南夜色</p><p>第2天 游石林-感受“世界自然遗产风光”+石林彝族风味餐</p><p>第3天 大理洱海环游，敞篷吉普车豪华私人游艇+渔鹰表演+罗荃半岛-苍山-蝴蝶泉</p><p>第4天 大理古城 洋人街 拉市海 下午在木府俯瞰丽江古城，欣赏歌舞丽水金沙 晚上纳西族喜宴</p><p>第5天 幽静古朴的束河古镇，海拔4680米的玉龙雪山+冰川大索道+蓝月谷+白水河</p><p>第6天 亚洲最大的鲜花市场，24小时根据航班送到机场或车站</p>', '2024-01-24 13:17:45', 3, 2500);

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题',
  `introduction` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '简介',
  `picture` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图片',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1614757671444 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '旅游资讯' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (101, '2021-03-03 15:14:31', '标题1', '简介1', 'http://localhost:8080/CulturalTreasures/upload/news_picture1.jpg', '内容1');
INSERT INTO `news` VALUES (102, '2021-03-03 15:14:31', '标题2', '简介2', 'http://localhost:8080/CulturalTreasures/upload/news_picture2.jpg', '内容2');
INSERT INTO `news` VALUES (103, '2021-03-03 15:14:31', '标题3', '简介3', 'http://localhost:8080/CulturalTreasures/upload/news_picture3.jpg', '内容3');
INSERT INTO `news` VALUES (104, '2021-03-03 15:14:31', '标题4', '简介4', 'http://localhost:8080/CulturalTreasures/upload/news_picture4.jpg', '内容4');
INSERT INTO `news` VALUES (105, '2021-03-03 15:14:31', '标题5', '简介5', 'http://localhost:8080/CulturalTreasures/upload/news_picture5.jpg', '内容5');
INSERT INTO `news` VALUES (106, '2021-03-03 15:14:31', '标题6', '简介6', 'http://localhost:8080/CulturalTreasures/upload/news_picture6.jpg', '内容6');
INSERT INTO `news` VALUES (1614757671444, '2021-03-03 15:47:50', '推出新线路', '新线路', 'http://localhost:8080/CulturalTreasures/upload/1614757654139.jpg', '<p>推出新线路</p><p><img src=\"http://localhost:8080/CulturalTreasures/upload/1614757669542.png\"></p>');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'zuixinxianlu' COMMENT '商品表名',
  `userid` bigint NOT NULL COMMENT '用户id',
  `goodid` bigint NOT NULL COMMENT '商品id',
  `goodname` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品图片',
  `buynumber` int NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT 0 COMMENT '价格/积分',
  `discountprice` float NULL DEFAULT 0 COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT 0 COMMENT '总价格/总积分',
  `discounttotal` float NULL DEFAULT 0 COMMENT '折扣总价格',
  `type` int NULL DEFAULT 1 COMMENT '支付类型',
  `status` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态',
  `address` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `orderid`(`orderid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1614758027300 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (1614757238256, '2021-03-03 15:40:37', '20213315403614711707', 'lvyouxianlu', 1614756982123, 1614756810110, '云南大理丽江6天5晚', 'http://localhost:8080/CulturalTreasures/upload/1614756714294.jpg', 1, 2000, 2000, 3000, 2000, 1, '未支付', '广东省揭阳市榕城区中山街道北环城路16号中兴园');
INSERT INTO `orders` VALUES (1614757895454, '2021-03-03 15:51:34', '20213315513353374216', 'lvyouxianlu', 1614757696160, 1614757564118, '云南6天5晚', 'http://localhost:8080/CulturalTreasures/upload/1614757486132.jpg', 1, 2500, 2500, 2500, 2500, 1, '已完成', '广东省揭阳市榕城区中山街道Show艺数字油画中兴园');
INSERT INTO `orders` VALUES (1614758027300, '2021-03-03 15:53:46', '20213315534553649075', 'zuixinxianlu', 1614757696160, 1614757619035, '桂林4天3晚', 'http://localhost:8080/CulturalTreasures/upload/1614757585872.png', 1, 1200, 1200, 1200, 1200, 1, '已支付', '广东省揭阳市榕城区中山街道Show艺数字油画中兴园');

-- ----------------------------
-- Table structure for storeup
-- ----------------------------
DROP TABLE IF EXISTS `storeup`;
CREATE TABLE `storeup`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `refid` bigint NULL DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表名',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1705226677891 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '收藏表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of storeup
-- ----------------------------
INSERT INTO `storeup` VALUES (1614757107467, '2021-03-03 15:38:26', 1614756982123, 1614756810110, 'lvyouxianlu', '云南大理丽江6天5晚', 'http://localhost:8080/CulturalTreasures/upload/1614756714294.jpg');
INSERT INTO `storeup` VALUES (1614757140140, '2021-03-03 15:38:59', 1614756982123, 1614756888348, 'zuixinxianlu', '桂林阳朔4天3晚', 'http://localhost:8080/CulturalTreasures/upload/1614756840971.png');
INSERT INTO `storeup` VALUES (1614757812948, '2021-03-03 15:50:12', 1614757696160, 1614757564118, 'lvyouxianlu', '云南6天5晚', 'http://localhost:8080/CulturalTreasures/upload/1614757486132.jpg');
INSERT INTO `storeup` VALUES (1614757858660, '2021-03-03 15:50:57', 1614757696160, 1614757619035, 'zuixinxianlu', '桂林4天3晚', 'http://localhost:8080/CulturalTreasures/upload/1614757585872.png');
INSERT INTO `storeup` VALUES (1705226677891, '2024-01-14 10:04:37', 1705223339196, 36, 'lvyouxianlu', '线路名称6', 'http://localhost:8080/CulturalTreasures/upload/1614756249981.jpg');

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `tablename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表名',
  `role` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色',
  `token` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'token表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES (1, 1, 'abo', 'users', '管理员', '4tobbd2cqxibo7kw6718kxbrx7ewhok6', '2021-03-03 15:19:57', '2024-01-16 14:44:58');
INSERT INTO `token` VALUES (2, 1614756982123, '1', 'yonghu', '用户', 'x1jatumvhfm9ra95gbc6d5538tt8niyt', '2021-03-03 15:36:27', '2021-03-03 08:36:28');
INSERT INTO `token` VALUES (3, 1614757696160, '2', 'yonghu', '用户', 'l4cfc4soq7d1xvs5rd8emc3yt8acwilq', '2021-03-03 15:48:21', '2021-03-03 08:52:51');
INSERT INTO `token` VALUES (4, 1705223339196, 'fivk', 'yonghu', '用户', 'ygcmgsrdesmd1gdj5839rkbfhnkog3gi', '2024-01-14 09:09:06', '2024-01-24 14:05:43');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `role` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'abo', 'abo', '管理员', '2021-03-03 15:14:31');

-- ----------------------------
-- Table structure for xianlufenlei
-- ----------------------------
DROP TABLE IF EXISTS `xianlufenlei`;
CREATE TABLE `xianlufenlei`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xianlufenlei` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '线路分类',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `xianlufenlei`(`xianlufenlei` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1614757461165 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '线路分类' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xianlufenlei
-- ----------------------------
INSERT INTO `xianlufenlei` VALUES (21, '2021-03-03 15:14:31', '观光旅游');
INSERT INTO `xianlufenlei` VALUES (22, '2021-03-03 15:14:31', '度假旅游');
INSERT INTO `xianlufenlei` VALUES (23, '2021-03-03 15:14:31', '探险考察');
INSERT INTO `xianlufenlei` VALUES (24, '2021-03-03 15:14:31', '文化旅游');
INSERT INTO `xianlufenlei` VALUES (25, '2021-03-03 15:14:31', '短程旅游');
INSERT INTO `xianlufenlei` VALUES (1614757461165, '2021-03-03 15:44:20', '远程旅游');

-- ----------------------------
-- Table structure for yonghu
-- ----------------------------
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE `yonghu`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `mima` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `xingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `touxiang` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `money` float NULL DEFAULT 0 COMMENT '余额',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `yonghuming`(`yonghuming` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1705223339196 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yonghu
-- ----------------------------
INSERT INTO `yonghu` VALUES (11, '2021-03-03 15:14:31', '用户1', '123456', '姓名1', 'http://localhost:8080/CulturalTreasures/upload/yonghu_touxiang1.jpg', '男', '13823888881', 100);
INSERT INTO `yonghu` VALUES (12, '2021-03-03 15:14:31', '用户2', '123456', '姓名2', 'http://localhost:8080/CulturalTreasures/upload/yonghu_touxiang2.jpg', '男', '13823888882', 100);
INSERT INTO `yonghu` VALUES (13, '2021-03-03 15:14:31', '用户3', '123456', '姓名3', 'http://localhost:8080/CulturalTreasures/upload/yonghu_touxiang3.jpg', '男', '13823888883', 100);
INSERT INTO `yonghu` VALUES (14, '2021-03-03 15:14:31', '用户4', '123456', '姓名4', 'http://localhost:8080/CulturalTreasures/upload/yonghu_touxiang4.jpg', '男', '13823888884', 100);
INSERT INTO `yonghu` VALUES (15, '2021-03-03 15:14:31', '用户5', '123456', '姓名5', 'http://localhost:8080/CulturalTreasures/upload/yonghu_touxiang5.jpg', '男', '13823888885', 100);
INSERT INTO `yonghu` VALUES (16, '2021-03-03 15:14:31', '用户6', '123456', '姓名6', 'http://localhost:8080/CulturalTreasures/upload/yonghu_touxiang6.jpg', '男', '13823888886', 100);
INSERT INTO `yonghu` VALUES (1614757696160, '2021-03-03 15:48:16', '2', '2', '陈一', 'http://localhost:8080/CulturalTreasures/upload/1614757715279.jpeg', '女', '12312345678', 1700);
INSERT INTO `yonghu` VALUES (1705223339196, '2024-01-14 09:08:59', 'fivk', '123123', '吴帆', 'http://localhost:8080/CulturalTreasures/upload/1705226970139.png', NULL, '18886058414', 0);

-- ----------------------------
-- Table structure for zuixinxianlu
-- ----------------------------
DROP TABLE IF EXISTS `zuixinxianlu`;
CREATE TABLE `zuixinxianlu`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xianlumingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '线路名称',
  `xianlufenlei` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '线路分类',
  `fengmiantu` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '封面图',
  `jingdianmingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '景点名称',
  `chufadi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '出发地',
  `mudedi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '目的地',
  `jiaotongfangshi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '交通方式',
  `chuxingshijian` datetime NULL DEFAULT NULL COMMENT '出行时间',
  `feiyongbaohan` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '费用包含',
  `xingchengluxian` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '行程路线',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1614757619035 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '最新线路' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zuixinxianlu
-- ----------------------------
INSERT INTO `zuixinxianlu` VALUES (41, '2021-03-03 15:14:31', '线路名称1', '探险考察', 'http://localhost:8080/CulturalTreasures/upload/zuixinxianlu_fengmiantu1.jpg', '景点名称1', '出发地1', '目的地1', '大巴', '2021-03-03 15:14:31', '费用包含1', '<p><img src=\"http://localhost:8080/CulturalTreasures/upload/1614756033607.png\"></p>', 99.9);
INSERT INTO `zuixinxianlu` VALUES (42, '2021-03-03 15:14:31', '线路名称2', '文化旅游', 'http://localhost:8080/CulturalTreasures/upload/zuixinxianlu_fengmiantu2.jpg', '景点名称2', '出发地2', '目的地2', '大巴', '2021-03-03 15:14:31', '费用包含2', '<p>行程路线2</p>', 99.9);
INSERT INTO `zuixinxianlu` VALUES (43, '2021-03-03 15:14:31', '线路名称3', '度假旅游', 'http://localhost:8080/CulturalTreasures/upload/1614756260482.jpg', '景点名称3', '出发地3', '目的地3', '大巴', '2021-03-03 15:14:31', '费用包含3', '<p>行程路线3</p>', 99.9);
INSERT INTO `zuixinxianlu` VALUES (44, '2021-03-03 15:14:31', '线路名称4', '观光旅游', 'http://localhost:8080/CulturalTreasures/upload/1614756298370.jpg', '景点名称4', '出发地4', '目的地4', '大巴', '2021-03-03 15:14:31', '费用包含4', '<p>行程路线4</p>', 99.9);
INSERT INTO `zuixinxianlu` VALUES (45, '2021-03-03 15:14:31', '线路名称5', '短程旅游', 'http://localhost:8080/CulturalTreasures/upload/1614756309699.jpeg', '景点名称5', '出发地5', '目的地5', '大巴', '2021-03-03 15:14:31', '费用包含5', '<p>行程路线5</p>', 99.9);
INSERT INTO `zuixinxianlu` VALUES (46, '2021-03-03 15:14:31', '线路名称6', '探险考察', 'http://localhost:8080/CulturalTreasures/upload/zuixinxianlu_fengmiantu6.jpg', '景点名称6', '出发地6', '目的地6', '大巴', '2021-03-03 15:14:31', '费用包含6', '<p>行程路线6</p>', 99.9);
INSERT INTO `zuixinxianlu` VALUES (1614757619035, '2021-03-03 15:46:58', '桂林4天3晚', '文化旅游', 'http://localhost:8080/CulturalTreasures/upload/1614757585872.png', '漓江', '梅州', '桂林', '高铁', '2021-03-03 07:46:40', '住宿费来回车费等', '<p><img src=\"http://localhost:8080/CulturalTreasures/upload/1614757617098.png\"></p>', 1200);

SET FOREIGN_KEY_CHECKS = 1;
