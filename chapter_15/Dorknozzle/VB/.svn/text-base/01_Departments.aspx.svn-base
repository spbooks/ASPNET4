<%@ Page Language="VB" MasterPageFile="~/Dorknozzle.master" AutoEventWireup="false" CodeFile="Departments.aspx.vb" Inherits="Departments" title="Dorknozzle Departments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <asp:ScriptManager runat="server" ID="DepartmentsScriptManager"
      EnablePartialRendering="true" />
  <h1>Dorknozzle Departments</h1>
  <p>Page rendered at <%= DateTime.Now.ToLongTimeString() %>.</p>
  <asp:UpdatePanel runat="server" ID="DepartmentsUpdatePanel">
    <ContentTemplate>
      <asp:GridView id="departmentsGrid" runat="server" AllowPaging="True" 
          PageSize="4" AllowSorting="True" 
          onpageindexchanging="departmentsGrid_PageIndexChanging" 
          onsorting="departmentsGrid_Sorting">
      </asp:GridView>
      <p>Grid rendered at <%= DateTime.Now.ToLongTimeString() %>
      </p>
    </ContentTemplate>
  </asp:UpdatePanel>
</asp:Content>

