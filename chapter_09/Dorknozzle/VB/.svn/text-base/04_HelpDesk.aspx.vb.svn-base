Imports System.Data.SqlClient
Imports System.Configuration

Partial Class HelpDesk
    Inherits System.Web.UI.Page

Protected Sub submitButton_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles submitButton.Click
  If Page.IsValid Then
    ' Code that uses the data entered by the user
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
