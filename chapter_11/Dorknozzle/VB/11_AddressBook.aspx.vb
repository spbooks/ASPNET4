Imports System.Data.SqlClient

Partial Class AddressBook
    Inherits System.Web.UI.Page

Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
  If Not IsPostBack Then
    BindGrid()
  End If
End Sub

Private Sub BindGrid()
  ' Define data objects
  Dim conn As SqlConnection
  Dim comm As SqlCommand
  Dim reader As SqlDataReader
  ' Read the connection string from Web.config
  Dim connectionString As String = _
      ConfigurationManager.ConnectionStrings( _
      "Dorknozzle").ConnectionString
  ' Initialize connection
  conn = New SqlConnection(connectionString)
  ' Create command 
  comm = New SqlCommand( _
      "SELECT EmployeeID, Name, City, State, MobilePhone " & _
      "FROM Employees", conn)
  ' Enclose database code in Try-Catch-Finally
  Try
    ' Open the connection
    conn.Open()
    ' Execute the command
    reader = comm.ExecuteReader()
    ' Fill the grid with data
    grid.DataSource = reader
    grid.DataKeyNames = New String() {"EmployeeID"}
    grid.DataBind()
    ' Close the reader
    reader.Close()
  Finally
    ' Close the connection
    conn.Close()
  End Try
End Sub

Protected Sub grid_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles grid.SelectedIndexChanged
  BindDetails()
End Sub

Private Sub BindDetails()
  ' Obtain the index of the selected row
  Dim selectedRowIndex As Integer = grid.SelectedIndex
  ' Read the employee ID
  Dim employeeId As Integer = _
      grid.DataKeys(selectedRowIndex).Value
  ' Define data objects
  Dim conn As SqlConnection
  Dim comm As SqlCommand
  Dim reader As SqlDataReader
  ' Read the connection string from Web.config
  Dim connectionString As String = _
      ConfigurationManager.ConnectionStrings( _
      "Dorknozzle").ConnectionString
  ' Initialize connection
  conn = New SqlConnection(connectionString)
  ' Create command 
  comm = New SqlCommand( _
      "SELECT EmployeeID, Name, Address, City, State, Zip, " & _
      "HomePhone, Extension FROM Employees " & _
      "WHERE EmployeeID=@EmployeeID", conn)
  ' Add the EmployeeID parameter
  comm.Parameters.Add("EmployeeID", Data.SqlDbType.Int)
  comm.Parameters("EmployeeID").Value = employeeId
  ' Enclose database code in Try-Catch-Finally
  Try
    ' Open the connection
    conn.Open()
    ' Execute the command
    reader = comm.ExecuteReader()
    ' Fill the grid with data
    employeeDetails.DataSource = reader
    employeeDetails.DataKeyNames = New String() {"EmployeeID"}
    employeeDetails.DataBind()
    ' Close the reader
    reader.Close()
  Finally
    ' Close the connection
    conn.Close()
  End Try
End Sub
End Class
