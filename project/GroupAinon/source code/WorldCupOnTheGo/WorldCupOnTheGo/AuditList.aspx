<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="AuditList.aspx.cs" Inherits="WorldCupOnTheGo.AuditList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <div class="container py-5">
            <div class="row">
                <div class="col-lg-12">
                    <h1>Audit Log</h1>
                    <asp:ListView ID="lvAudit" runat="server" GroupPlaceholderID="groupPlaceHolder1" ItemPlaceholderID="itemPlaceHolder1">
                        <LayoutTemplate>
                            <table class="table" cellpadding="2" cellspacing="0" border="1">
                                <tr id="Tr1" runat="server" class="TableHeader">
                                    <td id="Td1" runat="server">User Ip Address</td>
                                    <td id="Td2" runat="server">Action</td>
                                    <td id="Td3" runat="server">Created Date</td>                                    
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
                                <asp:Label ID="lblName" runat="server" Text='<%# Eval("Ip_Address") %>'></asp:Label>
                            </td>                                                        
                            <td>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Action") %>'></asp:Label>
                            </td>  
                            <td>
                                <asp:Label ID="lblCreatedDate" runat="server" Text='<%# Eval("created_date") %>'></asp:Label>
                            </td>
                        </ItemTemplate>
                    </asp:ListView>
                </div>

            </div>
        </div>
    </section>
</asp:Content>
