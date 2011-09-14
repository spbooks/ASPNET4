<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
  <title>Testing CSS</title>
  <link href="Styles.css" type="text/css" rel="stylesheet" />
</head>
<body>
  <form id="form1" runat="server">
  <p class="title">
    Please select a product:</p>
  <p>
    <asp:DropDownList ID="productsList" CssClass="dropdownmenu" runat="server">
      <asp:ListItem Text="Shirt" Selected="true" />
      <asp:ListItem Text="Hat" />
      <asp:ListItem Text="Pants" />
      <asp:ListItem Text="Socks" />
    </asp:DropDownList>
  </p>
  <p>
    <asp:TextBox ID="quantityTextBox" CssClass="textbox" runat="server" />
  </p>
  <p>
    <asp:Button ID="addToCartButton" CssClass="button" Text="Add To Cart" runat="server" />
  </p>
  </form>
</body>
</html>