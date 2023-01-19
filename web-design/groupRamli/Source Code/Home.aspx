<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Assignment_4.Home" Theme="Tema" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="Summary" runat="server">
     <div class="container body-content">
          <div class="container">
            <div class="row">  
                <div class="col-12">(Summary of why batik is the unity art with background image)</div>
                </div>
              </div>
         </div>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">
    <hr />
    <div class="container body-content">
                 <div class="container">
            <div class="row">  
                <div class="col-4">About Batik</div>
                <div class="col-4">Costumes</div>
                <div class="col-4">Subscribe to our Newsletter Today!<br />
                <asp:Button ID="Button1" runat="server" SkinID="RidgeTB" /></div>
            </div>
        </div>
    </div>
    </asp:Content>
