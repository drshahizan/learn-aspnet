<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="PlayerAdd.aspx.cs" Inherits="WorldCupOnTheGo.AddPlayer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section style="background-color: #eee;">
        <div class="container py-5">
            <div class="row">
                <div class="col-lg-4">
                    <div class="card mb-4">
                        <div class="card-body text-center">
                            <p class="text-muted mb-1"><b>Team Name</b></p>
                            <p class="text-muted mb-4">
                                <asp:Label ID="lblTeamName" runat="server" Text=""></asp:Label>
                            </p>
                        </div>
                    </div>
                    <div class="card mb-4 mb-lg-0">
                        <div class="card-body">
                            <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
                            <div class="form-outline mb-4">

                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" EnableClientScript="False" HeaderText="Please insert the required field" ForeColor="Red" ValidationGroup="playerList" />


                                <label class="form-label" for="form1Example1">Name</label><span style="color:red">*</span>
                                <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="reqPlayerName" runat="server" ErrorMessage="RequiredFieldValidator" EnableClientScript="False" ControlToValidate="txtName" Text="*Required field" ForeColor="Red" ValidationGroup="playerList"></asp:RequiredFieldValidator>
                            </div>

                            <div class="form-outline mb-4">
                                <label class="form-label" for="form1Example2">Jersey No</label><span style="color:red">*</span>
                                <asp:TextBox ID="txtJercyNo" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="reqJerseyNo" runat="server" ErrorMessage="RequiredFieldValidator" EnableClientScript="False" ControlToValidate="txtJercyNo" Text="*Required field" ForeColor="Red" ValidationGroup="playerList"></asp:RequiredFieldValidator>
                            </div>
                            <div class="d-flex justify-content-center mb-2">
                                <asp:Button ID="btnAddPlayer" runat="server" CssClass="btn btn-primary" OnClick="btnAddPlayer_Click" Text="Add Player" />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-8">
                    <div class="card mb-4">
                        <div class="card-body">
                            <p class="text-muted mb-1"><b>Player List</b></p>
                            <asp:ListView ID="lvlPlayerList" runat="server" GroupPlaceholderID="groupPlaceHolder1" ItemPlaceholderID="itemPlaceHolder1">
                                <LayoutTemplate>
                                    <table class="table" cellpadding="2" cellspacing="0" border="1">
                                        <tr id="Tr1" runat="server" class="TableHeader">
                                            <td id="Td1" runat="server">Name</td>
                                            <td id="Td2" runat="server">Jercy No</td>
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
                                        <asp:Label ID="lblPlayerName" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="lblPlayerJercyNo" runat="server" Text='<%# Eval("jercy_no") %>'></asp:Label>
                                    </td>
                                    <td>
                                        <asp:LinkButton ID="DeleteContent" runat="server" OnClick="ManageContent_Click" CommandArgument='<%#Eval("Id")%>' CommandName="DeleteLink">Delete</asp:LinkButton>
                                    </td>
                                </ItemTemplate>
                            </asp:ListView>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
