<%@ Page Language="VB" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">
  ' Here's our function 
  Function getName() As String
    Return "John Doe"
  End Function
  ' And now we'll use it in the Page_Load handler
  Sub Page_Load(ByVal s As Object, ByVal e As EventArgs)
    messageLabel.Text = getName()
  End Sub
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
  <head runat="server">
    <title>ASP.NET Functions</title>
  </head>
  <body>
    <form id="form1" runat="server">
    <div>
        <asp:Label id="messageLabel" runat="server" />
    </div>
    </form>
  </body>
</html>