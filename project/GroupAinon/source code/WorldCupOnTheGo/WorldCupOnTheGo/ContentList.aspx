<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ContentList.aspx.cs" Inherits="WorldCupOnTheGo.ContentList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Data List</h1>
    <asp:ListView ID="lvContent" runat="server">
        <LayoutTemplate>
            <table id="Table1" runat="server" class="table">
                <tr id="Tr1" runat="server" class="TableHeader">
                    <td id="Td1" runat="server">Title</td>
                    <td id="Td2" runat="server">Content</td>
                    <td id="Td3" runat="server">Action</td>
                </tr>
                <tr id="ItemPlaceholder" runat="server">
                </tr>
                <tr id="Tr2" runat="server">
                    <td id="Td6" runat="server" colspan="3">
                        <asp:DataPager ID="DataPager1" runat="server">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Link" />
                                <asp:NumericPagerField />
                                <asp:NextPreviousPagerField ButtonType="Link" />
                            </Fields>
                        </asp:DataPager>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <ItemTemplate>
            <tr class="TableData">
                <td>
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("Title")%>'>   
                    </asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("Content")%>'>   
                    </asp:Label>
                </td>
                <td>

                </td>
            </tr>
        </ItemTemplate>
    </asp:ListView>
    <%--<asp:DataList ID="dlContent" runat="server" RepeatColumns = "1" CellSpacing = "3" RepeatLayout = "Table">
        <ItemTemplate>
        <table class = "table">
            <tr>
                <th>
                    <b>Title</b>
                </th>
                <th>
                    <b>Content</b>
                </th>
            </tr>
             <tr>
                <td>
                    <%# Eval("Title") %>
                </td>
                <td>
                    <%# Eval("Content") %>
                </td>
            </tr>
        </table>
    </ItemTemplate>
    </asp:DataList>--%>
</asp:Content>
