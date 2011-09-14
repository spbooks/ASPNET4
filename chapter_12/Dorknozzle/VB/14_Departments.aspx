<%@ Page Language="VB" MasterPageFile="~/Dorknozzle.master" AutoEventWireup="false" CodeFile="Departments.aspx.vb" Inherits="Departments" title="Dorknozzle Departments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <h1>Dorknozzle Departments</h1>
  <asp:GridView id="departmentsGrid" runat="server">
  </asp:GridView>
</asp:Content>

