-- Script Date: 2013/11/14 13:34  - ErikEJ.SqlCeScripting version 3.5.2.33
-- Database information:
-- Locale Identifier: 2052
-- Encryption Mode: 
-- Case Sensitive: False
-- Database: C:\OrchardNoCMS\src\Orchard.Web\App_Data\Sites\Default\Orchard.sdf
-- ServerVersion: 4.0.8876.1
-- DatabaseSize: 640 KB
-- SpaceAvailable: 3.999 GB
-- Created: 2013/11/8 13:59

-- User Table information:
-- Number of tables: 14
-- Orchard_Car_CarInfo: 1 row(s)
-- Orchard_Framework_CultureRecord: 1 row(s)
-- Orchard_Framework_DataMigrationRecord: 27 row(s)
-- Orchard_Themes_ThemeSiteSettingsPartRecord: 1 row(s)
-- Orchard_Users_RegistrationSettingsPartRecord: 1 row(s)
-- Orchard_Users_UserPartRecord: 2 row(s)
-- Scheduling_ScheduledTaskRecord: 0 row(s)
-- Settings_ShellDescriptorRecord: 1 row(s)
-- Settings_ShellFeatureRecord: 10 row(s)
-- Settings_ShellFeatureStateRecord: 12 row(s)
-- Settings_ShellParameterRecord: 0 row(s)
-- Settings_ShellStateRecord: 1 row(s)
-- Settings_SiteSettings2PartRecord: 1 row(s)
-- Settings_SiteSettingsPartRecord: 1 row(s)

