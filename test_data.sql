-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: movie_management_system
-- ------------------------------------------------------
-- Server version	8.0.41

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `actors_actor`
--

LOCK TABLES `actors_actor` WRITE;
/*!40000 ALTER TABLE `actors_actor` DISABLE KEYS */;
INSERT INTO `actors_actor` VALUES ('凯特·温斯莱特','1975-10-05'),('刘德华','1961-09-27'),('劳拉·琳妮','1964-02-05'),('卡兰·麦克奥利菲','1995-01-24'),('姜文','1963-01-05'),('娜塔莉·波特曼','1981-06-09'),('安妮·海瑟薇','1982-11-12'),('尊龙','1952-10-13'),('尼科莱塔·布拉斯基','1960-04-19'),('张丰毅','1956-09-01'),('张国荣','1956-09-12'),('徐峥','1972-04-18'),('摩根·弗里曼','1937-06-01'),('本·金斯利','1943-12-31'),('梁朝伟','1962-06-27'),('汤姆·汉克斯','1956-07-09'),('热拉尔·朱尼奥','1951-05-04'),('王传君','1985-10-18'),('玛德琳·卡罗尔','1996-03-18'),('理查·基尔','1949-08-31'),('约瑟夫·高登·莱维特','1981-02-17'),('罗宾·怀特','1966-04-08'),('罗贝托·贝尼尼','1952-10-27'),('苏拉·沙玛','1993-03-21'),('莱昂纳多·迪卡普里奥','1974-11-11'),('葛优','1957-04-19'),('蒂姆·罗宾斯','1958-10-16'),('蒂姆·罗斯','1961-05-14'),('让·巴蒂斯特·莫尼耶','1990-12-22'),('让·雷诺','1948-07-30'),('连姆·尼森','1952-06-07'),('金·凯瑞','1962-01-17'),('陈冲','1961-04-26'),('香川照之','1965-12-07'),('马修·麦康纳','1969-11-04'),('马龙·白兰度','1942-04-03');
/*!40000 ALTER TABLE `actors_actor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add movie',7,'add_movie'),(26,'Can change movie',7,'change_movie'),(27,'Can delete movie',7,'delete_movie'),(28,'Can view movie',7,'view_movie'),(29,'Can add movie genre relation',8,'add_moviegenrerelation'),(30,'Can change movie genre relation',8,'change_moviegenrerelation'),(31,'Can delete movie genre relation',8,'delete_moviegenrerelation'),(32,'Can view movie genre relation',8,'view_moviegenrerelation'),(33,'Can add movie actor relation',9,'add_movieactorrelation'),(34,'Can change movie actor relation',9,'change_movieactorrelation'),(35,'Can delete movie actor relation',9,'delete_movieactorrelation'),(36,'Can view movie actor relation',9,'view_movieactorrelation'),(37,'Can add movie narrator',10,'add_movienarrator'),(38,'Can change movie narrator',10,'change_movienarrator'),(39,'Can delete movie narrator',10,'delete_movienarrator'),(40,'Can view movie narrator',10,'view_movienarrator'),(41,'Can add movie director',11,'add_moviedirector'),(42,'Can change movie director',11,'change_moviedirector'),(43,'Can delete movie director',11,'delete_moviedirector'),(44,'Can view movie director',11,'view_moviedirector'),(45,'Can add movie role',12,'add_movierole'),(46,'Can change movie role',12,'change_movierole'),(47,'Can delete movie role',12,'delete_movierole'),(48,'Can view movie role',12,'view_movierole'),(49,'Can add director',13,'add_director'),(50,'Can change director',13,'change_director'),(51,'Can delete director',13,'delete_director'),(52,'Can view director',13,'view_director'),(53,'Can add actor',14,'add_actor'),(54,'Can change actor',14,'change_actor'),(55,'Can delete actor',14,'delete_actor'),(56,'Can view actor',14,'view_actor'),(57,'Can add production company',15,'add_productioncompany'),(58,'Can change production company',15,'change_productioncompany'),(59,'Can delete production company',15,'delete_productioncompany'),(60,'Can view production company',15,'view_productioncompany'),(61,'Can add movie genre',16,'add_moviegenre'),(62,'Can change movie genre',16,'change_moviegenre'),(63,'Can delete movie genre',16,'delete_moviegenre'),(64,'Can view movie genre',16,'view_moviegenre');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `directors_director`
--

LOCK TABLES `directors_director` WRITE;
/*!40000 ALTER TABLE `directors_director` DISABLE KEYS */;
INSERT INTO `directors_director` VALUES ('克里斯托夫·巴哈蒂','1963-06-17'),('刘伟强','1960-04-04'),('史蒂文·斯皮尔伯格','1946-12-18'),('吕克·贝松','1959-03-18'),('姜文','1963-01-05'),('安德鲁·斯坦顿','1965-12-03'),('宫崎骏','1941-01-05'),('弗兰克·德拉邦特','1959-01-28'),('弗朗西斯·福特·科波拉','1939-04-07'),('彼得·威尔','1944-08-21'),('拉斯·霍尔斯道姆','1946-06-02'),('拜伦·霍华德','1968-12-26'),('文牧野','1985-02-14'),('朱塞佩·托纳多雷','1956-05-27'),('李·昂克里奇','1967-08-08'),('李安','1954-10-23'),('罗伯·莱纳','1947-03-06'),('罗伯特·泽米吉斯','1952-05-14'),('罗贝托·贝尼尼','1952-10-27'),('詹姆斯·卡梅隆','1954-08-16'),('贝纳尔多·贝托鲁奇','1941-03-16'),('陈凯歌','1952-08-12');
/*!40000 ALTER TABLE `directors_director` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (14,'actors','actor'),(1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(13,'directors','director'),(16,'genres','moviegenre'),(7,'movies','movie'),(9,'movies','movieactorrelation'),(11,'movies','moviedirector'),(8,'movies','moviegenrerelation'),(10,'movies','movienarrator'),(12,'movies','movierole'),(15,'production_companies','productioncompany'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2025-05-19 12:10:44.735865'),(2,'auth','0001_initial','2025-05-19 12:10:45.108496'),(3,'admin','0001_initial','2025-05-19 12:10:45.207999'),(4,'admin','0002_logentry_remove_auto_add','2025-05-19 12:10:45.212637'),(5,'admin','0003_logentry_add_action_flag_choices','2025-05-19 12:10:45.216778'),(6,'contenttypes','0002_remove_content_type_name','2025-05-19 12:10:45.295555'),(7,'auth','0002_alter_permission_name_max_length','2025-05-19 12:10:45.337617'),(8,'auth','0003_alter_user_email_max_length','2025-05-19 12:10:45.350817'),(9,'auth','0004_alter_user_username_opts','2025-05-19 12:10:45.356758'),(10,'auth','0005_alter_user_last_login_null','2025-05-19 12:10:45.388273'),(11,'auth','0006_require_contenttypes_0002','2025-05-19 12:10:45.388273'),(12,'auth','0007_alter_validators_add_error_messages','2025-05-19 12:10:45.388273'),(13,'auth','0008_alter_user_username_max_length','2025-05-19 12:10:45.430124'),(14,'auth','0009_alter_user_last_name_max_length','2025-05-19 12:10:45.477915'),(15,'auth','0010_alter_group_name_max_length','2025-05-19 12:10:45.486227'),(16,'auth','0011_update_proxy_permissions','2025-05-19 12:10:45.496930'),(17,'auth','0012_alter_user_first_name_max_length','2025-05-19 12:10:45.537659'),(18,'sessions','0001_initial','2025-05-19 12:10:45.558273'),(19,'actors','0001_initial','2025-05-19 12:16:01.699606'),(20,'directors','0001_initial','2025-05-19 12:16:01.715371'),(21,'genres','0001_initial','2025-05-19 12:16:01.735503'),(22,'production_companies','0001_initial','2025-05-19 12:16:01.748478'),(23,'movies','0001_initial','2025-05-19 12:16:02.322872'),(24,'movies','0002_alter_movie_name_alter_movierole_unique_together','2025-06-17 05:28:40.146740');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `genres_moviegenre`
--

LOCK TABLES `genres_moviegenre` WRITE;
/*!40000 ALTER TABLE `genres_moviegenre` DISABLE KEYS */;
INSERT INTO `genres_moviegenre` VALUES ('传记'),('冒险'),('动作'),('动画'),('历史'),('喜剧'),('奇幻'),('恐怖'),('悬疑'),('情色'),('惊悚'),('战争'),('歌舞'),('武侠'),('灾难'),('爱情'),('犯罪'),('短片'),('科幻'),('纪录片'),('西部'),('音乐');
/*!40000 ALTER TABLE `genres_moviegenre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `movies_movie`
--

LOCK TABLES `movies_movie` WRITE;
/*!40000 ALTER TABLE `movies_movie` DISABLE KEYS */;
INSERT INTO `movies_movie` VALUES (4,'阿甘正传',142,'一部美国近现代史。',1994,4),(5,'千与千寻',125,'最好的宫崎骏，最好的久石让。',2001,5),(7,'星际穿越',169,'爱是一种力量，让我们穿越时空感知它的存在。',2014,4),(8,'楚门的世界',103,'如果再也不能见到你，祝你早安，午安，晚安。',1997,4),(9,'我不是药神',117,'对我们国家而言，这样的电影多一部是一部。',2018,14),(10,'龙猫',86,'人人心中都有个龙猫，童年就永远不会消失。',1988,5),(11,'末代皇帝',163,'不要跟我比惨，我比你更惨',1986,4),(12,'寻梦环游记',105,'死亡不是真的逝去，遗忘才是永恒的消亡。',2017,12),(13,'教父',175,'千万不要记恨你的对手，这样会使你失去理智。',1972,4),(14,'机器人总动员',98,'小瓦力，大人生。',2007,12),(16,'泰坦尼克号',194,'失去的才是永恒的。',1997,9),(17,'美丽人生',116,'最美的谎言。',1997,7),(18,'这个杀手不太冷',110,'怪蜀黍和小萝莉不得不说的故事。',1992,8),(19,'盗梦空间',148,'诺兰给了我们一场无法盗取的梦。',2008,6),(20,'辛德勒的名单',193,'拯救一个人，就是拯救整个世界。',1993,10),(21,'忠犬八公的故事',93,'永远都不能忘记你所爱的人。',2009,6),(22,'海上钢琴师',165,'每个人都要走一条自己坚定了的路，就算是粉身碎骨。',1998,6),(23,'疯狂动物城',109,'迪士尼给我们的乌托邦就是这样，永远善良勇敢，永远出乎意料',2016,12),(25,'放牛班的春天',97,'天籁一般的童声，是最接近上帝的存在。',2004,11),(26,'无间道',101,'香港电影史上永不过时的杰作',2002,2),(27,'怦然心动',90,'真正的幸福是来自内心深处。',2010,6),(28,'让子弹飞',132,'你给我翻译翻译，什么叫他妈的惊喜。',2010,15),(29,'少年派的奇幻漂流',127,'瑰丽壮观、无人能及的冒险之旅。',2012,9),(30,'鬼子来了',138,'对敌人的仁慈，就是对自己的残忍。',2000,16),(31,'哈尔的移动城堡',119,'带着心爱的人在天空飞翔。',2004,5);
/*!40000 ALTER TABLE `movies_movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `movies_movieactorrelation`
--

LOCK TABLES `movies_movieactorrelation` WRITE;
/*!40000 ALTER TABLE `movies_movieactorrelation` DISABLE KEYS */;
/*!40000 ALTER TABLE `movies_movieactorrelation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `movies_moviedirector`
--

LOCK TABLES `movies_moviedirector` WRITE;
/*!40000 ALTER TABLE `movies_moviedirector` DISABLE KEYS */;
INSERT INTO `movies_moviedirector` VALUES (18,'罗伯特·泽米吉斯',4),(46,'宫崎骏',5),(10,'彼得·威尔',8),(33,'文牧野',9),(47,'宫崎骏',10),(31,'贝纳尔多·贝托鲁奇',11),(30,'李·昂克里奇',12),(29,'弗朗西斯·福特·科波拉',13),(27,'安德鲁·斯坦顿',14),(15,'詹姆斯·卡梅隆',16),(19,'罗贝托·贝尼尼',17),(20,'吕克·贝松',18),(23,'史蒂文·斯皮尔伯格',20),(22,'拉斯·霍尔斯道姆',21),(24,'朱塞佩·托纳多雷',22),(25,'拜伦·霍华德',23),(26,'克里斯托夫·巴哈蒂',25),(28,'刘伟强',26),(32,'罗伯·莱纳',27),(38,'姜文',28),(37,'李安',29),(39,'姜文',30),(48,'宫崎骏',31);
/*!40000 ALTER TABLE `movies_moviedirector` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `movies_moviegenrerelation`
--

LOCK TABLES `movies_moviegenrerelation` WRITE;
/*!40000 ALTER TABLE `movies_moviegenrerelation` DISABLE KEYS */;
INSERT INTO `movies_moviegenrerelation` VALUES (5,'爱情',4),(7,'动画',5),(6,'奇幻',5),(10,'冒险',7),(9,'科幻',7),(11,'科幻',8),(12,'喜剧',9),(14,'冒险',10),(15,'动画',10),(13,'奇幻',10),(16,'传记',11),(17,'历史',11),(20,'动画',12),(19,'喜剧',12),(18,'音乐',12),(21,'犯罪',13),(22,'冒险',14),(24,'动画',14),(23,'科幻',14),(26,'灾难',16),(27,'爱情',16),(29,'喜剧',17),(28,'爱情',17),(30,'动作',18),(31,'犯罪',18),(32,'冒险',19),(33,'悬疑',19),(34,'科幻',19),(35,'历史',20),(36,'战争',20),(37,'传记',21),(38,'音乐',22),(39,'冒险',23),(40,'动画',23),(42,'音乐',25),(43,'惊悚',26),(44,'犯罪',26),(46,'喜剧',27),(45,'爱情',27),(47,'动作',28),(48,'喜剧',28),(49,'冒险',29),(50,'奇幻',29),(51,'喜剧',30),(52,'冒险',31),(55,'动画',31),(53,'奇幻',31),(54,'爱情',31);
/*!40000 ALTER TABLE `movies_moviegenrerelation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `movies_movienarrator`
--

LOCK TABLES `movies_movienarrator` WRITE;
/*!40000 ALTER TABLE `movies_movienarrator` DISABLE KEYS */;
/*!40000 ALTER TABLE `movies_movienarrator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `movies_movierole`
--

LOCK TABLES `movies_movierole` WRITE;
/*!40000 ALTER TABLE `movies_movierole` DISABLE KEYS */;
INSERT INTO `movies_movierole` VALUES (14,'阿甘','汤姆·汉克斯',4),(15,'Jenny Curran','罗宾·怀特',4),(21,'布兰德','安妮·海瑟薇',7),(20,'库珀','马修·麦康纳',7),(24,'Meryl Burbank','劳拉·琳妮',8),(7,'楚门','金·凯瑞',8),(39,'程勇','徐峥',9),(40,'吕受益','王传君',9),(35,'溥仪','尊龙',11),(36,'婉容','陈冲',11),(34,'Don Vito Corleone','马龙·白兰度',13),(13,'罗丝','凯特·温斯莱特',16),(12,'杰克','莱昂纳多·迪卡普里奥',16),(18,'Dora','尼科莱塔·布拉斯基',17),(16,'Guido','罗贝托·贝尼尼',17),(19,'马蒂尔达','娜塔莉·波特曼',18),(17,'莱昂','让·雷诺',18),(23,'阿瑟','约瑟夫·高登·莱维特',19),(22,'柯布','莱昂纳多·迪卡普里奥',19),(27,'Itzhak Stern','本·金斯利',20),(25,'Oskar Schindler','连姆·尼森',20),(28,'Parker  Wilson','理查·基尔',21),(29,'Nineteen Hundred','蒂姆·罗斯',22),(31,'Clement Mathieu','热拉尔·朱尼奥',25),(30,'Pierre Morhange','让·巴蒂斯特·莫尼耶',25),(32,'刘建明','刘德华',26),(33,'陈永仁','梁朝伟',26),(38,'Bryce Loski','卡兰·麦克奥利菲',27),(37,'Juli Baker','玛德琳·卡罗尔',27),(41,'张牧之','姜文',28),(42,'马邦德','葛优',28),(45,'少年派','苏拉·沙玛',29),(44,'马大三','姜文',30),(43,'花屋小三郎','香川照之',30);
/*!40000 ALTER TABLE `movies_movierole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `production_companies_productioncompany`
--

LOCK TABLES `production_companies_productioncompany` WRITE;
/*!40000 ALTER TABLE `production_companies_productioncompany` DISABLE KEYS */;
INSERT INTO `production_companies_productioncompany` VALUES (2,'中国电影集团公司','中国北京'),(4,'派拉蒙影业公司','美国加州洛杉矶'),(5,'东宝株式会社','日本东京都'),(6,'华纳兄弟娱乐公司','美国纽约伯班克'),(7,'米拉麦克斯影业公司','美国纽约'),(8,'高蒙电影公司','法国伊夫林省'),(9,'二十世纪福克斯电影公司','美国加州洛杉矶'),(10,'环球影业','美国加州洛杉矶'),(11,'百代电影公司','法国巴黎'),(12,'华特迪士尼公司','美国加州伯班克'),(14,'北京真乐道文化传播有限公司','中国北京'),(15,'华谊兄弟传媒股份有限公司','中国北京'),(16,'中国电影合作制片公司','中国北京');
/*!40000 ALTER TABLE `production_companies_productioncompany` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-20 23:31:56
