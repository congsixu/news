-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2018-09-10 11:32:13
-- 服务器版本： 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db`
--

-- --------------------------------------------------------

--
-- 表的结构 `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `cid` int(10) NOT NULL,
  `title` text NOT NULL,
  `dsc` text NOT NULL,
  `img` text NOT NULL,
  `url` varchar(255) NOT NULL,
  `comment_num` varchar(255) NOT NULL,
  `ctime` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=69 ;

--
-- 转存表中的数据 `news`
--

INSERT INTO `news` (`id`, `cid`, `title`, `dsc`, `img`, `url`, `comment_num`, `ctime`) VALUES
(1, 9, '日产CES展示黑科技：用脑电波去控制汽车', '', 'https://article-fd.zol-img.com.cn/t_s810x270/g5/M00/00/07/ChMkJ1pTM22IUobGAAHymE43JQ0AAj8cgBqYqcAAfKw763.jpg', 'https://m.zol.com.cn/article/6738520.html', '3', '01.08'),
(2, 9, '丰田曝第三代自动驾驶系统：360度全视野', '', 'https://article-fd.zol-img.com.cn/t_s810x270/g5/M00/00/05/ChMkJlpS3mSIcyHjAAIkyAdNO1EAAj7-AOTFPwAAiTg673.jpg', 'https://m.zol.com.cn/article/6737922.html', '5', '01.08'),
(3, 9, '特斯拉电动皮卡车曝光：和福特猛禽尺寸相当', '', 'https://article-fd.zol-img.com.cn/t_s810x270/g5/M00/0A/07/ChMkJlpEnQ-IdcWsAAETqOiOZBEAAjknAE5lNgAARPA824.jpg', 'https://m.zol.com.cn/article/6726325.html', '2', '12.28'),
(4, 9, '传苹果租下亚利桑那州试车场：测试无人汽车', '', 'https://article-fd.zol-img.com.cn/t_s810x270/g5/M00/0A/04/ChMkJloegzyIdG6yAAKR0hpJ0EMAAij1wJUDDEAApHq507.jpg', 'https://m.zol.com.cn/article/6683142.html', '1', '11.29'),
(5, 9, 'Uber组建自动驾驶车队：重金采购2.4万辆SUV', '', 'https://article-fd.zol-img.com.cn/t_s810x270/g5/M00/06/0F/ChMkJ1oTyuuIEMMKAAIQp1Y8yEgAAiWfgLn9_cAAhC_267.jpg', 'https://m.zol.com.cn/article/6666708.html', '', '11.21'),
(6, 9, '特斯拉放出邀请函：本月16日发电动卡车', '', 'https://article-fd.zol-img.com.cn/t_s810x270/g5/M00/0F/08/ChMkJloBHrWIMTxDAACLGXA7H8IAAh48gDuAp8AAIsx245.jpg', 'https://m.zol.com.cn/article/6641540.html', '4', '11.07'),
(7, 9, '谷歌：无人车放弃自动辅助驾驶功能', '', 'https://article-fd.zol-img.com.cn/t_s810x270/g5/M00/0C/0C/ChMkJ1n4Te6IHFm-AAJnqf4rD6YAAht2gIMU08AAmfB191.jpg', 'https://m.zol.com.cn/article/6629679.html', '1', '10.31'),
(8, 9, '特斯拉上海建厂仍有变故 并未正式签订协议', '', 'https://article-fd.zol-img.com.cn/t_s810x270/g5/M00/09/0C/ChMkJlnwDiaIBWjuAADtAw0nKNIAAhh8wBkOJwAAO0b781.jpg', 'https://m.zol.com.cn/article/6617697.html', '6', '10.25'),
(9, 9, '外媒：特斯拉将在上海建厂 年底或达成协议', '', 'https://article-fd.zol-img.com.cn/t_s810x270/g5/M00/09/00/ChMkJ1ntU3mINtkHAAJf2u7HnE0AAhe-gMRY3MAAl_y683.jpg', 'https://m.zol.com.cn/article/6613239.html', '1', '10.23'),
(10, 9, '特斯拉召回1.1万辆Model X：因座椅安全问题', '', 'https://article-fd.zol-img.com.cn/t_s810x270/g5/M00/04/09/ChMkJ1ngIs6IARkAAAFfIQ2iGf8AAhNIwKOCq0AAV85204.jpg', 'https://m.zol.com.cn/article/6597908.html', '12', '10.13'),
(11, 9, '谷歌Waymo联合多家组织宣传无人驾驶安全性', '', 'https://article-fd.zol-img.com.cn/t_s810x270/g5/M00/03/07/ChMkJlncMe6If5rdAAIiV1yXM10AAhIqAHtA1UAAiJv283.jpg', 'https://m.zol.com.cn/article/6591726.html', '2', '10.10'),
(12, 9, '京东无人驾驶货车亮相：可识别信号灯', '', 'https://article-fd.zol-img.com.cn/t_s810x270/g5/M00/0F/01/ChMkJ1nMvPqIYBvfAAKd7i9iPTcAAg3KwHfE5EAAp4G537.jpg', 'https://m.zol.com.cn/article/6580505.html', '', '09.28'),
(13, 9, '分析师：2040年特斯拉保有量将增长百倍', '', 'https://article-fd.zol-img.com.cn/t_s810x270/g5/M00/0E/0A/ChMkJlnLZv-IIYgzAAJnB6y2XJYAAg1cwO4_SIAAmcf970.jpg', 'https://m.zol.com.cn/article/6574838.html', '5', '09.27'),
(14, 9, 'Waymo向Uber索赔26亿美元 未来索赔金额或增加', '', 'https://article-fd.zol-img.com.cn/t_s810x270/g5/M00/0B/0F/ChMkJ1nDN5-IfYHWAAFA4zxk_vIAAgq1AFm6DcAAUD7541.jpg', 'https://m.zol.com.cn/article/6566502.html', '6', '09.21'),
(15, 9, '6亿人民币的法拉利长啥样？', '', 'https://article-fd.zol-img.com.cn/t_s810x270/g5/M00/07/04/ChMkJlm2SbaIIbqwAAFpbTQ6GrwAAgX_gFEVDgAAWmF083.jpg', 'https://m.zol.com.cn/article/6552306.html', '7', '09.11'),
(16, 2, '智行致远电动车行业访谈-立马应光捷', '', 'https://video-fd.zol-img.com.cn/t_s360x270c/g5/M00/06/06/ChMkJlt-gA-IBleHAAPGkO4tIy0AArKGwMjWJAAA8ao642.jpg', 'https://m.zol.com.cn/video/194902.html', '153539', '08.23'),
(17, 2, '风云对话：专访华为消费者业务平板与PC产品线总裁王银锋', '', 'https://video-fd.zol-img.com.cn/t_s360x270c/g5/M00/06/04/ChMkJlt-HWSIDGRiAAExM2c32NIAArJiAJhyTgAATFL678.jpg', 'https://m.zol.com.cn/video/194858.html', '160550', '08.23'),
(18, 2, '智行致远电动车行业访谈', '', 'https://video-fd.zol-img.com.cn/t_s360x270c/g5/M00/06/04/ChMkJlt-KliIDF7xAAJqbyUUagAAArJlANmtAUAAmqH295.jpg', 'https://m.zol.com.cn/video/194880.html', '353552', '08.23'),
(19, 2, '智行致远电动车行业访谈-雅迪总经理杨剑', '', 'https://video-fd.zol-img.com.cn/t_s360x270c/g5/M00/06/04/ChMkJ1t-KayIYg4YAALR6wyENKsAArJlADT22EAAtID114.jpg', 'https://m.zol.com.cn/video/194879.html', '159980', '08.23'),
(20, 2, '智行致远电动车行业访谈-新大洲宁洪涛', '', 'https://video-fd.zol-img.com.cn/t_s360x270c/g5/M00/06/04/ChMkJlt-JoWIWhp-AALu5VC6Q3cAArJkANQXDoAAu79695.jpg', 'https://m.zol.com.cn/video/194878.html', '147402', '08.23'),
(21, 2, '智行致远电动车行业访谈-喜摩总经理赵炜祎', '', 'https://video-fd.zol-img.com.cn/t_s360x270c/g5/M00/06/04/ChMkJlt-Jg-INSU3AALR1QZCL4sAArJkAF3vEYAAtHt228.jpg', 'https://m.zol.com.cn/video/194877.html', '145920', '08.23'),
(22, 2, '智行致远电动车行业访谈-速珂CEO谢玉贤', '', 'https://video-fd.zol-img.com.cn/t_s360x270c/g5/M00/06/04/ChMkJlt-IAaIBkJfAAKuEj0man0AArJiwCG55QAAq4q266.jpg', 'https://m.zol.com.cn/video/194870.html', '150480', '08.23'),
(23, 2, '智行致远电动车行业访谈-绿能副总经理李鹏', '', 'https://video-fd.zol-img.com.cn/t_s360x270c/g5/M00/06/04/ChMkJlt-Hn6IM0hMAAHi44nSPWUAArJiQIXmYAAAeL7690.jpg', 'https://m.zol.com.cn/video/194857.html', '149701', '08.23'),
(24, 2, '智行致远电动车行业访谈-大阳总经理周铭', '', 'https://video-fd.zol-img.com.cn/t_s360x270c/g5/M00/06/04/ChMkJlt-HGmIPm55AAK7ONJWHlsAArJhwBgU6IAArtQ776.jpg', 'https://m.zol.com.cn/video/194855.html', '154945', '08.23'),
(25, 1, '疑荣耀副总裁曝光:小米集水军诋毁华为被证实', '', 'https://article-fd.zol-img.com.cn/t_s480x360/g5/M00/00/08/ChMkJ1uToIqIbDfqAABbKDUiDuQAAri8AC-TmYAAFtA306.jpg', 'https://m.zol.com.cn/article/6976873.html', '117', '5小时前'),
(26, 1, '摩拜撤出曼城 共享单车海外征战恐要黯然离场', '', 'https://article-fd.zol-img.com.cn/t_s810x270/g5/M00/00/01/ChMkJ1uST1KIfbdjAADKt3WmBioAArhTQNGR40AAMrP984.jpg', 'https://m.zol.com.cn/article/6975400.html', '3', '17小时前'),
(27, 1, '每日猜机：资深玩家都爱的掌上游戏机', '', 'https://article-fd.zol-img.com.cn/t_s480x360/g5/M00/00/00/ChMkJ1uSLlyIXnK3AABdgjbxla0AArhDAJ-SjwAAF2a203.jpg', 'https://m.zol.com.cn/article/6974896.html', '14', '17小时前'),
(28, 2, '风云对话：时尚软萌革新传统WiFi 倪可开启无线路由新业态', '', 'https://video-fd.zol-img.com.cn/t_s360x270c/g5/M00/0D/02/ChMkJltMSAqIXNw7AAC_BtL4yTYAApu-gJyyVYAAL8e156.jpg', 'https://m.zol.com.cn/video/193457.html', '12977', '07.16'),
(29, 1, '华为云助公安三所举办网络安全员法制竞赛', '', 'https://article-fd.zol-img.com.cn/t_s480x360/g5/M00/00/01/ChMkJluSRqWISOgGAAJyLmD9wxgAArhPQCwXBcAAnJG292.jpg', 'https://m.zol.com.cn/article/6976686.html', '', '09.07'),
(30, 2, '风云对话：智慧桌面利器——IDV技术的前世今生！', '', 'https://video-fd.zol-img.com.cn/t_s360x270c/g5/M00/07/06/ChMkJls2DUSIKbbwAAC7vwXhQw0AApX_wP6spQAALvX667.jpg', 'https://m.zol.com.cn/video/192921.html', '26638', '07.03'),
(31, 1, '无线蓝牙耳机哪个好？三招教你买到好耳机', '', 'https://article-fd.zol-img.com.cn/t_s480x360/g5/M00/00/01/ChMkJ1uSRf-IaI5JAAGAbofwB-AAArhOwJRCIcAAYCG832.jpg', 'https://m.zol.com.cn/article/6976684.html', '2', '09.07'),
(32, 2, '专访雷蛇头号玩家陈民亮：一切只为玩家', '', 'https://video-fd.zol-img.com.cn/t_s360x270c/g5/M00/06/0F/ChMkJ1s0jWKIVerTAAC2Z47TCcoAApWUwOuX44AALZ_973.jpg', 'https://m.zol.com.cn/video/192715.html', '1273', '06.28'),
(33, 1, '什么电视盒子比较好？大神力荐四款旗舰盒子', '', 'https://article-fd.zol-img.com.cn/t_s480x360/g5/M00/00/01/ChMkJluSRPuICAoeAABKsKAmn-cAArhOQIiNncAAErI811.jpg', 'https://m.zol.com.cn/article/6976674.html', '1', '09.07'),
(34, 2, '风云对话：专访惠普消费电脑事业部产品经理 王杨', '', 'https://video-fd.zol-img.com.cn/t_s360x270c/g5/M00/04/06/ChMkJlsrgd6IFsFpAADFSjVK8hUAApMIwIT7QAAAMVi659.jpg', 'https://m.zol.com.cn/video/192302.html', '15675', '06.21'),
(35, 1, '用户爽！京东可以寄快递了！不过只限这三个地区', '', 'https://article-fd.zol-img.com.cn/t_s480x360/g5/M00/00/01/ChMkJ1uSPvuILFEbAABFmotPmtAAArhLQGL73UAAEWy945.jpg', 'https://m.zol.com.cn/article/6976438.html', '2', '09.07'),
(36, 2, '风云对话：深挖高性价比背后的秘密 炫龙产品经理陈旭峰专访', '', 'https://video-fd.zol-img.com.cn/t_s360x270c/g5/M00/0C/04/ChMkJ1sOCDCIQEbLAADu6I9Zpk8AAorgQOKASgAAO8A983.jpg', 'https://m.zol.com.cn/video/191594.html', '10184', '05.30'),
(37, 1, '布丁智能机器人带来绘本阅读新模式', '', 'https://article-fd.zol-img.com.cn/t_s480x360/g5/M00/00/00/ChMkJluSOqeIGjE1AAIxInj4dloAArhJQAIn5cAAjE6478.jpg', 'https://m.zol.com.cn/article/6976423.html', '', '09.07'),
(38, 2, '只有民营企业才能造芯', '', 'https://video-fd.zol-img.com.cn/t_s360x270c/g5/M00/03/0B/ChMkJ1rwfB-Ib1eDAAFIdKjntjMAAoJOAFOwmMAAUiM386.jpg', 'https://m.zol.com.cn/video/191219.html', '662454', '05.08'),
(39, 1, '升显卡送刀币 AMD买赠游戏超值购', '', 'https://article-fd.zol-img.com.cn/t_s480x360/g5/M00/00/00/ChMkJluSOYiIK9-mAAaDhDTj_tEAArhIwGmKbsABoOc234.jpg', 'https://m.zol.com.cn/article/6976419.html', '', '09.07'),
(40, 1, '新iPhone叫这名，确定不是iPad mini？', '', 'https://article-fd.zol-img.com.cn/t_s480x360/g5/M00/00/00/ChMkJ1uSNjyIb0FaAAEl3gMzojYAArhHQCif9IAASX2936.jpg', 'https://m.zol.com.cn/article/6976383.html', '6', '09.07'),
(41, 1, '电竞显示器ANTGAMER蚂蚁电竞已全面面向大众', '', 'https://article-fd.zol-img.com.cn/t_s480x360/g5/M00/00/00/ChMkJ1uSN-GIPKa2AABVAoSs7M0AArhIAJiX3wAAFUa822.jpg', 'https://m.zol.com.cn/article/6976413.html', '', '09.07'),
(42, 1, '软银C&S造访中国:继ofo后与智云洽谈跨国合作', '', 'https://article-fd.zol-img.com.cn/t_s480x360/g5/M00/00/00/ChMkJ1uSOJSIPYxbAACEzXPE3bUAArhIgAjh3oAAITl109.jpg', 'https://m.zol.com.cn/article/6976416.html', '2', '09.07'),
(43, 1, '魅族16x现身！安兔兔跑分曝光，骁龙710加持！', '', 'https://article-fd.zol-img.com.cn/t_s480x360/g5/M00/00/00/ChMkJ1uSLA-IE7-yAACnaCPisoIAArhCQJzWMMAAKeA485.jpg', 'https://m.zol.com.cn/article/6976363.html', '12', '09.07'),
(44, 1, '《王者荣耀》接入公安系统！最严实名制', '', 'https://article-fd.zol-img.com.cn/t_s480x360/g5/M00/00/00/ChMkJluSLQKId7UtAAByoRBVCtIAArhCgPtac0AAHK5486.jpg', 'https://m.zol.com.cn/article/6976355.html', '44', '09.07'),
(45, 1, '定制吃鸡性能出众！京天华盛3699主机', '', 'https://article-fd.zol-img.com.cn/t_s480x360/g5/M00/00/00/ChMkJ1uSLvKISoibAAGrShBM0c8AArhDQLXsXAAAati222.jpg', 'https://m.zol.com.cn/article/6976375.html', '', '09.07'),
(46, 3, '美团点评正式招股 大股东腾讯领投4亿美金', '', 'https://article-fd.zol-img.com.cn/t_s810x270/g5/M00/00/00/ChMkJluSJ8eIM-mRAAGCCrf6pbUAArhAwCccMMAAYIi421.jpg', 'https://m.zol.com.cn/article/6976283.html', '2', '09.07'),
(47, 7, '写在5G前夜：万物互联将给我们带来什么？', '', 'https://article-fd.zol-img.com.cn/t_s480x360/g5/M00/08/0F/ChMkJ1uGVgSIbODvAAIl-LxDjRwAArUNwBqRQQAAiYQ590.jpg', 'https://m.zol.com.cn/article/6965980.html', '151', '09.06'),
(48, 3, '微软将投资子弹短信？罗永浩说出真相', '', 'https://article-fd.zol-img.com.cn/t_s480x360/g5/M00/00/00/ChMkJluSH92IKqoCAAAo9vvuuvQAArg-AKam88AACkO201.jpg', 'https://m.zol.com.cn/article/6976240.html', '1', '09.07'),
(49, 7, '挖矿红利尽失 老黄的“新核弹”能否完美补缺', '', 'https://article-fd.zol-img.com.cn/t_s480x360/g5/M00/02/03/ChMkJlt0-l2ISc-JAASsLVUK-rEAAq5LQEgkJ8ABKxF715.jpg', 'https://m.zol.com.cn/article/6958904.html', '93', '08.17'),
(50, 3, '迟到的邀请函！谷歌Pixel 3将于10月9日发布', '', 'https://article-fd.zol-img.com.cn/t_s480x360/g5/M00/0F/0F/ChMkJ1uSFdSIL4DuAAG8ZLv7fIoAArg6gB72zYAAbx8805.jpg', 'https://m.zol.com.cn/article/6976080.html', '26', '09.07'),
(51, 7, '该如何成长？中国芯进入杂乱生长期', '', 'https://article-fd.zol-img.com.cn/t_s810x270/g5/M00/02/06/ChMkJlt1QbqIceHfAAKSzCsNZ5UAAq57wLE9nUAApLk994.jpg', 'https://m.zol.com.cn/article/6960415.html', '16', '08.17'),
(52, 3, '英特尔朱杰豪：与中国的合作将不退反进', '', 'https://2b.zol-img.com.cn/article/14_810x270/859/liWCbmwAVJkR6.jpg', 'https://m.zol.com.cn/article/6976149.html', '9', '09.07'),
(53, 7, '澳大利亚电信实现5G商用级网络数据通话', '', 'https://article-fd.zol-img.com.cn/t_s810x270/g5/M00/0D/0A/ChMkJltNsy6IGRALAAOfUxtCD-YAApw8AK_evUAA59r327.jpg', 'https://m.zol.com.cn/article/6937197.html', '', '07.18'),
(54, 3, '从新设计中看到了情怀？在享受新科技的同时也回忆了过去', '', 'https://article-fd.zol-img.com.cn/t_s480x360/g5/M00/0F/0F/ChMkJluR8_-ID7oOAABS565Gk4QAArgwgJ7bSYAAFL_971.jpg', 'https://m.zol.com.cn/article/6976069.html', '1', '09.07'),
(55, 7, '大数据需要大安全 专家告诉你该这么干', '', 'https://article-fd.zol-img.com.cn/t_s480x360/g5/M00/0B/0E/ChMkJltIHl6ILn6HAAR1BqcohHAAApp-wNOVrEABHUe813.jpg', 'https://m.zol.com.cn/article/6934672.html', '1', '07.13'),
(56, 3, '诺基亚重回拍照巅峰？诺基亚9将搭载5颗后置镜头', '', 'https://article-fd.zol-img.com.cn/t_s480x360/g5/M00/0F/0F/ChMkJ1uR496IaH2GAAFB_YLefcIAArgrgOtqOYAAUIV691.jpg', 'https://m.zol.com.cn/article/6975981.html', '71', '09.07'),
(57, 7, '认知先行：神州泰岳智能语音产业平台', '', 'https://article-fd.zol-img.com.cn/t_s480x360/g5/M00/08/04/ChMkJls51BSIIXLuAAIqUvP0kOcAApbqQKckPMAAipq331.jpg', 'https://m.zol.com.cn/article/6925920.html', '', '07.02'),
(58, 3, '高盛CFO：仍在考虑加密货币交易平台', '', 'https://article-fd.zol-img.com.cn/t_s810x270/g5/M00/0F/0F/ChMkJ1uR8PWIJqDLAAFCJK1gdEgAArgvQKov2QAAUI8636.jpg', 'https://m.zol.com.cn/article/6976044.html', '', '09.07'),
(59, 7, '全球第一张5G网商用 芬兰运营商说是', '', 'https://article-fd.zol-img.com.cn/t_s810x270/g5/M00/07/00/ChMkJls00jeILO_qAAOX0aQ7aIQAApWqQOQBEoAA5fp280.jpg', 'https://m.zol.com.cn/article/6924411.html', '10', '06.29'),
(60, 7, '腾讯成Linux基金白金会员共建开源生态', '', 'https://article-fd.zol-img.com.cn/t_s810x270/g5/M00/06/03/ChMkJlsx5S2IXu6bAAHnFUs4mwMAApTSgMa0lQAAect720.jpg', 'https://m.zol.com.cn/article/6921706.html', '2', '06.26'),
(61, 7, '5G将来，看看歪果仁和你关心的一样吗？', '', 'https://article-fd.zol-img.com.cn/t_s810x270/g5/M00/03/0F/ChMkJ1sqIkGIfBVWAAOX0aQ7aIQAApKSAK9KzoAA5fp400.jpg', 'https://m.zol.com.cn/article/6918293.html', '7', '06.21'),
(62, 7, '从战略看机遇 谷歌联京东改变零售生态', '', 'https://article-fd.zol-img.com.cn/t_s480x360/g5/M00/03/0F/ChMkJlsqHnyIUHU-AACR8OXPhjYAApKQgP5si0AAJII965.jpg', 'https://m.zol.com.cn/article/6918208.html', '63', '06.21'),
(63, 7, 'CESA2018探馆：智造，相融未来', '', 'https://article-fd.zol-img.com.cn/t_s690x690/g5/M00/01/03/ChMkJ1sfntOIC9W8AAInZkQyQi0AAo_XAGRmCYAAid-692.jpg', 'https://m.zol.com.cn/slide/6912627.html', '2', '06.12'),
(64, 7, '深度学习时代已到来 Facebook是如何使用AI', '', 'https://article-fd.zol-img.com.cn/t_s810x270/g5/M00/0E/0F/ChMkJ1sYzw2IOwc6AAE7oF7Tjv4AAo2UQHZongAATu4292.jpg', 'https://m.zol.com.cn/article/6908340.html', '1', '06.07'),
(65, 7, '新加坡评估人工智能的伦理使用情况', '', 'https://article-fd.zol-img.com.cn/t_s810x270/g5/M00/0E/0A/ChMkJlsXRHuIX3cAAADvUpKVjWUAAo08QCYZyEAAO9q361.jpg', 'https://m.zol.com.cn/article/6907045.html', '1', '06.06'),
(66, 7, '小心网络攻击者借加密使坏', '', 'https://article-fd.zol-img.com.cn/t_s480x360/g5/M00/0E/07/ChMkJ1sWYkmIKLnTAAEc0dwBT64AAo0WAK25jgAARzp748.jpg', 'https://m.zol.com.cn/article/6906676.html', '2', '06.06'),
(67, 7, '证明你是你 有了可信身份体系就不是事', '', 'https://article-fd.zol-img.com.cn/t_s810x270/g5/M00/0C/0D/ChMkJlsPwfmIXkEgAAIPgXXJ2coAAotwgGSDOoAAg-Z618.jpg', 'https://m.zol.com.cn/article/6902791.html', '9', '06.01'),
(68, 1, '高速奔跑的滴滴主动踩下了刹车', '', 'https://article-fd.zol-img.com.cn/t_s810x270/g5/M00/00/09/ChMkJ1uUFjqIGM1xAAF6ArWvvysAArjRANS8Q8AAXoa685.jpg', 'https://m.zol.com.cn/article/6976378.html', '7', '6小时前');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
