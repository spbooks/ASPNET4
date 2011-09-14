<%@ Page Language="VB" %>
<%@ Import Namespace="System.IO" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">
  Sub UploadFile(ByVal s As Object, ByVal e As EventArgs)
    ' Did the user upload any file?
    If fileUpload.HasFile Then
      ' Get the name of the file
      Dim fileName As String = fileUpload.FileName
      ' Upload the file on the server
      fileUpload.SaveAs(MapPath(fileName))
      ' Inform the user about the file upload success
      label.Text = "File " & fileName & " uploaded."
    Else
      label.Text = "No file uploaded!"
    End If
  End Sub
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
  <head runat="server">
    <title>File Upload</title>
  </head>
<body>
  <form id="form1" runat="server">
    <div>
      <asp:FileUpload ID="fileUpload" runat="server" />
      <asp:Button ID="uploadButton" runat="server" Text="Upload!"
          OnClick="UploadFile" />
      <br />
      <asp:Label ID="label" runat="server"></asp:Label>
    </div>
  </form>
</body>
</html>
