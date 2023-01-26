<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage/Site1.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="PenangFoodHunter.About" Theme="Theme1"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>About Us</title>
    
    <style type="text/css">
        .auto-style1 {
            height: 213px;
            width: 340px;
        }
    </style>
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
                <img src="../img/AboutBanner1.jpg" alt="bA1" class="d-block" style="width: 100%">
            </div>
            <div class="carousel-item">
                <img src="../img/AboutBanner2.jpg" alt="bA2" class="d-block" style="width: 100%">
            </div>
            <div class="carousel-item">
                <img src="../img/AboutBanner3.jpg" alt="bA3" class="d-block" style="width: 100%">
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
    <div class="accordion" id="accordionPanelsStayOpenExample">
        <div class="accordion-item">
            <h2 class="accordion-header" id="panelsStayOpen-headingOne">
                <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseOne" aria-expanded="true" aria-controls="panelsStayOpen-collapseOne">
                    Who are we?
                </button>
            </h2>
            <div id="panelsStayOpen-collapseOne" class="accordion-collapse collapse show" aria-labelledby="panelsStayOpen-headingOne">
                <div class="accordion-body">
                    <div class="container">
                        <div class="row">

                            <div class="col-md-4">
                                <img src="img/foodhunterranger.png" class="auto-style1" border="1" />
                            </div>
                            <div class="col-md-8">
                                <b>Team Food Hunter Penang</b> was established in 2022. Our team is a team that is always moving around Penang to find the best and delicious food for the people of Penang, especially for visitors who visit Penang, especially during the school holidays.
                                     Our objective is to provide the best location and menu info at a reasonable price. You can also share information about the location we need to visit.
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="accordion-item">
            <h2 class="accordion-header" id="panelsStayOpen-headingTwo">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseTwo" aria-expanded="false" aria-controls="panelsStayOpen-collapseTwo">
                    Contact Us</button>
            </h2>
            <div id="panelsStayOpen-collapseTwo" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingTwo">
                <div class="accordion-body">
          <p>Please contact us to get the necessary information or share suggestions of interesting locations and menus for us to visit. <br />
               Tel: 017-12345678<br />
                Email : <a href="mailto:foodhunter@gmail.com">foodhunterpenang@gmail.com</a>
          </p>
                </div>
            </div>
        </div>

    </div>
</asp:Content>
