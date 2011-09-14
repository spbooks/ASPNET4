<%@ Page Language="VB" %>
<%@ Import Namespace = "System.Data.SqlClient" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

  Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
    ' Create a new connection object
    Dim conn As New SqlConnection("Server=localhost\SqlExpress;" & _
        "Database=Dorknozzle;Integrated Security=True")
    ' Create a new command object
    Dim comm As New SqlCommand("SELECT EmployeeID, Name " & _
      "FROM Employees", conn)
    ' Open connection
    conn.Open()
    ' Execute the command
    Dim reader As SqlDataReader = comm.ExecuteReader()
    ' TODO: Do something with the data
    ' Close the reader and the connection
    reader.Close()
    conn.Close()
  End Sub
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
