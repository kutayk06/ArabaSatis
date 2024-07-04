<%@ Page Title="Kayıt Ol" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="ArabaSatisSistesi.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="register-container">
        <style>
    .register-container {
        max-width: 400px;
        margin: 50px auto;
        padding: 20px;
        border: 1px solid #ccc;
        border-radius: 10px;
        background-color: #f9f9f9;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    .register-container h2 {
        text-align: center;
        margin-bottom: 20px;
    }

    .register-label {
        display: block;
        margin-bottom: 5px;
        font-weight: bold;
    }

    .register-input {
        width: 100%;
        padding: 10px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-sizing: border-box;
    }

    .register-button {
        width: 100%;
        padding: 10px;
        background-color: #28a745;
        color: white;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-size: 16px;
    }

    .register-button:hover {
        background-color: #218838;
    }
</style>

        <h2>Kayıt Ol</h2>
        <form id="form1" runat="server">
            <asp:Label ID="Label1" runat="server" Text="E-posta" AssociatedControlID="tboxMail" CssClass="register-label"></asp:Label>
            <asp:TextBox ID="tboxMail" runat="server" TextMode="Email" Width="100%" placeholder="E-posta adresinizi girin" CssClass="register-input"></asp:TextBox>
            
            <asp:Label ID="Label2" runat="server" Text="Şifre" AssociatedControlID="tboxPassword" CssClass="register-label"></asp:Label>
            <asp:TextBox ID="tboxPassword" runat="server" TextMode="Password" Width="100%" placeholder="Şifrenizi girin" CssClass="register-input"></asp:TextBox>
            
            <asp:Button ID="btnRegister" runat="server" Text="Kayıt Ol" CssClass="register-button" OnClick="btnRegister_Click" />
        </form>
    </div>
</asp:Content>
