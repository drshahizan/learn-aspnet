<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="PenangFoodHunter.Home" Theme="Theme1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
                <img src="../img/slider image1.jpg" alt="banner1" class="d-block" style="width: 100%">
            </div>
            <div class="carousel-item">
                <img src="../img/slider image2.jpg" alt="banner2" class="d-block" style="width: 100%">
            </div>
            <div class="carousel-item">
                <img src="../img/slider image3.jpg" alt="banner3" class="d-block" style="width: 100%">
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
    <br />
    <div class="col-md-12 mb-12">
        <div class="card h-100">
            <div class="card-body">
                <h2 class="card-title">Why is Penang famous for food?</h2>
                <p class="card-text">Not only are Asia's major races all represented in Penang's cuisine, they are fused together in the forms that are truly unique to Penang like Nyonya and Jawi Peranakan cooking. Nyonya cuisine is a blend of Malay, Chinese and Thai influences that is well known especially around the region.</p>
            </div>

        </div>
    </div>
    <br />
    <div class="row gx-4 gx-lg-5">
        <div class="col-md-6 mb-5">
            <div class="card h-100">
                <div class="card-body">
                    <h2 class="card-title">Top 10 "Halal"</h2>
                    <p class="card-text">Top 10 Halal food in Penang for breakfast, lunch and dinner. Enjoy your food!</p>
                </div>
                <div class="card-footer"><a class="btn btn-primary btn-sm" href="Halal.aspx">More Info</a></div>
            </div>
        </div>
        <div class="col-md-6 mb-5">
            <div class="card h-100">
                <div class="card-body">
                    <h2 class="card-title">Top 10 "Non-Halal"</h2>
                    <p class="card-text">Top 10 Non Halal food in Penang for breakfast, lunch and dinner. Enjoy your food!</p>
                </div>
                <div class="card-footer"><a class="btn btn-primary btn-sm" href="NonHalal.aspx">More Info</a></div>
            </div>
        </div>

    </div>
</asp:Content>
