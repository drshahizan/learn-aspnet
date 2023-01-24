<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="MatchList.aspx.cs" Inherits="WorldCupOnTheGo.MatchList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <div class="container py-5">
            <div class="row">
                <div class="col-lg-12">
                    <h1>Match List</h1>
                    <asp:Button ID="btnMatchAdd" runat="server" CssClass="btn btn-primary my-2" Text="Add match" OnClick="btnAddMatch_Click" />
                    <asp:ListView ID="lvMatch" runat="server" GroupPlaceholderID="groupPlaceHolder1" ItemPlaceholderID="itemPlaceHolder1">
                        <LayoutTemplate>
                            <table class="table" cellpadding="2" cellspacing="0" border="1">
                                <tr id="Tr1" runat="server" class="TableHeader">
                                    <td id="Td1" runat="server">Team A</td>
                                    <td id="Td2" runat="server">Team A (Score)</td>
                                    <td id="Td3" runat="server">Team B</td>
                                    <td id="Td4" runat="server">Team B (Score)</td>
                                    <td id="Td5" runat="server">Match date</td>
                                    <td id="Td6" runat="server">Action</td>
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
                                <asp:Label ID="lblName" runat="server" Text='<%# Eval("team_a") %>'></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("team_a_score") %>'></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("team_b") %>'></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("team_b_score") %>'></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label4" runat="server" Text='<%# ((DateTime)Eval("match_datetime")).ToString("dd/MM/yyyy")  %>'></asp:Label>
                            </td>
                            <td>
                                <asp:LinkButton ID="EditMatch" runat="server" OnClick="ManageMatch_Click" CommandArgument='<%#Eval("Id")%>' CommandName="EditLink">Edit</asp:LinkButton>
                                <asp:LinkButton ID="DeleteMatch" runat="server" OnClick="ManageMatch_Click" CommandArgument='<%#Eval("Id")%>' CommandName="DeleteLink">Delete</asp:LinkButton>
                            </td>
                        </ItemTemplate>
                    </asp:ListView>
                </div>

            </div>
        </div>
    </section>
</asp:Content>
