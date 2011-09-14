<%@ Control Language="VB" ClassName="SmartBox" %>

<script runat="server">
  Public WriteOnly Property LabelText() As String
    Set(ByVal value As String)
      myLabel.Text = value
    End Set
  End Property
  
  Public ReadOnly Property Text() As String
    Get
      Text = myTextBox.Text
    End Get
  End Property
</script>

<p>
  <asp:Label ID="myLabel" runat="server" Text="" Width="100" />
  <asp:TextBox ID="myTextBox" runat="server" Text="" Width="200"
      MaxLength="20" />
</p>