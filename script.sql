USE [master]
GO
/****** Object:  Database [SushiDB]    Script Date: 03/22/2018 2:46:30 PM ******/
CREATE DATABASE [SushiDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SushiDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\SushiDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SushiDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\SushiDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [SushiDB] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SushiDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SushiDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SushiDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SushiDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SushiDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SushiDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [SushiDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SushiDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SushiDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SushiDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SushiDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SushiDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SushiDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SushiDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SushiDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SushiDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SushiDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SushiDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SushiDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SushiDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SushiDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SushiDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SushiDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SushiDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SushiDB] SET  MULTI_USER 
GO
ALTER DATABASE [SushiDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SushiDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SushiDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SushiDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SushiDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SushiDB] SET QUERY_STORE = OFF
GO
USE [SushiDB]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [SushiDB]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 03/22/2018 2:46:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Address] [nvarchar](max) NULL,
	[Tel] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[OpenHour] [nvarchar](max) NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 03/22/2018 2:46:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Content] [nvarchar](max) NULL,
	[Price] [float] NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 03/22/2018 2:46:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Img] [nvarchar](max) NULL,
	[Content] [nvarchar](max) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Contact] ON 

INSERT [dbo].[Contact] ([ID], [Address], [Tel], [Email], [OpenHour]) VALUES (1, N'D302, FPT Dormitory, Thach Hoa, Thach That, Hanoi', N'0975009271', N'crustyrat271@gmail.com', N'<p>Monday: Closed</p><p>Tuesday: 10 AM - 22 PM</p><p>Wednesday: 10 AM - 22 PM</p><p>Thursday: 10 AM - 22 PM</p><p>Friday: 10 AM - 22 PM</p><p>Saturday: 10 AM - 22 PM</p><p>Sunday: 10 AM - 22 PM</p>')
SET IDENTITY_INSERT [dbo].[Contact] OFF
SET IDENTITY_INSERT [dbo].[Menu] ON 

INSERT [dbo].[Menu] ([ID], [Title], [Content], [Price]) VALUES (1, N'Jinx', N'For years, Ionia''s southern mountains were plagued by the infamous ''Golden Demon''. Throughout the province of Zhyun, a monster slaughtered scores of travelers and sometimes whole farmsteads, leaving behind twisted displays of corpses. Armed militias searched the forests, towns hired demon hunters, Master YiSquare Wuju masters patrolled the roads - but nothing slowed the beast''s grisly work.', 10)
INSERT [dbo].[Menu] ([ID], [Title], [Content], [Price]) VALUES (2, N'Jhin', N'Their investigation took four long years, and left the three men changed. The famous red mane of Kusho turned white; Shen, known for his wit and humor, became somber; and Zed, the brightest star of Kusho''s temple, began to struggle with his studies. Upon finally finding a pattern to the killings, the Great Master is quoted as saying: "Good and evil are not truths. They are born from men and each sees the shades differently."', 25)
INSERT [dbo].[Menu] ([ID], [Title], [Content], [Price]) VALUES (3, N'Vi', N'Depicted in a variety of plays and epic poems, the capture of the ''Golden Demon'' would be the seventh and final great feat in the illustrious career of Lord Kusho. On the eve of the Blossom Festival in Jyom Pass, Kusho disguised himself as a renowned calligrapher to blend in with the other guest artists. Then he waited. Everyone had assumed only an evil spirit could commit these horrifying crimes, but Kusho had realized the killer was an ordinary man. The famed ''Golden Demon'' was actually a mere stagehand in Zhyun''s traveling theaters and opera houses working under the name ', 5.2)
INSERT [dbo].[Menu] ([ID], [Title], [Content], [Price]) VALUES (4, N'Leona', N'When they caught Jhin, young Zed marched forward to kill the cowering man, but Kusho held him back. Despite the horrors of Jhin''s actions, the legendary master decided the killer should be taken alive and left at Tuula Prison. Shen disagreed, but accepted the emotionless logic of his father''s judgment. Zed, disturbed and haunted by the murder scenes he had witnessed, was unable to understand or accept this mercy, and it is said a resentment began to bloom in his heart.', 3.5)
INSERT [dbo].[Menu] ([ID], [Title], [Content], [Price]) VALUES (5, N'MF', N'Though imprisoned in Tuula for many years, the polite and shy Khada Jhin revealed little of himself - even his real name remained a mystery. But while a prisoner, the monks noted he was a bright student who excelled in many subjects, including smithing, poetry, and dance. Regardless, the guards and monks could find nothing to cure him of his morbid fascinations.', 6.5)
SET IDENTITY_INSERT [dbo].[Menu] OFF
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ID], [Title], [Img], [Content]) VALUES (1, N'Lazy Jane', N'570652.png', N'"Lazy Jane" from the album "Automechanic" by Jenny O. (Holy Trinity Records) 
Directed by Jenny O. Assisted by David Smalt. Skateboarders: Jeremy Alvarez & David Petrie. Technological/eternal thanks to Michael Shifflett.')
INSERT [dbo].[Product] ([ID], [Title], [Img], [Content]) VALUES (2, N'iZombie', N'704226.jpg', N'
Heard this on iZombie and it grabbed me. Beautiful hook and I love the way it''s recorded.﻿')
INSERT [dbo].[Product] ([ID], [Title], [Img], [Content]) VALUES (3, N'Liv Moore', N'maxresdefault_live.jpg', N'iZombie brought me here. And I''m still looking for the song that was played @ season 3 episode 2 when detective Clive was talking with Wally''s mom while cooking. If someone knows it, let me know. Thanks ❤﻿')
INSERT [dbo].[Product] ([ID], [Title], [Img], [Content]) VALUES (4, N'Jinx', N'jinx_08.jpg', N'"Beauty and a Beat" - originally by Justin Bieber ft. Nicki Minaj
Written by: Max Martin, Anton Zaslavski, Savan Kotecha, Onika Maraj
Published by: Kobalt Music Publishing, Universal Music Publishing & Gema')
INSERT [dbo].[Product] ([ID], [Title], [Img], [Content]) VALUES (5, N'Chrissy Costanza', N'22643130_361616920955500_901501990_o.jpg', N'Show you off, tonight I wanna show you off (eh, eh, eh)
What you got, a billion could''ve never bought (eh, eh, eh)

We gonna party like it''s 3012 tonight
I wanna show you all the finer things in life
So just forget about the world, we''re young tonight
I''m coming for ya, I''m coming for ya

Cause all I need
Is a beauty and a beat
Who can make my life complete
It''s all about you,
When the music makes you move
Baby, do it like you do
Cause...')
SET IDENTITY_INSERT [dbo].[Product] OFF
USE [master]
GO
ALTER DATABASE [SushiDB] SET  READ_WRITE 
GO
