#设置编码UTF-8
SET NAMES UTF8;
#丢弃数据库pokemon如果存在的话
DROP DATABASE IF EXISTS pokemon;
#创建数据库pokemon并设置编码为UTF-8
CREATE DATABASE pokemon CHARSET=UTF8;
#进入数据库pokemon
USE pokemon;
#用户信息
CREATE TABLE pm_user(
	id		INT PRIMARY KEY AUTO_INCREMENT,
	uname		VARCHAR(32),
	upwd		VARCHAR(32),
	email		VARCHAR(64),
	phone		VARCHAR(16),
	rname	VARCHAR(32),	 #真实姓名
	gender		INT		 #性别 0-女 1-男
	
);
#轮播图
CREATE TABLE pm_carousel_item(
	id		INT PRIMARY KEY AUTO_INCREMENT,
	slide_img		VARCHAR(128)	#轮播图路径
);
#主页下方图片
CREATE TABLE index_img(
	id		INT PRIMARY KEY AUTO_INCREMENT,
	img		VARCHAR(255),
	class	VARCHAR(16),
	title	VARCHAR(128)
);
#gs中间滚动图片处
CREATE TABLE gs_goodimg(
	id		INT PRIMARY KEY AUTO_INCREMENT,
	img		VARCHAR(255)
);
#gs下方滚动图片处
CREATE TABLE gs_bottomli(
	id		INT PRIMARY KEY AUTO_INCREMENT,
	img		VARCHAR(255),
	title	VARCHAR(128),
	score	VARCHAR(16),
	price	VARCHAR(16)
);
#用户拥有的商品
CREATE TABLE user_own(
	uname		VARCHAR(255),
	gamename	VARCHAR(64)
);
/****************************************************************************************************************************************************数据导入****************************************************/


#用户列表
INSERT INTO pm_user VALUES
(NULL,'dingding','123456','654652@qq.com','13535354568','张丁鹏','1'),
(NULL,'dangdang','123456','qr22@qq.com','13654423503','宋当乐','1'),
(NULL,'qingqing','123456','131QWR@163.com','13656689756','罗梓晴','0');

#轮播图
INSERT INTO pm_carousel_item VALUES
(NULL,'image/index/pokemon_direct_date_time_top_release_l.jpg'),
(NULL,'image/index/switch_pokemon_letsgo_l.jpg'),
(NULL,'image/index/pc-thumb-1280x458-13149.png'),
(NULL,'image/index/1280x458_1-thumb-1280x458-13115.jpg');

#主页下方图片
INSERT INTO index_img VALUES
(NULL,"image/index/taikenban_tc-thumb-624xauto-13153.jpg","游戏","【體驗版】『精靈寶可夢 Let's Go！皮卡丘／Let's Go！伊布』在Nintendo eShop開始發佈！"),
(NULL,"image/index/main_pikavee_20181221-thumb-624xauto-13059.png","游戏","『精靈寶可夢 Let's Go！皮卡丘／Let's Go！伊布』更新資料（Ver.1.0.1）發佈公告"),
(NULL,"image/index/6ea338193e15079a168bc8efdc49a06a051b7d8d-thumb-320x320-13123.png","电视动画系列","免費的節奏遊戲「精靈寶可夢點點名 節奏遊戯」登場囉！"),
(NULL,"image/index/e94ec211431681a4d46995ea79a7c7970158e209-thumb-624xauto-13069.jpg","游戏","任天堂官方『精靈寶可夢 Let's Go！皮卡丘/Let's Go！伊布』周邊商品發售中！"),
(NULL,"image/index/pokemon KV_re3-thumb-autox468-13058.jpg","商品","Pokémon Pikachu 蛋榚於香港東海堂獨家首推"),
(NULL,"image/index/8f1c4b7799e3bcab0bed1757b7e24926cf545c47-thumb-624xauto-13045.jpg","活动","精靈寶可夢精美首飾登陸香港"),
(NULL,"image/index/23795138_932725500216215_4805562898770722462_n-thumb-320x320-13014.jpg","活动","Pokémon Hub即將於 12/8 在 Langham place 朗豪坊重新開幕！"),
(NULL,"image/index/970b531f52a2debb8c30ace6233781936cf0f1b4-thumb-624xauto-12983.png","游戏","精靈寶可夢3D八達通配飾　12月5日發售！");

