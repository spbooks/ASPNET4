CREATE PROCEDURE UpdateEmployee
(
  @EmployeeID Int,
  @NewName nvarchar(50),
  @NewUsername nvarchar(50)
)
AS
UPDATE Employees
SET Name = @NewName, Username = @NewUsername
WHERE EmployeeID = @EmployeeID