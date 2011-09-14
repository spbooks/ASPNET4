Imports System.Net.Mail

Partial Class AdminNewsletter
    Inherits System.Web.UI.Page

Protected Sub sendNewsletterButton_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles sendNewsletterButton.Click
  Dim smtpClient As SmtpClient = New SmtpClient()
  Dim message As MailMessage = New MailMessage()
  ' Try to send the message
  Try
    ' Prepare two email addresses 
    Dim fromAddress As New MailAddress( _
        "dorknozzle@example.com", "Your Friends at Dorknozzle")
    Dim toAddress As New MailAddress(toTextBox.Text)
    ' Prepare the mail message
    message.From = fromAddress
    message.To.Add(toAddress)
    message.Subject = subjectTextBox.Text
    message.IsBodyHtml = True
    message.Body = _
        "<html><head><title>" & _
        HttpUtility.HtmlEncode(subjectTextBox.Text) & _
        "</title></head><body>" & _
        "<img src=""http://www.cristiandarie.ro/Dorknozzle" & _
        "/Images/newsletter_header.gif"" />" & _
        "<p>" & _
        HttpUtility.HtmlEncode(introTextBox.Text) & "</p>" & _
        "<p>Employee of the month: " & _
        HttpUtility.HtmlEncode(employeeTextBox.Text) & "</p>" & _
        "<p>This months featured event: " & _
        HttpUtility.HtmlEncode(eventTextBox.Text) & "</p>" & _
        "</body></html>"
    ' Set server details
    smtpClient.Host = "localhost"
    ' For SMTP servers that require authentication
    smtpClient.Credentials = _
        New System.Net.NetworkCredential("username", "password")
    ' Send the email
    smtpClient.Send(message)
    ' Inform the user
    resultLabel.Text = "Email sent!<br />"
  Catch ex As Exception
    ' Display error message
    resultLabel.Text = "Couldn't send the message!"
  End Try
End Sub
End Class
