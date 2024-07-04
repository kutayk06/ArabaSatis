<%@ Page Title="" Language="C#" MasterPageFile="~/AdminLayout.Master" AutoEventWireup="true" CodeBehind="AdminAddCars.aspx.cs" Inherits="ArabaSatisSistesi.AdminAddCars" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h2>Onay Bekleyen Araçlar</h2>
        <hr />
        <asp:DataList ID="DataList1" runat="server" CssClass="table table-bordered">
            <ItemTemplate>
                <div class="row">
                    <div class="col-md-3">
                        <asp:Image ID="imgCar" runat="server" CssClass="img-responsive" ImageUrl='<%# Eval("CarPhoto") %>' />
                    </div>
                    <div class="col-md-9">
                        <table class="table">
                            <tr>
                                <td class="col-md-4"><strong>Araba Modeli:</strong></td>
                                <td><asp:Label ID="lblModel" runat="server" Text='<%# Eval("CarModel") %>'></asp:Label></td>
                            </tr>
                            <tr>
                                <td><strong>Yakıt Tipi:</strong></td>
                                <td><asp:Label ID="lblFuelType" runat="server" Text='<%# Eval("CarFuelType") %>'></asp:Label></td>
                            </tr>
                            <tr>
                                <td><strong>Açıklama:</strong></td>
                                <td><asp:Label ID="lblDescription" runat="server" Text='<%# Eval("CarDescription") %>'></asp:Label></td>
                            </tr>
                            <tr>
                                <td><strong>Araç Satıcı:</strong></td>
                                <td><asp:Label ID="lblSeller" runat="server" Text='<%# Eval("CarSeller") %>'></asp:Label></td>
                            </tr>
                            <tr>
                                <td><strong>Telefon Numarası:</strong></td>
                                <td><asp:Label ID="lblContact" runat="server" Text='<%# Eval("CarContact") %>'></asp:Label></td>
                            </tr>
                            <tr>
                                <td><strong>Araç Fiyatı:</strong></td>
                                <td><asp:Label ID="lblPrice" runat="server" Text='<%# Eval("CarPrice", "{0:C}") %>'></asp:Label></td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <a href="ApproveCars.aspx?carid=<%# Eval("CarID") %>" class="btn btn-success">Onayla</a>
                                    <a href="RejectCars.aspx?carid=<%# Eval("CarID") %>" class="btn btn-danger">Reddet</a>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
                <hr />
            </ItemTemplate>
        </asp:DataList>
    </div>
</asp:Content>
