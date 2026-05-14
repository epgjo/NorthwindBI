CREATE TABLE [dbo].[DimProduct] (
    [ProductKey]   INT           IDENTITY (1, 1) NOT NULL,
    [ProductID]    INT           NOT NULL, -- ID original del OLTP (Bus de datos)
    [ProductName]  NVARCHAR (40) NOT NULL,
    [CategoryName] NVARCHAR (15) NULL,     -- Atributo desnormalizado
    [UnitPrice]    MONEY         NULL,
    CONSTRAINT [PK_DimProduct] PRIMARY KEY CLUSTERED ([ProductKey] ASC)
);