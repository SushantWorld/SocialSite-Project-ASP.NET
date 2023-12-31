USE [SocialSite]
GO

/****** Object:  StoredProcedure [dbo].[STUDENT_SELECT_LOGIN]    Script Date: 30-12-2022 10:01:39 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[USERMST2_LOGIN]
@USERNAME AS NVARCHAR(256),
@PASSWORD AS NVARCHAR(256)

AS
BEGIN

  SELECT * FROM [UserMst2] WHERE UName=@USERNAME AND Password=@PASSWORD 

END
GO

dbo.USERMST2_LOGIN
------------------------

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

alter PROCEDURE [dbo].POSTMST2_SELECT_POST
@email  AS NVARCHAR(256)

AS
BEGIN

  SELECT * FROM PostMst2 where Uname=@email

END
GO
-----------------------------------
-- USERMST2_DELETE1

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

alter PROCEDURE [dbo].[USERMST2_UPDATE1]
@ID AS INT, 
@MO as nvarchar(100),
@EDU as nvarchar(50)

AS
BEGIN

update UserMst2 set Mobile=@MO, Education=@EDU WHERE UId=@ID

END
GO
----------------------------

-- CHANGE_PASSWORD
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CHANGE_PASSWORD]
@PASSWORD AS NVARCHAR(100)

AS
BEGIN

  UPDATE UserMst2 SET PASSWORD=@PASSWORD 

END
GO
-----------------------------------

-- FRIENDMST2_Check_Request
 
 SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].FRIENDMST2_Check_Request
@email  AS NVARCHAR(256)

AS
BEGIN

  SELECT * FROM UserMst2 where Uname=@email

END
GO
-----------------------------------
-- POSTMST2_SELECT11

 
 SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].POSTMST2_SELECT11


AS
BEGIN

  SELECT * FROM [PostMst2] 

END
GO
------------------------------------------

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

alter PROCEDURE [dbo].[USERMST_SELECT1]
@ID AS INT

AS
BEGIN

  SELECT * FROM UserMst2 WHERE UId=@ID

END
GO
-------------------------------
-- USERMST_SELECT1
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

alter PROCEDURE [dbo]. USERMST_SELECT1


AS
BEGIN

  SELECT * FROM UserMst2 

END
GO
-----------------------------
-- POSTMST2_INSERT1

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].POSTMST2_INSERT1
@UN AS NVARCHAR(100),
@IMAGE as NVARCHAR(MAX),
@TXT AS NVARCHAR(100),
@LIKE as NVARCHAR(50)

AS
BEGIN


  INSERT INTO  PostMst2 VALUES(@UN,@IMAGE,@TXT,@LIKE, Getdate())

END
GO
---------------------------------------

-- USERMST_SELECT_SEARCH

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].USERMST_SELECT_SEARCH
@fname  AS NVARCHAR(256),
@email  AS NVARCHAR(256)

AS
BEGIN

  SELECT * FROM UserMst2 where FName=@fname and  Uname=@email

END
GO
-------------------------------
-- UPLOAD_IMAGE
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].UPLOAD_IMAGE
@ID  AS INT,
@IMG  AS NVARCHAR(100)

AS
BEGIN

  SELECT * FROM UserMst2 where UId=@ID and  ProfilePic=@IMG
END
GO
----------------------------------------
-- USERMST2_UPDATE_detail

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].USERMST2_UPDATE_detail
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
-----------------------------------------
-- USERMST_SELECT_RIGHT_PANEL

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo]. USERMST_SELECT_RIGHT_PANEL
@email  AS NVARCHAR(256)

AS
BEGIN

  SELECT * FROM UserMst2 where Uname=@email

END
GO


ALTER TABLE
[UserMst2]
ALTER COLUMN
Email
  VARCHAR(max) not NULL;

------------------------------------------

--  USERMST_SELECT11


SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].USERMST_SELECT11


AS
BEGIN

  SELECT * FROM UserMst2

END
GO
-----------------------------
-- USERMST_SELECT1  


SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].USERMST_SELECT1  



AS
BEGIN

  SELECT * FROM UserMst2

END
GO
-----------------------------
-- USERMST_SELECT_BY_EMAIL

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo]. USERMST_SELECT_BY_EMAIL
@email  AS NVARCHAR(256)

AS
BEGIN

  SELECT * FROM UserMst2 where Uname=@email

END
Go
-------------------------------

ALBUMMST2_SELECT_BY_EMAIL

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo]. ALBUMMST2_SELECT_BY_EMAIL
@email  AS NVARCHAR(256)

AS
BEGIN

  SELECT * FROM AlbumMst2 where Email=@email

END
Go

--------

.FRIENDMST2_My_Friend_List

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

alter PROCEDURE [dbo].FRIENDMST2_My_Friend_List
@email  AS NVARCHAR(256)

AS
BEGIN

  SELECT * FROM FriendMst2 where FromUId=@email

END
Go

---------------------------------

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

alter PROCEDURE [dbo].FRIENDMST2_SELECT1
@ID AS INT

AS
BEGIN

  SELECT * FROM FriendMst2 WHERE FId=@ID

END
GO
-------------
-- FRIENDMST2_DELETE1
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].FRIENDMST2_DELETE1
@ID AS INT

AS
BEGIN

  DELETE  FROM FriendMst2 WHERE FId=@ID

END
GO

-=--------------------------
-- FRIENDMST2_INSERT1 

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

alter PROCEDURE [dbo].FRIENDMST2_INSERT1 
@FUI AS INT,
@TUI as INT,
@SU AS NVARCHAR(50),
@ED as datetime



AS
BEGIN


  INSERT INTO  FriendMst2 VALUES(@FUI,@TUI,@SU,getdate() )

END
GO
---------------------------------------
-- FRIENDMST2_Accept_Request

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].FRIENDMST2_Accept_Request
@email as nvarchar(50),
@toemail as nvarchar(50)

AS
BEGIN

  SELECT * FROM FriendMst2 WHERE FromUId=@email  and ToUId = @toemail

END
GO
------------------------
-- FRIENDMST2_Friend_Remove

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER  PROCEDURE [dbo].FRIENDMST2_Friend_Remove
@email as nvarchar(50),
@toemail as nvarchar(50)

AS
BEGIN

  DELETE FROM FriendMst2 WHERE FromUId=@email  and ToUId = @toemail

END

GO

-------------------------
-- FRIENDMST2_Reject_Request
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].FRIENDMST2_Reject_Request
@email as nvarchar(50),
@toemail as nvarchar(50)

AS
BEGIN

  SELECT * FROM FriendMst2 WHERE FromUId=@email  and ToUId = @toemail

END
GO
------------------------------------------

-- FRIENDMST2_Check_Reques

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

alter PROCEDURE [dbo].FRIENDMST2_Check_Reques

AS
BEGIN

  SELECT * FROM FriendMst2 

END
GO
----------------------------------------
-- ALBUMMST SP 
-- ALBUMMST2_SELECT11

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].ALBUMMST2_SELECT11

AS
BEGIN

  SELECT * FROM AlbumMst2 

END
GO
------------------------
-- ALBUMMST2_SELECT_BY_AID

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo]. ALBUMMST2_SELECT_BY_AID

@ID AS INT


AS
BEGIN

  SELECT * FROM AlbumMst2 WHERE AId=@ID

END
GO
------------------------------------
-- ALBUMMST2_SELECT_BY_EMAIL

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].ALBUMMST2_SELECT_BY_EMAIL
@email as nvarchar(100)



AS
BEGIN

  SELECT * FROM AlbumMst2 WHERE Email=@email

END
GO

-----------------------------------------
-- mesage sp
-- MESSAGEMST2_DELETE1

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo]. MESSAGEMST2_DELETE1
@ID AS INT
AS
BEGIN

  DELETE FROM MessageMst2 WHERE MId=@ID

END
GO
---------------------------------------------------------------
-- MESSAGEMST2_INSERT1

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo]. MESSAGEMST2_INSERT1

@FUI AS INT,
@TUI AS INT,
@SUB  AS NVARCHAR(100),
@MSG AS NVARCHAR(100),
@STA AS NVARCHAR(100)

AS
BEGIN

 INSERT INTO MessageMst2 VALUES (@FUI,@TUI,@MSG,@STA,GETDATE())

END
GO
-------------------------------------
-- MESSAGEMST2_UPDATE1

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].MESSAGEMST2_UPDATE1

@ID AS INT,
@FUI AS INT,
@TUI AS INT


AS
BEGIN

 update MessageMst2  SET FromUId=@FUI, ToUId=@TUI WHERE MId=@ID

END
GO
-- MESSAGEMST2_SELECT11

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].MESSAGEMST2_SELECT11

AS
BEGIN

  SELECT * FROM MessageMst2

END
GO

--------------------------------------
-- MESSAGEMST2_UPDATE_STATUS

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].MESSAGEMST2_UPDATE_STATUS
@ID AS INT,
@status as nvarchar(50)

AS
BEGIN

  SELECT * FROM MessageMst2 WHERE MId=@ID and Status=@status

END
GO

-----------------------------------------------
-- MESSAGEMST2_SELECT_By_ID


SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].MESSAGEMST2_SELECT_By_ID
@ID AS INT


AS
BEGIN

  SELECT * FROM MessageMst2 WHERE MId=@ID

END
GO
----------------------------------------------

-- MESSAGEMST2_SELECT_email_status

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].MESSAGEMST2_SELECT_email_status
@email as nvarchar(50),
@status as nvarchar(50)


AS
BEGIN

  SELECT * FROM MessageMst2 WHERE FromUId=@email and Status=@status

END
GO

----------------------------------------

--------------------  GALLERYMST2 SP 

-- GALLERYMST2_DELETE1
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].GALLERYMST2_DELETE1
@ID AS INT
AS
BEGIN

  DELETE FROM GalleryMst2 WHERE GId=@ID

END
GO
----------------------------------------
-- GALLERYMST2_INSERT1
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].GALLERYMST2_INSERT1

@AI AS INT,
@IMG AS NVARCHAR(MAX),
@DES AS NVARCHAR(100),
@ED AS DATETIME
AS
BEGIN

 INSERT INTO GalleryMst2 VALUES (@AI,@IMG,@DES,GETDATE())

END
GO
-------------------------------------------------------

-- GALLERYMST2_SELECT11

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].GALLERYMST2_SELECT11




AS
BEGIN

  SELECT * FROM GalleryMst2 
END
GO
----------------------------------------------------
-- GALLERYMST2_SELECT_By_AID
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].GALLERYMST2_SELECT_By_AID
@AID AS INT
AS
BEGIN

  SELECT *  FROM GalleryMst2 WHERE AId=@AID

END
GO
-----------------------------------------------

-- GALLERYMST2_SELECT1

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].GALLERYMST2_SELECT1
@ID AS INT
AS
BEGIN

  SELECT *  FROM GalleryMst2 WHERE GId=@ID

END
GO
------------------------------------------------


--ALBUMMST2_INSERT1

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].ALBUMMST2_INSERT1
@AN AS NVARCHAR(100),
@PRI as NVARCHAR(100),
@img AS NVARCHAR(MAX),
@email as NVARCHAR(50)

AS
BEGIN


  INSERT INTO  AlbumMst2 VALUES(@AN,@PRI,@img,@email,Getdate())

END
GO
----------------------------------
-- POSTMST2_DELETE1

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo]. ALBUMMST2_DELETE1
@ID AS INT


AS
BEGIN

  delete FROM  PostMst2 WHERE PId=@ID

END
GO

-----------------------------

-- POSTMST2_update_like

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
alter PROCEDURE [dbo]. POSTMST2_update_like
@pid AS INT


AS
BEGIN

UPDATE PostMst2 set  PId=@pid

END
GO
---------------------------------------------
-- POSTMST2_SELECT1

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].POSTMST2_SELECT1
@PI AS INT 
AS
BEGIN

  SELECT *  FROM PostMst2 WHERE PId=@PI
END
GO
------------------------------------

-- POSTMST2_SELECT_POST

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].POSTMST2_SELECT_POST
@
AS
BEGIN

  SELECT *  FROM PostMst2 WHERE PId=@PI
END
GO
---------------------------------------- 
-- ALBUMMST2_DELETE1

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo]. ALBUMMST2_DELETE1
@ID AS INT


AS
BEGIN

  delete FROM AlbumMst2 WHERE AId=@ID

END
GO
-----------------------------------


