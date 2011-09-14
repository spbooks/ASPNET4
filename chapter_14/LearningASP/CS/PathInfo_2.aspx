<%@ Page Language="C#" %>
<%@ Import Namespace="System.IO" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">
  void Page_Load(Object s, EventArgs e)
  {
    string strPath;
    strPath = MapPath("myText.txt");
    resultLabel.Text += "File Path: " + strPath + "<br />";
    resultLabel.Text += "File name: " +
        Path.GetFileName(strPath) + "<br />";
    resultLabel.Text += "Directory: " +
        Path.GetDirectoryName(strPath) + "<br />";
    resultLabel.Text += "Extension: " +
        Path.GetExtension(strPath) + "<br />";
    resultLabel.Text += "Name w/out Extension: " +
        Path.GetFileNameWithoutExtension(strPath);
  }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
  <head id="Head1" runat="server">
    <title>Directory and Path Information</title>
  </head>
  <body>
    <form id="form1" runat="server">
      <div>
        <asp:Label ID="resultLabel" runat="server" />
      </div>
    </form>
  </body>
</html>
