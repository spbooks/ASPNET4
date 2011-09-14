<%@ Page Language="VB" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">
  Sub CheckUniqueUserName(ByVal s As Object, ByVal e As ServerValidateEventArgs)
    Dim username As String = e.Value.ToLower
    If (username = "andrei" Or username = "cristian") Then
      e.IsValid = False
    End If
  End Sub
      
  Sub submitButton_Click(ByVal s As Object, ByVal e As EventArgs)
    If Page.IsValid Then
      submitButton.Text = "Valid"
    Else
      submitButton.Text = "Invalid!"
    End If
  End Sub
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
  <head runat="server">
     <title>Untitled Page</title>
  </head>
  <body>
    <form id="form1" runat="server">
      <div>
        <p>
          New Username:<br />
          <asp:TextBox ID="usernameTextBox" runat="server" />
          <asp:CustomValidator ID="usernameUnique" runat="server" ControlToValidate="usernameTextBox"
            OnServerValidate="CheckUniqueUserName" ErrorMessage="This username already taken!" />
        </p>
        <p>
          <asp:Button ID="submitButton" runat="server" OnClick="submitButton_Click" Text="Submit" />
        </p>
      </div>
    </form>
  </body>
</html>
