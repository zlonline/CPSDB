SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[usp_sys_GetCommsAPIType]
AS
BEGIN
  EXEC dbo.usp_sys_GetTypeValues 153
END
GO
