Create table UserAcount(
 ID int IDENTITY(1,1)primary key,
 UserName nvarchar(250) not null,
 Password nvarchar(250) not null,
 Status nvarchar(250) not null,
 )
 Create table Product(
 ID int IDENTITY(1,1)primary key,
 Category_ID int,
 Name nvarchar(250) not null,
 UnitCost decimal(18,1) not null,
 Quantity nvarchar(50) not null,
 Image nvarchar(500) not null,
 Description nvarchar(500),
 Status nvarchar(250) not null,
 )
 Create table Category(
 ID int IDENTITY(1,1) primary key,
 Name nvarchar(250) not null,
 Description nvarchar(500),
 )
  
 INSERT INTO UserAcount(UserName,Password,Status)
	VALUES ('AnhNguyen','123456789','Activities'),
			('QuyTho','123456789','Blocked'),
			('HoangLam','123456789','Activities'),
			('LeHuy','123456789','Activities'),
			('MinhDat','123456789','Activities'),
			('TranChi','123456789','Activities'),
			('QuangQui','123456789','Blocked'),
			('ThanhThoai','123456789','Blocked'),
			 ('DatBui','123456789','Activities'),
			 ('AnhNguyen1','123456789','Blocked');
----------------------------------------------------------
 INSERT INTO Category(Name,Description)
	VALUES ('Cafe',N'H??ng v? cafe quê h??ng'),
			('Cafe gói-Cafe u?ng li?n',N'Cafe ti?n l?i'),
			('Ðá Xay-Matcha',N'H??ng v? t??i m?i'),
			('Bánh-Snack',N'?? ?n v?t');

INSERT INTO Product(Category_ID,Name,UnitCost,Quantity,Image,Description,Status)
	VALUES (1,'CÀ PHÊ ?EN',25000,20,'2.jpg',N'th?m béo c?a b?t s?a và s?a t??i, v? ??ng thanh thoát','activities'),
	(1,'CÀ PHÊ S?A',25000,20,'3.jpg',N'th?m béo c?a b?t s?a và s?a t??i, v? ??ng thanh thoát','activities'),
	(1,'CAPPUCCINO',25000,20,'4.jpg',N'th?m béo c?a b?t s?a và s?a t??i, v? ??ng thanh thoát','activities'),
	(1,'CARAMEL MACCHIATO',25000,20,'5.jpg',N'th?m béo c?a b?t s?a và s?a t??i, v? ??ng thanh thoát','activities'),
	(1,'COLD BREW PHÚC B?N T?',25000,20,'6.jpg',N'th?m béo c?a b?t s?a và s?a t??i, v? ??ng thanh thoát','activities'),
	(2,'COLD BREW S?A T??I',25000,20,'7.jpg',N'th?m béo c?a b?t s?a và s?a t??i, v? ??ng thanh thoát','activities'),
	(2,'Combo 4 Lon Cà Phê S?a ?á',25000,20,'8.jpg',N'th?m béo c?a b?t s?a và s?a t??i, v? ??ng thanh thoát','activities'),
	(2,'Cà Phê Rich Finish',25000,20,'9.jpg',N'th?m béo c?a b?t s?a và s?a t??i, v? ??ng thanh thoát','activities'),
	(2,'CÀ PHÊ PHIN',25000,20,'10.jpg',N'th?m béo c?a b?t s?a và s?a t??i, v? ??ng thanh thoát','activities'),
	(3,'CÀ PHÊ ARABICA',25000,20,'2.jpg',N'th?m béo c?a b?t s?a và s?a t??i, v? ??ng thanh thoát','activities'),
	(3,'TRÀ H?T SEN',25000,20,'3.jpg',N'th?m béo c?a b?t s?a và s?a t??i, v? ??ng thanh thoát','activities'),
	(3,'TRÀ ?ÀO CAM S?',25000,20,'4.jpg',N'th?m béo c?a b?t s?a và s?a t??i, v? ??ng thanh thoát','activities'),
	(4,'TRÀ PHÚC B?N T?',25000,20,'5.jpg',N'th?m béo c?a b?t s?a và s?a t??i, v? ??ng thanh thoát','activities'),
	(4,'Bánh mì que',25000,20,'6.jpg',N'th?m béo c?a b?t s?a và s?a t??i, v? ??ng thanh thoát','activities'),
	(4,'cam t??i s?y d?o',25000,20,'7.jpg',N'th?m béo c?a b?t s?a và s?a t??i, v? ??ng thanh thoát','activities'),
	(4,'i?u vàng m?t ong',25000,20,'2.jpg',N'th?m béo c?a b?t s?a và s?a t??i, v? ??ng thanh thoát','activities');
			