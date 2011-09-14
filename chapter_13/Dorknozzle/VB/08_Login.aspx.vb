
Partial Class Login
    Inherits System.Web.UI.Page
Sub LoginUser(ByVal s As Object, ByVal e As EventArgs)
  If (FormsAuthentication.Authenticate(username.Text, _
      password.Text)) Then
    FormsAuthentication.RedirectFromLoginPage(username.Text, False)
  End If
End Sub
End Class
