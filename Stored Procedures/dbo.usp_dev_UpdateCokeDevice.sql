SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[usp_dev_UpdateCokeDevice]
	@MerchantId NVARCHAR(15),
	@TerminalName NVARCHAR(16)
	AS
    BEGIN
	UPDATE dbo.tbl_DeviceCoke SET INDICATORS= 3 WHERE MERCID=@MerchantId AND TERMID=@TerminalName
    END
GO