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
	VALUES ('Cafe',N'H??ng v? cafe qu� h??ng'),
			('Cafe g�i-Cafe u?ng li?n',N'Cafe ti?n l?i'),
			('�� Xay-Matcha',N'H??ng v? t??i m?i'),
			('B�nh-Snack',N'?? ?n v?t');

INSERT INTO Product(Category_ID,Name,UnitCost,Quantity,Image,Description,Status)
	VALUES (1,'C� PH� ?EN',25000,20,'2.jpg',N'th?m b�o c?a b?t s?a v� s?a t??i, v? ??ng thanh tho�t','activities'),
	(1,'C� PH� S?A',25000,20,'3.jpg',N'th?m b�o c?a b?t s?a v� s?a t??i, v? ??ng thanh tho�t','activities'),
	(1,'CAPPUCCINO',25000,20,'4.jpg',N'th?m b�o c?a b?t s?a v� s?a t??i, v? ??ng thanh tho�t','activities'),
	(1,'CARAMEL MACCHIATO',25000,20,'5.jpg',N'th?m b�o c?a b?t s?a v� s?a t??i, v? ??ng thanh tho�t','activities'),
	(1,'COLD BREW PH�C B?N T?',25000,20,'6.jpg',N'th?m b�o c?a b?t s?a v� s?a t??i, v? ??ng thanh tho�t','activities'),
	(2,'COLD BREW S?A T??I',25000,20,'7.jpg',N'th?m b�o c?a b?t s?a v� s?a t??i, v? ??ng thanh tho�t','activities'),
	(2,'Combo 4 Lon C� Ph� S?a ?�',25000,20,'8.jpg',N'th?m b�o c?a b?t s?a v� s?a t??i, v? ??ng thanh tho�t','activities'),
	(2,'C� Ph� Rich Finish',25000,20,'9.jpg',N'th?m b�o c?a b?t s?a v� s?a t??i, v? ??ng thanh tho�t','activities'),
	(2,'C� PH� PHIN',25000,20,'10.jpg',N'th?m b�o c?a b?t s?a v� s?a t??i, v? ??ng thanh tho�t','activities'),
	(3,'C� PH� ARABICA',25000,20,'2.jpg',N'th?m b�o c?a b?t s?a v� s?a t??i, v? ??ng thanh tho�t','activities'),
	(3,'TR� H?T SEN',25000,20,'3.jpg',N'th?m b�o c?a b?t s?a v� s?a t??i, v? ??ng thanh tho�t','activities'),
	(3,'TR� ?�O CAM S?',25000,20,'4.jpg',N'th?m b�o c?a b?t s?a v� s?a t??i, v? ??ng thanh tho�t','activities'),
	(4,'TR� PH�C B?N T?',25000,20,'5.jpg',N'th?m b�o c?a b?t s?a v� s?a t??i, v? ??ng thanh tho�t','activities'),
	(4,'B�nh m� que',25000,20,'6.jpg',N'th?m b�o c?a b?t s?a v� s?a t??i, v? ??ng thanh tho�t','activities'),
	(4,'cam t??i s?y d?o',25000,20,'7.jpg',N'th?m b�o c?a b?t s?a v� s?a t??i, v? ??ng thanh tho�t','activities'),
	(4,'i?u v�ng m?t ong',25000,20,'2.jpg',N'th?m b�o c?a b?t s?a v� s?a t??i, v? ??ng thanh tho�t','activities');
			