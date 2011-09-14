<%@ Page Language="VB" MasterPageFile="~/Dorknozzle.master" AutoEventWireup="false" CodeFile="AddressBook.aspx.vb" Inherits="AddressBook" title="Dorknozzle Address Book" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <h1>Address Book</h1>
  <asp:GridView id="grid" runat="server" AutoGenerateColumns="False">
    <Columns>
      <asp:BoundField DataField="Name" HeaderText="Name" />
      <asp:BoundField DataField="City" HeaderText="City" />
      <asp:BoundField DataField="MobilePhone" HeaderText="Mobile Phone" />
    </Columns>
  </asp:GridView>
</asp:Content>

