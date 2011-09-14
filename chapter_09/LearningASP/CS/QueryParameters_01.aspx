<%@ Page Language="C#" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

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
        <asp:Button ID="submitButton" runat="server"
            Text="Get Data" onclick="submitButton_Click" /><br />
        <asp:Label ID="userLabel" runat="server" />
      </div>
    </form>
  </body>
</html>