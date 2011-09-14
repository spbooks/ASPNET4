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

Protected Sub employeeDetails_ModeChanging(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.DetailsViewModeEventArgs) Handles employeeDetails.ModeChanging
  ' Change current mode to the selected one
  employeeDetails.ChangeMode(e.NewMode)
  ' Rebind the grid
  BindDetails()
End Sub

Protected Sub employeeDetails_ItemUpdating(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.DetailsViewUpdateEventArgs) Handles employeeDetails.ItemUpdating
  ' Read the employee ID from the DetailsView object
  Dim employeeId As Integer = employeeDetails.DataKey.Value
  ' Find the TextBox controls with updated data
  Dim newAddressTextBox As TextBox = _
      employeeDetails.FindControl("editAddressTextBox")
  Dim newCityTextBox As TextBox = _
      employeeDetails.FindControl("editCityTextBox")
  ' Extract the updated data from the TextBoxes
  Dim newAddress As String = newAddressTextBox.Text
  Dim newCity As String = newCityTextBox.Text
  ' Declare data objects
  Dim conn As SqlConnection
  Dim comm As SqlCommand
  ' Read the connection string from Web.config
  Dim connectionString As String = _
      ConfigurationManager.ConnectionStrings( _
      "Dorknozzle").ConnectionString
  ' Initialize connection
  conn = New SqlConnection(connectionString)
  ' Create command 
  comm = New SqlCommand("UpdateEmployeeDetails", conn)
  comm.CommandType = Data.CommandType.StoredProcedure
  ' Add command parameters
  comm.Parameters.Add("@EmployeeID", Data.SqlDbType.Int)
  comm.Parameters("@EmployeeID").Value = employeeId
  comm.Parameters.Add("@NewAddress", Data.SqlDbType.NVarChar, 50)
  comm.Parameters("@NewAddress").Value = newAddress
  comm.Parameters.Add("@NewCity", Data.SqlDbType.NVarChar, 50)
  comm.Parameters("@NewCity").Value = newCity
  ' Enclose database code in Try-Catch-Finally
  Try
    ' Open the connection
    conn.Open()
    ' Execute the command
    comm.ExecuteNonQuery()
  Finally
    ' Close the connection
    conn.Close()
  End Try
  ' Exit edit mode
  employeeDetails.ChangeMode(DetailsViewMode.ReadOnly)
  ' Reload the employees grid
  BindGrid()
  ' Reload the details view
  BindDetails()
End Sub
End Class
