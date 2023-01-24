<%@ Page Title="Player Listing" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmPlayerListing.aspx.cs" Inherits="PLASS.frmPlayer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="d-flex align-items-center">
        <h1 class="mb-3">Player Listing</h1>
    <asp:Button CssClass="btn btn-primary my-4 ms-3" ID="btnCreate" runat="server" Text="Create" OnClick="btnCreate_Click" />
    </div>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="PlayerListing" Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
             <asp:HyperLinkField  DataNavigateUrlFields="id" DataNavigateUrlFormatString="~/frmPlayerDetail.aspx?id={0}" DataTextField="Name" HeaderText="Name" SortExpression="name" />
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
    <asp:SqlDataSource ID="PlayerListing" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [player] WHERE ([country_id] = @country_id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="country_id" QueryStringField="id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

