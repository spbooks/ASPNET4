
Partial Class _Default
    Inherits System.Web.UI.Page

Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
  ' Declare a cookie variable
  Dim userCookie As HttpCookie
  ' Try to retrieve user's ID by reading the UserID cookie
  userCookie = Request.Cookies("UserID")
  ' Verify if the cookie exists 
  If userCookie Is Nothing Then
    ' Display message
    myLabel.Text = "Cookie doesn't exist! Creating a cookie now."
    ' Create cookie
    userCookie = New HttpCookie("UserID", "Joe Black")
    ' Set cookie to expire in one month
    userCookie.Expires = DateTime.Now.AddMonths(1)
    ' Save the cookie on the client
    Response.Cookies.Add(userCookie)
  Else
    ' Display message and cookie value
    myLabel.Text = "Welcome back, " & userCookie.Value
  End If
End Sub
End Class
