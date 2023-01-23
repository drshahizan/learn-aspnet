<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="MatchAdd.aspx.cs" Inherits="WorldCupOnTheGo.MatchAdd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="py-5 container">
        <div class="card-body">
            <h4>Add New Match</h4>
            <div class="form-outline mb-4">
                <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
            </div>
            <div class="form-outline mb-4">
                <label for="exampleFormControlInput1">Team A</label>
                <asp:TextBox ID="txtTeamA" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-outline mb-4">
                <label for="exampleFormControlInput1">Team A Score</label>
                <asp:TextBox ID="txtTeamAScore" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-outline mb-4">
                <label for="exampleFormControlInput1">Team B</label>
                <asp:TextBox ID="txtTeamB" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-outline mb-4">
                <label for="exampleFormControlInput1">Team B Score</label>
                <asp:TextBox ID="txtTeamBScore" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-outline mb-4">
                <label for="exampleFormControlInput1">Match DateTime</label>
                <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="DateChange"></asp:Calendar>
                <asp:TextBox ID="txtMatchDateTime" CssClass="form-control" runat="server" TextMode="DateTime"></asp:TextBox>
            </div>
            <div class="mb-2">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-success my-2" OnClick="btnSubmit_Click" />
                <asp:Button ID="btnTeamList" runat="server" CssClass="btn btn-primary my-2" Text="Go to match list" OnClick="btnMatchList_Click" />
            </div>
        </div>
    </section>
</asp:Content>
