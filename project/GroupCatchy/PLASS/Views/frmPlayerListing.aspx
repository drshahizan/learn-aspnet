<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmPlayerListing.aspx.cs" Inherits="PLASS.Views.frmPlayer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="playerlisting" ForeColor="#333333" GridLines="None" Width="1099px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" InsertVisible="False" ReadOnly="True" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="estimated_value" HeaderText="estimated_value" SortExpression="estimated_value" />
            <asp:BoundField DataField="country_name" HeaderText="country_name" SortExpression="country_name" />
            <asp:BoundField DataField="height_cm" HeaderText="height_cm" SortExpression="height_cm" />
            <asp:BoundField DataField="date_of_birth" HeaderText="date_of_birth" SortExpression="date_of_birth" />
            <asp:BoundField DataField="weight_kg" HeaderText="weight_kg" SortExpression="weight_kg" />
            <asp:BoundField DataField="dominant_foot" HeaderText="dominant_foot" SortExpression="dominant_foot" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <asp:SqlDataSource ID="playerlisting" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [player] WHERE [id] = @original_id AND (([date_of_birth] = @original_date_of_birth) OR ([date_of_birth] IS NULL AND @original_date_of_birth IS NULL)) AND (([height_cm] = @original_height_cm) OR ([height_cm] IS NULL AND @original_height_cm IS NULL)) AND (([weight_kg] = @original_weight_kg) OR ([weight_kg] IS NULL AND @original_weight_kg IS NULL)) AND (([country_id] = @original_country_id) OR ([country_id] IS NULL AND @original_country_id IS NULL)) AND (([dominant_foot] = @original_dominant_foot) OR ([dominant_foot] IS NULL AND @original_dominant_foot IS NULL)) AND (([estimated_value] = @original_estimated_value) OR ([estimated_value] IS NULL AND @original_estimated_value IS NULL)) AND (([created_at] = @original_created_at) OR ([created_at] IS NULL AND @original_created_at IS NULL)) AND (([updated_at] = @original_updated_at) OR ([updated_at] IS NULL AND @original_updated_at IS NULL))" InsertCommand="INSERT INTO [player] ([date_of_birth], [height_cm], [weight_kg], [country_id], [dominant_foot], [estimated_value], [created_at], [updated_at]) VALUES (@date_of_birth, @height_cm, @weight_kg, @country_id, @dominant_foot, @estimated_value, @created_at, @updated_at)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT  player.[id], player.[name], player.[date_of_birth], player.[height_cm], player.[weight_kg], country.[name] AS country_name, player.[dominant_foot], player.[estimated_value] FROM [player] 
JOIN country ON player.country_id = country.id
ORDER BY player.[estimated_value] DESC" UpdateCommand="UPDATE [player] SET [date_of_birth] = @date_of_birth, [height_cm] = @height_cm, [weight_kg] = @weight_kg, [country_id] = @country_id, [dominant_foot] = @dominant_foot, [estimated_value] = @estimated_value, [created_at] = @created_at, [updated_at] = @updated_at WHERE [id] = @original_id AND (([date_of_birth] = @original_date_of_birth) OR ([date_of_birth] IS NULL AND @original_date_of_birth IS NULL)) AND (([height_cm] = @original_height_cm) OR ([height_cm] IS NULL AND @original_height_cm IS NULL)) AND (([weight_kg] = @original_weight_kg) OR ([weight_kg] IS NULL AND @original_weight_kg IS NULL)) AND (([country_id] = @original_country_id) OR ([country_id] IS NULL AND @original_country_id IS NULL)) AND (([dominant_foot] = @original_dominant_foot) OR ([dominant_foot] IS NULL AND @original_dominant_foot IS NULL)) AND (([estimated_value] = @original_estimated_value) OR ([estimated_value] IS NULL AND @original_estimated_value IS NULL)) AND (([created_at] = @original_created_at) OR ([created_at] IS NULL AND @original_created_at IS NULL)) AND (([updated_at] = @original_updated_at) OR ([updated_at] IS NULL AND @original_updated_at IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_id" Type="Int32" />
            <asp:Parameter Name="original_date_of_birth" DbType="Date" />
            <asp:Parameter Name="original_height_cm" Type="Decimal" />
            <asp:Parameter Name="original_weight_kg" Type="Decimal" />
            <asp:Parameter Name="original_country_id" Type="Int32" />
            <asp:Parameter Name="original_dominant_foot" Type="String" />
            <asp:Parameter Name="original_estimated_value" Type="Decimal" />
            <asp:Parameter Name="original_created_at" Type="DateTime" />
            <asp:Parameter Name="original_updated_at" Type="DateTime" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="date_of_birth" DbType="Date" />
            <asp:Parameter Name="height_cm" Type="Decimal" />
            <asp:Parameter Name="weight_kg" Type="Decimal" />
            <asp:Parameter Name="country_id" Type="Int32" />
            <asp:Parameter Name="dominant_foot" Type="String" />
            <asp:Parameter Name="estimated_value" Type="Decimal" />
            <asp:Parameter Name="created_at" Type="DateTime" />
            <asp:Parameter Name="updated_at" Type="DateTime" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="date_of_birth" DbType="Date" />
            <asp:Parameter Name="height_cm" Type="Decimal" />
            <asp:Parameter Name="weight_kg" Type="Decimal" />
            <asp:Parameter Name="country_id" Type="Int32" />
            <asp:Parameter Name="dominant_foot" Type="String" />
            <asp:Parameter Name="estimated_value" Type="Decimal" />
            <asp:Parameter Name="created_at" Type="DateTime" />
            <asp:Parameter Name="updated_at" Type="DateTime" />
            <asp:Parameter Name="original_id" Type="Int32" />
            <asp:Parameter Name="original_date_of_birth" DbType="Date" />
            <asp:Parameter Name="original_height_cm" Type="Decimal" />
            <asp:Parameter Name="original_weight_kg" Type="Decimal" />
            <asp:Parameter Name="original_country_id" Type="Int32" />
            <asp:Parameter Name="original_dominant_foot" Type="String" />
            <asp:Parameter Name="original_estimated_value" Type="Decimal" />
            <asp:Parameter Name="original_created_at" Type="DateTime" />
            <asp:Parameter Name="original_updated_at" Type="DateTime" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
