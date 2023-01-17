<%@ Page Title="Players - FIFA WORLD CUP QATAR" Language="C#" MasterPageFile="~/Masterpage/Site1.Master" AutoEventWireup="true" CodeBehind="Players.aspx.cs" Inherits="Project_WorldCup.Players" Theme="Theme1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <br />
    &nbsp;Search :
    <asp:DropDownList ID="ddlCountry" runat="server" Height="40px" Width="216px" DataSourceID="DSCountry" DataTextField="countryName" DataValueField="countryID" AutoPostBack="True">
    </asp:DropDownList>
     <asp:SqlDataSource ID="DSCountry" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [countryID], [countryName] FROM [country]"></asp:SqlDataSource>
    <br />

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="DSPlayers" ForeColor="#333333" GridLines="None" HorizontalAlign="Center">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="fullName" HeaderText="Name" SortExpression="fullName" />
            <asp:BoundField DataField="teamCountry" HeaderText="Country" SortExpression="teamCountry" />
            <asp:BoundField DataField="position" HeaderText="Position" SortExpression="position" />
            <asp:BoundField DataField="jerseyNum" HeaderText="Jersey #" SortExpression="jerseyNum" />
            <asp:BoundField DataField="Club" HeaderText="Club" SortExpression="Club" />
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
     </asp:GridView>
     <asp:SqlDataSource ID="DSPlayers" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [fullName], [teamCountry], [position], [Club], [jerseyNum] FROM [teamPlayer] WHERE ([teamCountry] = @teamCountry)">
         <SelectParameters>
             <asp:ControlParameter ControlID="ddlCountry" Name="teamCountry" PropertyName="SelectedValue" Type="String" DefaultValue="Argentina" />
         </SelectParameters>
     </asp:SqlDataSource>
</asp:Content>
