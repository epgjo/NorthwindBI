USE [NorthwindOLTP];
GO

-- Datos para Shippers
SET IDENTITY_INSERT [dbo].[Shippers] ON;
INSERT INTO [dbo].[Shippers] ([ShipperID], [CompanyName], [Phone]) VALUES
(1, 'Speedy Express', '(503) 555-9831'),
(2, 'United Package', '(503) 555-3199'),
(3, 'Federal Shipping', '(503) 555-9931');
SET IDENTITY_INSERT [dbo].[Shippers] OFF;

-- Datos para Customers (Primeros 5 de 20)
INSERT INTO [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [City], [Country]) VALUES
('ALFKI', 'Alfreds Futterkiste', 'Maria Anders', 'Berlin', 'Germany'),
('ANATR', 'Ana Trujillo Emparedados', 'Ana Trujillo', 'México D.F.', 'Mexico'),
('ANTON', 'Antonio Moreno Taquería', 'Antonio Moreno', 'México D.F.', 'Mexico'),
('AROUT', 'Around the Horn', 'Thomas Hardy', 'London', 'UK'),
('BERGS', 'Berglunds snabbköp', 'Christina Berglund', 'Luleå', 'Sweden');
-- ... continuar hasta 20
GO