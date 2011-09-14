USE [Dorknozzle]
GO
CREATE TABLE [Departments](
	[DepartmentID] [int] IDENTITY(1,1) NOT NULL,
	[Department] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Departments] PRIMARY KEY CLUSTERED 
(
	[DepartmentID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [Employees](
	[EmployeeID] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[State] [nvarchar](50) NULL,
	[Zip] [nvarchar](50) NULL,
	[HomePhone] [nvarchar](50) NULL,
	[Extension] [nvarchar](50) NULL,
	[MobilePhone] [nvarchar](50) NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [HelpDeskCategories](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[Category] [nvarchar](50) NULL,
 CONSTRAINT [PK_HelpDeskCategories] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [HelpDeskSubjects](
	[SubjectID] [int] IDENTITY(1,1) NOT NULL,
	[Subject] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_HelpDeskSubjects] PRIMARY KEY CLUSTERED 
(
	[SubjectID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [HelpDeskStatus](
	[StatusID] [int] IDENTITY(1,1) NOT NULL,
	[Status] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_HelpDeskStatus] PRIMARY KEY CLUSTERED 
(
	[StatusID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [HelpDesk](
	[RequestID] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeID] [int] NOT NULL,
	[StationNumber] [int] NULL,
	[CategoryID] [int] NOT NULL,
	[SubjectID] [int] NOT NULL,
	[Description] [nvarchar](50) NULL,
	[StatusID] [int] NOT NULL,
 CONSTRAINT [PK_HelpDesk] PRIMARY KEY CLUSTERED 
(
	[RequestID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HelpDesk]  WITH CHECK ADD  CONSTRAINT [FK_HelpDesk_Employees] FOREIGN KEY([EmployeeID])
REFERENCES [Employees] ([EmployeeID])
GO
ALTER TABLE [dbo].[HelpDesk]  WITH CHECK ADD  CONSTRAINT [FK_HelpDesk_HelpDeskCategories] FOREIGN KEY([CategoryID])
REFERENCES [HelpDeskCategories] ([CategoryID])
GO
ALTER TABLE [dbo].[HelpDesk]  WITH CHECK ADD  CONSTRAINT [FK_HelpDesk_HelpDeskStatus] FOREIGN KEY([StatusID])
REFERENCES [HelpDeskStatus] ([StatusID])
GO
ALTER TABLE [dbo].[HelpDesk]  WITH CHECK ADD  CONSTRAINT [FK_HelpDesk_HelpDeskSubjects] FOREIGN KEY([SubjectID])
REFERENCES [HelpDeskSubjects] ([SubjectID])
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Departments] FOREIGN KEY([DepartmentID])
REFERENCES [Departments] ([DepartmentID])
