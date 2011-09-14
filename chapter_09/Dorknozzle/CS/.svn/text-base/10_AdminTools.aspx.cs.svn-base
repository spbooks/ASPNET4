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

public partial class AdminTools : System.Web.UI.Page
{
  protected void Page_Load(object sender, EventArgs e)
  {
    // Read the employees list when initially loading the page
    if (!IsPostBack)
    {
      LoadEmployeesList();
    }
  }
  private void LoadEmployeesList()
  {
    // Declare objects
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
        "SELECT EmployeeID, Name FROM Employees", conn);
    // Enclose database code in Try-Catch-Finally
    try
    {
      // Open the connection
      conn.Open();
      // Execute the command
      reader = comm.ExecuteReader();
      // Populate the list of categories
      employeesList.DataSource = reader;
      employeesList.DataValueField = "EmployeeID";
      employeesList.DataTextField = "Name";
      employeesList.DataBind();
      // Close the reader
      reader.Close();
    }
    catch
    {
      // Display error message
      dbErrorLabel.Text =
          "Error loading the list of employees!<br />";
    }
    finally
    {
      // Close the connection
      conn.Close();
    }
    // Disable the update button
    updateButton.Enabled = false;
    // Clear any values in the TextBox controls
    nameTextBox.Text = "";
    userNameTextBox.Text = "";
    addressTextBox.Text = "";
    cityTextBox.Text = "";
    stateTextBox.Text = "";
    zipTextBox.Text = "";
    homePhoneTextBox.Text = "";
    extensionTextBox.Text = "";
    mobilePhoneTextBox.Text = "";
  }
  protected void selectButton_Click(object sender, EventArgs e)
  {
    // Declare objects
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
        "SELECT Name, Username, Address, City, State, Zip, " +
        "HomePhone, Extension, MobilePhone FROM Employees " +
        "WHERE EmployeeID = @EmployeeID", conn);
    // Add command parameters
    comm.Parameters.Add("@EmployeeID", System.Data.SqlDbType.Int);
    comm.Parameters["@EmployeeID"].Value =
        employeesList.SelectedItem.Value;
    // Enclose database code in Try-Catch-Finally
    try
    {
      // Open the connection
      conn.Open();
      // Execute the command
      reader = comm.ExecuteReader();
      // Display the data on the form
      if (reader.Read())
      {
        nameTextBox.Text = reader["Name"].ToString();
        userNameTextBox.Text = reader["Username"].ToString();
        addressTextBox.Text = reader["Address"].ToString();
        cityTextBox.Text = reader["City"].ToString();
        stateTextBox.Text = reader["State"].ToString();
        zipTextBox.Text = reader["Zip"].ToString();
        homePhoneTextBox.Text = reader["HomePhone"].ToString();
        extensionTextBox.Text = reader["Extension"].ToString();
        mobilePhoneTextBox.Text = reader["MobilePhone"].ToString();
      }
      // Close the reader 
      reader.Close();
      // Enable the Update button
      updateButton.Enabled = true;
    }
    catch
    {
      // Display error message
      dbErrorLabel.Text =
          "Error loading the employee details!<br />";
    }
    finally
    {
      // Close the connection
      conn.Close();
    }
  }
}
