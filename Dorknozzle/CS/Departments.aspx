<%@ Page Language="C#" MasterPageFile="~/Dorknozzle.master" AutoEventWireup="true" CodeFile="Departments.aspx.cs" Inherits="Departments" title="Dorknozzle Departments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <h1>Dorknozzle Departments</h1>
  <p>Page rendered at <%= DateTime.Now.ToLongTimeString() %>.</p>
  <asp:UpdatePanel runat="server" ID="DepartmentsUpdatePanel">
    <ContentTemplate>
      <div id="gridContainer">
      <asp:GridView id="departmentsGrid" runat="server" AllowPaging="True" 
          PageSize="4" AllowSorting="True" 
          onpageindexchanging="departmentsGrid_PageIndexChanging" 
          onsorting="departmentsGrid_Sorting">
      </asp:GridView>
      <p>Grid rendered at <%= DateTime.Now.ToLongTimeString() %></p>
      </div>
    </ContentTemplate>
  </asp:UpdatePanel>
  <atk:UpdatePanelAnimationExtender ID="UpdatePanelAnimationExtender1" runat="server" TargetControlID="DepartmentsUpdatePanel" BehaviorID="Animation">
    <Animations>
      <OnUpdating>
        <FadeOut AnimationTarget="gridContainer" minimumOpacity=".2" />
      </OnUpdating>
      <OnUpdated>
        <FadeIn AnimationTarget="gridContainer" minimumOpacity=".2" />
      </OnUpdated>
    </Animations>
  </atk:UpdatePanelAnimationExtender>
</asp:Content>

