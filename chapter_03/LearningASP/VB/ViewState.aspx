<%@ Page Language="VB" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">
  Sub Click(ByVal s As Object, ByVal e As EventArgs)
    messageLabel.Text = nameTextBox.Text
  End Sub
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>View State Example</title>
</head>
<body>
  <form id="form1" runat="server">
  <div>
    <asp:TextBox ID="nameTextBox" runat="server" />
    <asp:Button ID="submitButton" runat="server" 
        Text="Click Me" OnClick="Click" />
    <asp:Label ID="messageLabel" runat="server" />
  </div>
  </form>
</body>
</html>