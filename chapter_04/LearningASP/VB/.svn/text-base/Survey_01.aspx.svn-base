<%@ Page Language="VB" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
  <head runat="server">
    <title>Using ASP.NET HTML Server Controls</title>
  </head>
  <body>
    <form id="form1" runat="server">
    <div>
      <h1>Take the Survey!</h1>
      <!-- Display user name -->
      <p>
        Name:<br />
        <input type="text" id="name" runat="server" />
      </p>
      <!-- Display email -->
      <p>
        Email:<br />
        <input type="text" id="email" runat="server" />
      </p>
      <!-- Display technology options -->
      <p>
        Which server technologies do you use?<br />
        <select id="serverModel" runat="server" multiple="true">
          <option>ASP.NET</option>
          <option>PHP</option>
          <option>JSP</option>
          <option>CGI</option>
          <option>ColdFusion</option>
        </select>
      </p>
      <!-- Display .NET preference options -->
      <p>
        Do you like .NET so far?<br />
        <select id="likeDotNet" runat="server">
          <option>Yes</option>
          <option>No</option>
        </select>
      </p>
      <!-- Display confirmation button -->
      <p>
        <button id="confirmButton" OnServerClick="Click"
            runat="server">Confirm</button>
      </p>
      <!-- Confirmation label -->
      <p>
        <asp:Label id="feedbackLabel" runat="server" />
      </p>
    </div>
    </form>
  </body>
</html>
