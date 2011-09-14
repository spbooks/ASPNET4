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
    // Disable the delete button
    deleteButton.Enabled = false;
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
      // Enable the Delete button
      deleteButton.Enabled = true;
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
  protected void updateButton_Click(object sender, EventArgs e)
  {
     // Declare objects
    SqlConnection conn;
    SqlCommand comm;
    // Read the connection string from Web.config
    string connectionString =
      ConfigurationManager.ConnectionStrings[
      "Dorknozzle"].ConnectionString;
    // Initialize connection
    conn = new SqlConnection(connectionString);
    // Create command
    comm = new SqlCommand(
        "UPDATE Employees SET Name=@Name, Username=@Username, " +
        "Address=@Address, City=@City, State=@State, Zip=@Zip, " +
        "HomePhone=@HomePhone, Extension=@Extension, " +
        "MobilePhone=@MobilePhone " +
        "WHERE EmployeeID=@EmployeeID", conn);
    // Add command parameters
    comm.Parameters.Add("@Name",
        System.Data.SqlDbType.NVarChar,50);
    comm.Parameters["@Name"].Value = nameTextBox.Text;
    comm.Parameters.Add("@Username", 
        System.Data.SqlDbType.NVarChar, 50);
    comm.Parameters["@Username"].Value = userNameTextBox.Text;
    comm.Parameters.Add("@Address", 
        System.Data.SqlDbType.NVarChar, 50);
    comm.Parameters["@Address"].Value = addressTextBox.Text;
    comm.Parameters.Add("@City",
        System.Data.SqlDbType.NVarChar, 50);
    comm.Parameters["@City"].Value = cityTextBox.Text;
    comm.Parameters.Add("@State",
        System.Data.SqlDbType.NVarChar, 50);
    comm.Parameters["@State"].Value = stateTextBox.Text;
    comm.Parameters.Add("@Zip",
        System.Data.SqlDbType.NVarChar, 50);
    comm.Parameters["@Zip"].Value = zipTextBox.Text;
    comm.Parameters.Add("@HomePhone", 
        System.Data.SqlDbType.NVarChar, 50);
    comm.Parameters["@HomePhone"].Value = homePhoneTextBox.Text;
    comm.Parameters.Add("@Extension", 
        System.Data.SqlDbType.NVarChar, 50);
    comm.Parameters["@Extension"].Value = extensionTextBox.Text;
    comm.Parameters.Add("@MobilePhone", 
        System.Data.SqlDbType.NVarChar, 50);
    comm.Parameters["@MobilePhone"].Value = mobilePhoneTextBox.Text;
    comm.Parameters.Add("@EmployeeID", System.Data.SqlDbType.Int);
    comm.Parameters["@EmployeeID"].Value = 
        employeesList.SelectedItem.Value;
    // Enclose database code in Try-Catch-Finally
    try
    {
      // Open the connection
      conn.Open();
      // Execute the command
      comm.ExecuteNonQuery();
    }
    catch
    {
      // Display error message
      dbErrorLabel.Text =
          "Error updating the employee details!<br />";
    }
    finally
    {
      // Close the connection
      conn.Close();
    }
    // Refresh the employees list
    LoadEmployeesList();
  }
  protected void deleteButton_Click(object sender, EventArgs e)
  {
    // Define data objects
    SqlConnection conn;
    SqlCommand comm;
    // Read the connection string from Web.config
    string connectionString =
        ConfigurationManager.ConnectionStrings[
        "Dorknozzle"].ConnectionString;
    // Initialize connection
    conn = new SqlConnection(connectionString);
    // Create command 
    comm = new SqlCommand("DELETE FROM Employees " +
        "WHERE EmployeeID = @EmployeeID", conn);
    // Add command parameters
    comm.Parameters.Add("@EmployeeID", System.Data.SqlDbType.Int);
    comm.Parameters["@EmployeeID"].Value =
        employeesList.SelectedItem.Value;
    try
    {
      // Open the connection
      conn.Open();
      // Execute the command
      comm.ExecuteNonQuery();
    }
    catch
    {
      // Display error message
      dbErrorLabel.Text = "Error deleting employee!<br />";
    }
    finally
    {
      // Close the connection
      conn.Close();
    }
    // Refresh the employees list
    LoadEmployeesList();
  }
}
