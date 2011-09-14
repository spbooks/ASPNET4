<%@ Page Language="C#" %>
<%@ Import Namespace="System.IO" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
  <head id="Head1" runat="server">
    <title>Reading from Text Files</title>
  </head>
  <body>
    <form id="form1" runat="server">
      <div>
        <asp:Button ID="readButton" Text="Read" runat="server"
            OnClick="ReadText" />
        <br />
        <asp:Label ID="resultLabel" runat="server" />
      </div>
    </form>
  </body>
</html>
