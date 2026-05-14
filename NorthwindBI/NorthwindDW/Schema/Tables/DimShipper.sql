CREATE TABLE [dbo].[DimShipper] (
    [ShipperKey]  INT           IDENTITY (1, 1) NOT NULL,
    [ShipperID]   INT           NOT NULL, -- ID del OLTP
    [CompanyName] NVARCHAR (40) NOT NULL,
    CONSTRAINT [PK_DimShipper] PRIMARY KEY CLUSTERED ([ShipperKey] ASC)
);