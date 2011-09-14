Imports System.Data.SqlClient
Imports System.Configuration

Partial Class EmployeeDirectory
    Inherits System.Web.UI.Page

Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
  If Not IsPostBack Then
    BindList()
  End If
End Sub

Protected Sub BindList()
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
      "SELECT EmployeeID, Name, Username FROM Employees", _
      conn)
  ' Enclose database code in Try-Catch-Finally
  Try
    ' Open the connection
    conn.Open()
    ' Execute the command
    reader = comm.ExecuteReader()
    ' Bind the reader to the DataList
    employeesList.DataSource = reader
    employeesList.DataBind()
    ' Close the reader
    reader.Close()
  Finally
    ' Close the connection
    conn.Close()
  End Try
End Sub

Protected Sub employeesList_ItemCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.DataListCommandEventArgs) Handles employeesList.ItemCommand
  ' Which button was clicked?
  If e.CommandName = "MoreDetailsPlease" Then
    ' Find the Literal control in the DataList item
    Dim li As Literal
    li = e.Item.FindControl("extraDetailsLiteral")
    ' Add content to the Literal control
    li.Text = "Employee ID: <strong>" & e.CommandArgument & _
        "</strong><br />"
  ElseIf e.CommandName = "EditItem" Then
    ' Set the index of the item being edited
    employeesList.EditItemIndex = e.Item.ItemIndex
    ' update the DataList
    BindList()
  ElseIf e.CommandName = "CancelEditing" Then
    ' Cancel edit mode
    employeesList.EditItemIndex = -1
    ' Refresh the DataList
    BindList()
  ElseIf e.CommandName = "UpdateItem" Then
    ' Get the employee ID
    Dim employeeId As Integer = e.CommandArgument
    ' Get the new username
    Dim nameTextBox As TextBox = _
        e.Item.FindControl("nameTextBox")
    Dim newName As String = nameTextBox.Text
    ' Get the new name
    Dim usernameTextBox As TextBox = _
        e.Item.FindControl("usernameTextBox")
    Dim newUsername As String = usernameTextBox.Text
    ' Update the item
    UpdateItem(employeeId, newName, newUsername)
    ' Cancel edit mode
    employeesList.EditItemIndex = -1
    ' Refresh the DataList
    BindList()
  End If
End Sub
End Class
