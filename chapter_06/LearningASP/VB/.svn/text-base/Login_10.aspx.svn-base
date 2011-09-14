<%@ Page Language="VB" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">
  Protected Sub submitButton_Click(ByVal s As Object, ByVal e As EventArgs)
    If Page.IsValid Then
      submitButton.Text = "Valid"
    Else
      submitButton.Text = "Invalid!"
    End If
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
            Password and Confirmation:<br />
            <asp:TextBox id="passwordTextBox" runat="server"
                TextMode="Password" />
            <asp:RequiredFieldValidator id="passwordReq"
                runat="server"
                ControlToValidate="passwordTextBox"
                ErrorMessage="Password is required!"
                SetFocusOnError="True" Display="Dynamic" />
            <asp:TextBox id="confirmPasswordTextBox" runat="server"
                TextMode="Password" />
            <asp:RequiredFieldValidator id="confirmPasswordReq"
                runat="server" ControlToValidate="confirmPasswordTextBox"
                ErrorMessage="Password confirmation is required!"
                SetFocusOnError="True" Display="Dynamic" />
            <asp:CompareValidator id="comparePasswords" runat="server"
                ControlToCompare="passwordTextBox"
                ControlToValidate="confirmPasswordTextBox"
                ErrorMessage="Your passwords do not match up!"
                Display="Dynamic" />
          </p>
          <!-- Birth Date -->
          <p>
            Birth Date:<br />
            <asp:TextBox id="birthDateTextBox" runat="server" />
            <asp:RangeValidator id="birthDateRangeTest" runat="server"
                Type="Date" ControlToValidate="birthDateTextBox" 
                MinimumValue="1/1/1970" MaximumValue="12/31/1979"
                ErrorMessage="You must've been born in the 1970s to use
                this web site!" />
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
