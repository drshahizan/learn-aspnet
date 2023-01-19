<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PLASS._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div>
        <h2 class="mb-5">Countries List
            
        </h2>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="id" DataSourceID="CountryList" PageSize="20" Width="509px">
            <Columns>
                <asp:TemplateField HeaderText="Country" SortExpression="name">

                    <ItemTemplate>
                        <div class="d-flex ">
                              <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%# "~/Assets/countries_flag/" + Eval("code").ToString().ToLower() + ".svg" %>' />
                        <span class="ps-5"><%# Eval("name") %></span>
                        </div>
                      
                    </ItemTemplate>

                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
        <asp:SqlDataSource ID="CountryList" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [name], [code], [id] FROM [country]"></asp:SqlDataSource>
    </div>

</asp:Content>
