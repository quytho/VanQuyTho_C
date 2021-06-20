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
	VALUES ('Cafe',N'Hương vị cafe quê hương'),
			('Cafe gói-Cafe u?ng li?n',N'Cafe tiện lợi'),
			('Ðá Xay-Matcha',N'Hương vị tươi mới'),
			('Bánh-Snack',N'Đồ ăn vặt');

INSERT INTO Product(Category_ID,Name,UnitCost,Quantity,Image,Description,Status)
	VALUES (1,'CÀ PHÊ ĐEN',25000,20,'2.jpg',N'thơm béo của bọt sữa và sữa tươi, vị đắng thanh thoát','activities'),
	(1,'CÀ PHÊ SỮA',25000,20,'3.jpg',N'thơm béo của bọt sữa và sữa tươi, vị đắng thanh thoát','activities'),
	(1,'CAPPUCCINO',25000,20,'4.jpg',N'thơm béo của bọt sữa và sữa tươi, vị đắng thanh thoát','activities'),
	(1,'CARAMEL MACCHIATO',25000,20,'5.jpg',N'thơm béo của bọt sữa và sữa tươi, vị đắng thanh thoát','activities'),
	(1,'COLD BREW PHÚC BỒN TỬ',25000,20,'6.jpg',N'thơm béo của bọt sữa và sữa tươi, vị đắng thanh thoát','activities'),
	(2,'COLD BREW SỮA TƯƠI',25000,20,'7.jpg',N'thơm béo của bọt sữa và sữa tươi, vị đắng thanh thoát','activities'),
	(2,'Combo 4 Lon Cà Phê Sữa Đá',25000,20,'8.jpg',N'thơm béo của bọt sữa và sữa tươi, vị đắng thanh thoát','activities'),
	(2,'Cà Phê Rich Finish',25000,20,'9.jpg',N'thơm béo của bọt sữa và sữa tươi, vị đắng thanh thoát','activities'),
	(2,'CÀ PHÊ PHIN',25000,20,'10.jpg',N'thơm béo của bọt sữa và sữa tươi, vị đắng thanh thoát','activities'),
	(3,'CÀ PHÊ ARABICA',25000,20,'2.jpg',N'thơm béo của bọt sữa và sữa tươi, vị đắng thanh thoát','activities'),
	(3,'TRÀ HẠT SEN',25000,20,'3.jpg',N'thơm béo của bọt sữa và sữa tươi, vị đắng thanh thoát','activities'),
	(3,'TRÀ ĐÀO CAM SẢ',25000,20,'4.jpg',N'thơm béo của bọt sữa và sữa tươi, vị đắng thanh thoát','activities'),
	(4,'TRÀ PHÚC BỒN TỬ',25000,20,'5.jpg',N'thơm béo của bọt sữa và sữa tươi, vị đắng thanh thoát','activities'),
	(4,'Bánh mì que',25000,20,'6.jpg',N'thơm béo của bọt sữa và sữa tươi, vị đắng thanh thoát','activities'),
	(4,'cam tươi sấy dẻo',25000,20,'7.jpg',N'thơm béo của bọt sữa và sữa tươi, vị đắng thanh thoát','activities'),
	(4,'iều vàng mật ong',25000,20,'2.jpg',N'thơm béo của bọt sữa và sữa tươi, vị đắng thanh thoát','activities');
			