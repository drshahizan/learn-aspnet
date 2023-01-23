<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ContentView.aspx.cs" Inherits="WorldCupOnTheGo.ContentView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <section class="py-5 text-center container">
            <div class="row py-lg-5">
                <div class="col-lg-6 col-md-8 mx-auto">
                    <center>
                        <asp:Image ID="imgFile" runat="server" Width="500" />
                    </center>
                    <asp:Label ID="lblTitle" runat="server" CssClass="fw-light" Text=""></asp:Label>
                </div>
            </div>
        </section>
        <div class="row">
            <div class="col-lg-8 col-md-10 mx-auto">
                <asp:Label ID="lblContent" runat="server" Text=""></asp:Label>
                <hr>

                <div class="clearfix">
                    <asp:LinkButton ID="GoToMainPage" OnClick="GoToMainPage_Click" CssClass="btn btn-primary float-left" runat="server">
                        ← Return to main page 
                        <span class="d-none d-md-inline"></span>
                    </asp:LinkButton>                    
                </div>

            </div>
        </div>
    </div>
</asp:Content>
