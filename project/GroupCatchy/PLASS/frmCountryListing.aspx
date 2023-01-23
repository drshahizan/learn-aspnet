<%@ Page Title="Country Listing" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmCountryListing.aspx.cs" Inherits="PLASS.frmCountry" %>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <h1 class="text-center">Country List:</h1>
     <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Center" CssClass="mb-3">
            <br />
            Search country by name:
                <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
            <asp:Button ID="btnSearch" runat="server" Text="Filter" />
            <br />
        </asp:Panel>
    <div class="container w-50 shadow pt-2 pb-4 rounded rounded-2">
        <asp:GridView  ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="CountryListing" Height="100%" Width="100%" AllowPaging="True" AllowSorting="True" PageSize="20" HorizontalAlign="Center" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:HyperLinkField  DataNavigateUrlFields="id" DataNavigateUrlFormatString="~/frmPlayerListing.aspx?id={0}" DataTextField="name" HeaderText="Name" SortExpression="name" />
           
            <asp:CheckBoxField DataField="fifaQualified" HeaderText="Fifa Qualified" SortExpression="fifaQualified" ItemStyle-Width="20" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" >
<HeaderStyle  HorizontalAlign="Center"></HeaderStyle>

<ItemStyle HorizontalAlign="Center" Width="20px"></ItemStyle>
            </asp:CheckBoxField>
           
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle  BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle HorizontalAlign="Center" BackColor="#2461BF" ForeColor="White" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    </div>
    <asp:SqlDataSource ID="CountryListing" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [country] WHERE ([name] LIKE '%' + @name + '%') OR (@name = '')" >
        <SelectParameters>
            <asp:ControlParameter ControlID="txtSearch" Name="name" PropertyName="Text" Type="String" DefaultValue=" "/>
        </SelectParameters>
     </asp:SqlDataSource>
</asp:Content>
