create table video(
idVideo int primary key,
titulo varchar (100),
repro int,
url varchar (100));

create procedure sp_video_insertar
@idVideo int,
@titulo varchar (100),
@repro int,
@url varchar (100)
AS
BEGIN 
INSERT INTO video VALUES (@idVideo,@titulo,@repro,@url)
END

exec sp_video_insertar 1,'Konosuba has a dub',520000,'https://www.youtube.com/embed/uqNnvbGTwgg';
exec sp_video_insertar 2,'Ultra smashed burgers',1200000,'https://www.youtube.com/embed/-EAQvw0Ml5g';
exec sp_video_insertar 3,'De Honte et de Pardon',40000,'https://www.youtube.com/embed/te1NF5njs1k';
exec sp_video_insertar 4,'Joji - Slow Dancing in the dark cover',6500000,'https://www.youtube.com/embed/GyFMeUqWXh8';
exec sp_video_insertar 5,'Joji - Slow Dancing in the dark cover',6500000,'https://www.youtube.com/embed/GyFMeUqWXh8';
select * from video;

create procedure sp_video_eliminar
@idVideo int
AS
BEGIN 
DELETE FROM video WHERE idVideo=@idVideo
END

execute sp_video_eliminar 5;

create procedure sp_video_editar
@idVideo int,
@titulo varchar (100),
@repro int,
@url varchar (100)
AS
BEGIN 
UPDATE video SET idVideo=@idVideo,titulo=@titulo,repro=@repro,url=@url
END