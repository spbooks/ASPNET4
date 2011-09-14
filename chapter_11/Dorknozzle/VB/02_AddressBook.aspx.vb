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
    grid.DataBind()
    ' Close the reader
    reader.Close()
  Finally
    ' Close the connection
    conn.Close()
  End Try
End Sub
End Class
