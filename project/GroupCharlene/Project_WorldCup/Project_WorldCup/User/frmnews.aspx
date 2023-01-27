<%@ Page Title="Manage News" Language="C#" MasterPageFile="~/User/Site1.Master" AutoEventWireup="true" CodeBehind="frmnews.aspx.cs" Inherits="Project_WorldCup.User.frmnews" Theme="Theme2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .auto-style1 {
            width: 210px;
            height: 25px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
    <h3>Manage News Football</h3>
        <br />
    <asp:Label ID="lblTitle" runat="server" Text="News Title"></asp:Label>
        <br />
    <asp:TextBox ID="titleTxt" runat="server" Width="30%"></asp:TextBox>
         <br /><br />
    <asp:Label ID="lblContent" runat="server" Text="News Content"></asp:Label>
         <br />
    <asp:TextBox ID="contentTxt" runat="server" TextMode="MultiLine" Width="30%" Height="100px"></asp:TextBox>
    <br /><br />
        <asp:Button ID="btnSave" CssClass="button" runat="server" Text="Save" OnClick="btnSave_Click" />
    <p>&nbsp;</p>
    <div style="margin-left: auto; margin-right: auto; text-align: center;">
        <asp:Label ID="statusLbl" runat="server" ForeColor="#CC0000"></asp:Label>
    </div>
    <br />

</div>
</asp:Content>
