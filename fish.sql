-- phpMyAdmin SQL Dump
-- version 4.7.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 2018-02-28 18:37:09
-- 服务器版本： 5.6.17
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fish`
--

-- --------------------------------------------------------

--
-- 表的结构 `fh_album`
--

CREATE TABLE `fh_album` (
  `al_id` int(11) NOT NULL COMMENT '主键',
  `al_name` varchar(64) NOT NULL COMMENT '相册名',
  `al_img` varchar(64) NOT NULL COMMENT '相册封面',
  `al_content` varchar(128) NOT NULL COMMENT '相册描述',
  `al_show` int(11) NOT NULL COMMENT '0为显示1为不显',
  `al_time` int(11) NOT NULL COMMENT '添加相册时间',
  `al_root` varchar(64) NOT NULL COMMENT '添加人',
  `al_system` varchar(16) NOT NULL COMMENT '设备系统',
  `al_ip` varchar(16) NOT NULL COMMENT 'IP地址',
  `al_hit` int(11) NOT NULL DEFAULT '0' COMMENT '点击量'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `fh_album`
--

INSERT INTO `fh_album` (`al_id`, `al_name`, `al_img`, `al_content`, `al_show`, `al_time`, `al_root`, `al_system`, `al_ip`, `al_hit`) VALUES
(1, '大头娃娃机', '/Uploads/image/20171111/1510394212102084.png', '大头娃娃机上线了...', 0, 1510545453, 'admin', 'Win 7', '127.0.0.1', 21),
(2, '隔空抓娃娃', '/Uploads/image/20171113/1510541523420549.png', '隔空抓娃娃上线了...', 0, 1510541538, 'admin', 'Win 7', '127.0.0.1', 0),
(3, '天天抓娃娃', '/Uploads/image/20171115/1510736912854180.png', '在天天抓娃娃抓到的', 0, 1510736933, 'admin', 'Win 7', '127.0.0.1', 0);

-- --------------------------------------------------------

--
-- 表的结构 `fh_article`
--

CREATE TABLE `fh_article` (
  `a_id` int(11) NOT NULL COMMENT '主键',
  `pid` int(11) NOT NULL COMMENT '栏目',
  `a_content` text NOT NULL COMMENT '内容',
  `a_desc` varchar(256) NOT NULL COMMENT '描述',
  `a_keyword` varchar(64) NOT NULL COMMENT '标签',
  `a_img` varchar(128) NOT NULL COMMENT '图片',
  `a_show` int(11) NOT NULL COMMENT '公开度:1是0不是',
  `a_original` int(11) NOT NULL COMMENT '原创:1是0不是',
  `a_time` int(11) NOT NULL COMMENT '发布时间',
  `a_root` varchar(64) NOT NULL COMMENT '发表人',
  `a_hit` int(11) DEFAULT '0' COMMENT '点击量',
  `a_system` varchar(32) NOT NULL COMMENT '系统',
  `a_ip` varchar(16) NOT NULL COMMENT 'IP',
  `a_num` int(11) DEFAULT '0' COMMENT '评论数',
  `a_name` varchar(64) NOT NULL COMMENT '标题'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `fh_article`
--

INSERT INTO `fh_article` (`a_id`, `pid`, `a_content`, `a_desc`, `a_keyword`, `a_img`, `a_show`, `a_original`, `a_time`, `a_root`, `a_hit`, `a_system`, `a_ip`, `a_num`, `a_name`) VALUES
(8, 3, 'hello world', '曾经梦想仗剑走天涯，可谁曾想，一入IT深似海，曾经梦想赴沧海。总是有写不完的程序，改不完的bug，扯不完的皮。产品一筹莫展的时候最喜欢拉着俺们程序员开会了，乱七八糟的需求理不清的思路，拉着我们扯一会儿皮，问题就迎刃而解啦', '个人博客', '/public/static/artImg/05a0a26d1094e74e5e382078a0be23ed.png', 1, 1, 1512097777, 'admin', 71, 'Win 7', '127.0.0.1', 2, '曾梦想仗剑走天涯，后来因为bug太多就没去'),
(11, 3, 'hello world', '通信时代，无论是初次相见还是老友重逢，交换联系方式，常常是彼此交换名片，然后郑重或是出于礼貌用手机记下对方的电话号码。在快节奏的生活里，我们不知不觉中就成为住在别人手机里的朋友。又因某些意外，变成了别人手机里匆忙的过客，这种快餐式的友谊 ...', '个人博客', '/public/static/artImg/336aa84df5caa643863eab69520067c0.png', 1, 1, 1510805486, 'admin', 9, 'Win 7', '127.0.0.1', 2, '住在手机里的朋友'),
(12, 3, 'hello world', '初次相识的喜悦，让你觉得似乎找到了知音。于是，对于投缘的人，开始了较频繁的交往。渐渐地，初识的喜悦退尽，接下来就是仅仅保持着联系，平淡到偶尔在节假曰发短信互致问候...;', '个人博客', '/public/static/artImg/688795baf905133dfe60dd5080a18825.png', 1, 1, 1510805602, 'admin', 0, 'Win 7', '127.0.0.1', 0, '教你怎样用欠费手机拨打电话'),
(13, 4, 'hello world', 'sss', '个人博客', '/public/static/artImg/793c1c39dc842ffd43b702e046e0fd4c.png', 1, 1, 1510805697, 'admin', 3, 'Win 7', '127.0.0.1', 0, '原来以为，一个人的勇敢是，删掉他的手机号码...'),
(14, 1, 'hello world', 'isset： 判断变量是否定义或者是否为空，（1） 变量存在返回ture，否则返回false。（2）变量定义不赋值返回false。（3） unset一个变量，返回false。（4） 变量赋值为    null，返回false', 'php', '/public/static/artImg/2d0e76c2a9dd58c0677f6c88652d87df.png', 1, 1, 1512097825, 'admin', 7, 'Win 7', '127.0.0.1', 0, 'php常见的面试题'),
(15, 1, 'hello world', '虽说我们很多时候前端很少有机会接触到算法。但是面试的时候总会面一些算法的问题,实际上这些算法也是最基础的算法，在这里就简单列出一些面试常见的问题，帮助大家巩固一些知识。', 'js', '/public/static/artImg/dc9e895933d234c28bfd5ed8db1122fe.png', 1, 1, 1512097915, 'admin', 7, 'Win 7', '127.0.0.1', 0, '面试时常见的javascript试题'),
(17, 1, 'hello world', 'Vue的实例是Vue框架的入口，其实也就是前端的ViewModel，它包含了页面中的业务逻辑处理、数据模型等，当然它也有自己的一系列的生命周期的事件钩子，辅助我们进行对整个Vue实例生成、编译、挂着、销毁等过程进行js控制。', 'vue,mvvm', '/public/static/artImg/8b29fa8088defa81ac12352f43aecf1f.png', 1, 1, 1511421196, 'admin', 14, 'Win 7', '127.0.0.1', 0, 'Vue2.0实例和生命周期'),
(18, 1, 'hello world', ' 相比于主流的angular和react前端框架，vue在近年来也变得非常火热。他吸取了前两者的优点，同时社区也异常的火爆，在这里，就给大家介绍vue-cli脚手架的搭建，以免刚刚入手vue框架的学习者走更多的弯路。', 'vue,vue-cli', '/public/static/artImg/58648d192bb2dcddc34cf1451a573456.png', 1, 1, 1511420970, 'admin', 7, 'Win 7', '127.0.0.1', 1, 'vue-cli脚手架的搭建'),
(19, 3, 'hello world', '1、每一次程序出了BUG的时候，就独自看一看大海，越看越想跳下去。2、走到今天真不容易，我要感谢两个人，一个是威利斯·凯利发明了空调，另一个是后裔，射落了九个太阳。3、很多程序员是单身狗，不是找不到对象，只是觉得恋爱真的太复杂了，还是敲代码比较简单。', 'bug', '/public/static/artImg/ed1a5b134d636ca5d378cc117d7d91a8.png', 1, 1, 1511424911, 'admin', 6, 'Win 7', '127.0.0.1', 0, '曾梦想仗剑走天涯，后来程序出了BUG，不去了'),
(20, 3, 'hello world', '在平常app项目中，通常会有分享页，通过分享页扩散以达到对app的下载，而在分享页中，我们最常见的就是判断用户是使用什么手机来打开分享页的，所以这里就介绍下navigator.userAgent来判断用于手机的类型。', 'js', '/public/static/artImg/03e286f852e85ea06f84e0c5408108a5.png', 1, 1, 1512097809, 'admin', 6, 'Win 7', '127.0.0.1', 0, 'navigator.userAgent的使用'),
(33, 1, 'hello world', '大萨达', 'das', '/public/static/artImg/2cd45b6b6a0584134ffd640468d64607.png', 1, 1, 1517306834, 'admin', 0, 'Win 7', '127.0.0.1', 0, '你好'),
(34, 1, 'hello world', '小菜一碟', '小菜', '/public/static/artImg/5dcb2b2a74c2219eb2ff23de96314e8c.png', 1, 1, 1517308425, 'admin', 0, 'Win 7', '127.0.0.1', 0, '小菜一碟'),
(35, 1, 'hello world', '今天天气好冷', '好冷', '/public/static/artImg/23763c41568fcbb4f540f9094d702d00.png', 1, 1, 1517366147, 'admin', 0, 'Win 7', '127.0.0.1', 0, '2018/01/31'),
(41, 1, '<p>测试新增还是更新啦啦啦</p>', '新增或者更新', '测试', '/public/static/artImg/a4e8d0a75033e366ecd43f128ca9032c.png', 1, 1, 1517370913, 'admin', 0, 'Win 7', '127.0.0.1', 0, '测试新增还是更新啦啦啦'),
(42, 1, '<p>我再来发布一条文章</p>', '发布文章', '文章', '/public/static/artImg/b565822298fbd529e755ba1ef5b53d8e.png', 1, 1, 1517372171, 'admin', 0, 'Win 7', '127.0.0.1', 0, '我再来发布一条文章'),
(43, 3, '<p>博客终于完成了,功能等待完善</p>', '历时两个多月', '博客', '/public/static/artImg/1b1afa28ac1a010d6e06859a0e4d5478.png', 1, 1, 1519785569, 'admin', 0, 'Win 7', '127.0.0.1', 0, '博客终于完成了');

-- --------------------------------------------------------

--
-- 表的结构 `fh_article_c`
--

CREATE TABLE `fh_article_c` (
  `ac_id` int(11) NOT NULL COMMENT '主键',
  `ac_pid` int(11) NOT NULL COMMENT '评论id',
  `ac_name` varchar(64) NOT NULL COMMENT '评论用户',
  `ac_img` varchar(128) NOT NULL COMMENT '用户头像',
  `ac_content` text NOT NULL COMMENT '评论内容',
  `ac_time` int(11) NOT NULL COMMENT '评论时间',
  `ac_system` varchar(32) NOT NULL COMMENT '设备系统',
  `ac_ip` varchar(16) NOT NULL COMMENT '用户IP',
  `ac_rename` varchar(64) DEFAULT NULL COMMENT '回复人',
  `ac_reimg` varchar(128) DEFAULT NULL COMMENT '回复人头像',
  `ac_recontent` text COMMENT '回复内容',
  `ac_retime` int(11) DEFAULT NULL COMMENT '回复时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `fh_article_c`
--

INSERT INTO `fh_article_c` (`ac_id`, `ac_pid`, `ac_name`, `ac_img`, `ac_content`, `ac_time`, `ac_system`, `ac_ip`, `ac_rename`, `ac_reimg`, `ac_recontent`, `ac_retime`) VALUES
(1, 9, '游客', '/public/static/default/default.png', '其实我也是个假的程序员[mr:/2]', 1509682051, 'Win 7', '127.0.0.1', 'admin', '/Uploads/comment/1509689535.png', '其实我也是[em_11]', 1509689535),
(2, 8, '游客', '/public/static/default/default.png', '博主好厉害[em_2]', 1509694759, 'Win 7', '127.0.0.1', 'admin', '/Uploads/comment/1510044814.png', '谢谢夸奖，你也可以的[em_11]', 1510044814),
(3, 8, '游客', '/public/static/default/default.png', '文笔非常好[em_63]', 1511253682, 'Win 7', '127.0.0.1', 'admin', '/public/static/userImg/3c394791072f51289f24233ba42ee2e6.jpg', '谢谢:blush:', 1519712068),
(4, 18, '游客', '/public/static/default/default.png', '按着博主的步骤终于搭建成功了，谢谢[em_13]', 1511505640, 'Win 7', '127.0.0.1', NULL, NULL, NULL, NULL),
(5, 11, '游客', '/public/static/default/default.png', '我又来了', 1512355242, 'iPhone', '127.0.0.1', NULL, NULL, NULL, NULL),
(6, 11, '游客', '/public/static/default/default.png', '我又来了', 1512355245, 'iPhone', '127.0.0.1', NULL, NULL, NULL, NULL),
(7, 16, '游客', '/public/static/default/default.png', '刚刚看了，对面试非常有用', 1512370251, 'iPhone', '127.0.0.1', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `fh_board`
--

CREATE TABLE `fh_board` (
  `b_id` int(11) NOT NULL COMMENT '主键',
  `b_name` varchar(64) NOT NULL COMMENT '用户名',
  `b_img` varchar(64) NOT NULL COMMENT '用户头像',
  `b_content` text NOT NULL COMMENT '留言内容',
  `b_time` int(11) NOT NULL COMMENT '留言时间',
  `b_ip` varchar(16) NOT NULL COMMENT 'ip地址',
  `b_system` varchar(16) NOT NULL COMMENT '系统',
  `b_rename` varchar(64) DEFAULT NULL COMMENT '回复人',
  `b_reimg` varchar(64) DEFAULT NULL COMMENT '回复人头像',
  `b_retime` int(11) DEFAULT NULL COMMENT '回复时间',
  `b_recontent` text COMMENT '回复内容'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `fh_board`
--

INSERT INTO `fh_board` (`b_id`, `b_name`, `b_img`, `b_content`, `b_time`, `b_ip`, `b_system`, `b_rename`, `b_reimg`, `b_retime`, `b_recontent`) VALUES
(1, '游客', '/Public/Home/img/default.png', '博主能教教我吗', 1510213126, '127.0.0.1', 'Win 7', 'admin', '/Public/Home/img/default.png', 1510215485, '好的[em_13]'),
(2, '游客', '/Public/Home/img/default.png', '你好啊,博主[em_13]', 1511163870, '127.0.0.1', 'Win 7', 'admin', '/Public/Home/img/default.png', 1513910002, '你好[mr:/11]'),
(3, '游客', '/Public/Home/img/default.png', '不错不错,可以借鉴一下', 1512123851, '127.0.0.1', 'iPhone', NULL, NULL, NULL, NULL),
(4, '游客', '/Public/Home/img/default.png', '你好啊', 1512370332, '127.0.0.1', 'iPhone', 'admin', '/public/static/userImg/3c394791072f51289f24233ba42ee2e6.jpg', 1513913199, '你好:smirk:');

-- --------------------------------------------------------

--
-- 表的结构 `fh_cat`
--

CREATE TABLE `fh_cat` (
  `c_id` int(11) NOT NULL COMMENT '主键',
  `c_name` varchar(64) NOT NULL COMMENT '栏目名',
  `c_rename` varchar(64) DEFAULT NULL COMMENT '栏目别名',
  `c_keyword` varchar(32) NOT NULL COMMENT '关键字',
  `c_desc` varchar(64) NOT NULL COMMENT '描述',
  `c_time` int(11) NOT NULL COMMENT '发布时间',
  `c_root` varchar(64) NOT NULL COMMENT '添加人',
  `c_show` int(11) NOT NULL COMMENT '显示:0为显示1为不显',
  `c_system` varchar(32) NOT NULL COMMENT '系统',
  `c_ip` varchar(16) NOT NULL COMMENT 'IP'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `fh_cat`
--

INSERT INTO `fh_cat` (`c_id`, `c_name`, `c_rename`, `c_keyword`, `c_desc`, `c_time`, `c_root`, `c_show`, `c_system`, `c_ip`) VALUES
(1, '学习笔记', '学习笔记', '学习,笔记', '自己学习上的一些笔记总结和经验分享', 1509001450, 'admin', 1, 'iPhone', '127.0.0.1'),
(3, '闲言碎语', '闲言碎语', '闲言,碎语', '在生活中的感悟和偶尔的牢骚', 1509006803, 'admin', 1, 'Win 7', '127.0.0.1'),
(4, '热点分享', '热点分享', '热点', '转载和整理一些互联网上的最新的资讯在博客上和大家分享', 1509006860, 'admin', 1, 'Win 7', '127.0.0.1'),
(5, '小鱼头条', 'Head rod of small fish', '头条,小鱼', '如果传播是一种情感，那么就是爱', 1517454130, 'admin', 1, 'Win7', '127.0.0.1');

-- --------------------------------------------------------

--
-- 表的结构 `fh_log`
--

CREATE TABLE `fh_log` (
  `l_id` int(11) NOT NULL COMMENT '主键',
  `l_name` varchar(128) NOT NULL COMMENT '标题',
  `l_img` varchar(128) NOT NULL COMMENT '标题图片',
  `l_desc` text NOT NULL COMMENT '描述',
  `l_content` text NOT NULL COMMENT '内容',
  `l_show` int(11) NOT NULL COMMENT '公开度:1为显示0为不显',
  `l_time` int(11) NOT NULL COMMENT '发布时间',
  `l_system` varchar(32) NOT NULL COMMENT '系统',
  `l_ip` varchar(16) NOT NULL COMMENT 'ip地址',
  `l_root` varchar(64) NOT NULL COMMENT '发布人',
  `l_hit` int(11) NOT NULL DEFAULT '0' COMMENT '点击量',
  `l_num` int(11) NOT NULL DEFAULT '0' COMMENT '评论数',
  `l_original` int(11) NOT NULL COMMENT '是否原创:1是0不是'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `fh_log`
--

INSERT INTO `fh_log` (`l_id`, `l_name`, `l_img`, `l_desc`, `l_content`, `l_show`, `l_time`, `l_system`, `l_ip`, `l_root`, `l_hit`, `l_num`, `l_original`) VALUES
(1, '正儿八经得思考有点怪', '/public/static/logImg/7a5bf360d5db7a4b72ba0b11862aa79f.jpg', '小时候，家贫，总是喜欢同学戴得那个毛茸茸的帽子，镶嵌着蓝色的蝴蝶，在我心里分外美丽。我总是和老妈说，我也想要一顶那样的帽子，也就十来块钱，为啥不给我买。每当我特别迷恋一件东西时，我就忘记家贫这个事实。我总是吵着闹着说了好几次，可是我的老妈总是在计算着下一个月的米面钱。那个时候的我，特别羡慕我得那个同学，凭什么他可以穿着漂亮的衣服，而我就没有呢？我一直在寻求解释和追问，始终找不到答案。', '&lt;p style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; line-height: 28px; text-indent: 2em; color: rgb(93, 93, 93); font-family: &amp;quot;Microsoft Yahei&amp;quot;, Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 251, 240);&quot;&gt;博客更新的断断续续，126邮箱也收到很多网友的来信，很感谢大家对叶子博客的关注。其实，入行五年了，我觉得自己进步不是那么大。偶尔看看书，也是静不下心来。有的人说了，或许年龄越大，功利性太强了，走着走着似乎忘记了自己的初心了。我最初的理想，就是当个自由自在的写手，写尽人生的喜怒哀乐，悲欢离合。可是后来，我发现我好像不太适合做写手，我理解不了太多事，我自以为是，我相信自己眼睛看到的，我无法揣摩面具背后的真实面孔。后来看开了就想清楚了，其实没有那么复杂，每个人心中都是一团火，大家看到得却是烟。&lt;/p&gt;&lt;p style=&quot;text-align:center;margin-top: 10px; margin-bottom: 10px; padding: 0px; line-height: 28px; text-indent: 2em; color: rgb(93, 93, 93); font-family: &amp;quot;Microsoft Yahei&amp;quot;, Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 251, 240);&quot;&gt;&lt;img src=&quot;/Uploads/image/20171027/1509074546768504.jpg&quot; alt=&quot;1509074546768504.jpg&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; display: block; width: 384px; height: 646px;&quot; width=&quot;384&quot; height=&quot;646&quot;/&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; line-height: 28px; text-indent: 2em; color: rgb(93, 93, 93); font-family: &amp;quot;Microsoft Yahei&amp;quot;, Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 251, 240);&quot;&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;/&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 10px; margin-bottom: 10px; padding: 0px; line-height: 28px; text-indent: 2em; color: rgb(93, 93, 93); font-family: &amp;quot;Microsoft Yahei&amp;quot;, Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 251, 240);&quot;&gt;所幸，与代码结缘，我觉得我还是适合写代码，最起码程序是真实的，只会有不同的写法，但是不会像人一样有多种面孔。可是，什么事都是有利有弊的。写代码久了，好像习惯和机器打交道，特别较真，特别认死理，错了就是错了，对了就是对了。可是在工作中，这样一点儿也不好，典型的吃力不讨好。我不会润色语言去赞美某个leader，我觉得不好我就努力提出来，我忘记了人的面孔是多变的，人心是难测的，会说话也是软实力。所以大家在学习技术的路上，不要忘记学习说话之道。我这个人平时喜欢开玩笑，今天突然正儿八经的讲人生大道理，好像有点怪。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', 1, 1511231978, 'Win 7', '127.0.0.1', 'admin', 12, 1, 1),
(2, '哆啦A梦先生这样说', '/public/static/logImg/6f0e87554a9403e1c93c5d6c85934bdb.jpg', '小时候，家贫，总是喜欢同学戴得那个毛茸茸的帽子，镶嵌着蓝色的蝴蝶，在我心里分外美丽。我总是和老妈说，我也想要一顶那样的帽子，也就十来块钱，为啥不给我买。每当我特别迷恋一件东西时，我就忘记家贫这个事实。我总是吵着闹着说了好几次，可是我的老妈总是在计算着下一个月的米面钱。那个时候的我，特别羡慕我得那个同学，凭什么他可以穿着漂亮的衣服，而我就没有呢？我一直在寻求解释和追问，始终找不到答案。', '&lt;p style=&quot;margin-top: 0px; margin-bottom: 0.7em; padding: 0px; color: rgb(84, 84, 84); font-family: punctuation, 微软雅黑, Tohoma; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;br/&gt;&lt;a appendurl=&quot;1&quot; href=&quot;http://b74.photo.store.qq.com/http_imgload.cgi?/rurl4_b=9ca0080af0d9868c37a2fdd2348cf66b5bb65e78cee418e2671e60c50843a3324707e2fde46930b446dab7d6fc24ac9ee50e91c8a2704ddc8d144b297c4b61e5b8fb4a11a7a2f9683fb75f13d9abb67f32ea2dcc&amp;a=74&amp;b=74&quot; target=&quot;_blank&quot; style=&quot;color: rgb(236, 92, 164); margin: 0px; padding: 0px; text-decoration-line: none;&quot;&gt;&lt;img alt=&quot;图片&quot; appendurl=&quot;1&quot; height=&quot;272&quot; src=&quot;http://b74.photo.store.qq.com/http_imgload.cgi?/rurl4_b=9ca0080af0d9868c37a2fdd2348cf66b5bb65e78cee418e2671e60c50843a3324707e2fde46930b446dab7d6fc24ac9ee50e91c8a2704ddc8d144b297c4b61e5b8fb4a11a7a2f9683fb75f13d9abb67f32ea2dcc&amp;a=74&amp;b=74&quot; width=&quot;440&quot; data-img-idx=&quot;0&quot; data-src=&quot;http://b74.photo.store.qq.com/http_imgload.cgi?/rurl4_b=9ca0080af0d9868c37a2fdd2348cf66b5bb65e78cee418e2671e60c50843a3324707e2fde46930b446dab7d6fc24ac9ee50e91c8a2704ddc8d144b297c4b61e5b8fb4a11a7a2f9683fb75f13d9abb67f32ea2dcc&amp;amp;a=74&amp;amp;b=74&quot; style=&quot;margin: 0px; padding: 0px; border-width: 0px; border-style: none; vertical-align: top;&quot;/&gt;&lt;/a&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0.7em; padding: 0px; color: rgb(84, 84, 84); font-family: punctuation, 微软雅黑, Tohoma; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;我喜欢你，因为你是我晚上睡觉前想说话的最后一个人。&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0.7em; padding: 0px; color: rgb(84, 84, 84); font-family: punctuation, 微软雅黑, Tohoma; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0.7em; padding: 0px; color: rgb(84, 84, 84); font-family: punctuation, 微软雅黑, Tohoma; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;br/&gt;&lt;br/&gt;&lt;a appendurl=&quot;1&quot; href=&quot;http://b76.photo.store.qq.com/http_imgload.cgi?/rurl4_b=9ca0080af0d9868c37a2fdd2348cf66b41efc42fc5160db3721b9de798e5817d0e89f52af50873a27a26098fa88cf7193d1b7f23378afa6bb8f1bae04208794de762dac2cff0d8062c4b2285e62c619b2e1b0503&amp;a=76&amp;b=76&quot; target=&quot;_blank&quot; style=&quot;color: rgb(236, 92, 164); margin: 0px; padding: 0px; text-decoration-line: none;&quot;&gt;&lt;img alt=&quot;图片&quot; appendurl=&quot;1&quot; height=&quot;272&quot; src=&quot;http://b76.photo.store.qq.com/http_imgload.cgi?/rurl4_b=9ca0080af0d9868c37a2fdd2348cf66b41efc42fc5160db3721b9de798e5817d0e89f52af50873a27a26098fa88cf7193d1b7f23378afa6bb8f1bae04208794de762dac2cff0d8062c4b2285e62c619b2e1b0503&amp;a=76&amp;b=76&quot; width=&quot;440&quot; data-img-idx=&quot;1&quot; data-src=&quot;http://b76.photo.store.qq.com/http_imgload.cgi?/rurl4_b=9ca0080af0d9868c37a2fdd2348cf66b41efc42fc5160db3721b9de798e5817d0e89f52af50873a27a26098fa88cf7193d1b7f23378afa6bb8f1bae04208794de762dac2cff0d8062c4b2285e62c619b2e1b0503&amp;amp;a=76&amp;amp;b=76&quot; style=&quot;margin: 0px; padding: 0px; border-width: 0px; border-style: none; vertical-align: top;&quot;/&gt;&lt;/a&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0.7em; padding: 0px;&quot;&gt;&amp;nbsp;所谓长大，就是把原本看重的东西看轻了一点，原本看轻的东西看重了一点。&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0.7em; padding: 0px;&quot;&gt;&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0.7em; padding: 0px;&quot;&gt;&lt;br/&gt;&lt;a appendurl=&quot;1&quot; href=&quot;http://b75.photo.store.qq.com/http_imgload.cgi?/rurl4_b=9ca0080af0d9868c37a2fdd2348cf66bdae48c239b403ecafb4a7f368c40d4baadfd86f0975475e15349190b62c391debd919524160be41e230e07ab7d6c426f789b285052cd354f0d9881ac162000559b5e1fbc&amp;a=75&amp;b=75&quot; target=&quot;_blank&quot; style=&quot;color: rgb(236, 92, 164); margin: 0px; padding: 0px; text-decoration-line: none;&quot;&gt;&lt;img alt=&quot;图片&quot; appendurl=&quot;1&quot; height=&quot;237&quot; src=&quot;http://b75.photo.store.qq.com/http_imgload.cgi?/rurl4_b=9ca0080af0d9868c37a2fdd2348cf66bdae48c239b403ecafb4a7f368c40d4baadfd86f0975475e15349190b62c391debd919524160be41e230e07ab7d6c426f789b285052cd354f0d9881ac162000559b5e1fbc&amp;a=75&amp;b=75&quot; width=&quot;221&quot; data-img-idx=&quot;2&quot; data-src=&quot;http://b75.photo.store.qq.com/http_imgload.cgi?/rurl4_b=9ca0080af0d9868c37a2fdd2348cf66bdae48c239b403ecafb4a7f368c40d4baadfd86f0975475e15349190b62c391debd919524160be41e230e07ab7d6c426f789b285052cd354f0d9881ac162000559b5e1fbc&amp;amp;a=75&amp;amp;b=75&quot; style=&quot;margin: 0px; padding: 0px; border-width: 0px; border-style: none; vertical-align: top;&quot;/&gt;&lt;/a&gt;&lt;br/&gt;这个世界除了身材，我还没有学会圆滑。&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0.7em; padding: 0px;&quot;&gt;&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0.7em; padding: 0px;&quot;&gt;&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0.7em; padding: 0px;&quot;&gt;&lt;br/&gt;&lt;a appendurl=&quot;1&quot; href=&quot;http://b74.photo.store.qq.com/http_imgload.cgi?/rurl4_b=9ca0080af0d9868c37a2fdd2348cf66bb94eeeba44937fb6b91c45d79ef096fd790bfe0d1ae03614b64def81d3c6721d2791064ec566841ef308764535c4aafdd58e48ea126f47cdfc3bfdb29e22803bd3060b59&amp;a=74&amp;b=74&quot; target=&quot;_blank&quot; style=&quot;color: rgb(236, 92, 164); margin: 0px; padding: 0px; text-decoration-line: none;&quot;&gt;&lt;img alt=&quot;图片&quot; appendurl=&quot;1&quot; height=&quot;253&quot; src=&quot;http://b74.photo.store.qq.com/http_imgload.cgi?/rurl4_b=9ca0080af0d9868c37a2fdd2348cf66bb94eeeba44937fb6b91c45d79ef096fd790bfe0d1ae03614b64def81d3c6721d2791064ec566841ef308764535c4aafdd58e48ea126f47cdfc3bfdb29e22803bd3060b59&amp;a=74&amp;b=74&quot; width=&quot;440&quot; data-img-idx=&quot;3&quot; data-src=&quot;http://b74.photo.store.qq.com/http_imgload.cgi?/rurl4_b=9ca0080af0d9868c37a2fdd2348cf66bb94eeeba44937fb6b91c45d79ef096fd790bfe0d1ae03614b64def81d3c6721d2791064ec566841ef308764535c4aafdd58e48ea126f47cdfc3bfdb29e22803bd3060b59&amp;amp;a=74&amp;amp;b=74&quot; style=&quot;margin: 0px; padding: 0px; border-width: 0px; border-style: none; vertical-align: top;&quot;/&gt;&lt;/a&gt;&lt;br/&gt;在不伤害无辜的前提下，尽量不要委屈自己。&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0.7em; padding: 0px;&quot;&gt;&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0.7em; padding: 0px;&quot;&gt;&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0.7em; padding: 0px;&quot;&gt;&amp;nbsp;&lt;br/&gt;&lt;a appendurl=&quot;1&quot; href=&quot;http://b73.photo.store.qq.com/http_imgload.cgi?/rurl4_b=9ca0080af0d9868c37a2fdd2348cf66b4609757eefddde63656075a4b75056de0760578a646dc708939e29ca2e06796665b373b126722cbd56595ec73dbe4d180c67eea7a9349de604271dfbc100da1ecb3a85e0&amp;a=73&amp;b=73&quot; target=&quot;_blank&quot; style=&quot;color: rgb(236, 92, 164); margin: 0px; padding: 0px; text-decoration-line: none;&quot;&gt;&lt;img alt=&quot;图片&quot; appendurl=&quot;1&quot; height=&quot;585&quot; src=&quot;http://b73.photo.store.qq.com/http_imgload.cgi?/rurl4_b=9ca0080af0d9868c37a2fdd2348cf66b4609757eefddde63656075a4b75056de0760578a646dc708939e29ca2e06796665b373b126722cbd56595ec73dbe4d180c67eea7a9349de604271dfbc100da1ecb3a85e0&amp;a=73&amp;b=73&quot; width=&quot;440&quot; data-img-idx=&quot;4&quot; data-src=&quot;http://b73.photo.store.qq.com/http_imgload.cgi?/rurl4_b=9ca0080af0d9868c37a2fdd2348cf66b4609757eefddde63656075a4b75056de0760578a646dc708939e29ca2e06796665b373b126722cbd56595ec73dbe4d180c67eea7a9349de604271dfbc100da1ecb3a85e0&amp;amp;a=73&amp;amp;b=73&quot; style=&quot;margin: 0px; padding: 0px; border-width: 0px; border-style: none; vertical-align: top;&quot;/&gt;&lt;/a&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0.7em; padding: 0px;&quot;&gt;就算不快乐也不要皱眉，因为你永远不知道谁会爱上你的笑容。&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0.7em; padding: 0px;&quot;&gt;&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0.7em; padding: 0px;&quot;&gt;&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0.7em; padding: 0px;&quot;&gt;&lt;br/&gt;&lt;a appendurl=&quot;1&quot; href=&quot;http://b75.photo.store.qq.com/http_imgload.cgi?/rurl4_b=9ca0080af0d9868c37a2fdd2348cf66b59dbd142c4dd205d1571f7f05811fb3f6aa1956bc7180aae84c43423d5f652bf61e0bea385e58095402444bd850a3811fe8f8b3859c0ac28c25b3bebbd74b14ca794692e&amp;a=75&amp;b=75&quot; target=&quot;_blank&quot; style=&quot;color: rgb(236, 92, 164); margin: 0px; padding: 0px; text-decoration-line: none;&quot;&gt;&lt;img alt=&quot;图片&quot; appendurl=&quot;1&quot; height=&quot;329&quot; src=&quot;http://b75.photo.store.qq.com/http_imgload.cgi?/rurl4_b=9ca0080af0d9868c37a2fdd2348cf66b59dbd142c4dd205d1571f7f05811fb3f6aa1956bc7180aae84c43423d5f652bf61e0bea385e58095402444bd850a3811fe8f8b3859c0ac28c25b3bebbd74b14ca794692e&amp;a=75&amp;b=75&quot; width=&quot;440&quot; data-img-idx=&quot;5&quot; data-src=&quot;http://b75.photo.store.qq.com/http_imgload.cgi?/rurl4_b=9ca0080af0d9868c37a2fdd2348cf66b59dbd142c4dd205d1571f7f05811fb3f6aa1956bc7180aae84c43423d5f652bf61e0bea385e58095402444bd850a3811fe8f8b3859c0ac28c25b3bebbd74b14ca794692e&amp;amp;a=75&amp;amp;b=75&quot; style=&quot;margin: 0px; padding: 0px; border-width: 0px; border-style: none; vertical-align: top;&quot;/&gt;&lt;/a&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0.7em; padding: 0px;&quot;&gt;发泄解压的好方法，那就是上厕所，上完之后，面部狰狞的对着马桶说：“你给我吃屎吧你！”然后猛冲厕所。&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0.7em; padding: 0px;&quot;&gt;&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0.7em; padding: 0px;&quot;&gt;&lt;br/&gt;&lt;a appendurl=&quot;1&quot; href=&quot;http://b75.photo.store.qq.com/http_imgload.cgi?/rurl4_b=9ca0080af0d9868c37a2fdd2348cf66b9e98036f6bd9903fcda1090ad5bbc36befa24c868d0c81300c6db8b6732284159dd0f822b10fd06f6ed7133d90d14ba05ec963775c42f63dc7bb2921d63413ab09b31e34&amp;a=75&amp;b=75&quot; target=&quot;_blank&quot; style=&quot;color: rgb(236, 92, 164); margin: 0px; padding: 0px; text-decoration-line: none;&quot;&gt;&lt;img alt=&quot;图片&quot; appendurl=&quot;1&quot; height=&quot;272&quot; src=&quot;http://b75.photo.store.qq.com/http_imgload.cgi?/rurl4_b=9ca0080af0d9868c37a2fdd2348cf66b9e98036f6bd9903fcda1090ad5bbc36befa24c868d0c81300c6db8b6732284159dd0f822b10fd06f6ed7133d90d14ba05ec963775c42f63dc7bb2921d63413ab09b31e34&amp;a=75&amp;b=75&quot; width=&quot;440&quot; data-img-idx=&quot;6&quot; data-src=&quot;http://b75.photo.store.qq.com/http_imgload.cgi?/rurl4_b=9ca0080af0d9868c37a2fdd2348cf66b9e98036f6bd9903fcda1090ad5bbc36befa24c868d0c81300c6db8b6732284159dd0f822b10fd06f6ed7133d90d14ba05ec963775c42f63dc7bb2921d63413ab09b31e34&amp;amp;a=75&amp;amp;b=75&quot; style=&quot;margin: 0px; padding: 0px; border-width: 0px; border-style: none; vertical-align: top;&quot;/&gt;&lt;/a&gt;&lt;br/&gt;世上最美的，莫过于从泪水中挣脱出来的那个微笑。&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0.7em; padding: 0px;&quot;&gt;&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0.7em; padding: 0px;&quot;&gt;&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0.7em; padding: 0px;&quot;&gt;&amp;nbsp;&lt;br/&gt;&lt;a appendurl=&quot;1&quot; href=&quot;http://b76.photo.store.qq.com/http_imgload.cgi?/rurl4_b=9ca0080af0d9868c37a2fdd2348cf66bf6d964443f635e56d26198075f33aea9e7cdcf57aeb8d2c825a372cd86ae6095f2a573dd5799493dff6ad39b1e5b239b9cd4fe7efd27d1833a1da5538a4da37f3c262636&amp;a=76&amp;b=76&quot; target=&quot;_blank&quot; style=&quot;color: rgb(236, 92, 164); margin: 0px; padding: 0px; text-decoration-line: none;&quot;&gt;&lt;img alt=&quot;图片&quot; appendurl=&quot;1&quot; height=&quot;227&quot; src=&quot;http://b76.photo.store.qq.com/http_imgload.cgi?/rurl4_b=9ca0080af0d9868c37a2fdd2348cf66bf6d964443f635e56d26198075f33aea9e7cdcf57aeb8d2c825a372cd86ae6095f2a573dd5799493dff6ad39b1e5b239b9cd4fe7efd27d1833a1da5538a4da37f3c262636&amp;a=76&amp;b=76&quot; width=&quot;440&quot; data-img-idx=&quot;7&quot; data-src=&quot;http://b76.photo.store.qq.com/http_imgload.cgi?/rurl4_b=9ca0080af0d9868c37a2fdd2348cf66bf6d964443f635e56d26198075f33aea9e7cdcf57aeb8d2c825a372cd86ae6095f2a573dd5799493dff6ad39b1e5b239b9cd4fe7efd27d1833a1da5538a4da37f3c262636&amp;amp;a=76&amp;amp;b=76&quot; style=&quot;margin: 0px; padding: 0px; border-width: 0px; border-style: none; vertical-align: top;&quot;/&gt;&lt;/a&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0.7em; padding: 0px;&quot;&gt;别让过去的悲催，或者未来的忧虑，毁掉当下的快乐。&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0.7em; padding: 0px;&quot;&gt;&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0.7em; padding: 0px;&quot;&gt;&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0.7em; padding: 0px;&quot;&gt;&lt;br/&gt;&lt;a appendurl=&quot;1&quot; href=&quot;http://b74.photo.store.qq.com/http_imgload.cgi?/rurl4_b=9ca0080af0d9868c37a2fdd2348cf66b2b252f0e8bc90143a1b8ad4ef353bf6c241d7ea1bc56fa630584723597601e32cadc5bc9529bf947bf9b5f87556c89c400c4171b5e7702bcbabddd562d09fd5814d6611c&amp;a=74&amp;b=74&quot; target=&quot;_blank&quot; style=&quot;color: rgb(236, 92, 164); margin: 0px; padding: 0px; text-decoration-line: none;&quot;&gt;&lt;img alt=&quot;图片&quot; appendurl=&quot;1&quot; height=&quot;292&quot; src=&quot;http://b74.photo.store.qq.com/http_imgload.cgi?/rurl4_b=9ca0080af0d9868c37a2fdd2348cf66b2b252f0e8bc90143a1b8ad4ef353bf6c241d7ea1bc56fa630584723597601e32cadc5bc9529bf947bf9b5f87556c89c400c4171b5e7702bcbabddd562d09fd5814d6611c&amp;a=74&amp;b=74&quot; width=&quot;440&quot; data-img-idx=&quot;8&quot; data-src=&quot;http://b74.photo.store.qq.com/http_imgload.cgi?/rurl4_b=9ca0080af0d9868c37a2fdd2348cf66b2b252f0e8bc90143a1b8ad4ef353bf6c241d7ea1bc56fa630584723597601e32cadc5bc9529bf947bf9b5f87556c89c400c4171b5e7702bcbabddd562d09fd5814d6611c&amp;amp;a=74&amp;amp;b=74&quot; style=&quot;margin: 0px; padding: 0px; border-width: 0px; border-style: none; vertical-align: top;&quot;/&gt;&lt;/a&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0.7em; padding: 0px;&quot;&gt;&amp;nbsp;每天早上睁开眼睛，看到你和阳光都在，这就是我想要的未来。&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0.7em; padding: 0px;&quot;&gt;&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0.7em; padding: 0px;&quot;&gt;&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0.7em; padding: 0px;&quot;&gt;&lt;br/&gt;&lt;a appendurl=&quot;1&quot; href=&quot;http://b75.photo.store.qq.com/http_imgload.cgi?/rurl4_b=9ca0080af0d9868c37a2fdd2348cf66bb5b6ac05952cad6e84d178f96c9b2111147caa5104d2b5345fd37fe4fb3f1bd8289413426bf410e2b01e8b566cdcc28ab312ee272a6aa92594a7090e328c7f0e31304761&amp;a=75&amp;b=75&quot; target=&quot;_blank&quot; style=&quot;color: rgb(236, 92, 164); margin: 0px; padding: 0px; text-decoration-line: none;&quot;&gt;&lt;img alt=&quot;图片&quot; appendurl=&quot;1&quot; height=&quot;439&quot; src=&quot;http://b75.photo.store.qq.com/http_imgload.cgi?/rurl4_b=9ca0080af0d9868c37a2fdd2348cf66bb5b6ac05952cad6e84d178f96c9b2111147caa5104d2b5345fd37fe4fb3f1bd8289413426bf410e2b01e8b566cdcc28ab312ee272a6aa92594a7090e328c7f0e31304761&amp;a=75&amp;b=75&quot; width=&quot;440&quot; data-img-idx=&quot;9&quot; data-src=&quot;http://b75.photo.store.qq.com/http_imgload.cgi?/rurl4_b=9ca0080af0d9868c37a2fdd2348cf66bb5b6ac05952cad6e84d178f96c9b2111147caa5104d2b5345fd37fe4fb3f1bd8289413426bf410e2b01e8b566cdcc28ab312ee272a6aa92594a7090e328c7f0e31304761&amp;amp;a=75&amp;amp;b=75&quot; style=&quot;margin: 0px; padding: 0px; border-width: 0px; border-style: none; vertical-align: top;&quot;/&gt;&lt;/a&gt;&lt;br/&gt;彼此相爱就是幸福。如此简单、如此难。&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0.7em; padding: 0px;&quot;&gt;&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0.7em; padding: 0px;&quot;&gt;&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0.7em; padding: 0px;&quot;&gt;&lt;br/&gt;&lt;a appendurl=&quot;1&quot; href=&quot;http://b73.photo.store.qq.com/http_imgload.cgi?/rurl4_b=9ca0080af0d9868c37a2fdd2348cf66b03bc7aa19a37390e369fe1a57bc6f1c2de138555a3fe94912df39a15390db572c39460d06fcda1d0053af5e09ba236095777c06f7f523a419c055615ed65ea0596b88cc6&amp;a=73&amp;b=73&quot; target=&quot;_blank&quot; style=&quot;color: rgb(236, 92, 164); margin: 0px; padding: 0px; text-decoration-line: none;&quot;&gt;&lt;img alt=&quot;图片&quot; appendurl=&quot;1&quot; height=&quot;330&quot; src=&quot;http://b73.photo.store.qq.com/http_imgload.cgi?/rurl4_b=9ca0080af0d9868c37a2fdd2348cf66b03bc7aa19a37390e369fe1a57bc6f1c2de138555a3fe94912df39a15390db572c39460d06fcda1d0053af5e09ba236095777c06f7f523a419c055615ed65ea0596b88cc6&amp;a=73&amp;b=73&quot; width=&quot;440&quot; data-img-idx=&quot;10&quot; data-src=&quot;http://b73.photo.store.qq.com/http_imgload.cgi?/rurl4_b=9ca0080af0d9868c37a2fdd2348cf66b03bc7aa19a37390e369fe1a57bc6f1c2de138555a3fe94912df39a15390db572c39460d06fcda1d0053af5e09ba236095777c06f7f523a419c055615ed65ea0596b88cc6&amp;amp;a=73&amp;amp;b=73&quot; style=&quot;margin: 0px; padding: 0px; border-width: 0px; border-style: none; vertical-align: top;&quot;/&gt;&lt;/a&gt;&lt;br/&gt;别人一夸我，我就担心，担心别人夸得不够。&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0.7em; padding: 0px;&quot;&gt;&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0.7em; padding: 0px;&quot;&gt;&lt;br/&gt;&lt;a appendurl=&quot;1&quot; href=&quot;http://b73.photo.store.qq.com/http_imgload.cgi?/rurl4_b=9ca0080af0d9868c37a2fdd2348cf66b756e0e8b2a16a3dd1950cb548a2fff539e9662fb41b361881ecd2b83b309eef547c2b31a8f0a0e71e3682841c95619f4c7edf86680fde120f7da27876e083bf38910c107&amp;a=73&amp;b=73&quot; target=&quot;_blank&quot; style=&quot;color: rgb(236, 92, 164); margin: 0px; padding: 0px; text-decoration-line: none;&quot;&gt;&lt;img alt=&quot;图片&quot; appendurl=&quot;1&quot; height=&quot;294&quot; src=&quot;http://b73.photo.store.qq.com/http_imgload.cgi?/rurl4_b=9ca0080af0d9868c37a2fdd2348cf66b756e0e8b2a16a3dd1950cb548a2fff539e9662fb41b361881ecd2b83b309eef547c2b31a8f0a0e71e3682841c95619f4c7edf86680fde120f7da27876e083bf38910c107&amp;a=73&amp;b=73&quot; width=&quot;440&quot; data-img-idx=&quot;11&quot; data-src=&quot;http://b73.photo.store.qq.com/http_imgload.cgi?/rurl4_b=9ca0080af0d9868c37a2fdd2348cf66b756e0e8b2a16a3dd1950cb548a2fff539e9662fb41b361881ecd2b83b309eef547c2b31a8f0a0e71e3682841c95619f4c7edf86680fde120f7da27876e083bf38910c107&amp;amp;a=73&amp;amp;b=73&quot; style=&quot;margin: 0px; padding: 0px; border-width: 0px; border-style: none; vertical-align: top;&quot;/&gt;&lt;/a&gt;&lt;br/&gt;&amp;nbsp;只要你勇敢地说出再见，生活一定会赐予你一个新的开始。&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0.7em; padding: 0px;&quot;&gt;&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0.7em; padding: 0px;&quot;&gt;&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0.7em; padding: 0px;&quot;&gt;&lt;br/&gt;&lt;a appendurl=&quot;1&quot; href=&quot;http://b72.photo.store.qq.com/http_imgload.cgi?/rurl4_b=9ca0080af0d9868c37a2fdd2348cf66b36b121e41ffaf377350fe8550e487cb73892750236ff363655c9fed661f7b72a769e780fa99e39aeccf74da308a66d5925d8c80fe140b92c444a48d0222127767917bc80&amp;a=72&amp;b=72&quot; target=&quot;_blank&quot; style=&quot;color: rgb(236, 92, 164); margin: 0px; padding: 0px; text-decoration-line: none;&quot;&gt;&lt;img alt=&quot;图片&quot; appendurl=&quot;1&quot; height=&quot;215&quot; src=&quot;http://b72.photo.store.qq.com/http_imgload.cgi?/rurl4_b=9ca0080af0d9868c37a2fdd2348cf66b36b121e41ffaf377350fe8550e487cb73892750236ff363655c9fed661f7b72a769e780fa99e39aeccf74da308a66d5925d8c80fe140b92c444a48d0222127767917bc80&amp;a=72&amp;b=72&quot; width=&quot;310&quot; data-img-idx=&quot;12&quot; data-src=&quot;http://b72.photo.store.qq.com/http_imgload.cgi?/rurl4_b=9ca0080af0d9868c37a2fdd2348cf66b36b121e41ffaf377350fe8550e487cb73892750236ff363655c9fed661f7b72a769e780fa99e39aeccf74da308a66d5925d8c80fe140b92c444a48d0222127767917bc80&amp;amp;a=72&amp;amp;b=72&quot; style=&quot;margin: 0px; padding: 0px; border-width: 0px; border-style: none; vertical-align: top;&quot;/&gt;&lt;/a&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0.7em; padding: 0px;&quot;&gt;无论今天发生多么糟糕的事，都不应该感到悲伤。因为今天是你往后日子里最年轻的一天了。&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0.7em; padding: 0px;&quot;&gt;&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0.7em; padding: 0px;&quot;&gt;&lt;br/&gt;&lt;a appendurl=&quot;1&quot; href=&quot;http://b74.photo.store.qq.com/http_imgload.cgi?/rurl4_b=9ca0080af0d9868c37a2fdd2348cf66b3f7561db3266b67938d2acfa398fe9740c614859bb5eb8d684a88beae892b4f9a392c96cae0fe5b557e6c052e612dead3b329d3bd6b3a7ac0c9eea31d9eb73e2ba590f9b&amp;a=74&amp;b=74&quot; target=&quot;_blank&quot; style=&quot;color: rgb(236, 92, 164); margin: 0px; padding: 0px; text-decoration-line: none;&quot;&gt;&lt;img alt=&quot;图片&quot; appendurl=&quot;1&quot; height=&quot;569&quot; src=&quot;http://b74.photo.store.qq.com/http_imgload.cgi?/rurl4_b=9ca0080af0d9868c37a2fdd2348cf66b3f7561db3266b67938d2acfa398fe9740c614859bb5eb8d684a88beae892b4f9a392c96cae0fe5b557e6c052e612dead3b329d3bd6b3a7ac0c9eea31d9eb73e2ba590f9b&amp;a=74&amp;b=74&quot; width=&quot;440&quot; data-img-idx=&quot;13&quot; data-src=&quot;http://b74.photo.store.qq.com/http_imgload.cgi?/rurl4_b=9ca0080af0d9868c37a2fdd2348cf66b3f7561db3266b67938d2acfa398fe9740c614859bb5eb8d684a88beae892b4f9a392c96cae0fe5b557e6c052e612dead3b329d3bd6b3a7ac0c9eea31d9eb73e2ba590f9b&amp;amp;a=74&amp;amp;b=74&quot; style=&quot;margin: 0px; padding: 0px; border-width: 0px; border-style: none; vertical-align: top;&quot;/&gt;&lt;/a&gt;&lt;br/&gt;人生只有吃铜锣烧和睡觉才是正经事。&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0.7em; padding: 0px;&quot;&gt;&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0.7em; padding: 0px;&quot;&gt;&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0.7em; padding: 0px;&quot;&gt;&lt;br/&gt;&lt;a appendurl=&quot;1&quot; href=&quot;http://b73.photo.store.qq.com/http_imgload.cgi?/rurl4_b=9ca0080af0d9868c37a2fdd2348cf66bfd1e1eb9e7aef43798c0d1b5da306f0b29a2cd4c7dad085dd73eb0d6bb78264727be79cd6d5a7c9edadc67c654cd33725736264e6a12e5a336d082156fba37656cf3f884&amp;a=73&amp;b=73&quot; target=&quot;_blank&quot; style=&quot;color: rgb(236, 92, 164); margin: 0px; padding: 0px; text-decoration-line: none;&quot;&gt;&lt;img alt=&quot;图片&quot; appendurl=&quot;1&quot; height=&quot;248&quot; src=&quot;http://b73.photo.store.qq.com/http_imgload.cgi?/rurl4_b=9ca0080af0d9868c37a2fdd2348cf66bfd1e1eb9e7aef43798c0d1b5da306f0b29a2cd4c7dad085dd73eb0d6bb78264727be79cd6d5a7c9edadc67c654cd33725736264e6a12e5a336d082156fba37656cf3f884&amp;a=73&amp;b=73&quot; width=&quot;440&quot; data-img-idx=&quot;14&quot; data-src=&quot;http://b73.photo.store.qq.com/http_imgload.cgi?/rurl4_b=9ca0080af0d9868c37a2fdd2348cf66bfd1e1eb9e7aef43798c0d1b5da306f0b29a2cd4c7dad085dd73eb0d6bb78264727be79cd6d5a7c9edadc67c654cd33725736264e6a12e5a336d082156fba37656cf3f884&amp;amp;a=73&amp;amp;b=73&quot; style=&quot;margin: 0px; padding: 0px; border-width: 0px; border-style: none; vertical-align: top;&quot;/&gt;&lt;/a&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0.7em; padding: 0px;&quot;&gt;&amp;nbsp;世界上最美妙的一件事是，当你拥抱一个你爱的人，他竟然把你抱得更紧。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', 1, 1509960550, 'Win 7', '127.0.0.1', 'admin', 0, 0, 1),
(3, '不要把自己的苦难看得过于独特', '/public/static/logImg/fc723b4586005c7e501fb266bf20c726.jpg', '小时候，家贫，总是喜欢同学戴得那个毛茸茸的帽子，镶嵌着蓝色的蝴蝶，在我心里分外美丽。我总是和老妈说，我也想要一顶那样的帽子，也就十来块钱，为啥不给我买。每当我特别迷恋一件东西时，我就忘记家贫这个事实。我总是吵着闹着说了好几次，可是我的老妈总是在计算着下一个月的米面钱。那个时候的我，特别羡慕我得那个同学，凭什么他可以穿着漂亮的衣服，而我就没有呢？我一直在寻求解释和追问，始终找不到答案。', '&lt;p&gt;&lt;span style=&quot;color: rgb(93, 93, 93); font-family: &amp;quot;Microsoft Yahei&amp;quot;, Simsun; font-size: 14px; text-indent: 28px; background-color: rgb(255, 251, 240);&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; 小时候，家贫，总是喜欢同学戴得那个毛茸茸的帽子，镶嵌着蓝色的蝴蝶，在我心里分外美丽。我总是和老妈说，我也想要一顶那样的帽子，也就十来块钱，为啥不给我买。每当我特别迷恋一件东西时，我就忘记家贫这个事实。我总是吵着闹着说了好几次，可是我的老妈总是在计算着下一个月的米面钱。那个时候的我，特别羡慕我得那个同学，凭什么他可以穿着漂亮的衣服，而我就没有呢？我一直在寻求解释和追问，始终找不到答案。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;https://static.yezismile.com/kindeditor/attached/image/20171013/20171013051645_95992.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(93, 93, 93); font-family: &amp;quot;Microsoft Yahei&amp;quot;, Simsun; font-size: 14px; text-indent: 28px; background-color: rgb(255, 251, 240);&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;直到有一天，我在路口碰到他，那时我们都长成了大孩子，我的个头已经超过了我的老妈。他神情凝重得和我说，他不喜欢他的家庭环境。我当时惊得张大了嘴巴，这个我从小羡慕嫉妒的同学，竟然不喜欢他那富裕的家庭。我问为什么，他说他和他妈妈、继父生活在一起，家里总是会因为一点鸡毛蒜皮的小事吵得不可开交，他烦透了现在的生活。他宁愿穷困点也不愿意过寄人篱下的生活。在那之前的日子，我总是对着镜子说，为什么我们家这么穷，连我喜欢的帽子都买不起。我儿时的认知，总是觉得别人过得很滋润，而我一直在艰难的活着。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;https://static.yezismile.com/kindeditor/attached/image/20171013/20171013051655_55982.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(93, 93, 93); font-family: &amp;quot;Microsoft Yahei&amp;quot;, Simsun; font-size: 14px; text-indent: 28px; background-color: rgb(255, 251, 240);&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;从那之后，我才明白，每个人都有自己的烦恼，我们总是看不清别人的全部生活，总是以为自己的眼睛能读懂别人的一切。人总是特别自以为是，觉得可以洞悉所有的人性，觉得自己总是全世界最可怜的那个人。其实不然，家家都有本难念的经，儿时的我只是穷但生活在一个幸福家庭里；而我的同学虽然生活在富丽堂皇的金銮殿里，却丝毫得不到真正的快乐。所以，对我们所处的处境努力接纳和包容，你会遇到刺头儿的领导，爱发脾气的同事，还有爱打小报告的小朋友，尽量理解和包容身边的这些人，他们得所作所为和他们的生活环境有密切关系。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(93, 93, 93); font-family: &amp;quot;Microsoft Yahei&amp;quot;, Simsun; font-size: 14px; text-indent: 28px; background-color: rgb(255, 251, 240);&quot;&gt;&lt;img src=&quot;https://static.yezismile.com/kindeditor/attached/image/20171013/20171013051705_17492.jpg&quot;/&gt;&lt;/span&gt;&lt;/p&gt;', 1, 1511235654, 'Win 7', '127.0.0.1', 'admin', 0, 0, 1),
(4, '增加体质 ', '/public/static/logImg/1eabf616b3edc61d4610a66f3505ab9f.png', '过度不合理饮食会影响健康', '发布日志内容', 1, 1517476727, 'win 7', '127.0.0.1', 'admin', 0, 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `fh_log_c`
--

CREATE TABLE `fh_log_c` (
  `lc_id` int(11) NOT NULL COMMENT '主键',
  `lc_pid` int(11) NOT NULL COMMENT '评论日志id',
  `lc_name` varchar(64) NOT NULL COMMENT '用户名',
  `lc_img` varchar(128) NOT NULL COMMENT '用户头像',
  `lc_content` text NOT NULL COMMENT '评论内容',
  `lc_time` int(11) NOT NULL COMMENT '评论时间',
  `lc_system` varchar(32) NOT NULL COMMENT '系统设备',
  `lc_ip` varchar(16) NOT NULL COMMENT 'ip地址',
  `lc_rename` varchar(64) DEFAULT NULL COMMENT '回复人',
  `lc_reimg` varchar(128) DEFAULT NULL COMMENT '回复人头像',
  `lc_recontent` text COMMENT '回复内容',
  `lc_retime` int(11) DEFAULT NULL COMMENT '回复时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `fh_log_c`
--

INSERT INTO `fh_log_c` (`lc_id`, `lc_pid`, `lc_name`, `lc_img`, `lc_content`, `lc_time`, `lc_system`, `lc_ip`, `lc_rename`, `lc_reimg`, `lc_recontent`, `lc_retime`) VALUES
(1, 1, '游客', '/Public/Home/img/default.png', '文章写的非常好', 1510044655, 'Android', '192.168.1.112', 'admin', '/public/static/userImg/3c394791072f51289f24233ba42ee2e6.jpg', '谢谢:gift_heart:', 1510048590),
(2, 3, '游客', '/Public/Home/img/default.png', '说的好', 1512369867, 'iPhone', '192.168.1.112', NULL, NULL, NULL, NULL),
(3, 3, '游客', '/Public/Home/img/default.png', '你好啊', 1512370287, 'iPhone', '61.140.24.76', NULL, NULL, NULL, NULL),
(4, 3, '游客', '/Public/Home/img/default.png', '文章写的很好', 1512371573, 'iPhone', '61.140.24.76', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `fh_picture`
--

CREATE TABLE `fh_picture` (
  `p_id` int(11) NOT NULL COMMENT '主键',
  `p_name` varchar(64) NOT NULL COMMENT '图片名称',
  `pid` int(11) NOT NULL COMMENT '相册名',
  `p_img` varchar(254) NOT NULL COMMENT '图片',
  `p_desc` varchar(128) NOT NULL COMMENT '描述',
  `p_time` int(11) NOT NULL COMMENT '时间',
  `p_system` varchar(16) NOT NULL COMMENT '系统',
  `p_ip` varchar(16) NOT NULL COMMENT '系统ip',
  `p_root` varchar(16) NOT NULL COMMENT '添加人'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `fh_picture`
--

INSERT INTO `fh_picture` (`p_id`, `p_name`, `pid`, `p_img`, `p_desc`, `p_time`, `p_system`, `p_ip`, `p_root`) VALUES
(1, '大头娃娃机', 1, '/Uploads/image/20171115/1510728548641775.png', '刚刚抓到的娃娃', 1510728562, 'Win 7', '127.0.0.1', 'admin'),
(2, '隔空抓娃娃', 2, '/Uploads/image/20171115/1510730425818292.png,/Uploads/image/20171115/1510730425103577.png,/Uploads/image/20171115/1510730425737564.png,/Uploads/image/20171115/1510730425445809.png', '一下子抓到四个娃娃', 1510730442, 'Win 7', '127.0.0.1', 'admin'),
(3, '天天抓娃娃', 1, '/Uploads/image/20171115/1510737079104270.png,/Uploads/image/20171115/1510737079104640.png,/Uploads/image/20171115/1510737079685883.png', '在天天抓娃娃抓到的...', 1510737096, 'Win 7', '127.0.0.1', 'admin');

-- --------------------------------------------------------

--
-- 表的结构 `fh_say`
--

CREATE TABLE `fh_say` (
  `s_id` int(11) NOT NULL COMMENT '主键',
  `s_content` text NOT NULL COMMENT '说说内容',
  `s_img` varchar(256) DEFAULT NULL COMMENT '说说图片',
  `s_show` int(11) NOT NULL COMMENT '公开度:1是0不是',
  `s_time` int(11) NOT NULL COMMENT '发布时间',
  `s_system` varchar(32) NOT NULL COMMENT '系统',
  `s_root` varchar(64) NOT NULL COMMENT '发布人',
  `s_ip` varchar(16) NOT NULL COMMENT 'IP',
  `s_hit` int(11) NOT NULL DEFAULT '0' COMMENT '点击量',
  `s_num` int(11) NOT NULL DEFAULT '0' COMMENT '评论数'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `fh_say`
--

INSERT INTO `fh_say` (`s_id`, `s_content`, `s_img`, `s_show`, `s_time`, `s_system`, `s_root`, `s_ip`, `s_hit`, `s_num`) VALUES
(4, '今天天气好冷啊', '/public/static/sayImg/3e06bd5a8b8f7c0acf2da4fc6284d164.jpg', 1, 1511247191, 'Win 7', 'admin', '127.0.0.1', 44, 0),
(5, '背黑锅我来....', '/public/static/sayImg/602f59e47a57467748f7dc5e1dfbd9d4.jpg', 1, 1511427535, 'Win 7', 'admin', '127.0.0.1', 4, 0),
(6, '坚持一个星期更新一篇文章', '/public/static/sayImg/dc309034fe9523ce2994485aa63a3db6.jpg', 1, 1511842273, 'Win 7', 'admin', '127.0.0.1', 9, 0),
(10, '今天天气好冷啊', '/public/static/sayImg/8270b77bfdb9c8dc7e2e1eab438eea34.jpg', 1, 1517905828, 'Win 7', 'admin', '127.0.0.1', 0, 0),
(11, '今天天气很好，公司氛围很压抑', '/public/static/sayImg/133272d8820f7a56395796ac4470e03a.jpg', 1, 1517907153, 'Win 7', 'xiaoxiao', '127.0.0.1', 0, 0),
(12, 'ssda', '/public/static/sayImg/d22ed9814944d8bde0f5c16b04ca5cd6.jpg', 1, 1517907245, 'Win 7', 'admin', '127.0.0.1', 0, 0),
(13, '漂亮吧:smirk:', '/public/static/sayImg/f3df69280f81af859dc5feafd591f3ba.jpg', 1, 1519721658, 'Win 7', 'admin', '127.0.0.1', 0, 0),
(14, '上班的乐趣之一:blush:', '/public/static/sayImg/d541fc6bf0169e0c3a172985dac95932.jpg', 1, 1519722001, 'Win 7', 'admin', '127.0.0.1', 0, 0),
(15, '生日快乐你今晚又多个名字叫黑猪噢:gift:', '/public/static/sayImg/2def5e608d37b163a9e88bffd486dd26.jpg', 1, 1519722243, 'Win 7', 'admin', '127.0.0.1', 0, 0),
(16, '做自己喜欢的事，追求最适合自己的东西，就是追求的意义', '/public/static/sayImg/0cb6c2ee67dd1145f03c39fc56bf1a39.jpg', 1, 1519722517, 'Win 7', 'admin', '127.0.0.1', 0, 0),
(17, '开工大吉', '/public/static/sayImg/fd5bbf2377e821ca5b4682fd102c1b10.jpg', 1, 1519723569, 'Win 7', 'admin', '127.0.0.1', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `fh_say_c`
--

CREATE TABLE `fh_say_c` (
  `sc_id` int(11) NOT NULL COMMENT '主键',
  `sc_pid` int(11) NOT NULL COMMENT '评论说说id',
  `sc_name` varchar(64) NOT NULL COMMENT '用户名',
  `sc_img` varchar(128) NOT NULL COMMENT '用户头像',
  `sc_content` text NOT NULL COMMENT '评论内容',
  `sc_ip` varchar(16) NOT NULL COMMENT 'ip地址',
  `sc_system` varchar(32) NOT NULL COMMENT '系统设备',
  `sc_time` int(11) NOT NULL COMMENT '评论时间',
  `sc_rename` varchar(64) DEFAULT NULL COMMENT '回复人',
  `sc_reimg` varchar(128) DEFAULT NULL COMMENT '回复人头像',
  `sc_recontent` text COMMENT '回复文本',
  `sc_retime` int(11) DEFAULT NULL COMMENT '回复时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `fh_say_c`
--

INSERT INTO `fh_say_c` (`sc_id`, `sc_pid`, `sc_name`, `sc_img`, `sc_content`, `sc_ip`, `sc_system`, `sc_time`, `sc_rename`, `sc_reimg`, `sc_recontent`, `sc_retime`) VALUES
(1, 4, '游客', '/public/static/default/default.png', '公仔好漂亮啊[em_2][em_2]', '127.0.0.1', 'Unknown', 1509594712, NULL, NULL, NULL, NULL),
(2, 4, '游客', '/public/static/default/default.png', '公仔哪里买的呀[mr:/18]', '127.0.0.1', 'Unknown', 1509594804, NULL, NULL, NULL, NULL),
(3, 4, '游客', '/public/static/default/default.png', '小兔兔好漂亮[em_5]', '127.0.0.1', 'Win 7', 1509594865, NULL, NULL, NULL, NULL),
(4, 4, '游客', '/public/static/default/default.png', '抓到的公仔好漂亮[em_2]', '127.0.0.1', 'Win 7', 1509604590, 'admin', '/Uploads/comment/1509613213.png', '[em_10]', 1509613213),
(6, 4, '游客', '/public/static/default/default.png', '你想说什么[em_10]', '127.0.0.1', 'Unknown', 1509614023, NULL, NULL, NULL, NULL),
(7, 4, '游客', '/public/static/default/default.png', 'hello,小明[em_33]', '127.0.0.1', 'Unknown', 1509614106, 'admin', '/Uploads/comment/1511516685.png', '', 1511516685),
(8, 4, '游客', '/public/static/default/default.png', '红色的小兔公仔[em_2]', '127.0.0.1', 'Win 7', 1509681577, NULL, NULL, NULL, NULL),
(9, 4, '游客', '/public/static/default/default.png', '是呀，广州这两天降温', '127.0.0.1', 'Win 7', 1511251859, 'admin', '/Uploads/comment/1511516730.png', '要多穿点衣服哦[mr:/2]', 1511516730),
(10, 4, '游客', '/public/static/default/default.png', '是呀，广州这两天降温', '127.0.0.1', 'Win 7', 1511251945, 'admin', '/Uploads/comment/1513910246.png', '多穿点衣服[mr:/2]', 1513910246),
(11, 6, '游客', '/public/static/default/default.png', '楼主加油[em_28]', '127.0.0.1', 'Win 7', 1513910488, 'admin', '/public/static/userImg/3c394791072f51289f24233ba42ee2e6.jpg', '好的:blush:', 1513910532);

-- --------------------------------------------------------

--
-- 表的结构 `fh_system`
--

CREATE TABLE `fh_system` (
  `id` int(11) NOT NULL COMMENT '主键',
  `title` varchar(64) DEFAULT NULL COMMENT '网站标题',
  `title2` varchar(64) DEFAULT NULL COMMENT '二级标题',
  `keyword` varchar(128) DEFAULT NULL COMMENT '关键词',
  `createtime` varchar(11) NOT NULL COMMENT '注册时间',
  `desc` varchar(256) DEFAULT NULL COMMENT '站点描述',
  `username` varchar(64) DEFAULT NULL COMMENT '站长',
  `qq` varchar(16) DEFAULT NULL COMMENT 'QQ号码',
  `profession` varchar(32) DEFAULT NULL COMMENT '职业',
  `hobby` varchar(64) DEFAULT NULL COMMENT '爱好',
  `motto` varchar(64) DEFAULT NULL COMMENT '格言',
  `netname` varchar(64) DEFAULT NULL COMMENT '网名',
  `img` varchar(64) DEFAULT NULL COMMENT '图片',
  `explain` text COMMENT '个人说明',
  `program` text COMMENT '关于程序',
  `service` varchar(32) DEFAULT NULL COMMENT '域名',
  `statement` varchar(256) DEFAULT NULL COMMENT '声明',
  `hit` int(11) DEFAULT '0' COMMENT '浏览器',
  `saying` varchar(128) DEFAULT NULL COMMENT '每日一言'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `fh_system`
--

INSERT INTO `fh_system` (`id`, `title`, `title2`, `keyword`, `createtime`, `desc`, `username`, `qq`, `profession`, `hobby`, `motto`, `netname`, `img`, `explain`, `program`, `service`, `statement`, `hit`, `saying`) VALUES
(2, '小鱼博客', NULL, '青空,情感聊吧,study,青青唠叨', '1517970171', '青春因为爱情而美丽，青春就要有青春的活力', '许勇', '1149250421', '前端工程师,php工程师', '旅游,睡觉,玩游戏', NULL, '江湖之养马人', '/public/static/systemImg/f1fa10bc914a080dc4b08fe9bbea5bea.jpg', '许勇森，男，一个90后草帽小子！15年3月入行，从业已经将近2年了。从搬砖一样的生活方式换成了现在有“单”而居的日子。跟我的职业相比,告别了朝九晚五，躲过了风吹日晒，虽然不再有阶梯式的工资，但是偶尔可以给自己放放假，一起轻装旅行。 人生就是一个得与失的过程，而我却是一个幸运者，得到的永远比失去的多。虽然刚开始入行时很辛苦，但是我仍然很享受那些熬得只剩下黑眼圈的日子，因为我在学习使用html、css、js、PHP、Java...中激发了兴趣，然后越走越远....从业到现在总是坚持的原则，喜欢一句话“冥冥中该来则来，无处可逃”。。。~W_W~', '许多人会在意别人对自己的看法,希望得到所有人的认可,结果平添出很多的烦恼。我们不可能让所有的人都对着自己唱赞歌,总会有那么一些不入耳的声音,千万不要因此而坏了每天好心情,学如逆水行舟,不进则退', NULL, NULL, 0, NULL),
(3, '小鱼博客', NULL, '青空,情感聊吧,study,青青唠叨', '1517970813', '青春因为爱情而美丽，青春就要有青春的活力', '许勇', '1149250421', '前端工程师,php工程师', '旅游,睡觉,玩游戏', NULL, '江湖之养马人', '/public/static/systemImg/9dd56649c5d42706254781376accebd4.jpg', '许勇森，男，一个90后草帽小子！15年3月入行，从业已经将近2年了。从搬砖一样的生活方式换成了现在有“单”而居的日子。跟我的职业相比,告别了朝九晚五，躲过了风吹日晒，虽然不再有阶梯式的工资，但是偶尔可以给自己放放假，一起轻装旅行。 人生就是一个得与失的过程，而我却是一个幸运者，得到的永远比失去的多。虽然刚开始入行时很辛苦，但是我仍然很享受那些熬得只剩下黑眼圈的日子，因为我在学习使用html、css、js、PHP、Java...中激发了兴趣，然后越走越远....从业到现在总是坚持的原则，喜欢一句话“冥冥中该来则来，无处可逃”。。。~W_W~', '许多人会在意别人对自己的看法,希望得到所有人的认可,结果平添出很多的烦恼。我们不可能让所有的人都对着自己唱赞歌,总会有那么一些不入耳的声音,千万不要因此而坏了每天好心情,学如逆水行舟,不进则退', NULL, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `fh_user`
--

CREATE TABLE `fh_user` (
  `u_id` int(11) NOT NULL COMMENT '主键',
  `u_name` varchar(64) NOT NULL COMMENT '用户名',
  `u_password` varchar(32) NOT NULL COMMENT '密码',
  `u_logo` varchar(256) DEFAULT NULL COMMENT '用户头像',
  `u_class` int(11) NOT NULL COMMENT '权限1为最高,2为编辑,3为游客',
  `u_email` varchar(64) DEFAULT NULL COMMENT '管理员邮箱',
  `u_createtime` int(11) NOT NULL COMMENT '创建时间',
  `u_logintime` int(11) DEFAULT NULL COMMENT '登录时间',
  `u_ip` varchar(16) NOT NULL COMMENT '登录ip',
  `u_num` int(11) DEFAULT '0' COMMENT '登录次数',
  `u_root` varchar(64) NOT NULL COMMENT '姓名'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `fh_user`
--

INSERT INTO `fh_user` (`u_id`, `u_name`, `u_password`, `u_logo`, `u_class`, `u_email`, `u_createtime`, `u_logintime`, `u_ip`, `u_num`, `u_root`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '/public/static/userImg/3c394791072f51289f24233ba42ee2e6.jpg', 1, '1149250421@qq.com', 1495956763, 1513909817, '127.0.0.1', 31, ''),
(2, 'admin12', '25f9e794323b453885f5181f1b624d0b', '/public/static/userImg/177b6f6690bc8b9b9a8b3dc1871f8955.jpg', 2, 'admin@qq.com', 1509156763, 1509163586, '127.0.0.1', 0, 'admin'),
(3, 'xiaoxiao', 'a66abb5684c45962d887564f08346e8d', '/public/static/userImg/10fe6a690b0bff3028a342e9d56183cd.png', 3, 'xiaoxiao@qq.com', 1509094446, 1509094446, '127.0.0.1', 0, '晓晓'),
(5, '李小波', 'e10adc3949ba59abbe56e057f20f883e', '/public/static/userImg/adde5cb43032d2ede70cad6838b39f9c.png', 3, '114925041@qq.com', 1517627710, NULL, '127.0.0.1', 0, 'admin'),
(7, '游振雨', 'e10adc3949ba59abbe56e057f20f883e', '/public/uploadImg/default.png', 3, NULL, 1518056643, NULL, '127.0.0.1', 0, '自动创建');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fh_album`
--
ALTER TABLE `fh_album`
  ADD PRIMARY KEY (`al_id`);

