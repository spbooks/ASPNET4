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
    // Obtain the index of the selected row
    int selectedRowIndex;
    selectedRowIndex = grid.SelectedIndex;
    // Read the name from the grid
    GridViewRow row = grid.Rows[selectedRowIndex];
    string name = row.Cells[0].Text;
    // Update the details label
    detailsLabel.Text = "You selected " + name + ".";
  }
}
