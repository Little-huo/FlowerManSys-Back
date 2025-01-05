
SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- fl_admin 的表结构
-- ----------------------------
DROP TABLE IF EXISTS `fl_admin`;
CREATE TABLE `fl_admin`  (
  `adid` int NOT NULL AUTO_INCREMENT,
  `adname` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `nikename` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `adpwd` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `role` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `avatar_url` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `is_delete` tinyint(1) NULL DEFAULT 0,
  `enable` tinyint(1) NULL DEFAULT 1,
  PRIMARY KEY (`adid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fl_admin
-- ----------------------------
INSERT INTO `fl_admin` VALUES (10, 'admin', '管理员', '13955676789', '123456', 'ROLE_ADMIN', '2024-12-17 22:10:14', 'http://localhost:9090/file/dabe2182328841f39c74760430014b8a.png', 0, 1);
INSERT INTO `fl_admin` VALUES (13, '采购员', '采购员', '13955676781', '123456', 'ROLE_BUYER', '2024-12-19 09:22:15', 'http://localhost:9090/file/dabe2182328841f39c74760430014b8a.png', 0, 1);
INSERT INTO `fl_admin` VALUES (16, '销售员', '销售员', '13955676789', '123456', 'ROLE_SALER', '2024-12-19 10:12:10', 'http://localhost:9090/file/9562f11e04324af69f0607b8d23415da.png', 0, 1);

-- ----------------------------
-- Table structure for fl_buy
-- ----------------------------
DROP TABLE IF EXISTS `fl_buy`;
CREATE TABLE `fl_buy`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '编号',
  `buyid` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '采购单号',
  `buy_date` date NOT NULL COMMENT '采购日期',
  `buy_apply` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '0' COMMENT '申请人',
  `buyer` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '0' COMMENT '采购人',
  `buy_name` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '0' COMMENT '采购商品',
  `buy_supplier` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '0' COMMENT '供应商',
  `buy_count` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '0' COMMENT '采购数量',
  `buy_unit` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '0' COMMENT '数量单位',
  `buy_price` double NOT NULL DEFAULT 0 COMMENT '单价',
  `buy_status` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `reviewer` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `reviewdate` date NULL DEFAULT NULL,
  `remarks` varchar(225) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fl_buy
-- ----------------------------
INSERT INTO `fl_buy` VALUES (42, 'CG20459293', '2024-12-22', '采购员', '采购员', '红玫瑰', '安徽花卉有限公司', '50', '棵', 3, '已通过', NULL, NULL, NULL);
INSERT INTO `fl_buy` VALUES (43, 'CG20453101', '2024-12-22', '采购员', '采购员', '白玫瑰', '安徽花卉有限公司', '200', '棵', 4, '已通过', NULL, NULL, NULL);
INSERT INTO `fl_buy` VALUES (44, 'CG20454845', '2024-12-22', '采购员', '采购员', '黑玫瑰', '安徽花卉有限公司', '10', '棵', 5, '已通过', NULL, NULL, NULL);
INSERT INTO `fl_buy` VALUES (45, 'CG20455966', '2024-12-22', '采购员', '采购员', '粉玫瑰', '安徽花卉有限公司', '10', '棵', 5, '已通过', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for fl_customer
-- ----------------------------
DROP TABLE IF EXISTS `fl_customer`;
CREATE TABLE `fl_customer`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '顾客编号',
  `cus_name` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '名称',
  `cus_sort` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '类别',
  `cus_phone` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '联系方式',
  `cus_address` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '地址',
  `cus_cost` int NOT NULL COMMENT '总花费',
  `cus_pay` int NOT NULL COMMENT '总支付',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fl_customer
-- ----------------------------
INSERT INTO `fl_customer` VALUES (14, '齐飞', '零售', '17607605123', '安徽省芜湖市', 1888, 1888, '2024-12-22 11:28:14');

-- ----------------------------
-- Table structure for fl_foster
-- ----------------------------
DROP TABLE IF EXISTS `fl_foster`;
CREATE TABLE `fl_foster`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '编号',
  `sender` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '寄养人',
  `phone` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '联系方式',
  `fos_Name` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '寄养植物名称',
  `fos_Variety` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '品种',
  `fos_Url` varchar(225) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '图片',
  `fos_Note` varchar(225) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '养护备注',
  `fos_Starttime` date NOT NULL COMMENT '寄养开始日期',
  `fos_Endtime` date NULL DEFAULT NULL COMMENT '寄养结束日期',
  `fos_Price` double NOT NULL COMMENT '单天价格',
  `fos_Total` double NULL DEFAULT NULL COMMENT '总价',
  `fos_Status` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '支付状态',
  `fos_Oper` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '操作人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fl_foster
-- ----------------------------
INSERT INTO `fl_foster` VALUES (12, '齐飞', '17607605123', '绿玫瑰', '玫瑰', 'blob:http://192.168.66.57:8080/cc497383-fdb2-4d7e-aa0d-d00d54ad6c74', '勤浇水', '2024-12-22', '2024-11-12', 10, 10, '已支付', '销售员');

-- ----------------------------
-- Table structure for fl_login
-- ----------------------------
DROP TABLE IF EXISTS `fl_login`;
CREATE TABLE `fl_login`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `adname` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `create_Time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 147 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fl_login
-- ----------------------------
INSERT INTO `fl_login` VALUES (6, '哈哈', '2024-04-21 08:55:39');
INSERT INTO `fl_login` VALUES (7, '哈哈', '2024-04-21 09:06:45');
INSERT INTO `fl_login` VALUES (73, '五虎', '2024-05-02 09:57:58');
INSERT INTO `fl_login` VALUES (145, 'admin', '2024-12-22 11:23:56');
INSERT INTO `fl_login` VALUES (146, 'admin', '2024-12-22 11:25:06');
INSERT INTO `fl_login` VALUES (147, 'admin', '2024-12-22 11:36:06');
INSERT INTO `fl_login` VALUES (148, '采购员', '2024-12-22 11:39:40');
INSERT INTO `fl_login` VALUES (149, 'admin', '2024-12-22 11:42:30');
INSERT INTO `fl_login` VALUES (150, '销售员', '2024-12-22 11:48:43');
INSERT INTO `fl_login` VALUES (151, '采购员', '2024-12-22 12:04:38');
INSERT INTO `fl_login` VALUES (152, 'admin', '2024-12-22 12:07:11');
INSERT INTO `fl_login` VALUES (153, 'admin', '2024-12-22 12:26:10');

-- ----------------------------
-- Table structure for fl_out
-- ----------------------------
DROP TABLE IF EXISTS `fl_out`;
CREATE TABLE `fl_out`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '编号',
  `out_Id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '出库单编号',
  `out_Oper` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '操作人',
  `out_Date` date NOT NULL COMMENT '出库日期',
  `out_Name` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '出库产品名称',
  `out_Customer` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '客户',
  `out_Supplier` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '供应商',
  `out_Num` int NULL DEFAULT NULL COMMENT '出库数量',
  `out_Unit` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '数量单位',
  `out_Price` double(20, 0) NULL DEFAULT NULL COMMENT '单价',
  `out_Total` double(20, 0) NULL DEFAULT NULL COMMENT '总价',
  `out_Profit` double(5, 0) NULL DEFAULT NULL COMMENT '利润',
  `out_Paid` double(255, 0) NULL DEFAULT NULL COMMENT '已付款',
  `status` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fl_out
-- ----------------------------
INSERT INTO `fl_out` VALUES (30, '11432', '销售员', '2024-12-22', '38', '齐飞', '安徽花卉有限公司', 10, '棵', 10, 100, 60, 100, '已出库');
INSERT INTO `fl_out` VALUES (31, '9359', '销售员', '2024-12-22', '37', '齐飞', '安徽花卉有限公司', 30, '棵', 10, 300, 210, 300, '已出库');
INSERT INTO `fl_out` VALUES (32, '3185', '销售员', '2024-12-22', '39', '齐飞', '安徽花卉有限公司', 5, '棵', 15, 75, 50, 75, '已出库');
INSERT INTO `fl_out` VALUES (33, '4461', '销售员', '2024-12-22', '40', '齐飞', '安徽花卉有限公司', 1, '棵', 15, 15, 10, 15, '已出库');

-- ----------------------------
-- Table structure for fl_product
-- ----------------------------
DROP TABLE IF EXISTS `fl_product`;
CREATE TABLE `fl_product`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '花材编号',
  `name` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '花材名称',
  `psort` int NOT NULL COMMENT '所属类别',
  `pro_cost` double NOT NULL COMMENT '进价',
  `pro_price` double NOT NULL COMMENT '售价',
  `pro_stock` int NULL DEFAULT 0 COMMENT '库存',
  `pro_from` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '供应商',
  `pro_sales` int NULL DEFAULT 0 COMMENT '销量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fl_product
-- ----------------------------
INSERT INTO `fl_product` VALUES (37, '红玫瑰', 4, 3, 10, 20, '安徽花卉有限公司', 30);
INSERT INTO `fl_product` VALUES (38, '白玫瑰', 4, 4, 12, 290, '安徽花卉有限公司', 10);
INSERT INTO `fl_product` VALUES (39, '黑玫瑰', 4, 5, 15, 5, '安徽花卉有限公司', 5);
INSERT INTO `fl_product` VALUES (40, '粉玫瑰', 4, 5, 15, 9, '安徽花卉有限公司', 1);

-- ----------------------------
-- Table structure for fl_put
-- ----------------------------
DROP TABLE IF EXISTS `fl_put`;
CREATE TABLE `fl_put`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '编号',
  `put_Id` varchar(225) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '入库单号',
  `put_Name` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '入库商品',
  `put_Date` date NOT NULL COMMENT '入库日期',
  `put_Supplier` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '供应商',
  `put_Oper` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '操作人',
  `put_Num` int NOT NULL COMMENT '入库数量',
  `put_Unit` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '数量单位',
  `put_Price` double NOT NULL COMMENT '单价',
  `put_Total` double NOT NULL COMMENT '总价',
  `status` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fl_put
-- ----------------------------
INSERT INTO `fl_put` VALUES (26, 'RK20456786', '37', '2024-12-22', '安徽花卉有限公司', '采购员', 50, '棵', 3, 1500, '已入库');
INSERT INTO `fl_put` VALUES (27, 'RK2045320', '38', '2024-12-22', '安徽花卉有限公司', '采购员', 100, '棵', 4, 400, '已入库');
INSERT INTO `fl_put` VALUES (28, 'RK20454696', '38', '2024-12-22', '安徽花卉有限公司', '采购员', 200, '棵', 4, 800, '已入库');
INSERT INTO `fl_put` VALUES (29, 'RK20458046', '39', '2024-12-22', '安徽花卉有限公司', '采购员', 10, '棵', 5, 50, '已入库');
INSERT INTO `fl_put` VALUES (30, 'RK20453176', '40', '2024-12-22', '安徽花卉有限公司', '采购员', 10, '棵', 5, 50, '已入库');

-- ----------------------------
-- Table structure for fl_sale
-- ----------------------------
DROP TABLE IF EXISTS `fl_sale`;
CREATE TABLE `fl_sale`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '编号',
  `sale_Id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '出库通知单编号',
  `saler` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '申请人',
  `sale_date` date NOT NULL COMMENT '出库申请日期',
  `sale_Name` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '出库产品名称',
  `sale_Supplier` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '供应商',
  `sale_Num` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '出库数量',
  `sale_Unit` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '数量单位',
  `sale_price` double NOT NULL COMMENT '单价',
  `sale_Total` double NOT NULL COMMENT '总价',
  `sale_Paid` double(20, 0) NULL DEFAULT NULL COMMENT '已付款',
  `reviewer` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '审核人',
  `results` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `remarks` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '审核人备注',
  `reviewdate` date NULL DEFAULT NULL COMMENT '审核日期',
  `applynote` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '申请人备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

INSERT INTO `fl_sale` VALUES (18, 'CK20457817', '销售员', '2024-12-22', '37', '安徽花卉有限公司', '10', '棵', 10, 100, 100, NULL, '已通过', NULL, NULL, NULL);
INSERT INTO `fl_sale` VALUES (19, 'CK20458878', '销售员', '2024-12-22', '37', '安徽花卉有限公司', '30', '棵', 10, 300, 300, NULL, '已通过', NULL, NULL, NULL);
INSERT INTO `fl_sale` VALUES (20, 'CK20451705', '销售员', '2024-12-22', '39', '安徽花卉有限公司', '5', '棵', 5, 25, 25, NULL, '已通过', NULL, NULL, NULL);
INSERT INTO `fl_sale` VALUES (21, 'CK20457404', '销售员', '2024-12-22', '40', '安徽花卉有限公司', '1', '棵', 15, 15, 15, NULL, '已通过', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for fl_sort
-- ----------------------------
DROP TABLE IF EXISTS `fl_sort`;
CREATE TABLE `fl_sort`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '编号',
  `sortname` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '花材类别名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fl_sort
-- ----------------------------
INSERT INTO `fl_sort` VALUES (2, '多肉');
INSERT INTO `fl_sort` VALUES (4, '鲜花');
INSERT INTO `fl_sort` VALUES (13, '绿植');

-- ----------------------------
-- Table structure for fl_supplier
-- ----------------------------
DROP TABLE IF EXISTS `fl_supplier`;
CREATE TABLE `fl_supplier`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '供应商编号',
  `name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '供应商名称',
  `smanager` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '负责人',
  `sup_phone` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '联系方式',
  `sup_address` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '地址',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fl_supplier
-- ----------------------------
INSERT INTO `fl_supplier` VALUES (25, '安徽花卉有限公司', '呜呼起飞', '17607605111', '安徽省芜湖市弋江区', '2024-12-22 11:27:30');

-- ----------------------------
-- Table structure for fl_unit
-- ----------------------------
DROP TABLE IF EXISTS `fl_unit`;
CREATE TABLE `fl_unit`  (
  `unitsid` int NOT NULL AUTO_INCREMENT,
  `unitname` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `unitpid` int NULL DEFAULT NULL,
  PRIMARY KEY (`unitsid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fl_unit
-- ----------------------------
INSERT INTO `fl_unit` VALUES (1, '盆', NULL);
INSERT INTO `fl_unit` VALUES (2, '箱', NULL);
INSERT INTO `fl_unit` VALUES (7, '棵', NULL);
INSERT INTO `fl_unit` VALUES (8, '瓶', 2);
INSERT INTO `fl_unit` VALUES (9, '件', NULL);
INSERT INTO `fl_unit` VALUES (10, '24盆', 9);
INSERT INTO `fl_unit` VALUES (11, '箱子', NULL);
INSERT INTO `fl_unit` VALUES (12, '瓶', 11);

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict`  (
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '名称',
  `value` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '内容',
  `type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '类型'
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` VALUES ('user', 'el-icon-user-solid', 'icon');
INSERT INTO `sys_dict` VALUES ('house', 'el-icon-house', 'icon');
INSERT INTO `sys_dict` VALUES ('menu', 'el-icon-menu', 'icon');
INSERT INTO `sys_dict` VALUES ('custom', 'el-icon-s-custom', 'icon');
INSERT INTO `sys_dict` VALUES ('document', 'el-icon-document', 'icon');
INSERT INTO `sys_dict` VALUES ('buy', 'el-icon-shopping-cart-full', 'icon');
INSERT INTO `sys_dict` VALUES ('sale', 'el-icon-sell', 'icon');
INSERT INTO `sys_dict` VALUES ('sort', 'el-icon-notebook-1', 'icon');
INSERT INTO `sys_dict` VALUES ('supplier', 'el-icon-coordinate', 'icon');
INSERT INTO `sys_dict` VALUES ('customer', 'el-icon-truck', 'icon');
INSERT INTO `sys_dict` VALUES ('role', 'el-icon-star-on', 'icon');
INSERT INTO `sys_dict` VALUES ('system', 'el-icon-s-tools', 'icon');
INSERT INTO `sys_dict` VALUES ('good', 'el-icon-s-shop', 'icon');
INSERT INTO `sys_dict` VALUES ('business', 'el-icon-mobile', 'icon');
INSERT INTO `sys_dict` VALUES ('product', 'el-icon-goods', 'icon');
INSERT INTO `sys_dict` VALUES ('totaldata', 'el-icon-s-data', 'icon');
INSERT INTO `sys_dict` VALUES ('out', 'el-icon-shopping-cart-2', 'icon');
INSERT INTO `sys_dict` VALUES ('put', 'el-icon-sold-out', 'icon');
INSERT INTO `sys_dict` VALUES ('forest', 'el-icon-box', 'icon');
INSERT INTO `sys_dict` VALUES ('unit', '\r\nel-icon-collection', 'icon');
INSERT INTO `sys_dict` VALUES ('inventory', 'el-icon-receiving', 'icon');
INSERT INTO `sys_dict` VALUES ('logindata', 'el-icon-date', 'icon');

-- ----------------------------
-- Table structure for sys_file
-- ----------------------------
DROP TABLE IF EXISTS `sys_file`;
CREATE TABLE `sys_file`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '文件名称\r\n',
  `type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '文件类型',
  `size` bigint NULL DEFAULT NULL COMMENT '文件大小（KB）',
  `url` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '下载连接',
  `md5` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '文件md5',
  `is_delete` tinyint(1) NULL DEFAULT 0 COMMENT '是否删除',
  `enable` tinyint(1) NULL DEFAULT 1 COMMENT '是否禁用链接',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 84 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_file
-- ----------------------------
INSERT INTO `sys_file` VALUES (61, 'dabe2182328841f39c74760430014b8a.png', 'png', 14, 'http://localhost:9090/file/dabe2182328841f39c74760430014b8a.png', 'cea02d67a5082d121e9c821aeaae0394', 1, 1);
INSERT INTO `sys_file` VALUES (62, 'dabe2182328841f39c74760430014b8a.png', 'png', 14, 'http://localhost:9090/file/dabe2182328841f39c74760430014b8a.png', 'cea02d67a5082d121e9c821aeaae0394', 1, 1);
INSERT INTO `sys_file` VALUES (79, '24gf-portraitMalePlus.png', 'png', 5, 'http://localhost:9090/file/a2f54569128c4da99b05ccfaecbcc060.png', '6b45bd0f0677403725cf6e9ed1c5f5dd', 0, 0);
INSERT INTO `sys_file` VALUES (80, '花1.jpg', 'jpg', 99, 'http://localhost:9090/file/1a096b72ca384adcb904fee73af09def.jpg', '269cdf2703bb85f1e7e7467fa0f7147b', 0, 1);
INSERT INTO `sys_file` VALUES (81, '花1.jpg', 'jpg', 99, 'http://localhost:9090/file/1a096b72ca384adcb904fee73af09def.jpg', '269cdf2703bb85f1e7e7467fa0f7147b', 0, 1);
INSERT INTO `sys_file` VALUES (82, 'mmexport1652267892448.jpg', 'jpg', 136, 'http://localhost:9090/file/808ff821fd014b9fa5b7c6f4924ddbe5.jpg', '1c7ef5192f3fa74a00496c843238b29b', 0, 1);
INSERT INTO `sys_file` VALUES (83, '头像 女孩 (1).png', 'png', 11, 'http://localhost:9090/file/9562f11e04324af69f0607b8d23415da.png', 'b4a9aa2cce6bf90dd438196e8eafa9b7', 0, 1);
INSERT INTO `sys_file` VALUES (84, 'AltosAdventure_202481702046.png', 'png', 305, 'http://localhost:9090/file/9f5721273cd64423ac13e1512d05c058.png', 'e4980da54bd691c020dc19b51c19846d', 0, 1);

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '名称',
  `path` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '路径',
  `icon` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '图标',
  `description` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '描述',
  `pid` int NULL DEFAULT NULL COMMENT '父级id',
  `page_path` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '页面路径',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 230 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '主页', '/home', 'el-icon-house', NULL, NULL, 'Home');
INSERT INTO `sys_menu` VALUES (2, '系统管理', '', 'el-icon-s-tools', '', NULL, NULL);
INSERT INTO `sys_menu` VALUES (3, '用户管理', '/manager', 'el-icon-user-solid', '', 2, 'User');
INSERT INTO `sys_menu` VALUES (4, '角色管理', '/role', 'el-icon-star-on', NULL, 2, 'Role');
INSERT INTO `sys_menu` VALUES (5, '菜单管理', '/menu', 'el-icon-menu', NULL, 2, 'Menu');
INSERT INTO `sys_menu` VALUES (7, '业务管理', NULL, 'el-icon-mobile', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (8, '客户管理', '/customer', 'el-icon-truck', NULL, 7, 'Customer');
INSERT INTO `sys_menu` VALUES (9, '供应商管理', '/supplier', 'el-icon-coordinate', NULL, 7, 'Supplier');
INSERT INTO `sys_menu` VALUES (10, '采购管理', '/buy', 'el-icon-shopping-cart-full', NULL, 7, 'Buy');
INSERT INTO `sys_menu` VALUES (11, '销售管理', '/sale', 'el-icon-shopping-cart-2', NULL, 7, 'Sale');
INSERT INTO `sys_menu` VALUES (12, '入库管理', '/putstorage', 'el-icon-sold-out', NULL, 7, 'Putstorage');
INSERT INTO `sys_menu` VALUES (13, '入库统计', '/puttotal', 'el-icon-s-data', NULL, 7, 'Puttotal');
INSERT INTO `sys_menu` VALUES (14, '出库管理', '/outstorage', 'el-icon-sell', NULL, 7, 'Outstorage');
INSERT INTO `sys_menu` VALUES (15, '出库统计', '/outtotal', 'el-icon-s-data', NULL, 7, 'Outtotal');
INSERT INTO `sys_menu` VALUES (16, '寄养服务管理', '/foster', 'el-icon-box', NULL, 7, 'Foster');
INSERT INTO `sys_menu` VALUES (17, '商品管理', NULL, 'el-icon-s-shop', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (18, '花材管理', '/flower', 'el-icon-goods', NULL, 17, 'Flower');
INSERT INTO `sys_menu` VALUES (19, '花材类别管理', '/sort', 'el-icon-notebook-1', NULL, 17, 'Sort');
INSERT INTO `sys_menu` VALUES (20, '单位管理', '/unit', 'el-icon-notebook-1', NULL, 17, 'Unit');
INSERT INTO `sys_menu` VALUES (21, '库存盘点', '/inventory', 'el-icon-receiving', NULL, 17, 'Inventory');
INSERT INTO `sys_menu` VALUES (22, '登录日志', '/loginlog', 'el-icon-date', NULL, NULL, 'Loginlog');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `flag` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '唯一标识',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '管理员', '主管理员', 'ROLE_ADMIN');
INSERT INTO `sys_role` VALUES (2, '采购员', '采购员', 'ROLE_BUYER');
INSERT INTO `sys_role` VALUES (3, '销售员', '销售员', 'ROLE_SALER');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` int NOT NULL COMMENT '角色id',
  `menu_id` int NOT NULL COMMENT '菜单id',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (1, 1);
INSERT INTO `sys_role_menu` VALUES (1, 2);
INSERT INTO `sys_role_menu` VALUES (1, 3);
INSERT INTO `sys_role_menu` VALUES (1, 4);
INSERT INTO `sys_role_menu` VALUES (1, 5);
INSERT INTO `sys_role_menu` VALUES (1, 7);
INSERT INTO `sys_role_menu` VALUES (1, 8);
INSERT INTO `sys_role_menu` VALUES (1, 9);
INSERT INTO `sys_role_menu` VALUES (1, 10);
INSERT INTO `sys_role_menu` VALUES (1, 11);
INSERT INTO `sys_role_menu` VALUES (1, 12);
INSERT INTO `sys_role_menu` VALUES (1, 13);
INSERT INTO `sys_role_menu` VALUES (1, 14);
INSERT INTO `sys_role_menu` VALUES (1, 15);
INSERT INTO `sys_role_menu` VALUES (1, 16);
INSERT INTO `sys_role_menu` VALUES (1, 17);
INSERT INTO `sys_role_menu` VALUES (1, 18);
INSERT INTO `sys_role_menu` VALUES (1, 19);
INSERT INTO `sys_role_menu` VALUES (1, 20);
INSERT INTO `sys_role_menu` VALUES (1, 21);
INSERT INTO `sys_role_menu` VALUES (1, 22);
INSERT INTO `sys_role_menu` VALUES (2, 1);
INSERT INTO `sys_role_menu` VALUES (2, 7);
INSERT INTO `sys_role_menu` VALUES (2, 8);
INSERT INTO `sys_role_menu` VALUES (2, 10);
INSERT INTO `sys_role_menu` VALUES (2, 12);
INSERT INTO `sys_role_menu` VALUES (2, 13);
INSERT INTO `sys_role_menu` VALUES (2, 17);
INSERT INTO `sys_role_menu` VALUES (2, 18);
INSERT INTO `sys_role_menu` VALUES (2, 19);
INSERT INTO `sys_role_menu` VALUES (2, 20);
INSERT INTO `sys_role_menu` VALUES (2, 21);
INSERT INTO `sys_role_menu` VALUES (2, 22);
INSERT INTO `sys_role_menu` VALUES (3, 1);
INSERT INTO `sys_role_menu` VALUES (3, 7);
INSERT INTO `sys_role_menu` VALUES (3, 8);
INSERT INTO `sys_role_menu` VALUES (3, 11);
INSERT INTO `sys_role_menu` VALUES (3, 14);
INSERT INTO `sys_role_menu` VALUES (3, 15);
INSERT INTO `sys_role_menu` VALUES (3, 16);
INSERT INTO `sys_role_menu` VALUES (3, 17);
INSERT INTO `sys_role_menu` VALUES (3, 21);

SET FOREIGN_KEY_CHECKS = 1;
