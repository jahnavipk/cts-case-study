USE [FlightBookingDB]
GO
/****** Object:  Table [dbo].[tblFlightMaster]    Script Date: 16-05-2022 02:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblFlightMaster](
	[FlightNo] [varchar](20) NOT NULL,
	[FlightName] [varchar](100) NOT NULL,
	[FromLocation] [varchar](200) NOT NULL,
	[ToLocation] [varchar](200) NOT NULL,
	[DepartureDateTime] [datetime] NOT NULL,
	[ArrivalDateTime] [datetime] NOT NULL,
	[Price] [decimal](18, 0) NOT NULL,
	[NoOfSeats] [int] NOT NULL,
	[MealOption] [char](1) NOT NULL,
	[IsActive] [char](1) NOT NULL,
	[Remarks] [varchar](500) NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[CreatedDate] [date] NOT NULL,
	[ModifiedBy] [varchar](100) NOT NULL,
	[ModifiedDate] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[FlightNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblFlightMaster] ADD  DEFAULT ((0)) FOR [NoOfSeats]
GO
ALTER TABLE [dbo].[tblFlightMaster] ADD  DEFAULT ('N') FOR [MealOption]
GO
ALTER TABLE [dbo].[tblFlightMaster] ADD  DEFAULT ('Y') FOR [IsActive]
GO
ALTER TABLE [dbo].[tblFlightMaster] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[tblFlightMaster] ADD  DEFAULT (getdate()) FOR [ModifiedDate]
GO
