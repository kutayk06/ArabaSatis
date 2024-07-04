<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="ListCars.aspx.cs" Inherits="ArabaSatisSistesi.ListCars" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .card {
            border: 1px solid rgba(0, 0, 0, 0.125);
            border-radius: 0.25rem;
        }
        .card-body {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .card-text {
            margin-bottom: 0.5rem;
        }
    </style>
    
    <div class="container">
        <h2 class="text-center mb-4">Araba Listesi</h2>
        <hr />
        <asp:DataList ID="DataList1" runat="server" CssClass="datalist">
            <ItemTemplate>
                <div class="card mb-3">
                    <div class="row g-0">
                        <div class="col-md-4">
                            <asp:Image ID="Image1" runat="server" CssClass="card-img-top" ImageUrl='<%# Eval("CarPhoto") %>' AlternateText="Car Image" />
                        </div>
                        <div class="col-md-8">
                            <div class="card-body">
                                <div>
                                    <h5 class="card-title">
                                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("BrandName") %>' CssClass="text-primary fw-bold fs-4"></asp:Label>
                                        <br />
                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("CarModel") %>' CssClass="fs-3"></asp:Label>
                                    </h5>
                                    <p class="card-text fs-5">
                                        Yakıt Tipi: <asp:Label ID="Label3" runat="server" Text='<%# Eval("CarFuelType") %>' CssClass="text-muted"></asp:Label>
                                    </p>
                                    <p class="card-text fs-5">
                                        Fiyat: <asp:Label ID="Label6" runat="server" Text='<%# Eval("CarPrice", "{0:C}") %>' CssClass="text-success"></asp:Label>
                                    </p>
                                </div>
                                <div>
                                    <p class="card-text fs-5">
                                        Açıklama: <asp:Label ID="Label7" runat="server" Text='<%# Eval("CarDescription") %>' CssClass="text-secondary"></asp:Label>
                                    </p>
                                    <p class="card-text fs-5">
                                        Satıcı: <asp:Label ID="Label4" runat="server" Text='<%# Eval("CarSeller") %>' CssClass="text-primary"></asp:Label>
                                        <br />
                                        İletişim: <asp:Label ID="Label5" runat="server" Text='<%# Eval("CarContact") %>' CssClass="text-primary"></asp:Label>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:DataList>
    </div>
</asp:Content>
