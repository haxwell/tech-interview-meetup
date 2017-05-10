CREATE TABLE `customer` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=127 DEFAULT CHARSET=latin1;

CREATE TABLE `product` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=127 DEFAULT CHARSET=latin1;

CREATE TABLE `order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `customer_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY (`customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=127 DEFAULT CHARSET=latin1;

CREATE TABLE `order_line_item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `quantity` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY (`order_id`),
  KEY (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=127 DEFAULT CHARSET=latin1;

INSERT INTO `customer` VALUES (1,'AABC Corp');
INSERT INTO `customer` VALUES (2,'aaron smith');
INSERT INTO `customer` VALUES (3,'XYZ Corp');
INSERT INTO `customer` VALUES (4,'xavier gant');

INSERT INTO `product` VALUES (1,'snickers');
INSERT INTO `product` VALUES (2,'fritos');

INSERT INTO `order` VALUES (1,1);
INSERT INTO `order` VALUES (2,1);
INSERT INTO `order` VALUES (3,2);
INSERT INTO `order` VALUES (4,2);
INSERT INTO `order` VALUES (5,3);

INSERT INTO `order_line_item` VALUES (1, 1, 1, 5);
INSERT INTO `order_line_item` VALUES (2, 1, 2, 5);
INSERT INTO `order_line_item` VALUES (3, 2, 2, 5);
INSERT INTO `order_line_item` VALUES (4, 3, 1, 7);
INSERT INTO `order_line_item` VALUES (5, 4, 2, 4);
INSERT INTO `order_line_item` VALUES (6, 5, 1, 7);
INSERT INTO `order_line_item` VALUES (7, 5, 2, 5);
