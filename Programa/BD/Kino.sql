set ansi_nulls on
go
set ansi_padding on
go
set quoted_identifier on
go
create database [Kino]
go
use Kino
go

/*======================================== Справочные =========================================================*/
CREATE TABLE [dbo].[News]
(
	ID_news int identity(1,1) not null,
    news_title varchar(max) null,
    news_content varchar(max) null,
    news_publicationDate date null,
	news_image varchar(max) null,

	constraint [PK_ID_news] primary key clustered
	([ID_news] ASC) on [PRIMARY],	
);
INSERT INTO News(news_title,news_content,news_publicationDate,news_image) 
VALUES 
('Трейлер и постер «Лагерь на свежем воздухе 3»','Официальный твиттер аниме-сериала «Лагерь на свежем воздухе» представил новый постер и трейлер ко продолжению сериала. Премьера состоится 4 апреля этого года. За производство отвечает студия 8bit.','2024-03-27','https://youtu.be/fx5tfPNvubo'),
('Тизер и постер «Добро пожаловать в Японию, госпожа эльф!»','Представили первый постер и тизер к аниме-сериалу «Добро пожаловать в Японию, госпожа эльф!» Дата выхода пока неизвестна. Больше подробностей сообщат позже.','2024-03-27','https://youtu.be/9dkLQ1wFeA4'),
('Тизер и подробности «Волшебница и злой офицер»','Официальный твиттер аниме-сериала «Волшебница и злой офицер» представил первый тизер. Премьера состоится в июле этого года. За производство отвечает студия Bones.','2024-03-27','https://youtu.be/tuoIXiLLmMU')
go

CREATE TABLE [dbo].[Collections]
(
	ID_collections int identity(1,1) not null,
    collections_title varchar(max) null,

	constraint [PK_ID_collections] primary key clustered
	([ID_collections] ASC) on [PRIMARY],	
);


/*======================================== МБ C ключами =========================================================*/

create table [dbo].[Users]
(
	ID_users int identity(1,1) not null,
	users_login varchar(50) not null,
	users_password varchar(64) not null,
	users_name varchar(50) null,
	users_middle_name varchar(50) null,
	users_surname varchar(50) null,
	users_email varchar(max) null,
	users_role varchar(50) not null,
	users_title varchar (50) null, 
	users_birth date null,
	users_avatar varchar(max) null,


	constraint [PK_ID_users] primary key clustered
	([ID_users] ASC) on [PRIMARY],	

)
go
INSERT INTO Users(users_login,users_password,users_name,users_surname,users_middle_name,users_email,users_role,users_title,users_birth,users_avatar) 
VALUES 
('Admin123!','Admin123!','Егор','Симонов','Владиславович','isip_e.v.simonov@mpt.ru','admin','Best Moderation','2024-03-27','https://desu.shikimori.one/system/users/x160/978855.png?1689188213')
go
('be blessed','Client123!','Егор','Симонов','Владиславович','isip_e.v.simonov@mpt.ru','client','Best Moderation','2024-03-27','https://desu.shikimori.one/system/users/x160/978855.png?1689188213'),
('TarotWho','Client1!','Миша','Пупкин','Михайлович','Misha_email@mpt.ru','client','Best user','2024-03-27','https://desu.shikimori.one/system/users/x160/1442454.png?1710363732'),
('aals','Client2!','Даша','Пупкина','Денисовна','asdasd_email@mpt.ru','client','Best user','2024-03-27','https://desu.shikimori.one/system/users/x160/1442452.png?1710363703'),
('mylittlehydropony','Client3!','Владимир','Сокин','Владимирович','dwfisha_email@mpt.ru','client','Best user','2024-03-27','https://desu.shikimori.one/system/users/x160/1442450.png?1710363161'),
('mqnotly','Client4!','Надежда','Лебедева','Михайловна','isip_cartela_email@mpt.ru','client','Best user','2024-03-27','https://desu.shikimori.one/system/users/x160/1442429.png?1710359584'),
('Darya Lysanova','Client5!','София','Скворцова','Михайлович','Mishel_email@mpt.ru','client','Best user','2024-03-27','https://desu.shikimori.one/system/users/x160/1442430.png?1710359552'),
('xikkacdox','Client6!','Роман','Коротков','Глебович','Ssfisha_email@mpt.ru','client','Best user','2024-03-27','https://desu.shikimori.one/system/users/x160/1442412.png?1710357419'),
('Egor Bespalov3','Client7!','Алексей','Трофимов','Семёнович','emailema@mpt.ru','client','Best user','2024-03-27','https://desu.shikimori.one/system/users/x160/1442403.png?1710356419'),
('Газон_Ghoul','Client8!','Дмитрий','Пупкин','Эрикович','isip_e.dds@mpt.ru','client','Best user','2024-03-27','https://desu.shikimori.one/system/users/x160/1442406.png?1710356784')
go
select * from [Users]
delete from Users
create table [dbo].[Cinema]
(
	ID_cinema int identity(1,1) not null,
	
	cinema_name varchar(max) null,
	cinema_type varchar(50) null,
	cinema_episode int null,
	cinema_episodeTime int null,
	cinema_opisanie varchar(max) null,
	cinema_comments varchar(max) null,
	cinema_status varchar(50) null,
	cinema_genre varchar(max) null,
	cinema_ageRG varchar(50) null,
	cinema_raiting float null,
	cinema_ocenka float null,
	cinema_studio varchar(max) null,
	cinema_secondName varchar(max) null,
	cinema_image varchar(max) null,


	constraint [PK_ID_cinema] primary key clustered
	([ID_cinema] ASC) on [PRIMARY],	
	)
