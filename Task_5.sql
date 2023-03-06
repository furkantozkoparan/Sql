--Test veritabanınızda employee isimli sütun bilgileri id(INTEGER), name VARCHAR(50), birthday DATE, email VARCHAR(100) olan bir tablo oluşturalım.
Creat table employee (
  id serial primary key,
  name varchar(50) not null,
  bithday date,
  email varchar(100)
  );
  
--Oluşturduğumuz employee tablosuna 'Mockaroo' servisini kullanarak 50 adet veri ekleyelim.
insert into employee (name, birthday, email)
values 
	('Aubrey Langcaster', '1995-11-08', 'alangcaster4@list-manage.com'),
	('Isiahi Pagitt', '1996-03-09', 'ipagitt5@microsoft.com'),
	('Cristie Dive', '1999-08-14', 'cdive6@constantcontact.com'),
	('Kat Bolderson', '1990-07-17', 'kbolderson7@bbb.org'),
	('Patton Stilgoe', null, null),
	('Klement Gouldstraw', '1996-12-04', 'kgouldstraw9@de.vu'),
	('Keeley Drawmer', '1998-11-12', 'kdrawmera@usatoday.com'),
	('Joshuah Arenson', '1991-11-19', 'jarensonb@ihg.com'),
	('Lucius Macro', '1990-02-19', 'lmacroc@miitbeian.gov.cn'),
	('Vinita Fausset', '1999-06-13', 'vfaussetd@google.pl'),
	('Noni Owbrick', '1990-04-30', 'nowbricke@cam.ac.uk'),
	('Carmelle Snell', null, null),
	('Welby Ballach', '1991-03-06', 'wballachg@altervista.org'),
	('Sylvia Bison', '1992-02-10', 'sbisonh@icq.com'),
	('Carri Surman', '1995-01-03', 'csurmani@wikimedia.org'),
	('Suzette O''Nions', '1996-10-03', 'sonionsj@va.gov'),
	('Lianna Hadaway', '1991-07-28', 'lhadawayk@ifeng.com'),
	('Renaud Daouse', '1997-09-26', 'rdaousel@icio.us'),
	('Aigneis Pittet', '1991-06-18', 'apittetm@123-reg.co.uk'),
	('Jan Bortolomei', null, null),
	('Alphard Piggford', '1998-06-18', 'apiggfordo@disqus.com'),
	('Harley Garwood', '1992-06-07', 'hgarwoodp@ocn.ne.jp'),
	('Rosalie Daviddi', '1998-12-21', 'rdaviddiq@ning.com'),
	('Nefen Annett', '1994-01-13', 'nannettr@wordpress.org'),
	('Evin Radborn', '1992-09-25', 'eradborns@jalbum.net'),
	('Ram De Dantesie', '1999-04-13', 'rdet@statcounter.com'),
	('Lorry Antecki', '1998-08-25', 'lanteckiu@de.vu'),
	('Tabbitha Marsay', '1996-09-14', 'tmarsayv@sourceforge.net'),
	('Harold Pillman', '1993-04-04', 'hpillmanw@dion.ne.jp'),
	('Lettie Cheney', '1996-04-08', 'lcheneyx@ning.com'),
	('Pavla Matignon', '1996-03-22', 'pmatignony@uol.com.br'),
	('Reggis Forre', '1996-01-16', 'rforrez@wufoo.com'),
	('Augusta Ferrieres', '1999-07-28', 'aferrieres10@opera.com'),
	('Yolanda McAdam', '1997-04-14', 'ymcadam11@webnode.com'),
	('Nerty Tocknell', '1995-03-21', 'ntocknell12@biglobe.ne.jp'),
	('Clay Heckney', '1992-03-31', 'checkney13@scientificamerican.com'),
	('Davey Peasegood', '1995-01-12', 'dpeasegood14@weibo.com'),
	('Ree MacFadzean', '1999-01-28', 'rmacfadzean15@geocities.com'),
	('Erwin Samms', '1994-09-08', 'esamms16@prlog.org'),
	('Jessamine Spruce', null, null),
	('Cynthie Auletta', '1997-10-24', 'cauletta18@themeforest.net'),
	('Cooper Loy', null, null),
	('Pearce Riseborough', '1999-06-04', 'priseborough1a@geocities.jp'),
	('Chandler Campa', '1999-08-12', 'ccampa1b@ow.ly'),
	('Sherri Dionisi', '1998-05-05', 'sdionisi1c@seesaa.net');
  
--Sütunların her birine göre diğer sütunları güncelleme UPDATE işlemi yapalım.
Update employee
set name = 'Furkan Tozkoparan',
birthday = '2000-11-02'
where id = 25
returning *;
  
--Sütunların her birine göre ilgili satırı silecek DELETE işlemi yapalım.
Delete from employee  
where id = 8
returning -*;
