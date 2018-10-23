

create database August;

use August;


-- 用户组
create table User(
	UserID nvarchar(10),						-- 用户组ID
	UserName nvarchar(10) not null,		-- 用户组名称
	UserNotes nvarchar(50),					-- 用户组备注
	primary key(UserID)						-- 给 UserID 添加主键
);

insert into User values
('1','xfz',null),
('2','gly',null);

select * from User;




-- 消费者lagou
create table Client(
	ClientID nvarchar(10),		# 消费者ID
	ClientName nvarchar(10),	# 名字
	ClientSex int,					# 性别
	UserID nvarchar(10),			# 用户组ID
	ClientPwd nvarchar(10),		# 密码
	ClientTEL nvarchar(20),		# 电话
	ClientDate datetime,			# 出生日期
	ClientSite nvarchar(50),	# 地址
	ClientNotes nvarchar(50),	# 消费者备注
	primary key(ClientID),
	foreign key(UserID) references User(UserID)
);

insert into Client values
('1','yt',1,'1','111','17849521785','1998-01-05',null,null),
('2','wh',2,'1','222','17849621785','1998-02-05',null,null),
('3','zh',3,'1','333','17849539785','1998-03-05',null,null);

select * from Client;



-- 管理员
create table Admin(
	AdminID nvarchar(10),			-- 管理员ID
	AdminName nvarchar(10),			-- 管理员姓名
	AdminSex int,						-- 管理员性别
	UserID nvarchar(10),				-- 用户组ID
	AdminType int,						-- 管理员状态
	AdminChina nvarchar(10),		-- 管理员所在城市
	AdminSite nvarchar(10),			-- 管理员地址
	AdminPwd nvarchar(10),			-- 管理员密码
	AdminTEL nvarchar(20),			-- 管理员电话
	AdminNotes nvarchar(50),		-- 管理员备注
	Primary key(AdminID),
	foreign key(UserID) references User(UserID)
);

insert into Admin values
('1','wxz',1,'2',1,null,null,'123','12345678906',null),
('2','tmz',2,'2',0,null,null,'456','12364678906',null),
('3','yxz',1,'2',1,null,null,'789','12345908906',null);

select * from Admin;




-- 订单
create table Order_List(
	OrderID nvarchar(10),			-- 订单ID
	OrderType int,						-- 订单类型
	OrderNumber nvarchar(10),		-- 订单编号
	OrderName nvarchar(20),			-- 订单名称
	OrderKG int,						-- 订单重量
	OrderMail nvarchar(20),			-- 邮寄人
	OrderMailSite nvarchar(50),	-- 邮寄地址
	OrderProfile nvarchar(50),		-- 收货地址
	OrderStatus int,					-- 订单状态
	OrderPostPhone nvarchar(20),	--	邮寄人电话
	OrderCNEE nvarchar(20),			-- 收货人
	OrderPhone nvarchar(20),		-- 收货人电话
	OrderStart nvarchar(10),		-- 起始城市
	OrderMiddle nvarchar(10),		-- 中点城市
	OrderTerminus nvarchar(10),	-- 终点城市
	OrderShip decimal(18,0),		-- 运送价格
	OrderDC decimal(18,0),			-- 配送价格
	OrderMove decimal(18,0),		-- 运输价格
	OrderSum nvarchar(10),			-- 总价格
	OrderCar nvarchar(10),			-- 车辆
	OrderNotes nvarchar(50),		-- 备注
	Primary key(OrderID)
);

insert into Order_List values
('1',1,'147','a',10,'张三','广东省珠海市斗门区白蕉路','广东省湛江市遂溪县',1,'333','zs','123','珠海','茂名','湛江',10,5,10,'25','奥迪',null),
('2',0,'148','b',20,'李四','广东省珠海市斗门区白蕉路','广东省湛江市遂溪县',1,'333','zs','123','珠海','茂名','湛江',10,5,10,'25','奥迪',null),
('3',1,'149','c',30,'王五','广东省珠海市斗门区白蕉路','广东省湛江市遂溪县',0,'333','zs','123','珠海','茂名','湛江',10,5,10,'25','奥迪',null);

select * from Order_List;




