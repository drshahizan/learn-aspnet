<%@ Page Title="Player Listing" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmCountryListing.aspx.cs" Inherits="PLASS.frmCountry" %>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
     <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Center" CssClass="mb-3">
            <br />
            Search country by name:
                <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
            <asp:Button ID="btnSearch" runat="server" Text="Filter" />
            <br />
        </asp:Panel>
    <asp:GridView  ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="CountryListing" Height="100%" Width="100%" AllowPaging="True" AllowSorting="True" PageSize="20" HorizontalAlign="Center">
        <Columns>
            <asp:HyperLinkField DataNavigateUrlFields="id" DataNavigateUrlFormatString="~/frmPlayerListing.aspx?id={0}" DataTextField="name" HeaderText="Name" SortExpression="name" />
            <asp:CheckBoxField DataField="fifaQualified" HeaderText="fifaQualified" SortExpression="fifaQualified" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="CountryListing" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [country] WHERE ([name] LIKE '%' + @name + '%') OR (@name = '')" >
        <SelectParameters>
            <asp:ControlParameter ControlID="txtSearch" Name="name" PropertyName="Text" Type="String" DefaultValue=" "/>
        </SelectParameters>
     </asp:SqlDataSource>
</asp:Content>
