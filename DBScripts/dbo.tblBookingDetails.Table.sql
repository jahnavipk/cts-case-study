USE [FlightBookingDB]
GO
/****** Object:  Table [dbo].[tblBookingDetails]    Script Date: 16-05-2022 02:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblBookingDetails](
	[PNR] [int] IDENTITY(200001,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[FlightNo] [varchar](20) NOT NULL,
	[NoOfPassengers] [int] NOT NULL,
	[DepartureDateTime] [datetime] NOT NULL,
	[IsOneWay] [char](1) NOT NULL,
	[ReturnDateTime] [datetime] NULL,
	[StatusCode] [int] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [varchar](100) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_BookingDetails] PRIMARY KEY CLUSTERED 
(
	[PNR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblBookingDetails] ADD  CONSTRAINT [DF_BookingDetails_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[tblBookingDetails] ADD  CONSTRAINT [DF_BookingDetails_ModifiedDate]  DEFAULT (getdate()) FOR [ModifiedDate]
GO
