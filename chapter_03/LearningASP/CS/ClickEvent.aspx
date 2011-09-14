<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">
  public void button_Click(Object s, EventArgs e)
  {
    messageLabel.Text = "Hello World";
  }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
  <head runat="server">
    <title>Click the Button</title>
  </head>
  <body>
    <form id="form1" runat="server">
    <div>
      <asp:Button ID="button" runat="server" OnClick="button_Click" Text="Click Me" />
      <asp:Label ID="messageLabel" runat="server" />
    </div>
    </form>
  </body>
</html>