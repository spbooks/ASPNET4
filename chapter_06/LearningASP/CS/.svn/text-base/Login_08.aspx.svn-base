<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">
  protected void submitButton_Click(object sender, EventArgs e)
  {
    if (Page.IsValid)
    {
      submitButton.Text = "Valid";
    }
    else
    {
      submitButton.Text = "Invalid!";
    }
  }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
  <head id="Head1" runat="server">
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
          <!-- Age -->
          <p>
            Age:<br />
            <asp:TextBox id="ageTextBox" runat="server" />
            <asp:RequiredFieldValidator id="ageReq" runat="server"
                ControlToValidate="ageTextBox"
                ErrorMessage="Age is required!"
                SetFocusOnError="True" Display="Dynamic" />
            <asp:CompareValidator id="ageCheck" runat="server"
                Operator="GreaterThan" Type="Integer"
                ControlToValidate="ageTextBox" ValueToCompare="15"
                ErrorMessage="You must be 16 years or older to log in" />
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
