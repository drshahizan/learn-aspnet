<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="MatchAdd.aspx.cs" Inherits="WorldCupOnTheGo.MatchAdd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="py-5 container">
        <div class="card-body">
            <h4>Add New Match Result</h4>
            <div class="form-outline mb-4">
                <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
            </div>
            <div class="form-outline mb-4">
                <label for="exampleFormControlInput1">Team A</label><span style="color:red">*</span>
                <asp:DropDownList ID="ddlTeamA" runat="server" CssClass="form-control" AppendDataBoundItems="true">
                    <asp:ListItem Selected="True" Value="0" Text="Select"></asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="reqTeamA" runat="server" ErrorMessage="required" EnableClientScript="False" ControlToValidate="ddlTeamA" Text="*Required field" ForeColor="Red" InitialValue="0"></asp:RequiredFieldValidator>
            </div>
            <div class="form-outline mb-4">
                <label for="exampleFormControlInput1">Team A Score</label><span style="color:red">*</span>
                <asp:TextBox ID="txtTeamAScore" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="reqTeamAScore" runat="server" ErrorMessage="TeamAScore" ControlToValidate="txtTeamAScore" Text="*Required field" ForeColor="Red" EnableClientScript="false"></asp:RequiredFieldValidator>
            </div>
            <div class="form-outline mb-4">
                <label for="exampleFormControlInput1">Team B</label><span style="color:red">*</span>
                <asp:DropDownList ID="ddlTeamB" runat="server" CssClass="form-control" AppendDataBoundItems="true">
                    <asp:ListItem Selected="True" Value="0" Text="Select"></asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="reqTeamB" runat="server" ErrorMessage="required" EnableClientScript="False" ControlToValidate="ddlTeamB" Text="*Required field" ForeColor="Red" InitialValue="0"></asp:RequiredFieldValidator>
            </div>
            <div class="form-outline mb-4">
                <label for="exampleFormControlInput1">Team B Score</label><span style="color:red">*</span>
                <asp:TextBox ID="txtTeamBScore" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="reqTeamBScore" runat="server" ErrorMessage="TeamBScore" ControlToValidate="txtTeamBScore" Text="*Required field" ForeColor="Red" EnableClientScript="false"></asp:RequiredFieldValidator>
            </div>
            <div class="form-outline mb-4">
                <label for="exampleFormControlInput1">Match Date</label><span style="color:red">*</span>
                <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="DateChange"></asp:Calendar>
                <asp:TextBox ID="txtMatchDateTime" CssClass="form-control" runat="server" TextMode="DateTime"></asp:TextBox>
                <asp:RequiredFieldValidator ID="reqCalendar" runat="server" ErrorMessage="required" ControlToValidate="txtMatchDateTime" EnableClientScript="false" Text="*Required field" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="mb-2">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-success my-2" OnClick="btnSubmit_Click" />
                <asp:Button ID="btnTeamList" runat="server" CssClass="btn btn-primary my-2" Text="Go to match list" OnClick="btnMatchList_Click" />
            </div>
        </div>
    </section>
</asp:Content>
