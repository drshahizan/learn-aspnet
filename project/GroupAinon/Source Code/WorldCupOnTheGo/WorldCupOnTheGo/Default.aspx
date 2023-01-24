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
                    <p>
                        <asp:Label ID="lblDisplayEmail" runat="server" Text=""></asp:Label>
                    </p>
                    <p>
                        <asp:Button ID="btnGoToContentList" runat="server" CssClass="btn btn-primary my-2" Text="Go to content list" OnClick="btnGoToContentList_Click" />
                        <asp:Button ID="btnGoToTeamList" runat="server" CssClass="btn btn-primary my-2" Text="Go to Team List" OnClick="btnGoToTeamList_Click" />
                        <asp:Button ID="btnGoToMatchList" runat="server" CssClass="btn btn-primary my-2" Text="Go to Match List" OnClick="btnGoToMatchList_Click" />
                    </p>
                </div>
            </div>
        </section>

        <div class="album py-5 bg-light">
            <div class="container">
                <h1 class="fw-light"><center>Latest news</center></h1>
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

    </main>
</asp:Content>
