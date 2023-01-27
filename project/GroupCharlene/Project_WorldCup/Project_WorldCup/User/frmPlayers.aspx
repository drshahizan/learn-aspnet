<%@ Page Title="Manage List Players" Language="C#" MasterPageFile="~/User/Site1.Master" AutoEventWireup="true" CodeBehind="frmPlayers.aspx.cs" Inherits="Project_WorldCup.User.frmPlayers" Theme="Theme2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h3>Manage List Players</h3>

        <br />
        <asp:Label ID="lblCountry" runat="server" Text="Country"></asp:Label>
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server" Height="21px" Width="20%" DataSourceID="countryDS" DataTextField="countryName" DataValueField="countryName">
        </asp:DropDownList>
        <asp:SqlDataSource ID="countryDS" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [countryName] FROM [country]"></asp:SqlDataSource>
        <br /><br />

        <asp:Label ID="lblPhoto" runat="server" Text="Photo"></asp:Label>
        <br />
        <asp:FileUpload ID="photoFile" runat="server" />
        <br /><br />

        <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label>
        <br />
        <asp:TextBox ID="nameTxt" runat="server" Width="20%"></asp:TextBox>
        <br /><br />

        <asp:Label ID="lblJersey" runat="server" Text="Jersey Number"></asp:Label>
        <br />
        <asp:TextBox ID="jerseyTxt" runat="server" Width="20%" TextMode="Number"></asp:TextBox>
        <br /><br />

        <asp:Label ID="lblClub" runat="server" Text="Club"></asp:Label>
        <br />
        <asp:TextBox ID="clubTxt" runat="server" Width="20%"></asp:TextBox>
        <br /><br />

        <asp:Label ID="lblPosition" runat="server" Text="Position" Width="20%"></asp:Label>
        <br />
        <asp:DropDownList ID="DropDownList2" runat="server" Width="20%">
            <asp:ListItem Text="Goalkeeper" Value="GK"></asp:ListItem>
            <asp:ListItem Text="Defender" Value="DF"></asp:ListItem>
            <asp:ListItem Text="Midfielder" Value="MF"></asp:ListItem>
            <asp:ListItem Text="Forward" Value="FW"></asp:ListItem>
        </asp:DropDownList>
        <br /><br />
        <asp:Button ID="btnSave" class="button"  runat="server" Text="Save" OnClick="btnSave_Click" />
        <p>&nbsp;</p>
        <div style="margin-left: auto; margin-right: auto; text-align: center;">
            <asp:Label ID="statusLbl" runat="server" ForeColor="#CC0000"></asp:Label>
        </div>
        <br />
    </div>
</asp:Content>
