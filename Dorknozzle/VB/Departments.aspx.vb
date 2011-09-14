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
  ' Prepare the sort expression using the gridSortDirection and
  ' gridSortExpression properties
  Dim sortExpression As String
  If gridSortDirection = SortDirection.Ascending Then
    sortExpression = gridSortExpression & " ASC"
  Else
    sortExpression = gridSortExpression & " DESC"
  End If
  ' Sort the data
  dataSet.Tables("Departments").DefaultView.Sort = sortExpression
  ' Bind the grid to the DataSet
  departmentsGrid.DataSource = _
      dataSet.Tables("Departments").DefaultView
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

Protected Sub departmentsGrid_Sorting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewSortEventArgs) Handles departmentsGrid.Sorting
  Dim sortExpression As String = e.SortExpression
  ' Decide and save the new sort direction
  If (sortExpression = gridSortExpression) Then
    If gridSortDirection = SortDirection.Ascending Then
      gridSortDirection = SortDirection.Descending
    Else
      gridSortDirection = SortDirection.Ascending
    End If
  Else
    gridSortDirection = WebControls.SortDirection.Ascending
  End If
  ' Save the new sort expression
  gridSortExpression = sortExpression
  ' Rebind the grid to its data source
  BindGrid()
End Sub

Private Property gridSortDirection() As SortDirection
  Get
    ' Initial state is Ascending
    If (ViewState("GridSortDirection") Is Nothing) Then
      ViewState("GridSortDirection") = SortDirection.Ascending
    End If
    ' Return the state
    Return ViewState("GridSortDirection")
  End Get
  Set(ByVal value As SortDirection)
    ViewState("GridSortDirection") = value
  End Set
End Property

Private Property gridSortExpression() As String
  Get
    ' Initial sort expression is DepartmentID
    If (ViewState("GridSortExpression") Is Nothing) Then
      ViewState("GridSortExpression") = "DepartmentID"
    End If
    ' Return the sort expression
    Return ViewState("GridSortExpression")
  End Get
  Set(ByVal value As String)
    ViewState("GridSortExpression") = value
  End Set
End Property
End Class
