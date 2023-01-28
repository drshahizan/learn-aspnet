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

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="DSPlayers" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" AllowPaging="True" AllowSorting="True">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="fullName" HeaderText="Name" SortExpression="fullName" />
            <asp:BoundField DataField="teamCountry" HeaderText="Country" SortExpression="teamCountry" />
            <asp:BoundField DataField="position" HeaderText="Position" SortExpression="position" />
            <asp:BoundField DataField="jerseyNum" HeaderText="Jersey #" SortExpression="jerseyNum" />
            <asp:BoundField DataField="Club" HeaderText="Club" SortExpression="Club" />
            <asp:TemplateField HeaderText="Photo">
                       <ItemTemplate>   
                           <asp:Image ID="Image1" runat="server" ImageUrl='<%# Bind("photo") %>' Width="50px" />
                       </ItemTemplate> 
             </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
     </asp:GridView>
     <asp:SqlDataSource ID="DSPlayers" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT a.fullName, a.teamCountry, a.position, a.Club, a.jerseyNum, CASE
    WHEN a.photo is null THEN 'img/player/default.jfif'
    ELSE a.photo
END AS photo
         FROM teamPlayer a INNER JOIN country b on b.countryName = a.teamCountry WHERE (b.countryID = @teamCountry)">
         <SelectParameters>
             <asp:ControlParameter ControlID="ddlCountry" Name="teamCountry" PropertyName="SelectedValue" Type="String" />
         </SelectParameters>
     </asp:SqlDataSource>
</asp:Content>
