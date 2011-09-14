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
      // Reset counter when it reaches 10
      if (Application["PageCounter"] != null &&
          (int)Application["PageCounter"] >= 10)
      {
        Application.Remove("PageCounter");
      }
      // Initialize or increment page counter each time the page loads
      if (Application["PageCounter"] == null)
      {
        Application["PageCounter"] = 1;
      }
      else
      {
        Application.Lock();
        Application["PageCounter"] =
            (int)Application["PageCounter"] + 1;
        Application.UnLock();
      }
      // Display page counter
      myLabel.Text = Convert.ToString(Application["PageCounter"]);
    }
}
