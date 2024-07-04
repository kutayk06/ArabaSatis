<%@ Page Title="Giriş" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ArabaSatisSistesi.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="login-container">
        <style>
    .login-container {
        max-width: 400px;
        margin: 50px auto;
        padding: 20px;
        border: 1px solid #ccc;
        border-radius: 10px;
        background-color: #f9f9f9;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    .login-container h2 {
        text-align: center;
        margin-bottom: 20px;
    }

    .login-label {
        display: block;
        margin-bottom: 5px;
        font-weight: bold;
    }

    .login-input {
        width: 100%;
        padding: 10px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-sizing: border-box;
    }

    .login-button {
        width: 100%;
        padding: 10px;
        background-color: #007bff;
        color: white;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-size: 16px;
    }

    .login-button:hover {
        background-color: #0056b3;
    }
</style>

        <h2>Giriş Yap</h2>
        <form id="form1" runat="server">
            <asp:Label ID="Label1" runat="server" Text="E-posta" AssociatedControlID="tboxMail" CssClass="login-label"></asp:Label>
            <asp:TextBox ID="tboxMail" runat="server" TextMode="Email" Width="100%" placeholder="E-posta adresinizi girin" CssClass="login-input"></asp:TextBox>
            
            <asp:Label ID="Label2" runat="server" Text="Şifre" AssociatedControlID="tboxPassword" CssClass="login-label"></asp:Label>
            <asp:TextBox ID="tboxPassword" runat="server" TextMode="Password" Width="100%" placeholder="Şifrenizi girin" CssClass="login-input"></asp:TextBox>
            
            <asp:Button ID="btnLogin" runat="server" Text="Giriş Yap" CssClass="login-button" OnClick="btnLogin_Click" />

        </form>
    </div>
</asp:Content>


