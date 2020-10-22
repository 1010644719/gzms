SET NAMES UTF8;
DROP DATABASE IF EXISTS  tour;
CREATE DATABASE tour CHARSET=UTF8;
USE tour;

CREATE TABLE tour_xiangqing(
	uid  INT(10)  NOT NULL,
	title VARCHAR(50) NOT NULL,
	address VARCHAR(50) NOT NULL,
	details VARCHAR(255) DEFAULT NULL,
	image VARCHAR(50) DEFAULT NULL,
	lng DECIMAL(10,6),
	lat DECIMAL(10,6)
);

INSERT INTO tour_xiangqing(uid,title,address,details,image,lng,lat) VALUES(1,'轻奢双露台两室一厅两卫长城观景Loft',"古北水镇","2室1厅Loft复式，合理舒适温馨的空间欢迎你入住～，步行范围内有各种便利设施，便利店、各类餐馆方便用餐，公园供您散步休闲，房源设施齐全，洗漱用品齐全，不要你大包小包，不想吃餐厅点外卖的时候可以自己做饭，材料齐全，房源可以观赏风景，房源有洗衣机，可以洗衣服，可在沙发上恣意葛优瘫，有冰箱能让你享受冰西瓜和冰饮料爽歪歪，小区环境好，安静、安全，方便去周边景点游玩，如有其他问题欢迎随时向我咨询，我会为你提供更多的旅行建议，并将尽量满足你入住期间的需求，更多房源请查看房东主页供你选择","/header1.jpg",117.277314,40.654264);