go
INSERT INTO Cinema(cinema_name,cinema_type,cinema_episode,cinema_episodeTime,cinema_opisanie,cinema_comments,cinema_status,cinema_genre,cinema_ageRG,cinema_raiting,cinema_ocenka,cinema_studio,cinema_secondName,cinema_image) 
VALUES 
('Naruto','TV series','220','24','Naruto Uzumaki, a mischievous ninja, dreams of becoming the Hokage of his village.','Great action scenes', 'Ongoing','Shonen','13+','4.5','9','Studio Pierrot','ナルト','https://desu.shikimori.one/uploads/poster/animes/20/main-5f7bc68ceac891e0fd93fb72c07bd1f3.webp'),
('Death Note','TV series','37','24','A high school student discovers a mysterious notebook that allows him to kill anyone whose name he writes in it.','Mind games and suspense', 'Completed','Psychological, Thriller','17+','4.9','9.8','Madhouse','デスノート','https://desu.shikimori.one/uploads/poster/animes/1535/main-6cf8bcadd153679da9c27e299be0a268.webp'),
('One Piece','TV series','1020','24','A pirate captain leads his crew as they search for the ultimate treasure, the One Piece.','Epic adventures and humor', 'Ongoing','Shonen','13+','4.7','9.3','Toei Animation','ワンピース','https://desu.shikimori.one/uploads/poster/animes/21/main-20e20e4183f9fa248e09c279da6df387.webp'),
('Fullmetal Alchemist: Brotherhood','TV series','64','24','Two brothers use alchemy to search for the Philosopher Stone and restore their bodies.','Deep themes and complex characters', 'Completed','Fantasy, Adventure','15+','4.9','9.8','Bones','鋼の錬金術師','https://desu.shikimori.one/uploads/poster/animes/5114/main-eb70ba6e4e8cd164a2f59fc61761b163.webp'),
('Tokyo Ghoul','TV series','24','24','A college student becomes part ghoul and must navigate a world where humans hunt his kind.','Dark and intense', 'Completed','Horror, Supernatural','17+','4.6','9.2','Studio Pierrot','東京喰種','https://desu.shikimori.one/uploads/poster/animes/22319/main-ef32e609e445973258c2831d4c8e9967.webp'),
('Hunter x Hunter','TV series','148','24','A boy follows in his fathers footsteps to become a Hunter and explore the world.','Exciting adventures and intricate world-building', 'Completed','Adventure, Fantasy','13+','4.7','9.4','Madhouse','ハンター×ハンター','https://desu.shikimori.one/uploads/poster/animes/11061/main-338dcdc65ffbbe6254b98e93f0fe4a05.webp'),
('One Punch Man','TV series','24','24','A hero known for defeating any opponent with a single punch seeks a new challenge.','Action-packed and hilarious', 'Completed','Action, Comedy','15+','4.8','9.7','Madhouse','ワンパンマン','https://desu.shikimori.one/uploads/poster/animes/30276/main-6ccac7bbe5d2178cc43b0ad3c4e637c0.webp'),
('Fairy Tail','TV series','328','24','A mage guild goes on magical adventures and fights dark forces to protect their world.','Heartwarming friendships and epic battles', 'Ongoing','Fantasy, Adventure','13+','4.6','9.1','A-1 Pictures','フェアリーテイル','https://shikimori.one/animes/6702-fairy-tail'),
('Black Clover','TV series','170','24','A boy born without magic in a world of sorcery aims to become the Wizard King.','Determined protagonist and intense battles', 'Ongoing','Action, Fantasy','13+','4.5','8.9','Pierrot','ブラッククローバー','black-clover.jpg'),
('Sword Art Online','TV series','96','24','Players are trapped in a virtual reality MMORPG where death in the game means death in real life.','Comments No need','Adventure, Romance','Action, Fantasy','14+','4.4','8.8','A-1 Pictures','ソードアート・オンライン','https://desu.shikimori.one/uploads/poster/animes/11757/main-e04089ce9e3e425cc9d6bc628a65314f.webp'),
('Attack on Titan','TV series','75','25','A world where giant humanoid Titans prey on humans','A thrilling and intense anime with great emotional depth','Ongoing','Action, Dark Fantasy','16+','8.9','9.5','Wit Studio','Shingeki no Kyojin','https://desu.shikimori.one/uploads/poster/animes/16498/main-5b9ad3fa8e2c55a1de82954f3982bf50.webp'),
('My Hero Academia','TV series','104','22','A story of young heroes training to become the next generation of protectors','An inspiring and action-packed anime with strong character development','Ongoing','Action, Superhero','13+','8.7','9.2','Bones','Boku no Hero Academia','https://desu.shikimori.one/uploads/poster/animes/31964/main-a211b1b880652a47fbe0cca2fe5f5370.webp'),
('Demon Slayer','TV series','26','23','A boy seeking revenge on demons for the murder of his family','Beautifully animated with intense action scenes and emotional storytelling','Completed','Action, Dark Fantasy','16+','9.0','9.6','Ufotable','Kimetsu no Yaiba','https://desu.shikimori.one/uploads/poster/animes/38000/main-b9a3817eb7945d5a164deb3ae353b480.webp')


