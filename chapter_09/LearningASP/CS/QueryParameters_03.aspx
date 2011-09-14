<%@ Page Language="C#" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

  protected void submitButton_Click(object sender, EventArgs e)
  {
    // Declare objects
    SqlConnection conn;
    SqlCommand comm;
    SqlDataReader reader;
    // Initialize connection
    conn = new SqlConnection("Server=localhost\\SqlExpress;" +
        "Database=Dorknozzle;Integrated Security=True");
    // Create command
    comm = new SqlCommand(
        "SELECT EmployeeID, Name, Username, Password " +
        "FROM Employees WHERE EmployeeID=@EmployeeID", conn);
    // Verify if the ID entered by the visitor is numeric
    int employeeID;
    if (!int.TryParse(idTextBox.Text, out employeeID))
    {
      // If the user didn't enter numeric ID...
      userLabel.Text = "Please enter a numeric ID!";
    }
    else
    {
      // Add parameter
      comm.Parameters.Add("@EmployeeID", System.Data.SqlDbType.Int);
      comm.Parameters["@EmployeeID"].Value = employeeID;
      // Enclose database code in Try-Catch-Finally
      try
      {
        // Open the connection
        conn.Open();
        // Execute the command
        reader = comm.ExecuteReader();
        // Display the requested data
        if (reader.Read())
        {
          userLabel.Text = "Employee ID: " +
              reader["EmployeeID"] + "<br />" +
              "Name: " + reader["Name"] + "<br />" +
              "Username: " + reader["Username"] + "<br />" +
              "Password: " + reader["Password"];
        }
        else
        {
          userLabel.Text =
              "There is no user with this ID: " + employeeID;
        }
        // Close the reader and the connection
        reader.Close();
      }
      catch
      {
        // Display error message
        userLabel.Text = "Error retrieving user data.";
      }
      finally
      {
        // Close the connection
        conn.Close();
      }
    }
  }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
  <head id="Head1" runat="server">
    <title>Using Query Parameters</title>
  </head>
  <body>
    <form id="form1" runat="server">
      <div>
        User ID:
        <asp:TextBox ID="idTextBox" runat="server" />
        <asp:Button ID="submitButton" runat="server" Text="Get Data" 
            onclick="submitButton_Click" /><br />
        <asp:Label ID="userLabel" runat="server" />
      </div>
    </form>
  </body>
</html>