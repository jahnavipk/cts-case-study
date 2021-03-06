USE [FlightBookingDB]
GO
/****** Object:  Table [dbo].[tblPassengerDetails]    Script Date: 16-05-2022 02:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPassengerDetails](
	[PNR] [int] NOT NULL,
	[PassengerId] [int] IDENTITY(1,1) NOT NULL,
	[PassengerName] [varchar](100) NOT NULL,
	[PassengerAge] [int] NOT NULL,
	[PassengerGender] [char](1) NULL,
	[PassengerSeatNo] [varchar](5) NULL,
	[IsMealOpted] [char](1) NOT NULL,
	[MealType] [varchar](20) NULL,
	[Price] [decimal](18, 0) NULL,
	[StatusCode] [int] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [varchar](100) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_UserBookingDetails] PRIMARY KEY CLUSTERED 
(
	[PassengerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblPassengerDetails] ADD  CONSTRAINT [DF_UserBookingDetails_IsMealOpted]  DEFAULT ('N') FOR [IsMealOpted]
GO
ALTER TABLE [dbo].[tblPassengerDetails] ADD  CONSTRAINT [DF_UserBookingDetails_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[tblPassengerDetails] ADD  CONSTRAINT [DF_UserBookingDetails_ModifiedDate]  DEFAULT (getdate()) FOR [ModifiedDate]
GO
