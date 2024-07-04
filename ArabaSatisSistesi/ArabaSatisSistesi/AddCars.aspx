<%@ Page Title="" Language="C#" MasterPageFile="~/UserLayout.Master" AutoEventWireup="true" CodeBehind="AddCars.aspx.cs" Inherits="ArabaSatisSistesi.AddCars" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h2>Yeni Araç İlanı Ekle</h2>
        <hr />
        <form id="form1" runat="server">
            <div class="form-group">
                <label>Araba Markası</label>
                <asp:DropDownList ID="combobox" runat="server" CssClass="form-control" />
            </div>
            <div class="form-group">
                <label>Araba Modeli</label>
                <asp:TextBox ID="tboxModel" runat="server" CssClass="form-control" />
            </div>
            <div class="form-group">
                <label>Araba Görsel Linki</label>
                <asp:TextBox ID="tboxPhoto" runat="server" CssClass="form-control" />
            </div>
            <div class="form-group">
                <label>Yakıt Tipi</label>
                <asp:TextBox ID="tboxFuel" runat="server" CssClass="form-control" />
            </div>
            <div class="form-group">
                <label>Açıklama</label>
                <asp:TextBox ID="tboxDescription" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="4" />
            </div>
            <div class="form-group">
                <label>Araç Satıcı Adı</label>
                <asp:TextBox ID="tboxSeller" runat="server" CssClass="form-control" />
            </div>
            <div class="form-group">
                <label>İletişim Telefonu</label>
                <asp:TextBox ID="tboxContact" runat="server" CssClass="form-control" />
            </div>
            <div class="form-group">
                <label>Araç Fiyatı</label>
                <asp:TextBox ID="tboxPrice" runat="server" CssClass="form-control" />
            </div>
            <asp:Button ID="btnSend" runat="server" Text="İlanı Ekle" OnClick="Button1_Click" CssClass="btn btn-primary" />
        </form>
    </div>
</asp:Content>