#gs中间滚动图片处
INSERT INTO gs_goodimg VALUES
(NULL,"image/shopping/81eJlNQ1UCL._AC_SX215_.jpg"),
(NULL,"image/shopping/81ENz7ZUNAL._AC_SL1500_.jpg"),
(NULL,"image/shopping/71JVSNlYlAL._AC_SL1500_.jpg"),
(NULL,"image/shopping/71i-FEvx8-L._AC_SL1500_.jpg"),
(NULL,"image/shopping/71z3PfdOccL._AC_SL1500_.jpg"),
(NULL,"image/shopping/81yY2Qc37vL._AC_SL1500_.jpg"),
(NULL,"image/shopping/71AvBMrCBNL._AC_SL1500_.jpg"),
(NULL,"image/shopping/8107N2PWLNL._AC_SL1500_.jpg"),
(NULL,"image/shopping/712zw2NuevL._AC_SL1500_.jpg"),
(NULL,"image/shopping/71th7ylT9qL._AC_SL1500_.jpg"),
(NULL,"image/shopping/71AUDMCUQeL._AC_SL1500_.jpg"),
(NULL,"image/shopping/712q5cRh59L._AC_SL1500_.jpg"),
(NULL,"image/shopping/71evRLVhbcL._AC_SL1500_.jpg"),
(NULL,"image/shopping/61mWRNlb4zL._AC_SL1500_.jpg");

#gs下方滚动图片处
INSERT INTO gs_bottomli VALUES
(NULL,"image/game/20190312195528.png",'Pikachu, who appears in "Detective Detective Pikachu", speaks human language and hate mouths and beats !? It is a self-proclaimed "detective" whose head is sharp!',"4.3","$45.11"),
(NULL,"image/game/pokemon_blue.png",'Pokémon Blue Version is now available for systems in the Nintendo 3DS family! 　 Game Boy software Pokémon Blue Version is the first ever Pokémon game.',"5","$12.14"),
(NULL,"image/game/Pokémon Sapphire.png",'Pokémon Sapphire features new elements such as Primal Reversion as well as a story that will unravel the mysteries of Mega Evolution.',"4.7","$28.54"),
(NULL,"image/game/pokemon_gold.jpg",'Pokémon Gold Version is now available for systems in the Nintendo 3DS family!',"2.7","$18.35"),
(NULL,"image/game/20190312200352.png",'Pokemon Emerald is a sister game to Pokémon Ruby and Sapphire, and is the fifth and final Generation III core series game. Like its predecessor, Pokémon Crystal, it added many features not present in the earlier paired versions.',"4.2","$26.31"),
(NULL,"image/game/Pokémon Crystal.png",'Pokémon Crystal - 3DS [Digital Code]',"1.8","$9.9"),
(NULL,"image/game/Pokémon Ruby.png",'Pokémon Ruby features new elements such as Primal Reversion as well as a story that will unravel the mysteries of Mega Evolution.',"5","$28.11"),
(NULL,"image/game/20190312200109.png",'Pokémon Yellow Version: Special Pikachu Edition is now available for systems in the Nintendo 3DS family! 　 Pikachu follows the main character around throughout the journey. ',"3.5","$9.21"),
(NULL,"image/game/pokemon_green.png",'Pokémon Leafgreen Version, this is the classic old original version that Pokémon Leafgreen was based off of which is called Pocket Monsters Green version.',"2.2","$12.32"),
(NULL,"image/game/612dwaXgAVL._AC_SL1200_.jpg",'With new story additions and features this earns Pokémon Ultra Sun and Pokémon Ultra Moon the name "Ultra!" Another adventure is about to begin!',"4.9","$39.56");

#用户拥有的商品
INSERT INTO user_own VALUES
("dingding","PokemonPikachu");