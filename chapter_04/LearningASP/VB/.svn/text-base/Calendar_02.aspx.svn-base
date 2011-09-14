<%@ Page Language="VB" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">
  Sub SelectionChanged(ByVal s As Object, ByVal e As EventArgs)
    myLabel.Text = ""
    For Each d As DateTime In myCalendar.SelectedDates
      myLabel.Text &= d.ToString("D") & "<br />"
    Next
  End Sub
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
  <head runat="server">
    <title>Calendar Test</title>
  </head>
  <body>
    <form id="form1" runat="server">
    <div>
      <h1>Pick your dates:</h1>
      <asp:Calendar ID="myCalendar" runat="server"
          DayNameFormat="Short" FirstDayOfWeek="Sunday"
          NextPrevFormat="FullMonth" SelectionMode="DayWeekMonth"
          SelectWeekText="Select Week"
          SelectMonthText="Select Month" TitleFormat="Month"
          OnSelectionChanged="SelectionChanged" />
      <h1>You selected these dates:</h1>
      <asp:Label ID="myLabel" runat="server" />
    </div>
    </form>
  </body>
</html>
