<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">
  void CheckUniqueUserName(Object s, ServerValidateEventArgs e)
  {
    string username = e.Value.ToLower();
    if (username == "andrei" || username == "cristian")
    {
      e.IsValid = false;
    }
  }

  void submitButton_Click(Object s, EventArgs e)
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
