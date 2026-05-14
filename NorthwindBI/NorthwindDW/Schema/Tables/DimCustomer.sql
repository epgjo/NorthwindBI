CREATE TABLE [dbo].[DimCustomer] (
    [CustomerKey] INT           IDENTITY (1, 1) NOT NULL,
    [CustomerID]  NCHAR (5)     NOT NULL, -- ID original del OLTP
    [CompanyName] NVARCHAR (40) NOT NULL,
    [City]        NVARCHAR (15) NULL,
    [Country]     NVARCHAR (15) NULL,
    CONSTRAINT [PK_DimCustomer] PRIMARY KEY CLUSTERED ([CustomerKey] ASC)
);
