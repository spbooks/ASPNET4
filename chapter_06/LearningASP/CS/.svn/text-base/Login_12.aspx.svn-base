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
          <!-- Email Address -->
          <p>
            Email address:<br />
            <asp:TextBox id="emailTextBox" runat="server" />
            <asp:RequiredFieldValidator id="emailReq" runat="server"
                ControlToValidate="emailTextBox"
                ErrorMessage="Email address is required!"
                SetFocusOnError="True" Display="Dynamic" />
            <asp:RegularExpressionValidator id="emailValidator"
                runat="server" ControlToValidate="emailTextBox"
                ValidationExpression="^\S+@\S+\.\S+$"
                ErrorMessage="You must enter a valid email address!" />
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
          <!-- Validation Summary -->
          <p>
            <asp:ValidationSummary id="vSummary" runat="server" />
          </p>
        </div>
      </form>
  </body>
</html>
