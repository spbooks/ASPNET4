<%@ Page Language="VB" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">
  Sub Page_Init(ByVal s As Object, ByVal e As EventArgs)
    messageLabel.Text = "1. Page_Init <br/>"
  End Sub
  Sub Page_Load(ByVal s As Object, ByVal e As EventArgs)
    messageLabel.Text += "2. Page_Load <br/>"
  End Sub
  Sub Page_PreRender(ByVal s As Object, ByVal e As EventArgs)
    messageLabel.Text += "3. Page_PreRender <br/>"
  End Sub
  Sub Page_UnLoad(ByVal s As Object, ByVal e As EventArgs)
    messageLabel.Text += "4. Page_UnLoad <br/>"
  End Sub
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
