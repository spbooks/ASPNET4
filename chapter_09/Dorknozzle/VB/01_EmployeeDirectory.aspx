<%@ Page Language="VB" MasterPageFile="~/Dorknozzle.master" AutoEventWireup="false" CodeFile="EmployeeDirectory.aspx.vb" Inherits="EmployeeDirectory" title="Dorknozzle Employee Directory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <h1>Employee Directory</h1>
  <asp:Repeater id="employeesRepeater" runat="server">
    <ItemTemplate>
      Employee ID: 
      <strong><%#Eval("EmployeeID")%></strong><br />
      Name: <strong><%#Eval("Name")%></strong><br />
      Username: <strong><%#Eval("Username")%></strong>
    </ItemTemplate>
    <SeparatorTemplate>
      <hr />
    </SeparatorTemplate>
  </asp:Repeater>
</asp:Content>

