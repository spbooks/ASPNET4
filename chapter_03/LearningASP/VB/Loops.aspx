<%@ Page Language="VB" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">
  Sub Page_Load(ByVal s As Object, ByVal e As EventArgs)
    ' Initialize counter
    Dim counter As Integer = 0
    ' Loop
    Do While counter <= 10
      ' Update the label
      messageLabel.Text = counter.ToString()
      ' We use the += operator to increase our variable by 1
      counter += 1
    Loop
  End Sub
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
  <head runat="server">
    <title>Loops</title>
  </head>
  <body>
    <form id="form1" runat="server">
    <div>
      <asp:Label id="messageLabel" runat="server" />
    </div>
    </form>
  </body>
</html>