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
using System.Data.SqlClient;

public partial class HelpDesk : System.Web.UI.Page
{
  protected void Page_Load(object sender, EventArgs e)
  {
    if (!IsPostBack)
    {
      // Define data objects
      SqlConnection conn;
      SqlCommand categoryComm;
      SqlCommand subjectComm;
      SqlDataReader reader;
      // Read the connection string from Web.config
      string connectionString =
          ConfigurationManager.ConnectionStrings[
          "Dorknozzle"].ConnectionString;
      // Initialize connection
      conn = new SqlConnection(connectionString);
      // Create command to read the help desk categories
      categoryComm = new SqlCommand(
          "SELECT CategoryID, Category FROM HelpDeskCategories",
          conn);
      // Create command to read the help desk subjects
      subjectComm = new SqlCommand(
          "SELECT SubjectID, Subject FROM HelpDeskSubjects", conn);
      // Enclose database code in Try-Catch-Finally
      try
      {
        // Open the connection
        conn.Open();
        // Execute the category command
        reader = categoryComm.ExecuteReader();
        // Populate the list of categories
        categoryList.DataSource = reader;
        categoryList.DataValueField = "CategoryID";
        categoryList.DataTextField = "Category";
        categoryList.DataBind();
        // Close the reader
        reader.Close();
        // Execute the subjects command
        reader = subjectComm.ExecuteReader();
        // Populate the list of subjects
        subjectList.DataSource = reader;
        subjectList.DataValueField = "SubjectID";
        subjectList.DataTextField = "Subject";
        subjectList.DataBind();
        // Close the reader
        reader.Close();
      }
      finally
      {
        // Close the connection
        conn.Close();
      }
    }
  }
  protected void submitButton_Click(object sender, EventArgs e)
  {
    if (Page.IsValid)
    {
      // Code that uses the data entered by the user
    }
  }
}
