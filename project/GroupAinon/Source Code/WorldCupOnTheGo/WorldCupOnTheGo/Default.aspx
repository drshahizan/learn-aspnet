<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WorldCupOnTheGo.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main>

        <section class="py-5 text-center container">
            <div class="row py-lg-5">
                <div class="col-lg-6 col-md-8 mx-auto">
                    <center>
                        <img class="mb-4" src="../assets/brand/2022_FIFA_World_Cup.svg.png" alt="" height="200">
                    </center>
                    <h1 class="fw-light">Welcome to WorldCupOnTheGo</h1>
                    <p class="lead text-muted">A free world cup news portal for all fans to get updates about their favorite teams on their smartphones, tablets and computers – anytime, anywhere in Malaysia.</p>
                    
                    <div class="input-group rounded">
                      <asp:TextBox ID="txtSearch" placeholder="Search news and matches and hit enter..." CssClass="form-control rounded" runat="server"></asp:TextBox>
                      <span class="input-group-text border-0" id="search-addon">
                        <i class="fa-solid fa-magnifying-glass"></i>
                      </span>
                    </div>                    

                    <br />
                    <p>
                        <asp:Label ID="lblDisplayEmail" runat="server" Text=""></asp:Label>
                    </p>
                    <p>
                        <asp:LinkButton ID="lbGoToContentList" CssClass="btn btn-primary my-2" runat="server" OnClick="lbGoToContentList_Click">Go to content list</asp:LinkButton>
                        <asp:LinkButton ID="lbGoToTeamList" CssClass="btn btn-primary my-2" runat="server" OnClick="lbGoToTeamList_Click">Go to Team List</asp:LinkButton>
                        <asp:LinkButton ID="lbGoToMatchList" CssClass="btn btn-primary my-2" runat="server" OnClick="lbGoToMatchList_Click">Go to Match List</asp:LinkButton>
                        <asp:LinkButton ID="lbGoAuditList" CssClass="btn btn-primary my-2" runat="server" OnClick="lbGoAuditList_Click">Go to Audit List</asp:LinkButton>
                    </p>
                </div>
            </div>
        </section>

        <div class="album py-5 bg-light">
            <div class="container">
                <div class="d-flex justify-content-between align-items-center">
                    <h1 class="fw-light">
                        <center>Latest news</center>
                    </h1>
                </div>
                <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
                    <asp:ListView ID="lvContent" runat="server">
                        <ItemTemplate>
                            <div class="col">
                                <div class="card shadow-sm">
                                    <img class="mb-4" src="<%# Eval("file_path") %>" alt="" width="100%" height="225">
                                    <div class="card-body">
                                        <p class="card-text"><%# Eval("Title") %></p>
                                        <div class="d-flex justify-content-between align-items-center">
                                            <div class="btn-group">
                                                <asp:LinkButton ID="ViewButton" runat="server" CssClass="btn btn-sm btn-outline-secondar" OnClick="ManageContent_Click" CommandArgument='<%#Eval("Id")%>' CommandName="ViewLink">View</asp:LinkButton>
                                                <%--<asp:LinkButton ID="EditButton" runat="server" CssClass="btn btn-sm btn-outline-secondar" OnClick="ManageContent_Click" CommandArgument='<%#Eval("Id")%>' CommandName="EditLink">Edit</asp:LinkButton>--%>
                                            </div>
                                            <small class="text-muted">Created Date : <%# Eval("created_date") %></small>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:ListView>
                </div>
            </div>
        </div>
        <div class="col-lg-12 col-xl-12 py-5">
            <div class="container">
                <div class="d-flex justify-content-between align-items-center">
                    <h1 class="fw-light">
                        <center>Match results</center>
                    </h1>
                </div>
                <div class="row row-cols-1 row-cols-lg-2 gy-5 g-lg-4 mt-0 mt-lg-0">

                    <asp:ListView ID="lvMatches" runat="server">
                        <ItemTemplate>
                            <div class="col">
                        <a href="#" class="items-matchs">
                            <figure class="m-0 bg-mc-1">
                                <img src="assets/images/bg-match.jpeg" alt="bg-ms">
                            </figure>
                            <div class="matches-div-home">
                                <h5>                                          
                                    <span class="d-block"><%# ((DateTime)Eval("match_datetime")).ToString("dd/MM/yyyy") %> </span>
                                </h5>
                                <div class="d-flex align-items-center justify-content-between">
                                    <figure>
                                        <figcaption><%# Eval("team_a") %> </figcaption>
                                        <figcaption><%# Eval("team_a_score") %> </figcaption>
                                    </figure>
                                    <h4>VS</h4>
                                    <figure>
                                        <figcaption><%# Eval("team_b") %></figcaption>
                                        <figcaption><%# Eval("team_a_score") %></figcaption>
                                    </figure>
                                </div>
                            </div>
                        </a>
                    </div>
                        </ItemTemplate>
                    </asp:ListView>
                    <%--<div class="col">
                        <a href="#" class="items-matchs">
                            <figure class="m-0 bg-mc-1">
                                <img src="assets/images/bg-match.jpeg" alt="bg-ms">
                            </figure>
                            <div class="matches-div-home">
                                <h5>                                          
                                    <span class="d-block">April 02, 2019 </span>
                                </h5>
                                <div class="d-flex align-items-center justify-content-between">

                                    <figure>
                                        <img src="images/9.png" alt="cl2">
                                        <figcaption>Rayal FC </figcaption>
                                    </figure>
                                    <h4>VS</h4>
                                    <figure>
                                        <img src="images/8.png" alt="cl2">
                                        <figcaption>Italy FC.</figcaption>
                                    </figure>
                                </div>
                            </div>
                        </a>
                    </div>

                    <div class="col">
                        <a href="#" class="items-matchs">
                            <figure class="m-0 bg-mc-1">
                                <img src="assets/images/bg-match.jpeg" alt="bg-ms">
                            </figure>
                            <div class="matches-div-home">
                                <h5>                                          
                                    <span class="d-block">April 02, 2019 </span>
                                </h5>
                                <div class="d-flex align-items-center justify-content-between">

                                    <figure>
                                        <img src="images/3.png" alt="cl2">
                                        <figcaption>DC Unfo.</figcaption>
                                    </figure>
                                    <h4>VS</h4>
                                    <figure>
                                        <img src="images/9.png" alt="cl2">
                                        <figcaption>Italy FC.</figcaption>
                                    </figure>
                                </div>
                            </div>
                        </a>
                    </div>


                    <div class="col">
                        <a href="#" class="items-matchs">
                            <figure class="m-0 bg-mc-1">
                                <img src="assets/images/bg-match.jpeg" alt="bg-ms">
                            </figure>
                            <div class="matches-div-home">
                                <h5>                                          
                                    <span class="d-block">April 02, 2019 </span>
                                </h5>
                                <div class="d-flex align-items-center justify-content-between">

                                    <figure>
                                        <img src="images/1.png" alt="cl2">
                                        <figcaption>Istanbul</figcaption>
                                    </figure>
                                    <h4>VS</h4>
                                    <figure>
                                        <img src="images/8.png" alt="cl2">
                                        <figcaption>Italy FC.</figcaption>
                                    </figure>
                                </div>
                            </div>
                        </a>
                    </div>--%>

                </div>
            </div>


        </div>

    </main>
</asp:Content>