--
-- Indexes for table `fh_article`
--
ALTER TABLE `fh_article`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `fh_article_c`
--
ALTER TABLE `fh_article_c`
  ADD PRIMARY KEY (`ac_id`);

--
-- Indexes for table `fh_board`
--
ALTER TABLE `fh_board`
  ADD PRIMARY KEY (`b_id`);

--
-- Indexes for table `fh_cat`
--
ALTER TABLE `fh_cat`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `fh_log`
--
ALTER TABLE `fh_log`
  ADD PRIMARY KEY (`l_id`);

--
-- Indexes for table `fh_log_c`
--
ALTER TABLE `fh_log_c`
  ADD PRIMARY KEY (`lc_id`);

--
-- Indexes for table `fh_picture`
--
ALTER TABLE `fh_picture`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `fh_say`
--
ALTER TABLE `fh_say`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `fh_say_c`
--
ALTER TABLE `fh_say_c`
  ADD PRIMARY KEY (`sc_id`);

--
-- Indexes for table `fh_system`
--
ALTER TABLE `fh_system`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fh_user`
--
ALTER TABLE `fh_user`
  ADD PRIMARY KEY (`u_id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `fh_album`
--
ALTER TABLE `fh_album`
  MODIFY `al_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键', AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `fh_article`
--
ALTER TABLE `fh_article`
  MODIFY `a_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键', AUTO_INCREMENT=44;

--
-- 使用表AUTO_INCREMENT `fh_article_c`
--
ALTER TABLE `fh_article_c`
  MODIFY `ac_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键', AUTO_INCREMENT=8;

--
-- 使用表AUTO_INCREMENT `fh_board`
--
ALTER TABLE `fh_board`
  MODIFY `b_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键', AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `fh_cat`
--
ALTER TABLE `fh_cat`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键', AUTO_INCREMENT=6;

--
-- 使用表AUTO_INCREMENT `fh_log`
--
ALTER TABLE `fh_log`
  MODIFY `l_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键', AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `fh_log_c`
--
ALTER TABLE `fh_log_c`
  MODIFY `lc_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键', AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `fh_picture`
--
ALTER TABLE `fh_picture`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键', AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `fh_say`
--
ALTER TABLE `fh_say`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键', AUTO_INCREMENT=18;

--
-- 使用表AUTO_INCREMENT `fh_say_c`
--
ALTER TABLE `fh_say_c`
  MODIFY `sc_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键', AUTO_INCREMENT=12;

--
-- 使用表AUTO_INCREMENT `fh_system`
--
ALTER TABLE `fh_system`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键', AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `fh_user`
--
ALTER TABLE `fh_user`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键', AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
