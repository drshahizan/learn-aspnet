<%@ Page Title="Search player" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmPlayer_Search.aspx.cs" Inherits="PLASS.frmPlayer_Search" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <h1 class="mb-3">Search Player</h1>
         <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Left" CssClass="mb-3">
             <div class="d-flex justify-content-start align-items-baseline">
                  <p>  Search country by name:</p>
                <asp:TextBox CssClass="form-control mx-2" ID="txtSearch" runat="server"></asp:TextBox>
            <asp:Button CssClass="btn btn-primary " ID="btnSearch" runat="server" Text="Filter" />
             </div>
        </asp:Panel>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="PlayerListing" Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None" PageSize="20">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
             <asp:HyperLinkField  DataNavigateUrlFields="id" DataNavigateUrlFormatString="~/frmPlayer_Detail.aspx?id={0}" DataTextField="Name" HeaderText="Name" SortExpression="name" />
             <asp:HyperLinkField DataTextField="country_name" HeaderText="Country" SortExpression="country_name"/>
            <asp:BoundField DataField="date_of_birth" HeaderText="Birthday" SortExpression="date_of_birth" DataFormatString="{0:dd/MM/yyyy}" />
            <asp:BoundField DataField="height_cm" HeaderText="Height (cm)" SortExpression="height_cm" />
            <asp:BoundField DataField="weight_kg" HeaderText="Weight (kg)" SortExpression="weight_kg" />
            <asp:BoundField DataField="dominant_foot" HeaderText="Dominant Foot" SortExpression="dominant_foot" />
            <asp:BoundField DataField="estimated_value" HeaderText="Estimated Value (usd)" SortExpression="estimated_value" DataFormatString="{0:#,##0}" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <asp:SqlDataSource ID="PlayerListing" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT player.id, player.Name, player.date_of_birth, player.height_cm, player.weight_kg, player.country_id, player.dominant_foot, player.estimated_value, player.created_at, player.updated_at, country.name AS country_name FROM player INNER JOIN country ON player.id = country.id WHERE (player.Name LIKE '%' + @name + '%') OR (@name = '')">
        <SelectParameters>
            <asp:ControlParameter ControlID="txtSearch" Name="name" PropertyName="Text" DefaultValue=" "/>
        </SelectParameters>
    </asp:SqlDataSource>
    <%--<asp:SqlDataSource ID="PlayerList" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT country.name, player.Name AS player_name, player.date_of_birth, player.height_cm, player.weight_kg, player.dominant_foot, player.estimated_value, player.id FROM country INNER JOIN country AS country_1 ON country.id = country_1.id INNER JOIN player ON country.id = player.id ORDER BY player.name"></asp:SqlDataSource>--%>
</asp:Content>