CREATE TABLE [Settings_SiteSettingsPartRecord] (
  [Id] int NOT NULL
, [SiteSalt] nvarchar(255) NULL
, [SiteName] nvarchar(255) NULL
, [SuperUser] nvarchar(255) NULL
, [PageTitleSeparator] nvarchar(255) NULL
, [HomePage] nvarchar(255) NULL
, [SiteCulture] nvarchar(255) NULL
, [ResourceDebugMode] nvarchar(255) DEFAULT 'FromAppSetting' NULL
, [PageSize] int NULL
, [SiteTimeZone] nvarchar(255) NULL
);
GO
CREATE TABLE [Settings_SiteSettings2PartRecord] (
  [Id] int NOT NULL
, [BaseUrl] ntext NULL
);
GO
CREATE TABLE [Settings_ShellStateRecord] (
  [Id] int IDENTITY (2,1) NOT NULL
, [Unused] nvarchar(255) NULL
);
GO
CREATE TABLE [Settings_ShellParameterRecord] (
  [Id] int IDENTITY (1,1) NOT NULL
, [Component] nvarchar(255) NULL
, [Name] nvarchar(255) NULL
, [Value] nvarchar(255) NULL
, [ShellDescriptorRecord_id] int NULL
);
GO
CREATE TABLE [Settings_ShellFeatureStateRecord] (
  [Id] int IDENTITY (55,1) NOT NULL
, [Name] nvarchar(255) NULL
, [InstallState] nvarchar(255) NULL
, [EnableState] nvarchar(255) NULL
, [ShellStateRecord_Id] int NULL
);
GO
CREATE TABLE [Settings_ShellFeatureRecord] (
  [Id] int IDENTITY (671,1) NOT NULL
, [Name] nvarchar(255) NULL
, [ShellDescriptorRecord_id] int NULL
);
GO
CREATE TABLE [Settings_ShellDescriptorRecord] (
  [Id] int IDENTITY (2,1) NOT NULL
, [SerialNumber] int NULL
);
GO
CREATE TABLE [Scheduling_ScheduledTaskRecord] (
  [Id] int IDENTITY (1,1) NOT NULL
, [TaskType] nvarchar(255) NULL
, [ScheduledUtc] datetime NULL
, [ContentItemVersionRecord_id] int NULL
);
GO
CREATE TABLE [Orchard_Users_UserPartRecord] (
  [Id] int NOT NULL
, [UserName] nvarchar(255) NULL
, [Email] nvarchar(255) NULL
, [NormalizedUserName] nvarchar(255) NULL
, [Password] nvarchar(255) NULL
, [PasswordFormat] nvarchar(255) NULL
, [HashAlgorithm] nvarchar(255) NULL
, [PasswordSalt] nvarchar(255) NULL
, [RegistrationStatus] nvarchar(255) DEFAULT 'Approved' NULL
, [EmailStatus] nvarchar(255) DEFAULT 'Approved' NULL
, [EmailChallengeToken] nvarchar(255) NULL
);
GO
CREATE TABLE [Orchard_Users_RegistrationSettingsPartRecord] (
  [Id] int NOT NULL
, [UsersCanRegister] bit DEFAULT 0 NULL
, [UsersMustValidateEmail] bit DEFAULT 0 NULL
, [ValidateEmailRegisteredWebsite] nvarchar(255) NULL
, [ValidateEmailContactEMail] nvarchar(255) NULL
, [UsersAreModerated] bit DEFAULT 0 NULL
, [NotifyModeration] bit DEFAULT 0 NULL
, [NotificationsRecipients] ntext NULL
, [EnableLostPassword] bit DEFAULT 0 NULL
);
GO
CREATE TABLE [Orchard_Themes_ThemeSiteSettingsPartRecord] (
  [Id] int NOT NULL
, [CurrentThemeName] nvarchar(255) NULL
);
GO
CREATE TABLE [Orchard_Framework_DataMigrationRecord] (
  [Id] int IDENTITY (29,1) NOT NULL
, [DataMigrationClass] nvarchar(255) NULL
, [Version] int NULL
);
GO
CREATE TABLE [Orchard_Framework_CultureRecord] (
  [Id] int IDENTITY (2,1) NOT NULL
, [Culture] nvarchar(255) NULL
);
GO
CREATE TABLE [Orchard_Car_CarInfo] (
  [Id] int IDENTITY (2,1) NOT NULL
, [Name] nvarchar(50) NULL
, [Description] nvarchar(255) NULL
, [Price] real NULL
, [BrandId] int NULL
, [SeatNum] int NULL
);
GO
INSERT INTO [Settings_SiteSettingsPartRecord] ([Id],[SiteSalt],[SiteName],[SuperUser],[PageTitleSeparator],[HomePage],[SiteCulture],[ResourceDebugMode],[PageSize],[SiteTimeZone]) VALUES (1,N'ca66c4cf061441efaf838cb99fe3126d',N'DSA Platform Help',N'admin',N' - ',NULL,N'en-US',N'FromAppSetting',10,N'China Standard Time');
GO
INSERT INTO [Settings_SiteSettings2PartRecord] ([Id],[BaseUrl]) VALUES (1,N'http://localhost:8088');
GO
SET IDENTITY_INSERT [Settings_ShellStateRecord] ON;
GO
INSERT INTO [Settings_ShellStateRecord] ([Id],[Unused]) VALUES (1,NULL);
GO
SET IDENTITY_INSERT [Settings_ShellStateRecord] OFF;
GO
SET IDENTITY_INSERT [Settings_ShellParameterRecord] OFF;
GO
SET IDENTITY_INSERT [Settings_ShellFeatureStateRecord] ON;
GO
INSERT INTO [Settings_ShellFeatureStateRecord] ([Id],[Name],[InstallState],[EnableState],[ShellStateRecord_Id]) VALUES (1,N'Orchard.Framework',N'Up',N'Up',1);
GO
INSERT INTO [Settings_ShellFeatureStateRecord] ([Id],[Name],[InstallState],[EnableState],[ShellStateRecord_Id]) VALUES (52,N'Orchard.Themes',N'Up',N'Up',1);
GO
INSERT INTO [Settings_ShellFeatureStateRecord] ([Id],[Name],[InstallState],[EnableState],[ShellStateRecord_Id]) VALUES (53,N'Shapes',N'Up',N'Up',1);
GO
INSERT INTO [Settings_ShellFeatureStateRecord] ([Id],[Name],[InstallState],[EnableState],[ShellStateRecord_Id]) VALUES (54,N'Orchard.Car',N'Up',N'Up',1);
GO
INSERT INTO [Settings_ShellFeatureStateRecord] ([Id],[Name],[InstallState],[EnableState],[ShellStateRecord_Id]) VALUES (10,N'Settings',N'Up',N'Up',1);
GO
INSERT INTO [Settings_ShellFeatureStateRecord] ([Id],[Name],[InstallState],[EnableState],[ShellStateRecord_Id]) VALUES (18,N'Orchard.Modules',N'Up',N'Up',1);
GO
INSERT INTO [Settings_ShellFeatureStateRecord] ([Id],[Name],[InstallState],[EnableState],[ShellStateRecord_Id]) VALUES (45,N'TheThemeMachine',N'Up',N'Up',1);
GO
INSERT INTO [Settings_ShellFeatureStateRecord] ([Id],[Name],[InstallState],[EnableState],[ShellStateRecord_Id]) VALUES (46,N'Metro',N'Up',N'Up',1);
GO
INSERT INTO [Settings_ShellFeatureStateRecord] ([Id],[Name],[InstallState],[EnableState],[ShellStateRecord_Id]) VALUES (47,N'VuLu',N'Up',N'Up',1);
GO
INSERT INTO [Settings_ShellFeatureStateRecord] ([Id],[Name],[InstallState],[EnableState],[ShellStateRecord_Id]) VALUES (48,N'XmlRpc',N'Up',N'Down',1);
GO
INSERT INTO [Settings_ShellFeatureStateRecord] ([Id],[Name],[InstallState],[EnableState],[ShellStateRecord_Id]) VALUES (50,N'Orchard.CodeGeneration',N'Up',N'Up',1);
GO
INSERT INTO [Settings_ShellFeatureStateRecord] ([Id],[Name],[InstallState],[EnableState],[ShellStateRecord_Id]) VALUES (56,N'AmberMe.Script',N'Up',N'Up',1);
GO
INSERT INTO [Settings_ShellFeatureStateRecord] ([Id],[Name],[InstallState],[EnableState],[ShellStateRecord_Id]) VALUES (51,N'HelloWorld',N'Up',N'Down',1);
GO
SET IDENTITY_INSERT [Settings_ShellFeatureStateRecord] OFF;
GO
SET IDENTITY_INSERT [Settings_ShellFeatureRecord] ON;
GO
INSERT INTO [Settings_ShellFeatureRecord] ([Id],[Name],[ShellDescriptorRecord_id]) VALUES (661,N'Orchard.Framework',1);
GO
INSERT INTO [Settings_ShellFeatureRecord] ([Id],[Name],[ShellDescriptorRecord_id]) VALUES (662,N'Settings',1);
GO
INSERT INTO [Settings_ShellFeatureRecord] ([Id],[Name],[ShellDescriptorRecord_id]) VALUES (663,N'Orchard.Modules',1);
GO
INSERT INTO [Settings_ShellFeatureRecord] ([Id],[Name],[ShellDescriptorRecord_id]) VALUES (664,N'TheThemeMachine',1);
GO
INSERT INTO [Settings_ShellFeatureRecord] ([Id],[Name],[ShellDescriptorRecord_id]) VALUES (665,N'Metro',1);
GO
INSERT INTO [Settings_ShellFeatureRecord] ([Id],[Name],[ShellDescriptorRecord_id]) VALUES (666,N'VuLu',1);
GO
INSERT INTO [Settings_ShellFeatureRecord] ([Id],[Name],[ShellDescriptorRecord_id]) VALUES (667,N'Orchard.CodeGeneration',1);
GO
INSERT INTO [Settings_ShellFeatureRecord] ([Id],[Name],[ShellDescriptorRecord_id]) VALUES (668,N'Orchard.Themes',1);
GO
INSERT INTO [Settings_ShellFeatureRecord] ([Id],[Name],[ShellDescriptorRecord_id]) VALUES (669,N'Shapes',1);
GO
INSERT INTO [Settings_ShellFeatureRecord] ([Id],[Name],[ShellDescriptorRecord_id]) VALUES (670,N'Orchard.Car',1);
GO
INSERT INTO [Settings_ShellFeatureRecord] ([Id],[Name],[ShellDescriptorRecord_id]) VALUES (671,N'AmberMe.Script',1);
GO
SET IDENTITY_INSERT [Settings_ShellFeatureRecord] OFF;
GO
SET IDENTITY_INSERT [Settings_ShellDescriptorRecord] ON;
GO
INSERT INTO [Settings_ShellDescriptorRecord] ([Id],[SerialNumber]) VALUES (1,18);
GO
SET IDENTITY_INSERT [Settings_ShellDescriptorRecord] OFF;
GO
SET IDENTITY_INSERT [Scheduling_ScheduledTaskRecord] OFF;
GO
INSERT INTO [Orchard_Users_UserPartRecord] ([Id],[UserName],[Email],[NormalizedUserName],[Password],[PasswordFormat],[HashAlgorithm],[PasswordSalt],[RegistrationStatus],[EmailStatus],[EmailChallengeToken]) VALUES (2,N'admin',N'',N'admin',N'zdd6LUg/leWRSUPCdJfM/TlRXp8=',N'Hashed',N'SHA1',N'4gVlWogJDxl/MXfAMmERRQ==',N'Approved',N'Approved',NULL);
GO
INSERT INTO [Orchard_Users_UserPartRecord] ([Id],[UserName],[Email],[NormalizedUserName],[Password],[PasswordFormat],[HashAlgorithm],[PasswordSalt],[RegistrationStatus],[EmailStatus],[EmailChallengeToken]) VALUES (30,N'duxn',N'duxn@bitauto.com',N'duxn',N'r9ufaBPHvuRW76TVsQiONuDiuhg=',N'Hashed',N'SHA1',N'Iq8VzD+L5ZkQjhAdmpN7mQ==',N'Approved',N'Approved',NULL);
GO
INSERT INTO [Orchard_Users_RegistrationSettingsPartRecord] ([Id],[UsersCanRegister],[UsersMustValidateEmail],[ValidateEmailRegisteredWebsite],[ValidateEmailContactEMail],[UsersAreModerated],[NotifyModeration],[NotificationsRecipients],[EnableLostPassword]) VALUES (1,0,0,NULL,NULL,0,0,NULL,0);
GO
INSERT INTO [Orchard_Themes_ThemeSiteSettingsPartRecord] ([Id],[CurrentThemeName]) VALUES (1,N'VuLu');
GO
SET IDENTITY_INSERT [Orchard_Framework_DataMigrationRecord] ON;
GO
INSERT INTO [Orchard_Framework_DataMigrationRecord] ([Id],[DataMigrationClass],[Version]) VALUES (1,N'Orchard.Core.Settings.Migrations',4);
GO
INSERT INTO [Orchard_Framework_DataMigrationRecord] ([Id],[DataMigrationClass],[Version]) VALUES (2,N'Orchard.ContentManagement.DataMigrations.FrameworkDataMigration',1);
GO
INSERT INTO [Orchard_Framework_DataMigrationRecord] ([Id],[DataMigrationClass],[Version]) VALUES (3,N'Orchard.Core.Common.Migrations',4);
GO
INSERT INTO [Orchard_Framework_DataMigrationRecord] ([Id],[DataMigrationClass],[Version]) VALUES (4,N'Orchard.Core.Containers.Migrations',4);
GO
INSERT INTO [Orchard_Framework_DataMigrationRecord] ([Id],[DataMigrationClass],[Version]) VALUES (5,N'Orchard.Core.Title.Migrations',2);
GO
INSERT INTO [Orchard_Framework_DataMigrationRecord] ([Id],[DataMigrationClass],[Version]) VALUES (6,N'Orchard.Core.Navigation.Migrations',5);
GO
INSERT INTO [Orchard_Framework_DataMigrationRecord] ([Id],[DataMigrationClass],[Version]) VALUES (7,N'Orchard.Core.Scheduling.Migrations',1);
GO
INSERT INTO [Orchard_Framework_DataMigrationRecord] ([Id],[DataMigrationClass],[Version]) VALUES (8,N'Orchard.ContentPicker.Migrations',1);
GO
INSERT INTO [Orchard_Framework_DataMigrationRecord] ([Id],[DataMigrationClass],[Version]) VALUES (9,N'Orchard.Pages.Migrations',3);
GO
INSERT INTO [Orchard_Framework_DataMigrationRecord] ([Id],[DataMigrationClass],[Version]) VALUES (10,N'Orchard.Themes.ThemesDataMigration',1);
GO
INSERT INTO [Orchard_Framework_DataMigrationRecord] ([Id],[DataMigrationClass],[Version]) VALUES (11,N'Orchard.Users.UsersDataMigration',2);
GO
INSERT INTO [Orchard_Framework_DataMigrationRecord] ([Id],[DataMigrationClass],[Version]) VALUES (12,N'Orchard.Roles.RolesDataMigration',2);
GO
INSERT INTO [Orchard_Framework_DataMigrationRecord] ([Id],[DataMigrationClass],[Version]) VALUES (13,N'Orchard.Packaging.Migrations',1);
GO
INSERT INTO [Orchard_Framework_DataMigrationRecord] ([Id],[DataMigrationClass],[Version]) VALUES (14,N'Orchard.Alias.Migrations',1);
GO
INSERT INTO [Orchard_Framework_DataMigrationRecord] ([Id],[DataMigrationClass],[Version]) VALUES (15,N'Orchard.Autoroute.Migrations',2);
GO
INSERT INTO [Orchard_Framework_DataMigrationRecord] ([Id],[DataMigrationClass],[Version]) VALUES (16,N'Orchard.OutputCache.Migrations',6);
GO
INSERT INTO [Orchard_Framework_DataMigrationRecord] ([Id],[DataMigrationClass],[Version]) VALUES (17,N'Orchard.PublishLater.Migrations',2);
GO
INSERT INTO [Orchard_Framework_DataMigrationRecord] ([Id],[DataMigrationClass],[Version]) VALUES (18,N'Orchard.Widgets.WidgetsDataMigration',5);
GO
INSERT INTO [Orchard_Framework_DataMigrationRecord] ([Id],[DataMigrationClass],[Version]) VALUES (19,N'Orchard.Blogs.Migrations',6);
GO
INSERT INTO [Orchard_Framework_DataMigrationRecord] ([Id],[DataMigrationClass],[Version]) VALUES (20,N'Orchard.Workflows.Migrations',1);
GO
INSERT INTO [Orchard_Framework_DataMigrationRecord] ([Id],[DataMigrationClass],[Version]) VALUES (21,N'Orchard.Comments.Migrations',5);
GO
INSERT INTO [Orchard_Framework_DataMigrationRecord] ([Id],[DataMigrationClass],[Version]) VALUES (22,N'Orchard.MediaProcessing.Migrations',1);
GO
INSERT INTO [Orchard_Framework_DataMigrationRecord] ([Id],[DataMigrationClass],[Version]) VALUES (23,N'Orchard.MediaLibrary.MediaDataMigration',3);
GO
INSERT INTO [Orchard_Framework_DataMigrationRecord] ([Id],[DataMigrationClass],[Version]) VALUES (24,N'Orchard.Projections.Migrations',3);
GO
INSERT INTO [Orchard_Framework_DataMigrationRecord] ([Id],[DataMigrationClass],[Version]) VALUES (25,N'Orchard.Tags.TagsDataMigration',2);
GO
INSERT INTO [Orchard_Framework_DataMigrationRecord] ([Id],[DataMigrationClass],[Version]) VALUES (26,N'Orchard.Taxonomies.Migrations',3);
GO
INSERT INTO [Orchard_Framework_DataMigrationRecord] ([Id],[DataMigrationClass],[Version]) VALUES (28,N'Orchard.Car.Migrations',1);
GO
SET IDENTITY_INSERT [Orchard_Framework_DataMigrationRecord] OFF;
GO
SET IDENTITY_INSERT [Orchard_Framework_CultureRecord] ON;
GO
INSERT INTO [Orchard_Framework_CultureRecord] ([Id],[Culture]) VALUES (1,N'en-US');
GO
SET IDENTITY_INSERT [Orchard_Framework_CultureRecord] OFF;
GO
SET IDENTITY_INSERT [Orchard_Car_CarInfo] ON;
GO
INSERT INTO [Orchard_Car_CarInfo] ([Id],[Name],[Description],[Price],[BrandId],[SeatNum]) VALUES (1,N'test',N'dada',123,1,121);
GO
SET IDENTITY_INSERT [Orchard_Car_CarInfo] OFF;
GO
ALTER TABLE [Settings_SiteSettingsPartRecord] ADD CONSTRAINT [PK__Settings_SiteSettingsPartRecord__00000000000000AB] PRIMARY KEY ([Id]);
GO
ALTER TABLE [Settings_SiteSettings2PartRecord] ADD CONSTRAINT [PK__Settings_SiteSettings2PartRecord__00000000000000B5] PRIMARY KEY ([Id]);
GO
ALTER TABLE [Settings_ShellStateRecord] ADD CONSTRAINT [PK__Settings_ShellStateRecord__000000000000008E] PRIMARY KEY ([Id]);
GO
ALTER TABLE [Settings_ShellParameterRecord] ADD CONSTRAINT [PK__Settings_ShellParameterRecord__0000000000000084] PRIMARY KEY ([Id]);
GO
ALTER TABLE [Settings_ShellFeatureStateRecord] ADD CONSTRAINT [PK__Settings_ShellFeatureStateRecord__0000000000000074] PRIMARY KEY ([Id]);
GO
ALTER TABLE [Settings_ShellFeatureRecord] ADD CONSTRAINT [PK__Settings_ShellFeatureRecord__0000000000000064] PRIMARY KEY ([Id]);
GO
ALTER TABLE [Settings_ShellDescriptorRecord] ADD CONSTRAINT [PK__Settings_ShellDescriptorRecord__0000000000000058] PRIMARY KEY ([Id]);
GO
ALTER TABLE [Scheduling_ScheduledTaskRecord] ADD CONSTRAINT [PK__Scheduling_ScheduledTaskRecord__00000000000001C6] PRIMARY KEY ([Id]);
GO
ALTER TABLE [Orchard_Users_UserPartRecord] ADD CONSTRAINT [PK__Orchard_Users_UserPartRecord__00000000000001FC] PRIMARY KEY ([Id]);
GO
ALTER TABLE [Orchard_Users_RegistrationSettingsPartRecord] ADD CONSTRAINT [PK__Orchard_Users_RegistrationSettingsPartRecord__0000000000000223] PRIMARY KEY ([Id]);
GO
ALTER TABLE [Orchard_Themes_ThemeSiteSettingsPartRecord] ADD CONSTRAINT [PK__Orchard_Themes_ThemeSiteSettingsPartRecord__00000000000001DA] PRIMARY KEY ([Id]);
GO
ALTER TABLE [Orchard_Framework_DataMigrationRecord] ADD CONSTRAINT [PK__Orchard_Framework_DataMigrationRecord__0000000000000008] PRIMARY KEY ([Id]);
GO
ALTER TABLE [Orchard_Framework_CultureRecord] ADD CONSTRAINT [PK__Orchard_Framework_CultureRecord__00000000000000E7] PRIMARY KEY ([Id]);
GO
ALTER TABLE [Orchard_Car_CarInfo] ADD CONSTRAINT [PK__Orchard_Car_CarInfo__000000000000059C] PRIMARY KEY ([Id]);
GO

