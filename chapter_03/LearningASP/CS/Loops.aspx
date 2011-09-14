<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">
  void Page_Load()
  {
    // initialize counter
    int counter = 0;
    // loop
    while (counter <= 10)
    {
      // Update the label
      messageLabel.Text = counter.ToString();
      // C# has the ++ operator to increase a variable by 1
      counter++;
    }
  }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
  <head runat="server">
    <title>Loops</title>
  </head>
  <body>
    <form id="form1" runat="server">
    <div>
      <asp:Label ID="messageLabel" runat="server" />
    </div>
    </form>
  </body>
</html>