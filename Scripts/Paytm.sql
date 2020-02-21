USE [master]
GO
/****** Object:  Database [PaytmDb]    Script Date: 21-02-2020 19:15:01 ******/
CREATE DATABASE [PaytmDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PaytmDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQL2017\MSSQL\DATA\PaytmDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PaytmDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQL2017\MSSQL\DATA\PaytmDb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [PaytmDb] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PaytmDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PaytmDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PaytmDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PaytmDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PaytmDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PaytmDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [PaytmDb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PaytmDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PaytmDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PaytmDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PaytmDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PaytmDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PaytmDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PaytmDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PaytmDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PaytmDb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PaytmDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PaytmDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PaytmDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PaytmDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PaytmDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PaytmDb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PaytmDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PaytmDb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PaytmDb] SET  MULTI_USER 
GO
ALTER DATABASE [PaytmDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PaytmDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PaytmDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PaytmDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PaytmDb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PaytmDb] SET QUERY_STORE = OFF
GO
USE [PaytmDb]
GO
/****** Object:  Table [dbo].[FashionSubCategories]    Script Date: 21-02-2020 19:15:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FashionSubCategories](
	[FashionSubCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[FashionCategoryName] [varchar](20) NOT NULL,
	[FashionCategoryId] [int] NOT NULL,
 CONSTRAINT [PK_FashionSubCategories] PRIMARY KEY CLUSTERED 
(
	[FashionSubCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FashionProducts]    Script Date: 21-02-2020 19:15:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FashionProducts](
	[FashionProductId] [int] NOT NULL,
	[FashionSubCategoryId] [int] NOT NULL,
	[SellerProductId] [int] NOT NULL,
 CONSTRAINT [PK_FashionProducts] PRIMARY KEY CLUSTERED 
(
	[FashionProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Carts]    Script Date: 21-02-2020 19:15:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carts](
	[CartId] [int] IDENTITY(1,1) NOT NULL,
	[FashionProductId] [int] NOT NULL,
	[ProductQuantity] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[TotalAmount] [float] NOT NULL,
 CONSTRAINT [PK_Carts] PRIMARY KEY CLUSTERED 
(
	[CartId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sellers]    Script Date: 21-02-2020 19:15:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sellers](
	[SellerId] [int] NOT NULL,
	[SellerName] [varchar](20) NOT NULL,
	[Password] [varchar](20) NOT NULL,
	[MobileNumber] [varchar](15) NOT NULL,
	[EmailId] [varchar](20) NOT NULL,
	[Address] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Sellers] PRIMARY KEY CLUSTERED 
(
	[SellerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SellerProducts]    Script Date: 21-02-2020 19:15:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SellerProducts](
	[SellerProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [varchar](20) NOT NULL,
	[SellerId] [int] NOT NULL,
	[FashionCategoryId] [int] NOT NULL,
	[Price] [float] NOT NULL,
	[Description] [varchar](50) NOT NULL,
	[BrandId] [int] NOT NULL,
 CONSTRAINT [PK_SellerProducts] PRIMARY KEY CLUSTERED 
(
	[SellerProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vCartItems]    Script Date: 21-02-2020 19:15:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vCartItems]
AS
SELECT        dbo.Carts.Quantity, dbo.Carts.TotalAmount, dbo.Carts.UserId, dbo.FashionSubCategories.FashionCategoryName, dbo.SellerProducts.Price, dbo.SellerProducts.Description, dbo.SellerProducts.BrandId, 
                         dbo.SellerProducts.ProductName, dbo.Sellers.SellerName
FROM            dbo.Carts INNER JOIN
                         dbo.FashionProducts ON dbo.Carts.FashionProductId = dbo.FashionProducts.FashionProductId INNER JOIN
                         dbo.FashionSubCategories ON dbo.FashionProducts.FashionSubCategoryId = dbo.FashionSubCategories.FashionSubCategoryId INNER JOIN
                         dbo.SellerProducts ON dbo.FashionProducts.SellerProductId = dbo.SellerProducts.SellerProductId INNER JOIN
                         dbo.Sellers ON dbo.SellerProducts.SellerId = dbo.Sellers.SellerId
GO
/****** Object:  Table [dbo].[ApplicationObjects]    Script Date: 21-02-2020 19:15:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicationObjects](
	[ApplicationObjectId] [int] IDENTITY(1,1) NOT NULL,
	[AplicationObjectName] [varchar](10) NOT NULL,
	[Status] [bit] NOT NULL,
	[ApplicationObjectTypeId] [int] NOT NULL,
 CONSTRAINT [PK_ApplicationObjects] PRIMARY KEY CLUSTERED 
(
	[ApplicationObjectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cities]    Script Date: 21-02-2020 19:15:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cities](
	[CityId] [int] IDENTITY(1,1) NOT NULL,
	[CityName] [varchar](20) NOT NULL,
	[StateId] [int] NOT NULL,
 CONSTRAINT [PK_Cities] PRIMARY KEY CLUSTERED 
(
	[CityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovieBookings]    Script Date: 21-02-2020 19:15:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovieBookings](
	[MovieBookingId] [int] IDENTITY(1,1) NOT NULL,
	[ApplicationObjectId] [int] NOT NULL,
	[MovieHallId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[BookedSeats] [int] NOT NULL,
 CONSTRAINT [PK_MovieBookings] PRIMARY KEY CLUSTERED 
(
	[MovieBookingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Movies]    Script Date: 21-02-2020 19:15:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movies](
	[MovieId] [int] IDENTITY(1,1) NOT NULL,
	[MovieName] [varchar](30) NOT NULL,
	[CityId] [int] NOT NULL,
 CONSTRAINT [PK_Movies] PRIMARY KEY CLUSTERED 
(
	[MovieId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Theatres]    Script Date: 21-02-2020 19:15:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Theatres](
	[TheatreId] [int] IDENTITY(1,1) NOT NULL,
	[TheatreName] [varchar](20) NOT NULL,
	[TheatreAddress] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Theatres] PRIMARY KEY CLUSTERED 
(
	[TheatreId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Halls]    Script Date: 21-02-2020 19:15:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Halls](
	[HallId] [int] IDENTITY(1,1) NOT NULL,
	[HallNumber] [int] NOT NULL,
	[TheatreId] [int] NOT NULL,
	[TotalSeats] [int] NOT NULL,
	[AvailableSeats] [int] NOT NULL,
 CONSTRAINT [PK_Halls] PRIMARY KEY CLUSTERED 
(
	[HallId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovieHalls]    Script Date: 21-02-2020 19:15:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovieHalls](
	[MovieHallId] [int] IDENTITY(1,1) NOT NULL,
	[HallId] [int] NOT NULL,
	[ShowTime] [int] NOT NULL,
	[Price] [int] NOT NULL,
	[MovieId] [int] NOT NULL,
 CONSTRAINT [PK_MovieHalls] PRIMARY KEY CLUSTERED 
(
	[MovieHallId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vMovieBook]    Script Date: 21-02-2020 19:15:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vMovieBook]
AS
SELECT        dbo.Movies.MovieName, dbo.Halls.HallNumber, dbo.Theatres.TheatreName, dbo.Theatres.TheatreAddress, dbo.MovieHalls.Price, dbo.MovieHalls.ShowTime, dbo.Cities.CityName, dbo.MovieBookings.UserId, 
                         dbo.ApplicationObjects.AplicationObjectName, dbo.MovieBookings.BookedSeats
FROM            dbo.Movies INNER JOIN
                         dbo.MovieHalls ON dbo.Movies.MovieId = dbo.MovieHalls.MovieId INNER JOIN
                         dbo.Halls ON dbo.MovieHalls.HallId = dbo.Halls.HallId INNER JOIN
                         dbo.Theatres ON dbo.Halls.TheatreId = dbo.Theatres.TheatreId INNER JOIN
                         dbo.Cities ON dbo.Movies.CityId = dbo.Cities.CityId INNER JOIN
                         dbo.MovieBookings ON dbo.MovieHalls.MovieHallId = dbo.MovieBookings.MovieHallId INNER JOIN
                         dbo.ApplicationObjects ON dbo.MovieBookings.ApplicationObjectId = dbo.ApplicationObjects.ApplicationObjectId
GO
/****** Object:  View [dbo].[vMovieDetails]    Script Date: 21-02-2020 19:15:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vMovieDetails]
AS
SELECT        dbo.Movies.MovieName, dbo.Cities.CityName, dbo.Theatres.TheatreName, dbo.Theatres.TheatreAddress, dbo.MovieHalls.ShowTime, dbo.MovieHalls.Price, dbo.ApplicationObjects.AplicationObjectName, dbo.Movies.MovieId, 
                         dbo.Halls.AvailableSeats
FROM            dbo.MovieHalls INNER JOIN
                         dbo.Movies ON dbo.MovieHalls.MovieId = dbo.Movies.MovieId INNER JOIN
                         dbo.Cities ON dbo.Movies.CityId = dbo.Cities.CityId INNER JOIN
                         dbo.MovieBookings ON dbo.MovieHalls.MovieHallId = dbo.MovieBookings.MovieHallId INNER JOIN
                         dbo.Halls ON dbo.MovieHalls.HallId = dbo.Halls.HallId INNER JOIN
                         dbo.Theatres ON dbo.Halls.TheatreId = dbo.Theatres.TheatreId INNER JOIN
                         dbo.ApplicationObjects ON dbo.MovieBookings.ApplicationObjectId = dbo.ApplicationObjects.ApplicationObjectId
GO
/****** Object:  Table [dbo].[ApplicationObjectTypes]    Script Date: 21-02-2020 19:15:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicationObjectTypes](
	[ApplicationObjectTypeId] [int] IDENTITY(1,1) NOT NULL,
	[ApplicationObjectTypeName] [varchar](30) NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_ApplicationObjectTypes] PRIMARY KEY CLUSTERED 
(
	[ApplicationObjectTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BankCardDetails]    Script Date: 21-02-2020 19:15:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BankCardDetails](
	[BankCardDetailId] [int] IDENTITY(1,1) NOT NULL,
	[BankId] [int] NOT NULL,
	[CardNumber] [int] NOT NULL,
	[CardName] [varchar](20) NOT NULL,
	[CardCVV] [int] NOT NULL,
	[CardType] [varchar](10) NOT NULL,
	[CardExpiryDate] [datetime] NOT NULL,
	[Balance] [int] NOT NULL,
 CONSTRAINT [PK_BankCardDetails] PRIMARY KEY CLUSTERED 
(
	[BankCardDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Banks]    Script Date: 21-02-2020 19:15:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Banks](
	[BankId] [int] IDENTITY(1,1) NOT NULL,
	[BankName] [varchar](20) NOT NULL,
	[BankAddress] [varchar](50) NOT NULL,
	[BankMobileNumber] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Banks] PRIMARY KEY CLUSTERED 
(
	[BankId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BookingMasters]    Script Date: 21-02-2020 19:15:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookingMasters](
	[BookingMasterId] [int] IDENTITY(1,1) NOT NULL,
	[ApplicationObjectId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[DepartureDate] [datetime] NOT NULL,
	[ReturnDate] [datetime] NULL,
	[NumberOfTravellers] [int] NOT NULL,
 CONSTRAINT [PK_BookingMasters] PRIMARY KEY CLUSTERED 
(
	[BookingMasterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brands]    Script Date: 21-02-2020 19:15:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brands](
	[BrandId] [int] IDENTITY(1,1) NOT NULL,
	[BrandName] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Brands] PRIMARY KEY CLUSTERED 
(
	[BrandId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BusAvailableSeats]    Script Date: 21-02-2020 19:15:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BusAvailableSeats](
	[BusAvailableSeatId] [int] IDENTITY(1,1) NOT NULL,
	[BusId] [int] NOT NULL,
	[TotalSeats] [int] NOT NULL,
	[AvailableSeats] [int] NOT NULL,
 CONSTRAINT [PK_BusAvailableSeats] PRIMARY KEY CLUSTERED 
(
	[BusAvailableSeatId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BusBookings]    Script Date: 21-02-2020 19:15:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BusBookings](
	[BusBookingId] [int] IDENTITY(1,1) NOT NULL,
	[BookingMasterId] [int] NOT NULL,
	[BusId] [int] NOT NULL,
 CONSTRAINT [PK_BusBookings] PRIMARY KEY CLUSTERED 
(
	[BusBookingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Buses]    Script Date: 21-02-2020 19:15:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Buses](
	[BusId] [int] IDENTITY(1,1) NOT NULL,
	[BusName] [varchar](20) NOT NULL,
	[Source] [varchar](20) NOT NULL,
	[Destination] [varchar](20) NOT NULL,
	[DepartureTime] [datetime] NOT NULL,
	[ArrivalTime] [datetime] NOT NULL,
	[Price] [float] NOT NULL,
	[Duration] [time](7) NOT NULL,
	[ApplicationObjectId] [int] NOT NULL,
 CONSTRAINT [PK_Buses] PRIMARY KEY CLUSTERED 
(
	[BusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BusTravellerDetails]    Script Date: 21-02-2020 19:15:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BusTravellerDetails](
	[BusTravellerId] [int] IDENTITY(1,1) NOT NULL,
	[BusBookingId] [int] NOT NULL,
	[FullName] [varchar](40) NOT NULL,
	[Gender] [bit] NOT NULL,
	[Age] [int] NOT NULL,
	[EmailId] [varchar](20) NOT NULL,
 CONSTRAINT [PK_BusTravellerDetails] PRIMARY KEY CLUSTERED 
(
	[BusTravellerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeliveryAddresses]    Script Date: 21-02-2020 19:15:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeliveryAddresses](
	[DeliveryAddressId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[FullName] [varchar](20) NOT NULL,
	[Address] [varchar](50) NOT NULL,
	[CityId] [int] NOT NULL,
 CONSTRAINT [PK_DeliveryAddresses] PRIMARY KEY CLUSTERED 
(
	[DeliveryAddressId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FashionCategories]    Script Date: 21-02-2020 19:15:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FashionCategories](
	[FashionCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[FashionCategoryName] [varchar](20) NOT NULL,
 CONSTRAINT [PK_FashionCategories] PRIMARY KEY CLUSTERED 
(
	[FashionCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FlightAvailableSeats]    Script Date: 21-02-2020 19:15:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FlightAvailableSeats](
	[FlightAvailableSeatId] [int] IDENTITY(1,1) NOT NULL,
	[FlightId] [int] NOT NULL,
	[TotalSeats] [int] NOT NULL,
	[EconomyTotal] [int] NOT NULL,
	[EconomyAvailable] [int] NOT NULL,
	[BusinessTotal] [int] NOT NULL,
	[BusinessAvailable] [int] NOT NULL,
 CONSTRAINT [PK_FlightAvailableSeats] PRIMARY KEY CLUSTERED 
(
	[FlightAvailableSeatId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FlightBookings]    Script Date: 21-02-2020 19:15:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FlightBookings](
	[FlightBookingId] [int] IDENTITY(1,1) NOT NULL,
	[BookingMasterId] [int] NOT NULL,
	[FlightId] [int] NOT NULL,
	[ApplicationObjectId] [int] NOT NULL,
 CONSTRAINT [PK_FlightBookings] PRIMARY KEY CLUSTERED 
(
	[FlightBookingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Flights]    Script Date: 21-02-2020 19:15:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Flights](
	[FlightId] [int] IDENTITY(1,1) NOT NULL,
	[Airline] [varchar](15) NOT NULL,
	[Source] [varchar](15) NOT NULL,
	[Destination] [varchar](15) NOT NULL,
	[DepartureTime] [datetime] NOT NULL,
	[ArrivalTime] [datetime] NOT NULL,
	[Price] [float] NOT NULL,
	[Duration] [int] NOT NULL,
	[DayOfFlight] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Flights] PRIMARY KEY CLUSTERED 
(
	[FlightId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FlightTravellerDetails]    Script Date: 21-02-2020 19:15:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FlightTravellerDetails](
	[FlightTravellerId] [int] IDENTITY(1,1) NOT NULL,
	[FlightBookingId] [int] NOT NULL,
	[FirstName] [varchar](20) NOT NULL,
	[LastName] [varchar](20) NOT NULL,
	[Age] [int] NOT NULL,
	[EmailId] [varchar](20) NOT NULL,
	[ContactNumber] [varchar](15) NOT NULL,
 CONSTRAINT [PK_FlightTravellerDetails] PRIMARY KEY CLUSTERED 
(
	[FlightTravellerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KycDetails]    Script Date: 21-02-2020 19:15:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KycDetails](
	[KycDetailId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[AadharNumber] [bigint] NOT NULL,
	[AadharAddress] [varchar](50) NOT NULL,
	[AadharName] [varchar](20) NOT NULL,
 CONSTRAINT [PK_KycDetails] PRIMARY KEY CLUSTERED 
(
	[KycDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 21-02-2020 19:15:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[CartId] [int] NOT NULL,
	[DeliveryAddressId] [int] NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OTPs]    Script Date: 21-02-2020 19:15:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OTPs](
	[OTPId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[OtpNumber] [int] NOT NULL,
	[ActivateTime] [datetime] NOT NULL,
	[DeactivateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_OTPs] PRIMARY KEY CLUSTERED 
(
	[OTPId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Recharges]    Script Date: 21-02-2020 19:15:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Recharges](
	[RechargeId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[Operator] [varchar](10) NOT NULL,
	[Amount] [int] NOT NULL,
 CONSTRAINT [PK_Recharges] PRIMARY KEY CLUSTERED 
(
	[RechargeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[States]    Script Date: 21-02-2020 19:15:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[States](
	[StateId] [int] IDENTITY(1,1) NOT NULL,
	[StateName] [varchar](15) NOT NULL,
 CONSTRAINT [PK_Stated] PRIMARY KEY CLUSTERED 
(
	[StateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transactions]    Script Date: 21-02-2020 19:15:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transactions](
	[TransactionId] [int] IDENTITY(1,1) NOT NULL,
	[ApplicationObjectId] [int] NOT NULL,
	[TransactionDate] [datetime] NOT NULL,
	[UserId] [int] NOT NULL,
	[ReceiverId] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Transactions] PRIMARY KEY CLUSTERED 
(
	[TransactionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserDetails]    Script Date: 21-02-2020 19:15:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserDetails](
	[UserDetailId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[FirstName] [varchar](20) NOT NULL,
	[LastName] [varchar](20) NOT NULL,
	[DateOfBirth] [datetime] NOT NULL,
	[ApplicationObjectId] [int] NOT NULL,
 CONSTRAINT [PK_UserDetails] PRIMARY KEY CLUSTERED 
(
	[UserDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 21-02-2020 19:15:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[MobileNumber] [nchar](10) NOT NULL,
	[EmailId] [varchar](30) NOT NULL,
	[Password] [varchar](15) NOT NULL,
	[KYCStatus] [bit] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Wallets]    Script Date: 21-02-2020 19:15:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Wallets](
	[WalletId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[Balance] [float] NOT NULL,
	[TransactionId] [int] NOT NULL,
 CONSTRAINT [PK_Wallets] PRIMARY KEY CLUSTERED 
(
	[WalletId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ApplicationObjects]  WITH CHECK ADD  CONSTRAINT [FK_ApplicationObjects_ApplicationObjectTypes] FOREIGN KEY([ApplicationObjectTypeId])
REFERENCES [dbo].[ApplicationObjectTypes] ([ApplicationObjectTypeId])
GO
ALTER TABLE [dbo].[ApplicationObjects] CHECK CONSTRAINT [FK_ApplicationObjects_ApplicationObjectTypes]
GO
ALTER TABLE [dbo].[BankCardDetails]  WITH CHECK ADD  CONSTRAINT [FK_BankCardDetails_Banks] FOREIGN KEY([BankId])
REFERENCES [dbo].[Banks] ([BankId])
GO
ALTER TABLE [dbo].[BankCardDetails] CHECK CONSTRAINT [FK_BankCardDetails_Banks]
GO
ALTER TABLE [dbo].[BookingMasters]  WITH CHECK ADD  CONSTRAINT [FK_BookingMasters_ApplicationObjects] FOREIGN KEY([ApplicationObjectId])
REFERENCES [dbo].[ApplicationObjects] ([ApplicationObjectId])
GO
ALTER TABLE [dbo].[BookingMasters] CHECK CONSTRAINT [FK_BookingMasters_ApplicationObjects]
GO
ALTER TABLE [dbo].[BookingMasters]  WITH CHECK ADD  CONSTRAINT [FK_BookingMasters_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[BookingMasters] CHECK CONSTRAINT [FK_BookingMasters_Users]
GO
ALTER TABLE [dbo].[BusAvailableSeats]  WITH CHECK ADD  CONSTRAINT [FK_BusAvailableSeats_Buses] FOREIGN KEY([BusId])
REFERENCES [dbo].[Buses] ([BusId])
GO
ALTER TABLE [dbo].[BusAvailableSeats] CHECK CONSTRAINT [FK_BusAvailableSeats_Buses]
GO
ALTER TABLE [dbo].[BusBookings]  WITH CHECK ADD  CONSTRAINT [FK_BusBookings_BookingMasters] FOREIGN KEY([BookingMasterId])
REFERENCES [dbo].[BookingMasters] ([BookingMasterId])
GO
ALTER TABLE [dbo].[BusBookings] CHECK CONSTRAINT [FK_BusBookings_BookingMasters]
GO
ALTER TABLE [dbo].[BusBookings]  WITH CHECK ADD  CONSTRAINT [FK_BusBookings_Buses] FOREIGN KEY([BusId])
REFERENCES [dbo].[Buses] ([BusId])
GO
ALTER TABLE [dbo].[BusBookings] CHECK CONSTRAINT [FK_BusBookings_Buses]
GO
ALTER TABLE [dbo].[Buses]  WITH CHECK ADD  CONSTRAINT [FK_Buses_ApplicationObjects] FOREIGN KEY([ApplicationObjectId])
REFERENCES [dbo].[ApplicationObjects] ([ApplicationObjectId])
GO
ALTER TABLE [dbo].[Buses] CHECK CONSTRAINT [FK_Buses_ApplicationObjects]
GO
ALTER TABLE [dbo].[BusTravellerDetails]  WITH CHECK ADD  CONSTRAINT [FK_BusTravellerDetails_BusBookings] FOREIGN KEY([BusBookingId])
REFERENCES [dbo].[BusBookings] ([BusBookingId])
GO
ALTER TABLE [dbo].[BusTravellerDetails] CHECK CONSTRAINT [FK_BusTravellerDetails_BusBookings]
GO
ALTER TABLE [dbo].[Carts]  WITH CHECK ADD  CONSTRAINT [FK_Carts_FashionProducts] FOREIGN KEY([FashionProductId])
REFERENCES [dbo].[FashionProducts] ([FashionProductId])
GO
ALTER TABLE [dbo].[Carts] CHECK CONSTRAINT [FK_Carts_FashionProducts]
GO
ALTER TABLE [dbo].[Carts]  WITH CHECK ADD  CONSTRAINT [FK_Carts_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Carts] CHECK CONSTRAINT [FK_Carts_Users]
GO
ALTER TABLE [dbo].[Cities]  WITH CHECK ADD  CONSTRAINT [FK_Cities_States] FOREIGN KEY([StateId])
REFERENCES [dbo].[States] ([StateId])
GO
ALTER TABLE [dbo].[Cities] CHECK CONSTRAINT [FK_Cities_States]
GO
ALTER TABLE [dbo].[DeliveryAddresses]  WITH CHECK ADD  CONSTRAINT [FK_DeliveryAddresses_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[DeliveryAddresses] CHECK CONSTRAINT [FK_DeliveryAddresses_Users]
GO
ALTER TABLE [dbo].[FashionProducts]  WITH CHECK ADD  CONSTRAINT [FK_FashionProducts_FashionSubCategories] FOREIGN KEY([FashionSubCategoryId])
REFERENCES [dbo].[FashionSubCategories] ([FashionSubCategoryId])
GO
ALTER TABLE [dbo].[FashionProducts] CHECK CONSTRAINT [FK_FashionProducts_FashionSubCategories]
GO
ALTER TABLE [dbo].[FashionProducts]  WITH CHECK ADD  CONSTRAINT [FK_FashionProducts_SellerProducts] FOREIGN KEY([SellerProductId])
REFERENCES [dbo].[SellerProducts] ([SellerProductId])
GO
ALTER TABLE [dbo].[FashionProducts] CHECK CONSTRAINT [FK_FashionProducts_SellerProducts]
GO
ALTER TABLE [dbo].[FashionSubCategories]  WITH CHECK ADD  CONSTRAINT [FK_FashionSubCategories_FashionCategories] FOREIGN KEY([FashionCategoryId])
REFERENCES [dbo].[FashionCategories] ([FashionCategoryId])
GO
ALTER TABLE [dbo].[FashionSubCategories] CHECK CONSTRAINT [FK_FashionSubCategories_FashionCategories]
GO
ALTER TABLE [dbo].[FlightBookings]  WITH CHECK ADD  CONSTRAINT [FK_FlightBookings_ApplicationObjects] FOREIGN KEY([ApplicationObjectId])
REFERENCES [dbo].[ApplicationObjects] ([ApplicationObjectId])
GO
ALTER TABLE [dbo].[FlightBookings] CHECK CONSTRAINT [FK_FlightBookings_ApplicationObjects]
GO
ALTER TABLE [dbo].[FlightBookings]  WITH CHECK ADD  CONSTRAINT [FK_FlightBookings_BookingMasters] FOREIGN KEY([BookingMasterId])
REFERENCES [dbo].[BookingMasters] ([BookingMasterId])
GO
ALTER TABLE [dbo].[FlightBookings] CHECK CONSTRAINT [FK_FlightBookings_BookingMasters]
GO
ALTER TABLE [dbo].[FlightBookings]  WITH CHECK ADD  CONSTRAINT [FK_FlightBookings_Flights] FOREIGN KEY([FlightId])
REFERENCES [dbo].[Flights] ([FlightId])
GO
ALTER TABLE [dbo].[FlightBookings] CHECK CONSTRAINT [FK_FlightBookings_Flights]
GO
ALTER TABLE [dbo].[FlightTravellerDetails]  WITH CHECK ADD  CONSTRAINT [FK_FlightTravellerDetails_FlightBookings] FOREIGN KEY([FlightBookingId])
REFERENCES [dbo].[FlightBookings] ([FlightBookingId])
GO
ALTER TABLE [dbo].[FlightTravellerDetails] CHECK CONSTRAINT [FK_FlightTravellerDetails_FlightBookings]
GO
ALTER TABLE [dbo].[Halls]  WITH CHECK ADD  CONSTRAINT [FK_Halls_Theatres] FOREIGN KEY([TheatreId])
REFERENCES [dbo].[Theatres] ([TheatreId])
GO
ALTER TABLE [dbo].[Halls] CHECK CONSTRAINT [FK_Halls_Theatres]
GO
ALTER TABLE [dbo].[KycDetails]  WITH CHECK ADD  CONSTRAINT [FK_KycDetails_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[KycDetails] CHECK CONSTRAINT [FK_KycDetails_Users]
GO
ALTER TABLE [dbo].[MovieBookings]  WITH CHECK ADD  CONSTRAINT [FK_MovieBookings_ApplicationObjects] FOREIGN KEY([ApplicationObjectId])
REFERENCES [dbo].[ApplicationObjects] ([ApplicationObjectId])
GO
ALTER TABLE [dbo].[MovieBookings] CHECK CONSTRAINT [FK_MovieBookings_ApplicationObjects]
GO
ALTER TABLE [dbo].[MovieBookings]  WITH CHECK ADD  CONSTRAINT [FK_MovieBookings_MovieHalls] FOREIGN KEY([MovieHallId])
REFERENCES [dbo].[MovieHalls] ([MovieHallId])
GO
ALTER TABLE [dbo].[MovieBookings] CHECK CONSTRAINT [FK_MovieBookings_MovieHalls]
GO
ALTER TABLE [dbo].[MovieBookings]  WITH CHECK ADD  CONSTRAINT [FK_MovieBookings_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[MovieBookings] CHECK CONSTRAINT [FK_MovieBookings_Users]
GO
ALTER TABLE [dbo].[MovieHalls]  WITH CHECK ADD  CONSTRAINT [FK_MovieHalls_Halls] FOREIGN KEY([HallId])
REFERENCES [dbo].[Halls] ([HallId])
GO
ALTER TABLE [dbo].[MovieHalls] CHECK CONSTRAINT [FK_MovieHalls_Halls]
GO
ALTER TABLE [dbo].[MovieHalls]  WITH CHECK ADD  CONSTRAINT [FK_MovieHalls_Movies] FOREIGN KEY([MovieId])
REFERENCES [dbo].[Movies] ([MovieId])
GO
ALTER TABLE [dbo].[MovieHalls] CHECK CONSTRAINT [FK_MovieHalls_Movies]
GO
ALTER TABLE [dbo].[Movies]  WITH CHECK ADD  CONSTRAINT [FK_Movies_Cities] FOREIGN KEY([CityId])
REFERENCES [dbo].[Cities] ([CityId])
GO
ALTER TABLE [dbo].[Movies] CHECK CONSTRAINT [FK_Movies_Cities]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Carts] FOREIGN KEY([CartId])
REFERENCES [dbo].[Carts] ([CartId])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Carts]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_DeliveryAddresses] FOREIGN KEY([DeliveryAddressId])
REFERENCES [dbo].[DeliveryAddresses] ([DeliveryAddressId])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_DeliveryAddresses]
GO
ALTER TABLE [dbo].[OTPs]  WITH CHECK ADD  CONSTRAINT [FK_OTPs_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[OTPs] CHECK CONSTRAINT [FK_OTPs_Users]
GO
ALTER TABLE [dbo].[Recharges]  WITH CHECK ADD  CONSTRAINT [FK_Recharges_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Recharges] CHECK CONSTRAINT [FK_Recharges_Users]
GO
ALTER TABLE [dbo].[SellerProducts]  WITH CHECK ADD  CONSTRAINT [FK_SellerProducts_FashionCategories1] FOREIGN KEY([BrandId])
REFERENCES [dbo].[Brands] ([BrandId])
GO
ALTER TABLE [dbo].[SellerProducts] CHECK CONSTRAINT [FK_SellerProducts_FashionCategories1]
GO
ALTER TABLE [dbo].[SellerProducts]  WITH CHECK ADD  CONSTRAINT [FK_SellerProducts_Sellers1] FOREIGN KEY([SellerId])
REFERENCES [dbo].[Sellers] ([SellerId])
GO
ALTER TABLE [dbo].[SellerProducts] CHECK CONSTRAINT [FK_SellerProducts_Sellers1]
GO
ALTER TABLE [dbo].[Transactions]  WITH CHECK ADD  CONSTRAINT [FK_Transactions_ApplicationObjects] FOREIGN KEY([ApplicationObjectId])
REFERENCES [dbo].[ApplicationObjects] ([ApplicationObjectId])
GO
ALTER TABLE [dbo].[Transactions] CHECK CONSTRAINT [FK_Transactions_ApplicationObjects]
GO
ALTER TABLE [dbo].[Transactions]  WITH CHECK ADD  CONSTRAINT [FK_Transactions_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Transactions] CHECK CONSTRAINT [FK_Transactions_Users]
GO
ALTER TABLE [dbo].[UserDetails]  WITH CHECK ADD  CONSTRAINT [FK_UserDetails_ApplicationObjects] FOREIGN KEY([ApplicationObjectId])
REFERENCES [dbo].[ApplicationObjects] ([ApplicationObjectId])
GO
ALTER TABLE [dbo].[UserDetails] CHECK CONSTRAINT [FK_UserDetails_ApplicationObjects]
GO
ALTER TABLE [dbo].[UserDetails]  WITH CHECK ADD  CONSTRAINT [FK_UserDetails_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[UserDetails] CHECK CONSTRAINT [FK_UserDetails_Users]
GO
ALTER TABLE [dbo].[Wallets]  WITH CHECK ADD  CONSTRAINT [FK_Wallets_Transactions] FOREIGN KEY([TransactionId])
REFERENCES [dbo].[Transactions] ([TransactionId])
GO
ALTER TABLE [dbo].[Wallets] CHECK CONSTRAINT [FK_Wallets_Transactions]
GO
ALTER TABLE [dbo].[Wallets]  WITH CHECK ADD  CONSTRAINT [FK_Wallets_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Wallets] CHECK CONSTRAINT [FK_Wallets_Users]
GO
/****** Object:  StoredProcedure [dbo].[spSearchFlights]    Script Date: 21-02-2020 19:15:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spSearchFlights]
@Source varchar(20) , @Destination varchar(20), @Date datetime

As
select * from Flights where Source= @Source and Destination = @Destination and DayOfFlight = datename(weekday,@Date);
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[58] 4[3] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "FashionSubCategories"
            Begin Extent = 
               Top = 37
               Left = 557
               Bottom = 150
               Right = 767
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "SellerProducts"
            Begin Extent = 
               Top = 218
               Left = 553
               Bottom = 449
               Right = 741
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Sellers"
            Begin Extent = 
               Top = 6
               Left = 805
               Bottom = 187
               Right = 975
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "FashionProducts"
            Begin Extent = 
               Top = 5
               Left = 281
               Bottom = 145
               Right = 487
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Carts"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 181
               Right = 220
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vCartItems'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vCartItems'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vCartItems'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[65] 4[3] 2[19] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Movies"
            Begin Extent = 
               Top = 33
               Left = 34
               Bottom = 146
               Right = 204
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Theatres"
            Begin Extent = 
               Top = 29
               Left = 785
               Bottom = 191
               Right = 955
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Halls"
            Begin Extent = 
               Top = 9
               Left = 548
               Bottom = 187
               Right = 718
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Cities"
            Begin Extent = 
               Top = 208
               Left = 292
               Bottom = 327
               Right = 462
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "MovieHalls"
            Begin Extent = 
               Top = 16
               Left = 285
               Bottom = 170
               Right = 455
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ApplicationObjects"
            Begin Extent = 
               Top = 252
               Left = 899
               Bottom = 382
               Right = 1119
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "MovieBookings"
            Begin Extent = 
               Top = 227
               Left = 529
               Bottom = 391
               Right = 724
            End
            D' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vMovieBook'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'isplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vMovieBook'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vMovieBook'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[51] 4[10] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Theatres"
            Begin Extent = 
               Top = 66
               Left = 516
               Bottom = 188
               Right = 686
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Movies"
            Begin Extent = 
               Top = 3
               Left = 36
               Bottom = 122
               Right = 206
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Cities"
            Begin Extent = 
               Top = 13
               Left = 291
               Bottom = 126
               Right = 461
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Halls"
            Begin Extent = 
               Top = 164
               Left = 36
               Bottom = 320
               Right = 206
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "MovieHalls"
            Begin Extent = 
               Top = 226
               Left = 453
               Bottom = 384
               Right = 623
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ApplicationObjects"
            Begin Extent = 
               Top = 143
               Left = 1102
               Bottom = 273
               Right = 1322
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "MovieBookings"
            Begin Extent = 
               Top = 189
               Left = 778
               Bottom = 319
               Right = 973
            End
           ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vMovieDetails'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N' DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vMovieDetails'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vMovieDetails'
GO
USE [master]
GO
ALTER DATABASE [PaytmDb] SET  READ_WRITE 
GO
