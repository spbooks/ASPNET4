using System;
using System.Collections;
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

public partial class Login : System.Web.UI.Page
{
  protected void Page_Load(object sender, EventArgs e)
  {

  }
  protected void LoginUser(Object s, EventArgs e)
  {
    if (username.Text == "username" && password.Text == "password")
    {
      FormsAuthentication.RedirectFromLoginPage(username.Text,
          false);
    }
  }
}
