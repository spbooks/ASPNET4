<%@ Page Language="C#" MasterPageFile="~/Dorknozzle.master" AutoEventWireup="true" CodeFile="Departments.aspx.cs" Inherits="Departments" title="Dorknozzle Departments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <h1>Dorknozzle Departments</h1>
  <asp:GridView id="departmentsGrid" runat="server" AllowPaging="True" PageSize="4">
  </asp:GridView>
</asp:Content>

