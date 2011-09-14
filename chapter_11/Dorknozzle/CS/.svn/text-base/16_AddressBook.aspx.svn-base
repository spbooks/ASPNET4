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
  <asp:DetailsView id="employeeDetails" runat="server" AutoGenerateRows="False" 
    onmodechanging="employeeDetails_ModeChanging">
    <Fields>
      <asp:TemplateField HeaderText="Address">
        <EditItemTemplate>
          <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Address") %>'></asp:TextBox>
        </EditItemTemplate>
        <InsertItemTemplate>
          <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Address") %>'></asp:TextBox>
        </InsertItemTemplate>
        <ItemTemplate>
          <asp:Label ID="Label1" runat="server" Text='<%# Bind("Address") %>'></asp:Label>
        </ItemTemplate>
      </asp:TemplateField>
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

