<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">
  void Page_Load()
  {
    // Declare an array
    string[] drinkList = new string[4];
    // Place some items in it
    drinkList[0] = "Water";
    drinkList[1] = "Juice";
    drinkList[2] = "Soda";
    drinkList[3] = "Milk";
    // Access an item in the array by its position
    drinkLabel.Text = drinkList[1];
  }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
  <head runat="server">
    <title>Arrays</title>
  </head>
  <body>
    <form id="form1" runat="server">
    <div>
      <asp:Label ID="drinkLabel" runat="server" />
    </div>
    </form>
  </body>
</html>
