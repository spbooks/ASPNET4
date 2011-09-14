<%@ Page Language="VB" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

  Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
    ' Define data objects
    Dim conn As SqlConnection
    Dim comm As SqlCommand
    Dim reader As SqlDataReader
    ' Initialize connection
    conn = New SqlConnection("Server=localhost\SqlExpress;" & _
        "Database=Dorknozzle;Integrated Security=True")
    ' Create command
    comm = New SqlCommand( _
        "SELECT EmployeeID, Name, Username, Password " & _
        "FROM Employees", conn)
    ' Enclose database code in Try-Catch-Finally
    Try
      ' Open the connection
      conn.Open()
      ' Execute the command
      reader = comm.ExecuteReader()
      ' Bind the repeater to the data source
      myRepeater.DataSource = reader
      myRepeater.DataBind()
      ' Close the data reader
      reader.Close()
    Catch
      ' Display error message
      Response.Write("Error retrieving user data.")
    Finally
      ' Close the connection
      conn.Close()
    End Try
  End Sub
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
  <head runat="server">
    <title>Using the Repeater</title>
  </head>
  <body>
    <form id="form1" runat="server">
      <div>
        <asp:Repeater ID="myRepeater" runat="server">
          <HeaderTemplate>
            <table width="400" border="1">
              <tr>
                <th>Employee ID</th>
                <th>Name</th>
                <th>Username</th>
                <th>Password</th>
              </tr>
          </HeaderTemplate>
          <ItemTemplate>
              <tr>
                <td><%# Eval("EmployeeID") %></td>
                <td><%# Eval("Name") %></td>
                <td><%# Eval("Username") %></td>
                <td><%# Eval("Password") %></td>
              </tr>
          </ItemTemplate>
          <FooterTemplate>
            </table>
          </FooterTemplate>
        </asp:Repeater>      
      </div>
    </form>
  </body>
</html>
