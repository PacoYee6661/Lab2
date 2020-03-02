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

exec sp_video_insertar 1,'video',1,'youtube.com'
select * from video;