-- 省份
create table Province(
	ProvinceID nvarchar(10),		-- 省份ID
	ProvinceName nvarchar(10),		-- 省份名称
	Primary key(ProvinceID)
);

insert into Province values
('1','广东'),
('2','广西'),
('3','江西');

select * from Province;




-- 城市
create table City(
	CityID nvarchar(10),			-- 城市ID
	CityName nvarchar(10),		-- 城市名称
	ProvinceID nvarchar(10),	-- 省份ID
	Primary key(CityID),
	foreign key(ProvinceID) references Province(ProvinceID)
);

insert into City values
('1','珠海','1'),
('2','雷州','1'),
('3','南宁','2');

select * from City;




-- 城市区域
create table Area(
	AreaID nvarchar(10),			-- 城市区域ID
	AreaName nvarchar(10),		-- 城市区域名称
	CityID nvarchar(10),			-- 城市ID
	Primary key (AreaID),
	foreign key (CityID) references City(CityID)
);

insert into Area values
('1','斗门区','1'),
('2','东里','2');

select * from Area;




-- 路线
create table Path(
	PathID nvarchar(10),				-- 路线ID
	PathName nvarchar(10),			-- 路线名称
	OrderID nvarchar(10),			-- 订单ID
	ProvinceID nvarchar(10),		-- 省份ID
	PathPrice decimal(18,0),		-- 运输价格
	PathNotes nvarchar(50),			-- 备注
	Primary key (PathID),
	foreign key (OrderID) references Order_List(OrderID),
	foreign key (ProvinceID) references Province(ProvinceID)
);

insert into Path values
('1','a','1','1',10,null),
('2','b','2','2',10,null),
('3','c','3','3',10,null);

select * from Path;




-- 车辆
create table Lorry(
	LorryID nvarchar(10),		-- 车辆ID
	LorryModel nvarchar(10),	-- 车辆型号
	LorryCO nvarchar(20),		-- 车辆产地
	PathID nvarchar(10),			-- 路线ID
	LorryYield datetime,			-- 生成日期
	LorryBuy datetime,			-- 购买日期
	yieldNotes nvarchar(50),	-- 备注
	Primary key (LorryID),
	foreign key (PathID) references Path(PathID)	
);

insert into Lorry values
('1','C888','未知','1','2018-10-21','2015-01-01',null);
SELECT *
FROM Lorry;




-- 交接单
create table Connect(
	ConnectID nvarchar(10),				-- 交接单ID
	ConnectStart nvarchar(10),			-- 起点城市
	ConnectMiddle nvarchar(10),		-- 中点城市
	ConnectTerminus nvarchar(10),		-- 终点城市
	ConnectType int,						-- 状态
	ConnectDate datetime,				-- 生成日期
	ConnectNotes nvarchar(50),			-- 备注
	Primary key (ConnectID)
);

insert into Connect values
('1','珠海','茂名','湛江',1,'2018-10-21',null);

select * from Connect;






-- 配送点
create table Station(
	StationID nvarchar(10),			-- 配送点ID
	StationName nvarchar(10),		-- 配送点名称
	ProvinceID nvarchar(10),		-- 省份ID
	CityID nvarchar(10),				-- 城市ID
	AdminID nvarchar(10),			-- 管理员ID
	StationPhone nvarchar(20),		-- 联系电话
	StationSite nvarchar(50),		-- 地址
	StationNotes nvarchar(50),		-- 备注
	Primary key (StationID),
	foreign key (ProvinceID) references Province(ProvinceID),
	foreign key (CityID) references City(CityID),
	foreign key (AdminID) references Admin(AdminID)
);

insert into Station values
('1','未知','1','1','2','888','湛江',null);

select * from Station;





-- drop table Scope;


-- 配送范围
create table Scope(
	ScopeID nvarchar(10),			-- ID
	ScopeName nvarchar(10),			-- 配送区域名称
	ScopePrice decimal(18,0),		-- 配送价格
	StationID nvarchar(10),			-- 配送点ID
	ScopeNotes nvarchar(50),		-- 备注
	Primary key (ScopeID),
	foreign key(StationID) references Station(StationID)
);

insert into Scope values
('1','珠海',10,'1',null);

select * from Scope;




