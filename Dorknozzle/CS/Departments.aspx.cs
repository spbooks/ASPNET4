using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class Departments : System.Web.UI.Page
{
  protected void Page_Load(object sender, EventArgs e)
  {
    if (!IsPostBack)
    {
      BindGrid();
    }
  }
  private void BindGrid()
  {
    // Define data objects
    SqlConnection conn;
    DataSet dataSet = new DataSet();
    SqlDataAdapter adapter;
    // Read the DataSet from the ViewState if available
    if(ViewState["DepartmentsDataSet"] == null)
    {
      // Read the connection string from Web.config
      string connectionString =
          ConfigurationManager.ConnectionStrings[
          "Dorknozzle"].ConnectionString;
      // Initialize connection
      conn = new SqlConnection(connectionString);
      // Create adapter
      adapter = new SqlDataAdapter(
          "SELECT DepartmentID, Department FROM Departments",
          conn);
      // Fill the DataSet
      adapter.Fill(dataSet, "Departments");
      // Store the DataSet in view state
      ViewState["DepartmentsDataSet"] = dataSet;
    }
    else
    {
      dataSet = (DataSet)ViewState["DepartmentsDataSet"];
    }
    // Prepare the sort expression using the gridSortDirection and
    // gridSortExpression properties
    string sortExpression;
    if (gridSortDirection == SortDirection.Ascending)
    {
      sortExpression = gridSortExpression + " ASC";
    }
    else
    {
      sortExpression = gridSortExpression + " DESC";
    }
    // Sort the data
    dataSet.Tables["Departments"].DefaultView.Sort = sortExpression;
    // Bind the grid to the DataSet
    departmentsGrid.DataSource =
      dataSet.Tables["Departments"].DefaultView;
    departmentsGrid.DataBind();
  }
    
  protected void departmentsGrid_PageIndexChanging(object sender, GridViewPageEventArgs e)
  {
    // Retrieve the new page index
    int newPageIndex = e.NewPageIndex;
    // Set the new page index of the GridView
    departmentsGrid.PageIndex = newPageIndex;
    // Bind the grid to its data source again to update its
    // contents
    BindGrid();
  }
  protected void departmentsGrid_Sorting(object sender, GridViewSortEventArgs e)
  {
    // Retrieve the name of the clicked column (sort expression)
    string sortExpression = e.SortExpression;
    // Decide and save the new sort direction
    if (sortExpression == gridSortExpression)
    {
      if (gridSortDirection == SortDirection.Ascending)
      {
        gridSortDirection = SortDirection.Descending;
      }
      else
      {
        gridSortDirection = SortDirection.Ascending;
      }
    }
    else
    {
      gridSortDirection = SortDirection.Ascending;
    }
    // Save the new sort expression
    gridSortExpression = sortExpression;
    // Rebind the grid to its data source
    BindGrid();
  }
  private SortDirection gridSortDirection
  {
    get
    {
      // Initial state is Ascending
      if (ViewState["GridSortDirection"] == null)
      {
        ViewState["GridSortDirection"] = SortDirection.Ascending;
      }
      // Return the state
      return (SortDirection)ViewState["GridSortDirection"];
    }
    set
    {
      ViewState["GridSortDirection"] = value;
    }
  }

  private string gridSortExpression
  {
    get
    {
      // Initial sort expression is DepartmentID
      if (ViewState["GridSortExpression"] == null)
      {
        ViewState["GridSortExpression"] = "DepartmentID";
      }
      // Return the sort expression
      return (string)ViewState["GridSortExpression"];
    }
    set
    {
      ViewState["GridSortExpression"] = value;
    }
  }
}
