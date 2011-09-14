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
    // Bind the grid to the DataSet
    departmentsGrid.DataSource = dataSet;
    departmentsGrid.DataBind();
  }
}
