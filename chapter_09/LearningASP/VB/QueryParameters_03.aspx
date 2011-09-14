<%@ Page Language="VB" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

  Protected Sub submitButton_Click(ByVal sender As Object, ByVal e As System.EventArgs)
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
        "FROM Employees WHERE EmployeeID=@EmployeeID", conn)
    ' Verify if the ID entered by the visitor is numeric
    Dim employeeID As Integer
    If (Not Integer.TryParse(idTextBox.Text, employeeID)) Then
      ' If the user didn't enter numeric ID...
      userLabel.Text = "Please enter a numeric ID!"
    Else
      ' Add parameter
      comm.Parameters.Add("@EmployeeID", System.Data.SqlDbType.Int)
      comm.Parameters("@EmployeeID").Value = employeeID
      ' Enclose database code in Try-Catch-Finally
      Try
        ' Open the connection
        conn.Open()
        ' Execute the command
        reader = comm.ExecuteReader()
        ' Display the requested data
        If reader.Read() Then
          userLabel.Text = "Employee ID: " & _
              reader.Item("EmployeeID") & "<br />" & _
              "Name: " & reader.Item("Name") & "<br />" & _
              "Username: " & reader.Item("Username") & "<br />" & _
              "Password: " & reader.Item("Password")
        Else
          userLabel.Text = _
              "There is no user with this ID: " & employeeID
        End If
        ' Close the reader and the connection
        reader.Close()
      Catch
        ' Display error message
        userLabel.Text = "Error retrieving user data."
      Finally
        ' Close the connection
        conn.Close()
      End Try
    End If
  End Sub
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
  <head runat="server">
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
