<%@ Page Title="Create Player" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmAddPlayer.aspx.cs" Inherits="PLASS.frmAddPlayer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="d-flex justify-content-start">
        <div class="w-50 row shadow-lg p-3 rounded g-3">
            <h1 class="mb-5">Create Player</h1>
            <div class="col-md-6">
                <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label>
                <asp:TextBox CssClass="form-control" ID="txtName" runat="server"></asp:TextBox>
            </div>
            <div class="col-md-6">
                <asp:Label ID="lblDob" runat="server" Text="Date of Birth"></asp:Label>
                <asp:TextBox CssClass="form-control" ID="txtDob" runat="server" TextMode="Date"></asp:TextBox>
            </div>
            <div class="col-md-6">
                <asp:Label ID="lblHeight" runat="server" Text="Height (cm)"></asp:Label>
                <asp:TextBox CssClass="form-control" ID="txtHeight" runat="server" TextMode="Number"></asp:TextBox>
            </div>
            <div class="col-md-6">
                <asp:Label ID="lblWeight" runat="server" Text="Weight (kg)"></asp:Label>
                <asp:TextBox CssClass="form-control" ID="txtWeight" runat="server" TextMode="Number"></asp:TextBox>
            </div>
            <div class="col-md-6">
                <asp:Label ID="lblCountry" runat="server" Text="Country"></asp:Label>
                <asp:DropDownList CssClass="form-control" ID="ddCountry" runat="server" AutoPostBack="True" DataSourceID="CountryList" DataTextField="name" DataValueField="id"></asp:DropDownList>
                <asp:SqlDataSource ID="CountryList" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [name], [id] FROM [country]"></asp:SqlDataSource>
            </div>
            <div class="col-md-6">
                <asp:Label ID="lblDominantFoot" runat="server" Text="Dominant Foot"></asp:Label>
                <asp:DropDownList CssClass="form-control" ID="ddDominantFoot" runat="server" AutoPostBack="True">
                    <asp:ListItem Value="right">Right</asp:ListItem>
                    <asp:ListItem Value="left">Left</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="col-md-12">
                <asp:Label ID="lblEstimatedValue" runat="server" Text="Estimated Value"></asp:Label>
                <asp:TextBox CssClass="form-control" ID="txtEstimatedValue" runat="server" TextMode="Number"></asp:TextBox>
            </div>
            <asp:Label ID="lblMessage" runat="server"  Visible="False" Text="Success!"></asp:Label>
            <asp:Button CssClass="btn btn-primary mt-5 " ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
        </div>
    </div>
</asp:Content>
