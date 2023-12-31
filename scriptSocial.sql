USE [SocialSite]
GO
/****** Object:  Table [dbo].[AlbumMst2]    Script Date: 30-12-2022 17:59:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AlbumMst2](
	[AId] [int] IDENTITY(1,1) NOT NULL,
	[AName] [nvarchar](50) NULL,
	[Privacy] [nvarchar](50) NULL,
	[Image] [nvarchar](max) NULL,
	[Email] [nvarchar](50) NULL,
	[EndDate] [datetime] NULL,
 CONSTRAINT [PK_AlbumMst] PRIMARY KEY CLUSTERED 
(
	[AId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CommentMst2]    Script Date: 30-12-2022 17:59:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommentMst2](
	[CId] [int] IDENTITY(1,1) NOT NULL,
	[PId] [int] NULL,
	[UId] [int] NULL,
	[Comment] [nvarchar](500) NULL,
 CONSTRAINT [PK_CommentMst] PRIMARY KEY CLUSTERED 
(
	[CId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FriendMst2]    Script Date: 30-12-2022 17:59:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FriendMst2](
	[FId] [int] IDENTITY(1,1) NOT NULL,
	[FromUId] [int] NULL,
	[ToUId] [int] NULL,
	[Status] [nvarchar](50) NULL,
	[EndDate] [datetime] NULL,
 CONSTRAINT [PK_FriendMst] PRIMARY KEY CLUSTERED 
(
	[FId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GalleryMst2]    Script Date: 30-12-2022 17:59:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GalleryMst2](
	[GId] [int] IDENTITY(1,1) NOT NULL,
	[AId] [int] NULL,
	[Image] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[EndDate] [datetime] NULL,
 CONSTRAINT [PK_GalleryMst] PRIMARY KEY CLUSTERED 
(
	[GId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MessageMst2]    Script Date: 30-12-2022 17:59:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MessageMst2](
	[MId] [int] IDENTITY(1,1) NOT NULL,
	[FromUId] [int] NULL,
	[ToUId] [int] NULL,
	[Subject] [nvarchar](500) NULL,
	[Message] [nvarchar](500) NULL,
	[Status] [nvarchar](50) NULL,
	[EndDate] [datetime] NULL,
 CONSTRAINT [PK_MessageMst] PRIMARY KEY CLUSTERED 
(
	[MId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PostMst2]    Script Date: 30-12-2022 17:59:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PostMst2](
	[PId] [int] IDENTITY(1,1) NOT NULL,
	[Uname] [nvarchar](50) NULL,
	[Img] [nvarchar](max) NULL,
	[Text] [nvarchar](500) NULL,
	[Like] [nvarchar](50) NULL,
	[EndDate] [datetime] NULL,
 CONSTRAINT [PK_PostMst] PRIMARY KEY CLUSTERED 
(
	[PId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SmsMst2]    Script Date: 30-12-2022 17:59:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SmsMst2](
	[SId] [int] IDENTITY(1,1) NOT NULL,
	[FromUId] [int] NULL,
	[MobileNo] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[Message] [nvarchar](500) NULL,
	[EndDate] [datetime] NULL,
 CONSTRAINT [PK_SmsMst] PRIMARY KEY CLUSTERED 
(
	[SId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserMst2]    Script Date: 30-12-2022 17:59:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserMst2](
	[UId] [int] IDENTITY(1,1) NOT NULL,
	[FName] [nvarchar](50) NULL,
	[LName] [nvarchar](50) NULL,
	[Email] [varchar](max) NOT NULL,
	[Mobile] [nvarchar](50) NULL,
	[Education] [nvarchar](50) NULL,
	[DateOfBirth] [datetime] NULL,
	[City] [nchar](10) NULL,
	[PinCode] [nvarchar](50) NULL,
	[Gender] [nvarchar](50) NULL,
	[UName] [varchar](max) NOT NULL,
	[Password] [nvarchar](50) NULL,
	[EDate] [datetime] NULL,
	[AboutUs] [nvarchar](50) NULL,
	[WebsiteName] [nvarchar](50) NULL,
	[ProfilePic] [nvarchar](50) NULL,
	[Status] [nvarchar](max) NULL,
 CONSTRAINT [PK_UserMst2] PRIMARY KEY CLUSTERED 
(
	[UId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[ USERMST2_DELETE1]    Script Date: 30-12-2022 17:59:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ USERMST2_DELETE1]
@ID AS INT

AS
BEGIN

delete  FROM UserMst2 WHERE UId=@ID

END
GO
/****** Object:  StoredProcedure [dbo].[ALBUMMST2_DELETE1]    Script Date: 30-12-2022 17:59:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ALBUMMST2_DELETE1]
@ID AS INT


AS
BEGIN

  delete FROM  PostMst2 WHERE PId=@ID

END
GO
/****** Object:  StoredProcedure [dbo].[ALBUMMST2_INSERT1]    Script Date: 30-12-2022 17:59:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[ALBUMMST2_INSERT1]
@AN AS NVARCHAR(100),
@PRI as NVARCHAR(100),
@img AS NVARCHAR(MAX),
@email as NVARCHAR(50)

AS
BEGIN


  INSERT INTO  AlbumMst2 VALUES(@AN,@PRI,@img,@email,Getdate())

END
GO
/****** Object:  StoredProcedure [dbo].[ALBUMMST2_SELECT_BY_AID]    Script Date: 30-12-2022 17:59:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[ALBUMMST2_SELECT_BY_AID]

@ID AS INT


AS
BEGIN

  SELECT * FROM AlbumMst2 WHERE AId=@ID

END
GO
/****** Object:  StoredProcedure [dbo].[ALBUMMST2_SELECT_BY_EMAIL]    Script Date: 30-12-2022 17:59:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ALBUMMST2_SELECT_BY_EMAIL]
@email as nvarchar(100)



AS
BEGIN

  SELECT * FROM AlbumMst2 WHERE Email=@email

END
GO
/****** Object:  StoredProcedure [dbo].[ALBUMMST2_SELECT11]    Script Date: 30-12-2022 17:59:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ALBUMMST2_SELECT11]

AS
BEGIN

  SELECT * FROM AlbumMst2 

END
GO
/****** Object:  StoredProcedure [dbo].[CHANGE_PASSWORD]    Script Date: 30-12-2022 17:59:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[CHANGE_PASSWORD]
@UID AS INT,
@PASSWORD AS NVARCHAR(100)

AS
BEGIN

  UPDATE UserMst2 SET PASSWORD=@PASSWORD WHERE UId=@UID

END
GO
/****** Object:  StoredProcedure [dbo].[FRIENDMST2_Accept_Request]    Script Date: 30-12-2022 17:59:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[FRIENDMST2_Accept_Request]
@email as nvarchar(50),
@toemail as nvarchar(50)

AS
BEGIN

  SELECT * FROM FriendMst2 WHERE FromUId=@email  and ToUId = @toemail

END
GO
/****** Object:  StoredProcedure [dbo].[FRIENDMST2_Check_Reques]    Script Date: 30-12-2022 17:59:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[FRIENDMST2_Check_Reques]

AS
BEGIN

  SELECT * FROM FriendMst2 

END
GO
/****** Object:  StoredProcedure [dbo].[FRIENDMST2_Check_Request]    Script Date: 30-12-2022 17:59:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[FRIENDMST2_Check_Request]
@email  AS NVARCHAR(256)

AS
BEGIN

  SELECT * FROM UserMst2 where Uname=@email

END
GO
/****** Object:  StoredProcedure [dbo].[FRIENDMST2_DELETE1]    Script Date: 30-12-2022 17:59:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[FRIENDMST2_DELETE1]
@ID AS INT

AS
BEGIN

  DELETE  FROM FriendMst2 WHERE FId=@ID

END
GO
/****** Object:  StoredProcedure [dbo].[FRIENDMST2_Friend_Remove]    Script Date: 30-12-2022 17:59:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[FRIENDMST2_Friend_Remove]
@email as nvarchar(50),
@toemail as nvarchar(50)

AS
BEGIN

  DELETE FROM FriendMst2 WHERE FromUId=@email  and ToUId = @toemail

END

GO
/****** Object:  StoredProcedure [dbo].[FRIENDMST2_INSERT1]    Script Date: 30-12-2022 17:59:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[FRIENDMST2_INSERT1] 
@FUI AS INT,
@TUI as INT,
@SU AS NVARCHAR(50),
@ED as datetime



AS
BEGIN


  INSERT INTO  FriendMst2 VALUES(@FUI,@TUI,@SU,getdate() )

END
GO
/****** Object:  StoredProcedure [dbo].[FRIENDMST2_My_Friend_List]    Script Date: 30-12-2022 17:59:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[FRIENDMST2_My_Friend_List]
@email  AS NVARCHAR(256)

AS
BEGIN

  SELECT * FROM FriendMst2 where FromUId=@email

END
GO
/****** Object:  StoredProcedure [dbo].[FRIENDMST2_Reject_Request]    Script Date: 30-12-2022 17:59:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[FRIENDMST2_Reject_Request]
@email as nvarchar(50),
@toemail as nvarchar(50)

AS
BEGIN

  SELECT * FROM FriendMst2 WHERE FromUId=@email  and ToUId = @toemail

END
GO
/****** Object:  StoredProcedure [dbo].[FRIENDMST2_SELECT1]    Script Date: 30-12-2022 17:59:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[FRIENDMST2_SELECT1]
@ID AS INT

AS
BEGIN

  SELECT * FROM FriendMst2 WHERE FId=@ID

END
GO
/****** Object:  StoredProcedure [dbo].[GALLERYMST2_DELETE1]    Script Date: 30-12-2022 17:59:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[GALLERYMST2_DELETE1]
@ID AS INT
AS
BEGIN

  DELETE FROM GalleryMst2 WHERE GId=@ID

END
GO
/****** Object:  StoredProcedure [dbo].[GALLERYMST2_INSERT1]    Script Date: 30-12-2022 17:59:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[GALLERYMST2_INSERT1]

@AI AS INT,
@IMG AS NVARCHAR(MAX),
@DES AS NVARCHAR(100),
@ED AS DATETIME
AS
BEGIN

 INSERT INTO GalleryMst2 VALUES (@AI,@IMG,@DES,GETDATE())

END
GO
/****** Object:  StoredProcedure [dbo].[GALLERYMST2_SELECT_By_AID]    Script Date: 30-12-2022 17:59:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[GALLERYMST2_SELECT_By_AID]
@AID AS INT
AS
BEGIN

  SELECT *  FROM GalleryMst2 WHERE AId=@AID

END
GO
/****** Object:  StoredProcedure [dbo].[GALLERYMST2_SELECT1]    Script Date: 30-12-2022 17:59:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[GALLERYMST2_SELECT1]
@ID AS INT
AS
BEGIN

  SELECT *  FROM GalleryMst2 WHERE GId=@ID

END
GO
/****** Object:  StoredProcedure [dbo].[GALLERYMST2_SELECT11]    Script Date: 30-12-2022 17:59:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GALLERYMST2_SELECT11]




AS
BEGIN

  SELECT * FROM GalleryMst2 
END
GO
/****** Object:  StoredProcedure [dbo].[MESSAGEMST2_DELETE1]    Script Date: 30-12-2022 17:59:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[MESSAGEMST2_DELETE1]
@ID AS INT
AS
BEGIN

  DELETE FROM MessageMst2 WHERE MId=@ID

END
GO
/****** Object:  StoredProcedure [dbo].[MESSAGEMST2_SELECT_By_ID]    Script Date: 30-12-2022 17:59:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[MESSAGEMST2_SELECT_By_ID]
@ID AS INT


AS
BEGIN

  SELECT * FROM MessageMst2 WHERE MId=@ID

END
GO
/****** Object:  StoredProcedure [dbo].[MESSAGEMST2_SELECT_email_status]    Script Date: 30-12-2022 17:59:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[MESSAGEMST2_SELECT_email_status]
@email as nvarchar(50),
@status as nvarchar(50)


AS
BEGIN

  SELECT * FROM MessageMst2 WHERE FromUId=@email and Status=@status

END
GO
/****** Object:  StoredProcedure [dbo].[MESSAGEMST2_SELECT11]    Script Date: 30-12-2022 17:59:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[MESSAGEMST2_SELECT11]

AS
BEGIN

  SELECT * FROM MessageMst2

END
GO
/****** Object:  StoredProcedure [dbo].[MESSAGEMST2_UPDATE_STATUS]    Script Date: 30-12-2022 17:59:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[MESSAGEMST2_UPDATE_STATUS]
@ID AS INT,
@status as nvarchar(50)

AS
BEGIN

  SELECT * FROM MessageMst2 WHERE MId=@ID and Status=@status

END
GO
/****** Object:  StoredProcedure [dbo].[MESSAGEMST2_UPDATE1]    Script Date: 30-12-2022 17:59:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[MESSAGEMST2_UPDATE1]

@ID AS INT,
@FUI AS INT,
@TUI AS INT


AS
BEGIN

 update MessageMst2  SET FromUId=@FUI, ToUId=@TUI WHERE MId=@ID

END
GO
/****** Object:  StoredProcedure [dbo].[POSTMST2_INSERT1]    Script Date: 30-12-2022 17:59:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[POSTMST2_INSERT1]
@UN AS NVARCHAR(100),
@IMAGE as NVARCHAR(MAX),
@TXT AS NVARCHAR(100),
@LIKE as NVARCHAR(50)

AS
BEGIN


  INSERT INTO  PostMst2 VALUES(@UN,@IMAGE,@TXT,@LIKE, Getdate())

END
GO
/****** Object:  StoredProcedure [dbo].[POSTMST2_SELECT_POST]    Script Date: 30-12-2022 17:59:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[POSTMST2_SELECT_POST]
@email  AS NVARCHAR(256)

AS
BEGIN

  SELECT * FROM PostMst2 where Uname=@email

END
GO
/****** Object:  StoredProcedure [dbo].[POSTMST2_SELECT1]    Script Date: 30-12-2022 17:59:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[POSTMST2_SELECT1]
@PI AS INT 
AS
BEGIN

  SELECT *  FROM PostMst2 WHERE PId=@PI
END
GO
/****** Object:  StoredProcedure [dbo].[POSTMST2_SELECT11]    Script Date: 30-12-2022 17:59:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[POSTMST2_SELECT11]


AS
BEGIN

  SELECT * FROM [PostMst2] 

END
GO
/****** Object:  StoredProcedure [dbo].[UPLOAD_IMAGE]    Script Date: 30-12-2022 17:59:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[UPLOAD_IMAGE]
@ID  AS INT,
@IMG  AS NVARCHAR(100)

AS
BEGIN

  SELECT * FROM UserMst2 where UId=@ID and  ProfilePic=@IMG
END
GO
/****** Object:  StoredProcedure [dbo].[USERMST_SELECT_BY_EMAIL]    Script Date: 30-12-2022 17:59:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[USERMST_SELECT_BY_EMAIL]
@email  AS NVARCHAR(256)

AS
BEGIN

  SELECT * FROM UserMst2 where Uname=@email

END
GO
/****** Object:  StoredProcedure [dbo].[USERMST_SELECT_RIGHT_PANEL]    Script Date: 30-12-2022 17:59:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[USERMST_SELECT_RIGHT_PANEL]
@email  AS NVARCHAR(256)

AS
BEGIN

  SELECT * FROM UserMst2 where Uname=@email

END
GO
/****** Object:  StoredProcedure [dbo].[USERMST_SELECT_SEARCH]    Script Date: 30-12-2022 17:59:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[USERMST_SELECT_SEARCH]
@fname  AS NVARCHAR(256),
@email  AS NVARCHAR(256)

AS
BEGIN

  SELECT * FROM UserMst2 where FName=@fname and  Uname=@email

END
GO
/****** Object:  StoredProcedure [dbo].[USERMST_SELECT1]    Script Date: 30-12-2022 17:59:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[USERMST_SELECT1]
@ID AS INT

AS
BEGIN

  SELECT * FROM UserMst2 WHERE UId=@ID

END
GO
/****** Object:  StoredProcedure [dbo].[USERMST_SELECT11]    Script Date: 30-12-2022 17:59:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[USERMST_SELECT11]


AS
BEGIN

  SELECT * FROM UserMst2

END
GO
/****** Object:  StoredProcedure [dbo].[USERMST2_DELETE1]    Script Date: 30-12-2022 17:59:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USERMST2_DELETE1]
(
	@Original_UId int
)
AS
	SET NOCOUNT OFF;
DELETE FROM [UserMst] WHERE (([UId] = @Original_UId))
GO
/****** Object:  StoredProcedure [dbo].[USERMST2_INSERT1]    Script Date: 30-12-2022 17:59:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USERMST2_INSERT1]
@FN AS NVARCHAR(100),
@LN AS NVARCHAR(100),
@E AS NVARCHAR(256),
@MO AS NVARCHAR(100),
@EDU AS NVARCHAR(50),
@DOB AS DATETIME,
@C AS NCHAR(100),
@PC AS NVARCHAR(100),
@G AS NCHAR(10),
@UN AS NVARCHAR(100),
@PS AS NVARCHAR(100),
@AUS AS NVARCHAR(100),
@WN AS NVARCHAR(100),
@PPIC AS NVARCHAR(100),
@STA AS NVARCHAR(100)

AS
BEGIN

  INSERT INTO USERMST2 VALUES(@FN,@LN,@E,@MO,@EDU,GETDATE(),@C,@PC,@G,@UN,@PS,GETDATE(),@AUS,@Wn,@PPIC,@STA)

END
GO
/****** Object:  StoredProcedure [dbo].[USERMST2_LOGIN]    Script Date: 30-12-2022 17:59:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USERMST2_LOGIN]
@USERNAME AS NVARCHAR(256),
@PASSWORD AS NVARCHAR(256)

AS
BEGIN

  SELECT * FROM [UserMst2] WHERE UName=@USERNAME AND Password=@PASSWORD 

END
GO
/****** Object:  StoredProcedure [dbo].[USERMST2_UPDATE_detail]    Script Date: 30-12-2022 17:59:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[USERMST2_UPDATE_detail]
@ID  AS INT,
@FNAME	AS NVARCHAR(100),
@LNAME AS NVARCHAR(100),
@MO AS NVARCHAR(100),
@EDU AS NVARCHAR(100),
@CITY AS NVARCHAR(100),
@PIN AS NVARCHAR(100),
@GEN AS NVARCHAR(100),
@WEB AS NVARCHAR(100),
@ABOUT NVARCHAR(100)


AS
BEGIN

 update UserMst2 set FName=@FNAME, LName= @LNAME, Mobile=@MO, Education=@EDU, City=@CITY, PinCode=@PIN, Gender=@GEN, WebsiteName=@WEB, AboutUs=@ABOUT WHERE UId=@ID
END
GO
/****** Object:  StoredProcedure [dbo].[USERMST2_UPDATE1]    Script Date: 30-12-2022 17:59:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USERMST2_UPDATE1]
@ID AS INT, 
@MO as nvarchar(100),
@EDU as nvarchar(50)

AS
BEGIN

update UserMst2 set Mobile=@MO, Education=@EDU WHERE UId=@ID

END
GO