create table [dbo].[Characters]
(
	ID_characters int identity(1,1) not null,
	
	characters_name varchar(50) null,
	characters_opisanie varchar(max) null,
	characters_VoiceActor varchar(50) null,
	characters_cinemaName varchar(50) null,
	characters_image varchar(max) null,


	constraint [PK_ID_characters] primary key clustered
	([ID_characters] ASC) on [PRIMARY],	
	)
go
INSERT INTO Characters(characters_name,characters_opisanie,characters_VoiceActor,characters_cinemaName,characters_image) 
VALUES 
('Vegeta','Proud Saiyan warrior seeking to surpass Goku','Ryo Horikawa','Dragon Ball Z','https://desu.shikimori.one/uploads/poster/characters/913/main-e9d57280c42aff67ab95114736bdd5b7.webp'),
('Naruto Uzumaki','Ninja with a dream to become Hokage','Maile Flanagan','Naruto','https://desu.shikimori.one/uploads/poster/characters/17/main-213835aff23f659d496d93ea820319d9.webp'),
('Lelouch Lamperouge','Strategic genius with a thirst for revenge','Jun Fukuyama','Code Geass','https://desu.shikimori.one/uploads/poster/characters/417/main-891953585a4a87b2e3771003571aad85.webp'),
('Mikasa Ackerman','Skilled soldier and protector of Eren Yeager','Yui Ishikawa','Attack on Titan','https://desu.shikimori.one/uploads/poster/characters/40881/main-b16391bf4c3734ac277d9fd6f7a7a4f5.webp'),
('Monkey D. Luffy','Rubber-powered pirate captain with a heart of gold','Mayumi Tanaka','One Piece','https://desu.shikimori.one/uploads/poster/characters/40/main-9f10a841558a8df79499a0f7d3362224.webp'),
('Asuna Yuuki','Fierce warrior and love interest of Kirito','Haruka Tomatsu','Sword Art Online','https://desu.shikimori.one/uploads/poster/characters/36828/main-302f7b8ad5ef6a8cd80c3886686a139c.webp'),
('Edward Elric','Alchemy prodigy with a quest to restore his brother','Romi Park','Fullmetal Alchemist','https://desu.shikimori.one/uploads/poster/characters/11/main-fbea0a62568463497a231a4e88d5c425.webp'),
('Kakashi Hatake','Mysterious and powerful ninja with a love for reading','Kazuhiko Inoue','Naruto','https://desu.shikimori.one/uploads/poster/characters/85/main-0c498dcce161c699d19f3f938057300f.webp'),
('Saitama','Overpowered hero who can defeat any opponent with a single punch','Makoto Furukawa','One Punch Man','https://desu.shikimori.one/uploads/poster/characters/73935/main-2ded9d7e330eedb453947116ee5c53c8.webp'),
('Erza Scarlet','Strong and determined mage known as the Titania','Sayaka Ohara','Fairy Tail','https://desu.shikimori.one/uploads/poster/characters/5189/main-24d441700760a34dd50322e0c58dfccd.webp'),
('Light Yagami','Genius high school student turned vigilante killer','Mamoru Miyano','Death Note','https://desu.shikimori.one/uploads/poster/characters/80/main-069ac99efcc0c9d00bcc52518583c650.webp'),
('Saber','Arthurian legend brought to life as a heroic spirit','Ayako Kawasumi','Fate/Stay Night','https://desu.shikimori.one/uploads/poster/characters/497/main-95d4da75ca2ffe01c1c2133036c557de.webp')


