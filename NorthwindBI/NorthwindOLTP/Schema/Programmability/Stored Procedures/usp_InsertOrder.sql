CREATE PROCEDURE [dbo].[usp_InsertOrder]
    @CustomerID NCHAR(5),
    @EmployeeID INT,
    @ShipVia INT,
    @ProductID INT,
    @Quantity SMALLINT,
    @UnitPrice MONEY
AS
BEGIN
    SET NOCOUNT ON;
    
    BEGIN TRY
        BEGIN TRANSACTION;

        -- 1. Insertar el encabezado del pedido
        DECLARE @NewOrderID INT;
        
        INSERT INTO [dbo].[Orders] (CustomerID, EmployeeID, OrderDate, ShipVia)
        VALUES (@CustomerID, @EmployeeID, GETDATE(), @ShipVia);
        
        SET @NewOrderID = SCOPE_IDENTITY();

        -- 2. Insertar el detalle del pedido
        INSERT INTO [dbo].[OrderDetails] (OrderID, ProductID, UnitPrice, Quantity, Discount)
        VALUES (@NewOrderID, @ProductID, @UnitPrice, @Quantity, 0);

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION;
        THROW;
    END CATCH
END