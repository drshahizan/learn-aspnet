<%@ Page Title="Dashboard" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Project_WorldCup.Admin.Dashboard" Theme="Theme2"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; List User</h3>
    <p>
        <asp:GridView ID="GridView1" runat="server" CellPadding="3" GridLines="Horizontal" Width="70%" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" DataSourceID="displayUsersDS" HorizontalAlign="Center" AllowPaging="True" AllowSorting="True">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="UserName" HeaderText="Username" SortExpression="UserName" />
                <asp:BoundField DataField="First_Name" HeaderText="First Name" SortExpression="First_Name" />
                <asp:BoundField DataField="Last_Name" HeaderText="Last Name" SortExpression="Last_Name" />
                 <asp:BoundField DataField="user_Role" HeaderText="User Role" SortExpression="user_Role" />
            </Columns>
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#6c51d7" Font-Bold="True" ForeColor="#F7F7F7" HorizontalAlign="Center" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <SortedAscendingCellStyle BackColor="#F4F4FD" />
            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
            <SortedDescendingCellStyle BackColor="#D8D8F0" />
            <SortedDescendingHeaderStyle BackColor="#3E3277" />
        </asp:GridView>
        <asp:SqlDataSource ID="displayUsersDS" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [UserName], [First_Name], [Last_Name], [user_Role] FROM [loginID]"></asp:SqlDataSource>
    </p>
</asp:Content>
