CREATE TABLE [dbo].[FactSales] (
    [SalesKey]    INT      IDENTITY (1, 1) NOT NULL,
    [ProductKey]  INT      NOT NULL,
    [CustomerKey] INT      NOT NULL,
    [DateKey]     INT      NOT NULL, -- Conexión a DimDate
    [ShipperKey]  INT      NOT NULL, -- Conexión a DimShipper
    [OrderID]     INT      NOT NULL, -- Ticket de venta original
    [Quantity]    SMALLINT NOT NULL,
    [UnitPrice]   MONEY    NOT NULL,
    [TotalAmount] AS ([Quantity] * [UnitPrice]), -- Columna calculada
    CONSTRAINT [PK_FactSales] PRIMARY KEY CLUSTERED ([SalesKey] ASC),
    CONSTRAINT [FK_FactSales_DimProduct] FOREIGN KEY ([ProductKey]) REFERENCES [dbo].[DimProduct] ([ProductKey]),
    CONSTRAINT [FK_FactSales_DimCustomer] FOREIGN KEY ([CustomerKey]) REFERENCES [dbo].[DimCustomer] ([CustomerKey]),
    CONSTRAINT [FK_FactSales_DimDate] FOREIGN KEY ([DateKey]) REFERENCES [dbo].[DimDate] ([DateKey]),
    CONSTRAINT [FK_FactSales_DimShipper] FOREIGN KEY ([ShipperKey]) REFERENCES [dbo].[DimShipper] ([ShipperKey])
);