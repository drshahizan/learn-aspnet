<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmPlayerDetail.aspx.cs" Inherits="PLASS.frmPlayerDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="d-flex justify-content-center">
        <div class="shadow rounded p-3">
            <h1 class="text-center mb-3">Edit player</h1>
            <asp:DetailsView ID="DetailsView1" runat="server" Height="100%" Width="500px" AutoGenerateRows="False" DataKeyNames="id" DataSourceID="playerDetail" BorderColor="White" BorderWidth="0px" HorizontalAlign="Center">
                <Fields>
                    <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" ControlStyle-CssClass="form-control" />
                    <asp:BoundField DataField="date_of_birth" DataFormatString="{0:dd/MM/yyyy}" HeaderText="Birthday" SortExpression="date_of_birth" ControlStyle-CssClass="form-control" />
                    <asp:BoundField DataField="height_cm" HeaderText="Height (cm)" SortExpression="height_cm" ControlStyle-CssClass="form-control" />
                    <asp:BoundField DataField="weight_kg" HeaderText="Weight (kh)" SortExpression="weight_kg" ControlStyle-CssClass="form-control" />
                    <asp:BoundField DataField="dominant_foot" HeaderText="Dominant Foot" SortExpression="dominant_foot" ControlStyle-CssClass="form-control" />
                    <asp:BoundField DataField="estimated_value" DataFormatString="{0:#,##0}" HeaderText="Estimated Value" SortExpression="estimated_value" ControlStyle-CssClass="form-control" />
                    <asp:TemplateField HeaderText="Country Name">
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("country_name") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:DropDownList CssClass="form-control" ID="ddCountry" runat="server"  DataSourceID="CountryList" DataTextField="name" DataValueField="id">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="CountryList" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [id], [name] FROM [country]"></asp:SqlDataSource>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    
                    <asp:CommandField ShowEditButton="True" ControlStyle-CssClass="btn btn-primary mt-3" >
<ControlStyle CssClass="btn btn-primary mt-3"></ControlStyle>
                    </asp:CommandField>
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="playerDetail" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [player] WHERE [id] = @id" InsertCommand="INSERT INTO [player] ([Name], [date_of_birth], [height_cm], [weight_kg], [dominant_foot], [estimated_value], [country_id]) VALUES (@Name, @date_of_birth, @height_cm, @weight_kg, @dominant_foot, @estimated_value, @country_id)" SelectCommand="SELECT
    p.id AS id,
    p.Name AS name,
    p.date_of_birth AS date_of_birth,
    p.height_cm AS height_cm,
    p.weight_kg AS weight_kg,
    p.dominant_foot as dominant_foot,
    p.estimated_value AS estimated_value,
    p.country_id AS country_id,
    c.name AS country_name
FROM
    player as p
    LEFT JOIN country AS c ON p.country_id = c.id
WHERE
    (p.id = @id)
ORDER BY
    p.Name"
                UpdateCommand="UPDATE [player] SET [Name] = @Name, [date_of_birth] = @date_of_birth, [height_cm] = @height_cm, [weight_kg] = @weight_kg, [dominant_foot] = @dominant_foot, [estimated_value] = @estimated_value, [country_id] = @country_id WHERE [id] = @id">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter DbType="Date" Name="date_of_birth" />
                    <asp:Parameter Name="height_cm" Type="Decimal" />
                    <asp:Parameter Name="weight_kg" Type="Decimal" />
                    <asp:Parameter Name="dominant_foot" Type="String" />
                    <asp:Parameter Name="estimated_value" Type="Decimal" />
                    <asp:Parameter Name="country_id" Type="Int32" />
                </InsertParameters>
                <SelectParameters>
                    <asp:QueryStringParameter Name="id" QueryStringField="id" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter DbType="Date" Name="date_of_birth" />
                    <asp:Parameter Name="height_cm" Type="Decimal" />
                    <asp:Parameter Name="weight_kg" Type="Decimal" />
                    <asp:Parameter Name="dominant_foot" Type="String" />
                    <asp:Parameter Name="estimated_value" Type="Decimal" />
                    <asp:ControlParameter ControlID="DetailsView1$ddCountry" Name="country_id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </div>


</asp:Content>
