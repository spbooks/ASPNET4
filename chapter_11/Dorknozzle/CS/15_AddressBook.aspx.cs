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

public partial class AddressBook : System.Web.UI.Page
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
    SqlCommand comm;
    SqlDataReader reader;
    // Read the connection string from Web.config
    string connectionString =
        ConfigurationManager.ConnectionStrings[
        "Dorknozzle"].ConnectionString;
    // Initialize connection
    conn = new SqlConnection(connectionString);
    // Create command 
    comm = new SqlCommand(
        "SELECT EmployeeID, Name, City, State, MobilePhone " +
        "FROM Employees", conn);
    // Enclose database code in Try-Catch-Finally
    try
    {
      // Open the connection
      conn.Open();
      // Execute the command
      reader = comm.ExecuteReader();
      // Fill the grid with data
      grid.DataSource = reader;
      grid.DataKeyNames = new string[] { "EmployeeID" };
      grid.DataBind();
      // Close the reader
      reader.Close();
    }
    finally
    {
      // Close the connection
      conn.Close();
    }
  }
  protected void grid_SelectedIndexChanged(object sender, EventArgs e)
  {
    BindDetails();
  }
  private void BindDetails()
  {
    // Obtain the index of the selected row
    int selectedRowIndex = grid.SelectedIndex;
    // Read the employee ID
    int employeeId = (int)grid.DataKeys[selectedRowIndex].Value;
    // Define data objects
    SqlConnection conn;
    SqlCommand comm;
    SqlDataReader reader;
    // Read the connection string from Web.config
    string connectionString =
        ConfigurationManager.ConnectionStrings[
        "Dorknozzle"].ConnectionString;
    // Initialize connection
    conn = new SqlConnection(connectionString);
    // Create command
    comm = new SqlCommand(
        "SELECT EmployeeID, Name, Address, City, State, Zip, " +
        "HomePhone, Extension FROM Employees " +
        "WHERE EmployeeID=@EmployeeID", conn);
    // Add the EmployeeID parameter
    comm.Parameters.Add("EmployeeID", SqlDbType.Int);
    comm.Parameters["EmployeeID"].Value = employeeId;
    // Enclose database code in Try-Catch-Finally
    try
    {
      // Open the connection
      conn.Open();
      // Execute the command
      reader = comm.ExecuteReader();
      // Fill the grid with data
      employeeDetails.DataSource = reader;
      employeeDetails.DataKeyNames = new string[] { "EmployeeID" };
      employeeDetails.DataBind();
      // Close the reader
      reader.Close();
    }
    finally
    {
      // Close the connection
      conn.Close();
    }
  }
  protected void employeeDetails_ModeChanging(object sender, DetailsViewModeEventArgs e)
  {
    // Change current mode to the selected one
    employeeDetails.ChangeMode(e.NewMode);
    // Rebind the grid
    BindDetails();
  }
}
