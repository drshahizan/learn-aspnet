<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ContentList.aspx.cs" Inherits="WorldCupOnTheGo.ContentList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <div class="container py-5">
            <div class="row">
                <div class="col-lg-12">
                    <h1>Content List</h1>
                    <asp:Button ID="btnAddContent" runat="server" CssClass="btn btn-primary my-2" Text="Add content" OnClick="btnAddContent_Click" />
                    <asp:ListView ID="lvContent" runat="server" GroupPlaceholderID="groupPlaceHolder1" ItemPlaceholderID="itemPlaceHolder1">
                        <LayoutTemplate>
                            <table class="table" cellpadding="2" cellspacing="0" border="1">
                                <tr id="Tr1" runat="server" class="TableHeader">
                                    <td id="Td1" runat="server">Title</td>
                                    <td id="Td2" runat="server">Content</td>
                                    <td id="Td3" runat="server">Action</td>
                                </tr>
                                <asp:PlaceHolder runat="server" ID="groupPlaceHolder1"></asp:PlaceHolder>
                            </table>

                        </LayoutTemplate>
                        <GroupTemplate>
                            <tr>
                                <asp:PlaceHolder runat="server" ID="itemPlaceHolder1"></asp:PlaceHolder>
                            </tr>
                        </GroupTemplate>
                        <ItemTemplate>
                            <td>
                                <asp:Label ID="lblTitle" runat="server" Text='<%# Eval("Title") %>'></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblContent" runat="server" Text='<%# Eval("Content") %>'></asp:Label>
                            </td>
                            <td>
                                <asp:LinkButton ID="EditContent" runat="server" OnClick="ManageContent_Click" CommandArgument='<%#Eval("Id")%>' CommandName="EditLink">Edit</asp:LinkButton>
                                <asp:LinkButton ID="DeleteContent" runat="server" OnClick="ManageContent_Click" CommandArgument='<%#Eval("Id")%>' CommandName="DeleteLink">Delete</asp:LinkButton>
                            </td>
                        </ItemTemplate>
                    </asp:ListView>
                </div>

            </div>
        </div>
    </section>
</asp:Content>
