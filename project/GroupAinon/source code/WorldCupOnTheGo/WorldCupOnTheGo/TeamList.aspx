<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="TeamList.aspx.cs" Inherits="WorldCupOnTheGo.TeamList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <div class="container py-5">
            <div class="row">
                <div class="col-lg-12">
                    <h1>Team List</h1>
                    <asp:Button ID="btnAddTeam" runat="server" CssClass="btn btn-primary my-2" Text="Add team" OnClick="btnAddTeam_Click" />
                    <asp:ListView ID="lvTeam" runat="server" GroupPlaceholderID="groupPlaceHolder1" ItemPlaceholderID="itemPlaceHolder1">
                        <LayoutTemplate>
                            <table class="table" cellpadding="2" cellspacing="0" border="1">
                                <tr id="Tr1" runat="server" class="TableHeader">
                                    <td id="Td1" runat="server">Name</td>
                                    <td id="Td2" runat="server">Action</td>
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
                                <asp:Label ID="lblName" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                            </td>
                            <td>
                                <asp:LinkButton ID="AddPlayer" runat="server" OnClick="ManageTeam_Click" CommandArgument='<%#Eval("Id")%>' CommandName="AddPlayerLink">Add Player</asp:LinkButton>
                                <asp:LinkButton ID="EditTeam" runat="server" OnClick="ManageTeam_Click" CommandArgument='<%#Eval("Id")%>' CommandName="EditLink">Edit</asp:LinkButton>
                                <asp:LinkButton ID="DeleteTeam" runat="server" OnClick="ManageTeam_Click" CommandArgument='<%#Eval("Id")%>' CommandName="DeleteLink">Delete</asp:LinkButton>
                            </td>
                        </ItemTemplate>
                    </asp:ListView>
                </div>

            </div>
        </div>
    </section>

</asp:Content>
