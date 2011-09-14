<%@ Page Language="C#" MasterPageFile="~/Dorknozzle.master" AutoEventWireup="true" CodeFile="EmployeeDirectory.aspx.cs" Inherits="EmployeeDirectory" Title="Dorknozzle Employee Directory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <h1>Employee Directory</h1>
  <asp:DataList id="employeesList" runat="server" 
    onitemcommand="employeesList_ItemCommand">
    <ItemTemplate>
      <asp:Literal ID="extraDetailsLiteral" runat="server"
          EnableViewState="false" />
      Name: <strong><%#Eval("Name")%></strong><br />
      Username: <strong><%#Eval("Username")%></strong><br />
      <asp:LinkButton ID="detailsButton" runat="server"
          Text=<%#"View more details about " + Eval("Name")%>
          CommandName="MoreDetailsPlease"
          CommandArgument=<%#Eval("EmployeeID")%> />
      <br />
      <asp:LinkButton ID="editButton" runat="server"
          Text=<%#"Edit employee " + Eval("Name")%>
          CommandName="EditItem"
          CommandArgument=<%#Eval("EmployeeID")%> />
    </ItemTemplate>
    <EditItemTemplate>
      Name: <asp:TextBox ID="nameTextBox" runat="server"
          Text=<%#Eval("Name")%> /><br />
      Username: <asp:TextBox ID="usernameTextBox" runat="server"
          Text=<%#Eval("Username")%> /><br />
      <asp:LinkButton ID="updateButton" runat="server"
          Text="Update Item" CommandName="UpdateItem"
          CommandArgument=<%#Eval("EmployeeID")%> />
      or
      <asp:LinkButton ID="cancelButton" runat="server"
          Text="Cancel Editing" CommandName="CancelEditing"
          CommandArgument=<%#Eval("EmployeeID")%> />
    </EditItemTemplate>
    <SeparatorTemplate>
      <hr />
    </SeparatorTemplate>
  </asp:DataList>
</asp:Content>

