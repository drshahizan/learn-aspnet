<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmMatch_Create.aspx.cs" Inherits="PLASS.frmAddMatch" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container ">
        <div class="row p-3 rounded-4">
            <h1 class="mb-4">Create Match</h1>
            <div class="col-md-12">
                <label>Player</label>
                <asp:DropDownList CssClass="form-control" ID="ddPLayer" runat="server" DataSourceID="PlayerList" DataTextField="Name" DataValueField="id"></asp:DropDownList>
                <asp:SqlDataSource ID="PlayerList" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [id], [Name] FROM [player]"></asp:SqlDataSource>
            </div>
            <div class="col-md-6">
                <label>Title</label>
                <asp:TextBox CssClass="form-control" ID="txtTitle" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvTitle" runat="server" ErrorMessage="Please enter title" Font-Italic="True" ControlToValidate="txtTitle" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-6">
                <label>Date</label>
                <asp:TextBox CssClass="form-control" ID="txtDate" runat="server" TextMode="Date"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvDate" runat="server" ErrorMessage="Please fill up date" Font-Italic="True" ControlToValidate="txtDate" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-3">
                <label>Goal</label>
                <asp:TextBox CssClass="form-control" ID="txtGoal" runat="server" TextMode="Number" value="0"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvGoal" runat="server" ErrorMessage="Please enter value" MinimumValue="0" Font-Italic="True" ControlToValidate="txtGoal" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-3">
                <label>Assist</label>
                <asp:TextBox CssClass="form-control" ID="txtAssist" runat="server" TextMode="Number" value="0"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvAssist" runat="server" ErrorMessage="Please enter value" MinimumValue="0" Font-Italic="True" ControlToValidate="txtAssist" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-3">
                <label>Yellow Card</label>
                <asp:TextBox CssClass="form-control" ID="txtYellowCard" runat="server" TextMode="Number" value="0"></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Maximum is 2" MaximumValue="2" MinimumValue="0" ControlToValidate="txtYellowCard" CssClass="text-danger"></asp:RangeValidator>
            </div>
            <div class="col-md-3">
                <label>Red Card</label>
                <asp:TextBox CssClass="form-control" ID="txtRedCard" runat="server" TextMode="Number" value="0"></asp:TextBox>
            </div>
            <div class="col-md-4">
                <label>Position</label>
                <asp:DropDownList CssClass="form-control" ID="ddPosition" runat="server" DataSourceID="PositionList" DataTextField="name" DataValueField="id"></asp:DropDownList>
                <asp:SqlDataSource ID="PositionList" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [id], [name] FROM [position]"></asp:SqlDataSource>
            </div>
            <div class="col-md-4">
                <label>Jersey Number</label>
                <asp:TextBox CssClass="form-control" ID="txtJerseyNumber" runat="server" TextMode="Number"></asp:TextBox>
            </div>
            <div class="col-md-4">
                <label>Is captain?</label>
                <asp:RadioButtonList ID="rbCaptain" runat="server" RepeatDirection="Horizontal" Width="153px">
                    <asp:ListItem Value="1">Yes</asp:ListItem>
                    <asp:ListItem Value="0">No</asp:ListItem>
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="rfvCaptain" runat="server" ErrorMessage="Please choose" Font-Italic="True" ControlToValidate="rbCaptain" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>

            </div>
            <div class="col-md-12">
                <label>Team</label>
                <asp:DropDownList CssClass="form-control" ID="ddTeam" runat="server" DataSourceID="TeamList" DataTextField="name" DataValueField="id"></asp:DropDownList>
                <asp:SqlDataSource ID="TeamList" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [id], [name] FROM [team]"></asp:SqlDataSource>
            </div>
            <asp:Label ID="lblErrorMessage" runat="server" Font-Bold="True"></asp:Label>
            <asp:Button CssClass="btn btn-primary mt-4" ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
        </div>
    </div>
</asp:Content>
