<%@ Page Language="VB" %>
<%@ Import Namespace="System.IO" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">
  Sub WriteText(ByVal s As Object, ByVal e As EventArgs)
    Using streamWriter As StreamWriter = File.AppendText( _
          MapPath("myText.txt"))
      streamWriter.WriteLine(myText.Text)
    End Using
  End Sub
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
  <head runat="server">
    <title>Writing to Text Files</title>
  </head>
  <body>
    <form id="form1" runat="server">
      <div>
        <p>Write the following text within a text file:</p>
        <asp:TextBox ID="myText" runat="server" />
        <asp:Button ID="writeButton" Text="Write" runat="server"
            OnClick="WriteText" />
      </div>
    </form>
  </body>
</html>
