<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PLASS._Default" %>



<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Center">
            <br />
            Search country by name:
                <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
            <asp:Button ID="btnSearch" runat="server" Text="Filter" />
            <br />

        </asp:Panel>
    </div>
    <div>
        <h2 class="mb-5">Countries List</h2>

        <asp:ListView ID="ListView1" runat="server" DataKeyNames="id" DataSourceID="CountryList" GroupItemCount="5">
            <%-- <SelectedItemTemplate>
                <li style="">name:
                    <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                    <br />
                    code:
                    <asp:Label ID="codeLabel" runat="server" Text='<%# Eval("code") %>' />
                    <br />
                    id:
                    <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                    <br />
                </li>
            </SelectedItemTemplate>--%>
            <AlternatingItemTemplate>
                <td runat="server" style="width: 300px;" class="px-2">
                    <div class="">
                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%# "~/Assets/countries_flag/" + Eval("code").ToString().ToLower() + ".svg" %>' />
                        <p><%# Eval("name") %></p>
                    </div>
                </td>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <td runat="server" style="background-color: #999999;">name:
                    <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                    <br />
                    code:
                    <asp:TextBox ID="codeTextBox" runat="server" Text='<%# Bind("code") %>' />
                    <br />
                    id:
                    <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    <br />
                </td>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px;">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <EmptyItemTemplate>
                <td runat="server" />
            </EmptyItemTemplate>
            <GroupTemplate>
                <tr id="itemPlaceholderContainer" runat="server">
                    <td id="itemPlaceholder" runat="server"></td>
                </tr>
            </GroupTemplate>
            <InsertItemTemplate>
                <td runat="server" style="">name:
                    <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                    <br />
                    code:
                    <asp:TextBox ID="codeTextBox" runat="server" Text='<%# Bind("code") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    <br />
                </td>
            </InsertItemTemplate>
            <ItemTemplate>
                <td runat="server" style="width: 300px;" class="px-2">
                    <div class="">
                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%# "~/Assets/countries_flag/" + Eval("code").ToString().ToLower() + ".svg" %>'   />
                        <p><%# Eval("name") %></p>
                    </div>
                </td>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="groupPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px; font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr id="groupPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" class="text-center">
                            <asp:DataPager ID="DataPager1" runat="server" PageSize="25">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="True" ButtonCssClass="px-3 btn btn-outline-dark" />
                                    <asp:NumericPagerField CurrentPageLabelCssClass="btn btn-primary" NumericButtonCssClass="px-2 text-decoration-none btn" NextPreviousButtonCssClass="btn text-decoration-none" />
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="True" ShowPreviousPageButton="False" ButtonCssClass="px-3 btn btn-outline-dark" />
                                </Fields>
                            </asp:DataPager>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <td runat="server" style="background-color: #E2DED6; font-weight: bold; color: #333333;">name:
                    <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                    <br />
                    code:
                    <asp:Label ID="codeLabel" runat="server" Text='<%# Eval("code") %>' />
                    <br />
                    id:
                    <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                    <br />
                </td>
            </SelectedItemTemplate>
        </asp:ListView>
        <%--<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="id" DataSourceID="CountryList" PageSize="20" Width="509px">
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
        </asp:GridView>--%>
        <asp:SqlDataSource ID="CountryList" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [name], [code], [id] FROM [country] WHERE ([name] LIKE '%' + @name + '%') OR (@name = '')">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtSearch" Name="name" PropertyName="Text" Type="String" DefaultValue=" " />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>

</asp:Content>