create table [dbo].[Authors]
(
	ID_authors int identity(1,1) not null,
	
	authors_name varchar(50) null,
	authors_birth varchar(50) null,
	authors_position varchar(max) null,
	authors_roles varchar(max) null,
	authors_works varchar(max) null,
	authors_image varchar(max) null,

	constraint [PK_ID_authors] primary key clustered
	([ID_authors] ASC) on [PRIMARY],	
	)
go
INSERT INTO Authors(authors_name,authors_birth,authors_position,authors_roles,authors_works,authors_image) 
VALUES 
('Hajime Isayama','1986.29.08','Mangaka','','Attack on Titan','https://desu.shikimori.one/uploads/poster/people/11705/main-57535872e2e3c721f961d90f1e6d22dd.webp'),
('Masashi Kishimoto','1974.11.08','Mangaka','','Naruto','https://desu.shikimori.one/uploads/poster/people/1879/main-c844b2915f729b8418829cd7364056ad.webp'),
('Tite Kubo','1977.06.26','Mangaka','Kon','Bleach','https://desu.shikimori.one/uploads/poster/people/1880/main-9e4e20fea6f6a60982c8b24484167d14.webp'),
('Yoshihiro Togashi','1966.04.27','Mangaka','Rock Climber','Hunter x Hunter','https://desu.shikimori.one/uploads/poster/people/1893/main-d81a60a77123bb9e4fb949ab9444b5b3.webp'),
('Eiichiro Oda','1975.01.01','Mangaka','Eiichiro Oda','One Piece','https://desu.shikimori.one/uploads/poster/people/1881/main-22d733fa88d3709de08fe580b5a907b4.webp'),
('Naoko Takeuchi','1967.03.15','Mangaka','','Sailor Moon','https://desu.shikimori.one/uploads/poster/people/1946/main-2a5e0f85ffa7a9f2282e5ffa5d94b151.webp'),
('Katsura Hoshino','1980.04.21','Mangaka','','D.Gray-Man','https://desu.shikimori.one/uploads/poster/people/1892/main-e5abf6f297325f9ecde52bfd5edbf9e6.webp'),
('Hiromu Arakawa','1973.05.08','Mangaka','','Fullmetal Alchemist','https://desu.shikimori.one/uploads/poster/people/1874/main-b0dcf5dc6b6a1d55fa1a8fc4c517a7ac.webp'),
('Rumiko Takahashi','1957.10.10','Mangaka','','Inuyasha','https://desu.shikimori.one/uploads/poster/people/1891/main-894e4f8d6710c4813df4591d3f223fce.webp'),
('Yoshiki Nakamura','1971.06.17','Mangaka','','Skip Beat!','https://desu.shikimori.one/uploads/poster/people/2536/main-d09818e570f8226d088cad36a13b05f2.webp'),
('Kazue Kato','1980.07.20','Mangaka','','Blue Exorcist','https://desu.shikimori.one/uploads/poster/people/8052/main-1c737f0dd245ee62e3391e4b47da652c.webp'),
('Yana Toboso','1984.01.24','Mangaka','','Black Butler','https://desu.shikimori.one/uploads/poster/people/3768/main-a742ecfd9adad85e529d2855a8e4ab81.webp'),
('Mitsutoshi Shimabukuro','1975.05.19','Mangaka','','Toriko','https://desu.shikimori.one/uploads/poster/people/5417/main-699c71c3dd36fccfad71294e5921ac8d.webp'),
('Ken Akamatsu','1968.07.05','Mangaka','Ken Akamatsu','Love Hina','https://desu.shikimori.one/uploads/poster/people/1883/main-ee2c221229bfb4fc5d6cde3a297cc894.webp'),
('Nobuhiro Watsuki','1970.05.26','Mangaka','Buhiro Watsukino','Rurouni Kenshin','https://desu.shikimori.one/uploads/poster/people/1890/main-acce8ed0fa16a06a41118af4e2cc90c0.webp');

create or alter function [dbo].[Hashing] (@password [varchar] (64)) 
returns [varchar] (64)
as
begin
    declare @HASH [varchar] (64) = convert(varchar(256),HASHBYTES('SHA2_256',@password),2)
        return(@HASH)
end
go
select [dbo].[Hashing] ('Admin123!') 

CREATE OR ALTER TRIGGER [dbo].[Users_Insert]
ON [dbo].[Users]
AFTER INSERT
AS
BEGIN
    DECLARE @users_login NVARCHAR(50);
    DECLARE @users_password NVARCHAR(100);

    SELECT @users_login = [users_login], @users_password = [users_password]
    FROM inserted;

    UPDATE Users
    SET users_password = (select [dbo].[Hashing] (@users_password))
    WHERE users_login = @users_login;
END;


