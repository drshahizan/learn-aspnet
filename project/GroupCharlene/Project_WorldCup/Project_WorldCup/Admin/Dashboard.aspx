<%@ Page Title="Dashboard" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Project_WorldCup.Admin.Dashboard" Theme="Theme2"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; List User</h3>
    <p>
        <asp:GridView ID="GridView1" runat="server" CellPadding="3" GridLines="Horizontal" Width="70%" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" DataSourceID="displayUsersDS" HorizontalAlign="Center" AllowPaging="True" AllowSorting="True" DataKeyNames="Id">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" InsertVisible="False" ReadOnly="True" />
                <asp:BoundField DataField="UserName" HeaderText="Username" SortExpression="UserName" />
                 <asp:BoundField DataField="First_Name" HeaderText="First Name" SortExpression="First_Name" />
                <asp:BoundField DataField="Last_Name" HeaderText="Last Name" SortExpression="Last_Name" />
                <asp:BoundField DataField="user_Role" HeaderText="User Role" SortExpression="user_Role" />
            </Columns>
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#6c51d7" Font-Bold="True" ForeColor="#F7F7F7"/>
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <SortedAscendingCellStyle BackColor="#F4F4FD" />
            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
            <SortedDescendingCellStyle BackColor="#D8D8F0" />
            <SortedDescendingHeaderStyle BackColor="#3E3277" />
        </asp:GridView>
        <asp:SqlDataSource ID="displayUsersDS" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [loginID]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [loginID] WHERE [Id] = @original_Id AND (([UserName] = @original_UserName) OR ([UserName] IS NULL AND @original_UserName IS NULL))  AND (([First_Name] = @original_First_Name) OR ([First_Name] IS NULL AND @original_First_Name IS NULL)) AND (([Last_Name] = @original_Last_Name) OR ([Last_Name] IS NULL AND @original_Last_Name IS NULL)) AND (([user_Role] = @original_user_Role) OR ([user_Role] IS NULL AND @original_user_Role IS NULL))" InsertCommand="INSERT INTO [loginID] ([UserName], [Pwd], [First_Name], [Last_Name], [user_Role]) VALUES (@UserName, @Pwd, @First_Name, @Last_Name, @user_Role)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [loginID] SET [UserName] = @UserName, [First_Name] = @First_Name, [Last_Name] = @Last_Name, [user_Role] = @user_Role WHERE [Id] = @original_Id AND (([UserName] = @original_UserName) OR ([UserName] IS NULL AND @original_UserName IS NULL)) AND (([First_Name] = @original_First_Name) OR ([First_Name] IS NULL AND @original_First_Name IS NULL)) AND (([Last_Name] = @original_Last_Name) OR ([Last_Name] IS NULL AND @original_Last_Name IS NULL)) AND (([user_Role] = @original_user_Role) OR ([user_Role] IS NULL AND @original_user_Role IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_UserName" Type="String" />
             
                <asp:Parameter Name="original_First_Name" Type="String" />
                <asp:Parameter Name="original_Last_Name" Type="String" />
                <asp:Parameter Name="original_user_Role" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="UserName" Type="String" />
                
                <asp:Parameter Name="First_Name" Type="String" />
                <asp:Parameter Name="Last_Name" Type="String" />
                <asp:Parameter Name="user_Role" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="UserName" Type="String" />
               
                <asp:Parameter Name="First_Name" Type="String" />
                <asp:Parameter Name="Last_Name" Type="String" />
                <asp:Parameter Name="user_Role" Type="String" />
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_UserName" Type="String" />
             
                <asp:Parameter Name="original_First_Name" Type="String" />
                <asp:Parameter Name="original_Last_Name" Type="String" />
                <asp:Parameter Name="original_user_Role" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>
