Imports System.Data.SqlClient
Imports System.Configuration

Partial Class HelpDesk
    Inherits System.Web.UI.Page

Protected Sub submitButton_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles submitButton.Click
  If Page.IsValid Then
    ' Define data objects
    Dim conn As SqlConnection
    Dim comm As SqlCommand
    ' Read the connection string from Web.config
    Dim connectionString As String = _
        ConfigurationManager.ConnectionStrings( _
        "Dorknozzle").ConnectionString
    ' Initialize connection
    conn = New SqlConnection(connectionString)
    ' Create command 
    comm = New SqlCommand("InsertHelpDesk", conn)
    ' Specify we're calling a stored procedure
    comm.CommandType = System.Data.CommandType.StoredProcedure
    ' Add command parameters
    comm.Parameters.Add("@EmployeeID", System.Data.SqlDbType.Int)
    comm.Parameters("@EmployeeID").Value = 5
    comm.Parameters.Add("@StationNumber", _
        System.Data.SqlDbType.Int)
    comm.Parameters("@StationNumber").Value = stationTextBox.Text
    comm.Parameters.Add("@CategoryID", System.Data.SqlDbType.Int)
    comm.Parameters("@CategoryID").Value = _
        categoryList.SelectedItem.Value
    comm.Parameters.Add("@SubjectID", System.Data.SqlDbType.Int)
    comm.Parameters("@SubjectID").Value = _
        subjectList.SelectedItem.Value
    comm.Parameters.Add("@Description", _
        System.Data.SqlDbType.NVarChar, 50)
    comm.Parameters("@Description").Value = _
        descriptionTextBox.Text
    comm.Parameters.Add("@StatusID", System.Data.SqlDbType.Int)
    comm.Parameters("@StatusID").Value = 1
    ' Enclose database code in Try-Catch-Finally
    Try
      ' Open the connection
      conn.Open()
      ' Execute the command
      comm.ExecuteNonQuery()
      ' Reload page if the query executed successfully
      Response.Redirect("HelpDesk.aspx")
    Catch
      ' Display error message
      dbErrorMessage.Text = _
          "Error submitting the help desk request! Please " & _
          "try again later, and/or change the entered data!"
    Finally
      ' Close the connection
      conn.Close()
    End Try
  End If
End Sub

Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
  If Not IsPostBack Then
    ' Define data objects
    Dim conn As SqlConnection
    Dim categoryComm As SqlCommand
    Dim subjectComm As SqlCommand
    Dim reader As SqlDataReader
    ' Read the connection string from Web.config
    Dim connectionString As String = _
        ConfigurationManager.ConnectionStrings( _
        "Dorknozzle").ConnectionString
    ' Initialize connection
    conn = New SqlConnection(connectionString)
    ' Create command to read the help desk categories
    categoryComm = New SqlCommand( _
        "SELECT CategoryID, Category FROM HelpDeskCategories", _
        conn)
    ' Create command to read the help desk subjects
    subjectComm = New SqlCommand( _
      "SELECT SubjectID, Subject FROM HelpDeskSubjects", conn)
    ' Enclose database code in Try-Catch-Finally
    Try
      ' Open the connection
      conn.Open()
      ' Execute the category command
      reader = categoryComm.ExecuteReader()
      ' Populate the list of categories
      categoryList.DataSource = reader
      categoryList.DataValueField = "CategoryID"
      categoryList.DataTextField = "Category"
      categoryList.DataBind()
      ' Close the reader
      reader.Close()
      ' Execute the subjects command
      reader = subjectComm.ExecuteReader()
      ' Populate the list of subjects
      subjectList.DataSource = reader
      subjectList.DataValueField = "SubjectID"
      subjectList.DataTextField = "Subject"
      subjectList.DataBind()
      ' Close the reader
      reader.Close()
    Finally
      ' Close the connection
      conn.Close()
    End Try
  End If
End Sub
End Class
