<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="AuditList.aspx.cs" Inherits="WorldCupOnTheGo.AuditList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <div class="container py-5">
            <div class="row">
                <div class="col-lg-12">
                    <h1>Audit Log</h1>

                    <div class="col-lg-12 py-2">
                        <div class="input-group rounded">
                            <asp:TextBox ID="txtSearch" placeholder="Search logs..." CssClass="form-control rounded" runat="server"></asp:TextBox>
                            <span class="input-group-text border-0" id="search-addon">
                                <i class="fa-solid fa-magnifying-glass"></i>
                            </span>
                        </div>
                    </div>

                    <div class="col-lg-12 py-2">
                        <asp:ListView ID="lvAudit" runat="server" GroupPlaceholderID="groupPlaceHolder1" ItemPlaceholderID="itemPlaceHolder1" OnPagePropertiesChanging="OnPagePropertiesChanging" OnSorting="lvAudit_Sorting">
                            <LayoutTemplate>
                                <table class="table" cellpadding="2" cellspacing="0" border="1">
                                    <tr id="Tr1" runat="server" class="TableHeader">
                                        <td id="Td1" runat="server">User Ip Address
                                        <asp:LinkButton runat="server" ID="SortByIp" CommandName="Sort" CommandArgument="Ip_Address"><i class="fa fa-sort" aria-hidden="true"></i></asp:LinkButton>
                                        </td>
                                        <td id="Td2" runat="server">Action
                                        <asp:LinkButton runat="server" ID="SortByAction" CommandName="Sort" CommandArgument="Action"><i class="fa fa-sort" aria-hidden="true"></i></asp:LinkButton>
                                        </td>
                                        <td id="Td3" runat="server">Created Date
                                        <asp:LinkButton runat="server" ID="SortByCreatedDate" CommandName="Sort" CommandArgument="created_date"><i class="fa fa-sort" aria-hidden="true"></i></asp:LinkButton>
                                        </td>
                                    </tr>
                                    <asp:PlaceHolder runat="server" ID="groupPlaceHolder1"></asp:PlaceHolder>
                                    <tr>
                                        <td colspan="3">
                                            <asp:DataPager ID="DataPager1" runat="server" class="btn-group btn-group-sm">
                                                <Fields>
                                                    <asp:NextPreviousPagerField PreviousPageText="<" FirstPageText="|<" ShowPreviousPageButton="true"
                                                        ShowFirstPageButton="true" ShowNextPageButton="false" ShowLastPageButton="false"
                                                        ButtonCssClass="btn btn-default" RenderNonBreakingSpacesBetweenControls="false" RenderDisabledButtonsAsLabels="false" />
                                                    <asp:NumericPagerField ButtonType="Link" CurrentPageLabelCssClass="btn btn-primary disabled" RenderNonBreakingSpacesBetweenControls="false"
                                                        NumericButtonCssClass="btn btn-default" ButtonCount="10" NextPageText="..." NextPreviousButtonCssClass="btn btn-default" />
                                                    <asp:NextPreviousPagerField NextPageText=">" LastPageText=">|" ShowNextPageButton="true"
                                                        ShowLastPageButton="true" ShowPreviousPageButton="false" ShowFirstPageButton="false"
                                                        ButtonCssClass="btn btn-default" RenderNonBreakingSpacesBetweenControls="false" RenderDisabledButtonsAsLabels="false" />
                                                </Fields>
                                            </asp:DataPager>
                                        </td>
                                    </tr>
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
        </div>
    </section>
</asp:Content>
