<%@ Page Language="VB" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">
  Protected Sub submitButton_Click(ByVal s As Object, ByVal e As EventArgs)
    submitButton.Text = "Clicked"
  End Sub
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
  <head runat="server">
    <title>Simple Login Page</title>
  </head>
  <body>
      <form id="form1" runat="server">
        <div>
          <!-- Username -->
          <p>
            Username:<br />
            <asp:TextBox id="usernameTextBox" runat="server" />
            <asp:RequiredFieldValidator id="usernameReq"
                runat="server"
                ControlToValidate="usernameTextBox"
                ErrorMessage="Username is required!"
                SetFocusOnError="True" />
          </p>
          <!-- Password -->
          <p>
            Password:<br />
            <asp:TextBox id="passwordTextBox" runat="server"
                TextMode="Password" />
            <asp:RequiredFieldValidator id="passwordReq"
                runat="server"
                ControlToValidate="passwordTextBox"
                ErrorMessage="Password is required!"
                SetFocusOnError="True" />
          </p>
          <!-- Submit Button -->
          <p>
            <asp:Button id="submitButton" runat="server"
                Text="Submit" OnClick="submitButton_Click" />
          </p>
        </div>
      </form>
  </body>
</html>
