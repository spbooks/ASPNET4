<%@ Page Language="C#" %>
<%@ Import Namespace="System.Net.Mail" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">
  protected void SendEmail(object sender, EventArgs e)
  {
    SmtpClient smtpClient = new SmtpClient();
    MailMessage message = new MailMessage();
    try
    {
      // Prepare two email addresses 
      MailAddress fromAddress = new MailAddress(
          "from@example.com", "From Me");
      MailAddress toAddress = new MailAddress(
          "to@example.com", "To You");
      // Prepare the mail message
      message.From = fromAddress;
      message.To.Add(toAddress);
      message.Subject = "Testing!";
      message.Body = "This is the body of a sample message";
      // Set server details
      smtpClient.Host = "mailserver.example.com";
      // For SMTP servers that require authentication
      smtpClient.Credentials = new System.Net.NetworkCredential(
          "username", "password");
      // Send the email
      smtpClient.Send(message);
      // Inform the user
      statusLabel.Text = "Email sent.";
    }
    catch (Exception ex)
    {
      // Display error message
      statusLabel.Text = "Coudn't send the message!";
    }
  }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
  <head id="Head1" runat="server">
    <title>Sending Emails with ASP.NET</title>
  </head>
  <body>
    <form id="form1" runat="server">
      <div>
        <asp:Button ID="sendEmailButton" runat="server"
          Text="Send Email!" OnClick="SendEmail" />
        <br />
        <asp:Label ID="statusLabel" runat="server" />
      </div>
    </form>
  </body>
</html>
