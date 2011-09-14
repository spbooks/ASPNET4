<%@ Page Language="VB" %>
<%@ Import Namespace="System.IO" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">
  Sub Page_Load(ByVal s As Object, ByVal e As EventArgs)
    Dim strPath As String
    strPath = MapPath("myText.txt")
    resultLabel.Text &= "File Path: " & strPath & "<br />"
    resultLabel.Text &= "File name: " & _
        Path.GetFileName(strPath) & "<br />"
    resultLabel.Text &= "Directory: " & _
        Path.GetDirectoryName(strPath) & "<br />"
    resultLabel.Text &= "Extension: " & _
        Path.GetExtension(strPath) & "<br />"
    resultLabel.Text &= "Name without Extension: " & _
        Path.GetFileNameWithoutExtension(strPath)
  End Sub
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
  <head runat="server">
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
