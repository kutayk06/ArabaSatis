<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="ContactPage.aspx.cs" Inherits="ArabaSatisSistesi.ContactPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h2>İletişim Formu</h2>
        <hr />
        <div class="row">
            <form id="form1" runat="server">
    <asp:TextBox ID="tboxName" runat="server" ToolTip="İsminizi girin" style="margin-bottom: 0">İsminiz</asp:TextBox>
    <br />
    <br />
    <asp:TextBox ID="tboxMail" runat="server" ToolTip="Mail Adresinizi girin">Mail adresi</asp:TextBox>
    <br />
    <br />
    <asp:TextBox ID="tboxMessage" runat="server" Height="180px" TextMode="MultiLine" ToolTip="Mesajınızı yazınız" Width="309px">Mesajınız</asp:TextBox>
    <br />
    <br />
    <asp:Button ID="btnSend" runat="server" Height="44px" OnClick="btnSend_Click" Text="Mesajı Gönder!" Width="147px" />
</form>

        </div>

</asp:Content>

