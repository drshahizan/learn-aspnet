<%@ Page Title="Home - FIFA WORLD CUP QATAR" Language="C#" MasterPageFile="~/Masterpage/Site1.Master" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="Project_WorldCup.Homepage" Theme="Theme1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="py-5">
        <div class="container px-5">

            <div class="card border-0 shadow rounded-3 overflow-hidden">
                <div class="card-body p-0">
                    <div class="row gx-0">
                        <div class="col-lg-6 col-xl-5 py-lg-5">
                            <div class="p-4 p-md-5">

                                <div class="h2 fw-bolder">FIFA World Cup Qatar 2022™</div>
                                <p>The 2022 FIFA World Cup was an international football tournament contested by the men's national teams of FIFA's member associations and 22nd edition of the FIFA World Cup</p>

                            </div>
                        </div>
                        <div class="col-lg-6 col-xl-7">
                            <div id="demo" class="carousel slide" data-bs-ride="carousel">

                                <!-- Indicators/dots -->
                                <div class="carousel-indicators">
                                    <button type="button" data-bs-target="#demo" data-bs-slide-to="0" class="active"></button>
                                    <button type="button" data-bs-target="#demo" data-bs-slide-to="1"></button>
                                    <button type="button" data-bs-target="#demo" data-bs-slide-to="2"></button>
                                </div>

                                <!-- The slideshow/carousel -->
                                <div class="carousel-inner">
                                    <div class="carousel-item active">
                                        <img src="img/banner1.png" alt="banner1" class="d-block w-100">
                                    </div>
                                    <div class="carousel-item">
                                        <img src="img/banner2.jpg" alt="banner2" class="d-block w-100">
                                    </div>
                                    <div class="carousel-item">
                                        <img src="img/banner3.png" alt="banner3" class="d-block w-100">
                                    </div>
                                </div>

                                <!-- Left and right controls/icons -->
                                <button class="carousel-control-prev" type="button" data-bs-target="#demo" data-bs-slide="prev">
                                    <span class="carousel-control-prev-icon"></span>
                                </button>
                                <button class="carousel-control-next" type="button" data-bs-target="#demo" data-bs-slide="next">
                                    <span class="carousel-control-next-icon"></span>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="py-5">
        <div class="container px-5">
            <h2 class="fw-bolder fs-5 mb-4">Football News</h2>
            <div class="row gx-5">
                <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                    <EmptyDataTemplate>
                        <div class="col-lg-4 mb-5">
                            <div class="card h-100 shadow border-0">
                                <div class="card-body p-4">
                                    <div class="badge bg-primary bg-gradient rounded-pill mb-2">News</div>
                                    <a class="text-decoration-none link-dark stretched-link" href="#!">
                                        <div class="h5 card-title mb-3">-</div>
                                    </a>
                                    <p class="card-text mb-0">No news available. </p>
                                </div>
                            </div>
                        </div>
                    </EmptyDataTemplate>
                    <ItemTemplate>
                        <div class="col-lg-4 mb-5">
                            <div class="card h-100 shadow border-0">
                                <div class="card-body p-4">
                                    <div class="badge bg-primary bg-gradient rounded-pill mb-2">News</div>
                                    <a class="text-decoration-none link-dark stretched-link" href="#!">
                                        <div class="h5 card-title mb-3">
                                            <asp:Label ID="newsLabel" runat="server" Text='<%# Eval("news") %>' /></div>
                                    </a>
                                    <p class="card-text mb-0">
                                        <asp:Label ID="articleLabel" runat="server" Text='<%# Eval("article") %>' /></p>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:ListView>

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [news], [article] FROM [newsArticle]"></asp:SqlDataSource>
            </div>

        </div>
    </section>
</asp:Content>
