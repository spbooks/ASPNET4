
Partial Class Login
    Inherits System.Web.UI.Page
Sub LoginUser(ByVal s As Object, ByVal e As EventArgs)
  If (username.Text = "username" And _
      password.Text = "password") Then
    FormsAuthentication.RedirectFromLoginPage(username.Text, False)
  End If
End Sub
End Class
