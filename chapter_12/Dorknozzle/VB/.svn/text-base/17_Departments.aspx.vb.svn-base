Imports System.Data.SqlClient
Imports System.Data
Imports System.Configuration

Partial Class Departments
    Inherits System.Web.UI.Page

Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
  If Not Page.IsPostBack Then
    BindGrid()
  End If
End Sub

Private Sub BindGrid()
  ' Define data objects
  Dim conn As SqlConnection
  Dim dataSet As New DataSet
  Dim adapter As SqlDataAdapter
  ' Read the DataSet from the ViewState if available
  If ViewState("DepartmentsDataSet") Is Nothing Then
    ' Read the connection string from Web.config
    Dim connectionString As String = _
        ConfigurationManager.ConnectionStrings( _
        "Dorknozzle").ConnectionString
    ' Initialize connection
    conn = New SqlConnection(connectionString)
    ' Create adapter
    adapter = New SqlDataAdapter( _
        "SELECT DepartmentID, Department FROM Departments", _
        conn)
    ' Fill the DataSet
    adapter.Fill(dataSet, "Departments")
    ' Store the DataSet in view state
    ViewState("DepartmentsDataSet") = dataSet
  Else
    dataSet = ViewState("DepartmentsDataSet")
  End If
  ' Bind the grid to the DataSet
  departmentsGrid.DataSource = dataSet
  departmentsGrid.DataBind()
End Sub

Protected Sub departmentsGrid_PageIndexChanging(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewPageEventArgs) Handles departmentsGrid.PageIndexChanging
  ' Retrieve the new page index
  Dim newPageIndex As Integer = e.NewPageIndex
  ' Set the new page index of the GridView
  departmentsGrid.PageIndex = newPageIndex
  ' Bind the grid to its data source again to update its contents
  BindGrid()
End Sub
End Class
