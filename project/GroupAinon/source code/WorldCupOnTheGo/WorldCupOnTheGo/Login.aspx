<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WorldCupOnTheGo.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="assets/custom/css/sign-in.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main class="form-signin w-100 m-auto">
        <form>
            <center>
                <img class="mb-4" src="../assets/brand/2022_FIFA_World_Cup.svg.png" alt="" height="200">
            </center>
            <h1 class="h5 mb-3 fw-normal">Sign-in to your admin account</h1>
            <div class="alert alert-info" role="alert">
                <i class="fa fa-light fa-circle-info"></i>
                : To login, use dummy account below
            </div>
            <div class="v-card-text">
                <div class="v-alert v-theme--light text-primary v-alert--density-comfortable v-alert--variant-tonal" role="alert">
                    <!---->
                    <span class="v-alert__underlay"></span>
                    <!---->
                    <!---->
                    <div class="v-alert__content">
                        <!---->
                        <!---->
                        <p class="text-caption mb-2">
                            <h6>Admin</h6>
                            Email: <strong>admin@worldcuponthego.my</strong><br />
                            Pass: <strong>BbcEZrEm</strong>
                        </p>
                        <hr />
                    </div>
                    <!---->
                    <!---->
                </div>
            </div>

            <div class="text-center">
                <asp:Label ID="lblMessage" runat="server" Text="" ForeColor="#FF3300"></asp:Label>
            </div>
            <div class="form-floating">

                <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server" TextMode="Email"></asp:TextBox>
                <label for="floatingInput">Email address</label>
            </div>
            <div class="form-floating">
                <asp:TextBox ID="txtPassword" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                <label for="floatingPassword">Password</label>
            </div>

            <asp:Button ID="btnSignIn" CssClass="w-100 btn btn-lg btn-primary" runat="server" Text="Sign" OnClick="btnSignIn_Click" />
            <p class="mt-5 mb-3 text-muted">&copy; 2023</p>
        </form>
    </main>

</asp:Content>
