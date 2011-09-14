CREATE PROCEDURE InsertHelpDesk
(
  @EmployeeID int,
  @StationNumber int,
  @CategoryID int,
  @SubjectID int,
  @Description nvarchar(50),
  @StatusID int
)
AS
INSERT INTO HelpDesk (EmployeeID, StationNumber, CategoryID,
    SubjectID, Description, StatusID)
VALUES (@EmployeeID, @StationNumber, @CategoryID, @SubjectID,
    @Description, @StatusID)