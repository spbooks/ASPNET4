<%@ Page Language="VB" %>
<%@ Import Namespace="System.Net.Mail" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">
  Sub SendEmail(ByVal s As Object, ByVal e As EventArgs)
    Dim smtpClient As SmtpClient = New SmtpClient()
    Dim message As MailMessage = New MailMessage()
    Try
      ' Prepare two email addresses 
      Dim fromAddress As New MailAddress( _
          "from@example.com", "From Me")
      Dim toAddress As New MailAddress( _
          "to@example.com", "To You")
      ' Prepare the mail message
      message.From = fromAddress
      message.To.Add(toAddress)
      message.Subject = "Testing!"
      message.Body = "This is the body of a sample message"
      ' Set server details
      smtpClient.Host = "mailserver.example.com"
      ' For SMTP servers that require authentication
      smtpClient.Credentials = _
          New System.Net.NetworkCredential("username", "password")
      ' Send the email
      smtpClient.Send(message)
      ' Inform the user
      statusLabel.Text = "Email sent."
    Catch ex As Exception
      ' Display error message
      statusLabel.Text = "Coudn't send the message!"
    End Try
  End Sub
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
  <head runat="server">
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
