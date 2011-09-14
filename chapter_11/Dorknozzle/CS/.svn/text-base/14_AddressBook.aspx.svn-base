<%@ Page Language="C#" MasterPageFile="~/Dorknozzle.master" AutoEventWireup="true" CodeFile="AddressBook.aspx.cs" Inherits="AddressBook" Title="Dorknozzle Address Book" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <h1>Address Book</h1>
  <asp:GridView id="grid" runat="server" AutoGenerateColumns="False" 
    onselectedindexchanged="grid_SelectedIndexChanged">
    <Columns>
      <asp:BoundField DataField="Name" HeaderText="Name" />
      <asp:BoundField DataField="City" HeaderText="City" />
      <asp:BoundField DataField="MobilePhone" HeaderText="Mobile Phone" />
      <asp:ButtonField CommandName="Select" Text="Select" />
    </Columns>
  </asp:GridView>
  <br />
  <asp:DetailsView id="employeeDetails" runat="server" AutoGenerateRows="False">
    <Fields>
      <asp:BoundField DataField="Address" HeaderText="Address" />
      <asp:BoundField DataField="City" HeaderText="City" />
      <asp:BoundField DataField="State" HeaderText="State" />
      <asp:BoundField DataField="Zip" HeaderText="Zip" />
      <asp:BoundField DataField="HomePhone" 
          HeaderText="Home Phone" />
      <asp:BoundField DataField="Extension" 
          HeaderText="Extension" />
      <asp:CommandField ShowEditButton="True" />
    </Fields>
    <HeaderTemplate>
      <%#Eval("Name")%>
    </HeaderTemplate>
  </asp:DetailsView>
</asp:Content>

