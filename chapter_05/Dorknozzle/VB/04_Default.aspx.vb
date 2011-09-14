
Partial Class _Default
    Inherits System.Web.UI.Page

Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
  ' Reset counter when it reaches 10
  If Application("PageCounter") >= 10 Then
    Application.Remove("PageCounter")
  End If
  ' Initialize or increment page counter each time the page loads
  If Application("PageCounter") Is Nothing Then
    Application("PageCounter") = 1
  Else
    Application("PageCounter") += 1
  End If
  ' Display page counter
  myLabel.Text = Application("PageCounter")
End Sub
End Class
