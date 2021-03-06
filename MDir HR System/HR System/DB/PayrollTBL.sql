/*
   Tuesday, April 9, 20198:29:59 PM
   User: 
   Server: DESKTOP-MUANI
   Database: HR
   Application: 
*/

/* To prevent any potential data loss issues, you should review this script in detail before running it outside the context of the database designer.*/
BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.PayrollTBL ADD
	IsContract bit NULL
GO
ALTER TABLE dbo.PayrollTBL SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
