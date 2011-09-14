CREATE PROCEDURE UpdateEmployeeDetails
(
  @EmployeeID Int,
  @NewAddress nvarchar(50),
  @NewCity nvarchar(50)
)
AS
UPDATE Employees
SET Address = @NewAddress, City = @NewCity
WHERE EmployeeID = @EmployeeID