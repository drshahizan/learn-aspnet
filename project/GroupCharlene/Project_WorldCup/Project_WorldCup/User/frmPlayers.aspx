<%@ Page Title="Manage List Players" Language="C#" MasterPageFile="~/User/Site1.Master" AutoEventWireup="true" CodeBehind="frmPlayers.aspx.cs" Inherits="Project_WorldCup.User.frmPlayers" Theme="Theme2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h3>Manage List Players</h3>
        <p>
            <asp:Label ID="lblCountry" runat="server" Text="Country"></asp:Label>
        </p>
        <p>
            <asp:DropDownList ID="DropDownList1" runat="server" Height="21px" Width="140px">
            </asp:DropDownList>
        </p>
        <p>
            <asp:Label ID="lblPhoto" runat="server" Text="Photo"></asp:Label>
        </p>
        <p>
            <asp:FileUpload ID="FileUpload1" runat="server" />
        </p>
        <p>
            <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label>
        </p>
        <p>
            <input id="Text1" type="text" /></p>
        <p>
            <asp:Label ID="lblPosition" runat="server" Text="Position"></asp:Label>
        </p>
        <p>
            <asp:DropDownList ID="DropDownList2" runat="server">
                <asp:ListItem>Goalkeeper</asp:ListItem>
                <asp:ListItem>Defenders</asp:ListItem>
                <asp:ListItem>Midfielders</asp:ListItem>
                <asp:ListItem>Forwards</asp:ListItem>
            </asp:DropDownList>
        </p>
        <p>
            <asp:Button ID="btnSave" class="button"  runat="server" Text="Save" />
        </p>
        <p>&nbsp;</p>

    </div>
</asp:Content>
