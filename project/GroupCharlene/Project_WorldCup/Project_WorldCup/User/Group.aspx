<%@ Page Title="Manage Group" Language="C#" MasterPageFile="~/User/Site1.Master" AutoEventWireup="true" CodeBehind="Group.aspx.cs" Inherits="Project_WorldCup.User.Group" Theme="Theme2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="container">
       <h3>Manage Group FIFA</h3>

       <asp:Label ID="lblListGroup" runat="server" Text="List Group"></asp:Label>
       <br />
       <br />
       &nbsp;<asp:DropDownList ID="DropDownList1" runat="server" Height="30px" Width="150px" DataSourceID="groupDS" DataTextField="teamGroup" DataValueField="teamGroup">
       </asp:DropDownList>
       <asp:SqlDataSource ID="groupDS" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [teamGroup] FROM [teamGroup]"></asp:SqlDataSource>
       <br />
       <br />
       <asp:Label ID="lblCountry" runat="server" Text="Country"></asp:Label>
       &nbsp;<br />
       &nbsp;<asp:DropDownList ID="DropDownList2" runat="server" Height="30px" Width="150px" DataSourceID="countryDS" DataTextField="countryName" DataValueField="countryName">
       </asp:DropDownList>
       <asp:SqlDataSource ID="countryDS" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [countryName] FROM [country]"></asp:SqlDataSource>

       <br />
       <br />
       <asp:Button ID="btnSave" class="button"  runat ="server" Text="Save" OnClick="btnSave_Click" />
       <br />
       <div style="margin-left: auto; margin-right: auto; text-align: center;">
            <asp:Label ID="statusLbl" runat="server" ForeColor="#CC0000"></asp:Label>
        </div>
       <br />
    </div>
</asp:Content>
