IF NOT EXISTS (SELECT * FROM master.dbo.syslogins WHERE loginname = N'NRTTECH\yzhang')
CREATE LOGIN [NRTTECH\yzhang] FROM WINDOWS
GO
CREATE USER [NRTTECH\yzhang] FOR LOGIN [NRTTECH\yzhang]
GO
GRANT EXECUTE TO [NRTTECH\yzhang]
GRANT VIEW DEFINITION TO [NRTTECH\yzhang]