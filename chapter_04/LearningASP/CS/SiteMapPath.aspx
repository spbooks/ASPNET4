<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
  <head runat="server">
    <title>SiteMapPath Demo</title>
  </head>
  <body>
    <form id="form1" runat="server">
    <div>
      <asp:SiteMapDataSource ID="mySiteMapDataSource" runat="server" />
      <asp:SiteMapPath ID="mySiteMapPath" runat="server" DataSourceID="mySiteMapDataSource" PathSeparator=" > " />
    </div>
    </form>
  </body>
</html>
