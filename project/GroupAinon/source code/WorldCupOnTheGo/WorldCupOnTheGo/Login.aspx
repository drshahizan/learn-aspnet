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

            <div class="form-floating">
                <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server"></asp:TextBox>
                <label for="floatingInput">Email address</label>
            </div>
            <div class="form-floating">
                <asp:TextBox ID="txtPassword" CssClass="form-control" runat="server"></asp:TextBox>
                <label for="floatingPassword">Password</label>
            </div>
            
            <asp:Button ID="btnSignIn" CssClass="w-100 btn btn-lg btn-primary" runat="server" Text="Sign" OnClick="btnSignIn_Click" />
            <p class="mt-5 mb-3 text-muted">&copy; 2023</p>
        </form>
    </main>

</asp:Content>
