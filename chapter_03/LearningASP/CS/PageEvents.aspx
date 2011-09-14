<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">
  void Page_Init(Object s, EventArgs e)
  {
    messageLabel.Text = "1. Page_Init <br/>";
  }
  void Page_Load(Object s, EventArgs e)
  {
    messageLabel.Text += "2. Page_Load <br/>";
  }
  void Page_PreRender(Object s, EventArgs e)
  {
    messageLabel.Text += "3. Page_PreRender <br/>";
  }
  void Page_UnLoad(Object s, EventArgs e)
  {
    messageLabel.Text += "4. Page_UnLoad <br/>";
  }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
  <head runat="server">
    <title>Page Events</title>
  </head>
  <body>
    <form id="form1" runat="server">
    <div>
      <asp:Label ID="messageLabel" runat="server" />
    </div>
    </form>
  </body>
</html>
