<%@ Page Language="C#" MasterPageFile="~/Dorknozzle.master" AutoEventWireup="true" CodeFile="HelpDesk.aspx.cs" Inherits="HelpDesk" Title="Dorknozzle Help Desk" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <h1>Employee Help Desk Request</h1>
  <asp:Label ID="dbErrorMessage" ForeColor="Red" runat="server" />
  <p>
    Station Number:<br />
    <asp:TextBox id="stationTextBox" runat="server"
        CssClass="textbox" />
    <asp:RequiredFieldValidator id="stationNumReq" runat="server"
        ControlToValidate="stationTextBox"
        ErrorMessage="<br />You must enter a station number!"
        Display="None" />
    <cc1:ValidatorCalloutExtender ID="stationNumReq_ValidatorCalloutExtender" 
      runat="server" Enabled="True" TargetControlID="stationNumReq" HighlightCssClass="fieldError">
    </cc1:ValidatorCalloutExtender>
    <asp:CompareValidator id="stationNumCheck" runat="server"
        ControlToValidate="stationTextBox"
        Operator="DataTypeCheck" Type="Integer"
        ErrorMessage="<br />The value must be a number!"
        Display="None" />
    <cc1:ValidatorCalloutExtender ID="stationNumCheck_ValidatorCalloutExtender" 
      runat="server" Enabled="True" TargetControlID="stationNumCheck" HighlightCssClass="fieldError">
    </cc1:ValidatorCalloutExtender>
    <asp:RangeValidator id="stationNumRangeCheck" runat="server"
        ControlToValidate="stationTextBox"
        MinimumValue="1" MaximumValue="50" Type="Integer" 
        ErrorMessage="<br />Number must be between 1 and 50."
        Display="None" />
    <cc1:ValidatorCalloutExtender ID="stationNumRangeCheck_ValidatorCalloutExtender" 
      runat="server" Enabled="True" TargetControlID="stationNumRangeCheck" HighlightCssClass="fieldError">
    </cc1:ValidatorCalloutExtender>
  </p>
  <p>
    Problem Category:<br />
    <asp:DropDownList id="categoryList" runat="server"
        CssClass="dropdownmenu" />
  </p>
  <p>
    Problem Subject:<br />
    <asp:DropDownList id="subjectList" runat="server"
        CssClass="dropdownmenu" />
  </p>
  <p>
    Problem Description:<br />
    <asp:TextBox id="descriptionTextBox" runat="server"
        CssClass="textbox" Columns="40" Rows="4"
        TextMode="MultiLine" />
    <asp:RequiredFieldValidator id="descriptionReq" runat="server"
       ControlToValidate="descriptionTextBox"
       ErrorMessage="<br />You must enter a description!"
       Display="None" />
    <cc1:ValidatorCalloutExtender ID="descriptionReq_ValidatorCalloutExtender" 
      runat="server" Enabled="True" TargetControlID="descriptionReq" HighlightCssClass="fieldError">
    </cc1:ValidatorCalloutExtender>
  </p>
  <p>
    <asp:Button id="submitButton" runat="server"
        CssClass="button" Text="Submit Request" onclick="submitButton_Click" /></p>
</asp:Content>

