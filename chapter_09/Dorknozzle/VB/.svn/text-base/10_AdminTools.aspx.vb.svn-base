Imports System.Data.SqlClient
Imports System.Configuration

Partial Class AdminTools
    Inherits System.Web.UI.Page

Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
  ' Read the employees list when initially loading the page
  If Not IsPostBack Then
    LoadEmployeesList()
  End If
End Sub

Private Sub LoadEmployeesList()
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
      "SELECT EmployeeID, Name FROM Employees", conn)
  ' Enclose database code in Try-Catch-Finally
  Try
    ' Open the connection
    conn.Open()
    ' Execute the command
    reader = comm.ExecuteReader()
    ' Populate the list of employees
    employeesList.DataSource = reader
    employeesList.DataValueField = "EmployeeID"
    employeesList.DataTextField = "Name"
    employeesList.DataBind()
    ' Close the reader
    reader.Close()
  Catch
    ' Display error message
    dbErrorLabel.Text = _
        "Error loading the list of employees!<br />"
  Finally
    ' Close the connection
    conn.Close()
  End Try
  ' Disable the update button
  updateButton.Enabled = False
  ' Clear any values in the TextBox controls
  nameTextBox.Text = ""
  userNameTextBox.Text = ""
  addressTextBox.Text = ""
  cityTextBox.Text = ""
  stateTextBox.Text = ""
  zipTextBox.Text = ""
  homePhoneTextBox.Text = ""
  extensionTextBox.Text = ""
  mobilePhoneTextBox.Text = ""
End Sub

Protected Sub selectButton_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles selectButton.Click
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
      "SELECT Name, Username, Address, City, State, Zip, " & _
      "HomePhone, Extension, MobilePhone FROM Employees " & _
      "WHERE EmployeeID = @EmployeeID", conn)
  ' Add command parameters
  comm.Parameters.Add("@EmployeeID", Data.SqlDbType.Int)
  comm.Parameters.Item("@EmployeeID").Value = _
      employeesList.SelectedItem.Value
  ' Enclose database code in Try-Catch-Finally
  Try
    ' Open the connection
    conn.Open()
    ' Execute the command
    reader = comm.ExecuteReader()
    ' Display the data on the form
    If reader.Read() Then
      nameTextBox.Text = reader.Item("Name").ToString()
      userNameTextBox.Text = reader.Item("Username").ToString()
      addressTextBox.Text = reader.Item("Address").ToString()
      cityTextBox.Text = reader.Item("City").ToString()
      stateTextBox.Text = reader.Item("State").ToString()
      zipTextBox.Text = reader.Item("Zip").ToString()
      homePhoneTextBox.Text = reader.Item("HomePhone").ToString()
      extensionTextBox.Text = reader.Item("Extension").ToString()
      mobilePhoneTextBox.Text = _
          reader.Item("MobilePhone").ToString()
    End If
    ' Close the reader
    reader.Close()
    ' Enable the Update button
    updateButton.Enabled = True
  Catch
    ' Display error message
    dbErrorLabel.Text = _
        "Error loading the employee details!<br />"
  Finally
    ' Close the connection
      conn.Close()
  End Try
End Sub
End Class
