<%@ Page Language="C#" %>
<%@ Import Namespace = "System.Data.SqlClient" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

  protected void Page_Load(object sender, EventArgs e)
  {
    //  Create a new connection object
    SqlConnection conn = new SqlConnection(
        "Server=localhost\\SqlExpress;Database=Dorknozzle;" +
        "Integrated Security=True");
    // Create a new command object
    SqlCommand comm = new SqlCommand(
      "SELECT EmployeeID, Name FROM Employees", conn);
    // Open connection
    conn.Open();
    // Execute the command
    SqlDataReader reader = comm.ExecuteReader();
    // TODO: Do something with the data
    // Close the reader and the connection
    reader.Close();
    conn.Close();
  }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
  <head runat="server">
    <title>Untitled Page</title>
  </head>
  <body>
    <form id="form1" runat="server">
      <div>
      
      </div>
    </form>
  </body>
</html>
