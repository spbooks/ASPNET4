<%@ Page Language="C#" MasterPageFile="~/Dorknozzle.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" Title="Dorknozzle Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <h1>Login</h1>
  <p>Username:<br />
  <asp:TextBox id="username" runat="server" />
  </p>
  <p>Password:<br />
    <asp:TextBox id="password" runat="server" TextMode="Password" />
  </p>
  <p><asp:Button id="submitButton" runat="server" Text="Login"
        OnClick="LoginUser" /></p>
</asp:Content>

