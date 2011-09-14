<%@ Page Language="VB" %>
<%@ Import Namespace="System.IO" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
  <head runat="server">
     <title>Directory Info</title>
  </head>
  <body>
    <form id="form1" runat="server">
      <div>
        <p>What do you want to view:</p>
        <asp:DropDownList ID="dirDropDown" runat="server"
            OnSelectedIndexChanged="ViewDriveInfo"
            AutoPostBack="true">
          <asp:ListItem Text="Select..." />
          <asp:ListItem Text="Directories" />
          <asp:ListItem Text="Files" />
          <asp:ListItem Text="Directories/Files" />
        </asp:DropDownList>
        <asp:GridView ID="grid" runat="server" />
      </div>
    </form>
  </body>
</html>
