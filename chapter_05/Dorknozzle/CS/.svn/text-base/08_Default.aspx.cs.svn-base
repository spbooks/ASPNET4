using System;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class _Default : System.Web.UI.Page 
{
  protected void Page_Load(object sender, EventArgs e)
  {
    // Declare a cookie variable
    HttpCookie userCookie;
    // Try to retrieve user's ID by reading the UserID cookie
    userCookie = Request.Cookies["UserID"];
    // Verify if the cookie exists
    if (userCookie == null)
    {
      // Display message
      myLabel.Text = "Cookie doesn't exist! Creating a cookie now.";
      // Create cookie
      userCookie = new HttpCookie("UserID", "Joe Black");
      // Set cookie to expire in one month
      userCookie.Expires = DateTime.Now.AddMonths(1);
      // Save the cookie on the client
      Response.Cookies.Add(userCookie);
    }
    else
    {
      // Display message and cookie value
      myLabel.Text = "Welcome back, " + userCookie.Value;
    }
  }
}
