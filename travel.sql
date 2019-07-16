# 创建一个 travel 数据库并使用这个数据库
##############################################################
###       使用 UTF-8 创建数据库,防止中文乱码的情况发生        ###
###       SET NAMES UTF8;                                  ###
###       CREATE DATABASE travel CHARSET=UTF8;             ###
##############################################################
CREATE DATABASE travel;
USE travel;
# 创建用户列表并插入数据  
CREATE TABLE travel_user (
	uid INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	uname VARCHAR(32) NOT NULL,
	upwd VARCHAR(32) NOT NULL,
	email VARCHAR(64),
	phone VARCHAR(16) NOT NULL UNIQUE,
	avatar VARCHAR(32),
	user_name VARCHAR(64),
	gender INT
);
INSERT INTO travel_user VALUES(null, 'tom', 123456789, 'tom@yahu.com', 15512345678, null, null, 1);
INSERT INTO travel_user VALUES(null, 'jerry', 123456789, null, 13512345678, null, '我是杰瑞', 1);
INSERT INTO travel_user VALUES(null, 'black', 123456789, 'black@126.com', 13812345678, null, null, 0);
INSERT INTO travel_user VALUES(null, 'white', 123456789, null, 17712345678, null, null, 0);
INSERT INTO travel_user VALUES(null, 'brown', 123456789, 'brown@qq.com', 18812345678, null, '我是布朗', 1);
# 创建轮播图列表并插入数据
CREATE TABLE travel_carousel_imgs (
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	imgUrl VARCHAR(128) NOT NULL,
	title VARCHAR(60) NOT NULL
);
INSERT INTO travel_carousel_imgs VALUES(null, 'banner1.jpg', '轮播图1');
INSERT INTO travel_carousel_imgs VALUES(null, 'banner2.jpg', '轮播图2');
INSERT INTO travel_carousel_imgs VALUES(null, 'banner3.jpg', '轮播图3');
INSERT INTO travel_carousel_imgs VALUES(null, 'banner4.jpg', '轮播图4');
INSERT INTO travel_carousel_imgs VALUES(null, 'banner5.jpg', '轮播图5');
INSERT INTO travel_carousel_imgs VALUES(null, 'banner6.jpg', '轮播图6');
INSERT INTO travel_carousel_imgs VALUES(null, 'banner7.jpg', '轮播图7');
INSERT INTO travel_carousel_imgs VALUES(null, 'banner8.jpg', '轮播图8');
INSERT INTO travel_carousel_imgs VALUES(null, 'banner9.jpg', '轮播图9');
INSERT INTO travel_carousel_imgs VALUES(null, 'banner10.jpg', '轮播图10');
# 创建图标列表并插入数据
CREATE TABLE travel_icon_imgs (
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	imgUrl VARCHAR(128) NOT NULL,
	title VARCHAR(60) NOT NULL
);
INSERT INTO travel_icon_imgs VALUES(null, 'icon1.png', '图标1');
INSERT INTO travel_icon_imgs VALUES(null, 'icon2.png', '图标2');
INSERT INTO travel_icon_imgs VALUES(null, 'icon3.png', '图标3');
INSERT INTO travel_icon_imgs VALUES(null, 'icon4.png', '图标4');
INSERT INTO travel_icon_imgs VALUES(null, 'icon5.png', '图标5');
INSERT INTO travel_icon_imgs VALUES(null, 'icon6.png', '图标6');
INSERT INTO travel_icon_imgs VALUES(null, 'icon7.png', '图标7');
INSERT INTO travel_icon_imgs VALUES(null, 'icon8.png', '图标8');
INSERT INTO travel_icon_imgs VALUES(null, 'icon9.png', '图标9');
# 创建热门榜单列表并插入数据
CREATE TABLE travel_hot_ranking (
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	imgUrl VARCHAR(128) NOT NULL,
	title VARCHAR(60) NOT NULL
);
INSERT INTO travel_hot_ranking VALUES(null, 'raking1.jpg', '榜1');
INSERT INTO travel_hot_ranking VALUES(null, 'raking2.jpg', '榜2');
INSERT INTO travel_hot_ranking VALUES(null, 'raking3.jpg', '榜3');
INSERT INTO travel_hot_ranking VALUES(null, 'raking4.jpg', '榜4');
INSERT INTO travel_hot_ranking VALUES(null, 'raking5.jpg', '榜5');
INSERT INTO travel_hot_ranking VALUES(null, 'raking6.jpg', '榜6');
INSERT INTO travel_hot_ranking VALUES(null, 'raking7.jpg', '榜7');
INSERT INTO travel_hot_ranking VALUES(null, 'raking8.jpg', '榜8');
# 创建猜你喜欢(推荐)列表并插入数据
CREATE TABLE travel_recommend (
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	imgUrl VARCHAR(128) NOT NULL,
	title VARCHAR(60) NOT NULL
);
INSERT INTO travel_recommend VALUES(null, 'recommend1.jpg', '推荐1');
INSERT INTO travel_recommend VALUES(null, 'recommend2.jpg', '推荐2');
INSERT INTO travel_recommend VALUES(null, 'recommend3.jpg', '推荐3');
INSERT INTO travel_recommend VALUES(null, 'recommend4.jpg', '推荐4');
INSERT INTO travel_recommend VALUES(null, 'recommend5.jpg', '推荐5');
INSERT INTO travel_recommend VALUES(null, 'recommend6.jpg', '推荐6');
INSERT INTO travel_recommend VALUES(null, 'recommend7.jpg', '推荐7');
INSERT INTO travel_recommend VALUES(null, 'recommend8.jpg', '推荐8');
INSERT INTO travel_recommend VALUES(null, 'recommend9.jpg', '推荐9');
INSERT INTO travel_recommend VALUES(null, 'recommend10.jpg', '推荐10');
# 创建周末游玩推荐列表并插入数据
CREATE TABLE travel_the_week (
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	imgUrl VARCHAR(128) NOT NULL,
	title VARCHAR(60) NOT NULL
);
INSERT INTO travel_the_week VALUES(null, 'weekday1.jpg', '周末游玩推荐1');
INSERT INTO travel_the_week VALUES(null, 'weekday2.jpg', '周末游玩推荐2');
INSERT INTO travel_the_week VALUES(null, 'weekday3.jpg', '周末游玩推荐3');
INSERT INTO travel_the_week VALUES(null, 'weekday4.jpg', '周末游玩推荐4');
INSERT INTO travel_the_week VALUES(null, 'weekday5.jpg', '周末游玩推荐5');