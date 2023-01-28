<%@ Page Title="Manage News" Language="C#" MasterPageFile="~/User/Site1.Master" AutoEventWireup="true" CodeBehind="frmnews.aspx.cs" Inherits="Project_WorldCup.User.frmnews" Theme="Theme2" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .auto-style1 {
            width: 210px;
            height: 25px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
     <br />
     <h3>Manage News Football</h3>
     <br />
    <asp:Panel ID="Panel2" runat="server" CssClass="collapsePanelHeader" Height="30px">
        <div style="padding: 5px; cursor: pointer; vertical-align: middle; background-color: #6c51d7; height: 100%;">
            <div style="float: left; color: #fff; font-weight: bold; font-size: 15px; padding-left: 20px;">Add News</div>
            <div style="float: right; vertical-align: middle;">
                <asp:ImageButton ID="Image1" runat="server" ImageUrl="~/img/expand.png" AlternateText="Show Details" Width="20px" BackColor="#6C51D7" />
            </div>
        </div>
    </asp:Panel>
    <asp:Panel ID="Panel1" runat="server" CssClass="collapsePanel" Height="0" style="padding-left: 10px; border: 1px solid #6C51D7; width: 100%;">
        <br />
        <asp:Label ID="lblTitle" runat="server" Text="News Title"></asp:Label>
        <br />
        <asp:TextBox ID="titleTxt" runat="server" Width="30%"></asp:TextBox>
        <br /><br />
        <asp:Label ID="lblContent" runat="server" Text="News Content"></asp:Label>
        <br />
        <asp:TextBox ID="contentTxt" runat="server" TextMode="MultiLine" Width="30%" Height="100px"></asp:TextBox>
        <br /><br />
        <asp:Button ID="btnSave" CssClass="button" runat="server" Text="Save" OnClick="btnSave_Click" />
        <p>&nbsp;</p>
        <div style="margin-left: auto; margin-right: auto; text-align: center;">
            <asp:Label ID="statusLbl" runat="server" ForeColor="#CC0000"></asp:Label>
        </div>
    </asp:Panel>

    <ajaxToolkit:CollapsiblePanelExtender ID="addNews" runat="Server"
        TargetControlID="Panel1"
        ExpandControlID="Panel2"
        CollapseControlID="Panel2"
        Collapsed="False"
        ImageControlID="Image1"
        ExpandedText="Hide"
        CollapsedText="Show"
        ExpandedImage="~/img/collapse.png"
        CollapsedImage="~/Img/expand.png"
        SuppressPostBack="true" />
    <br />

    <asp:Panel ID="Panel3" runat="server" CssClass="collapsePanelHeader" Height="30px">
        <div style="padding: 5px; cursor: pointer; vertical-align: middle; background-color: #6c51d7; height: 100%;">
            <div style="float: left; color: #fff; font-weight: bold; font-size: 15px; padding-left: 20px;">Edit Existing News</div>
            <div style="float: right; vertical-align: middle;">
                <asp:ImageButton ID="Image2" runat="server" ImageUrl="~/img/expand.png" AlternateText="Show Details" Width="20px" BackColor="#6C51D7" />
            </div>
        </div>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server" CssClass="collapsePanel" Height="0" style="padding-left: 10px; border: 1px solid #6C51D7; width: 100%;">
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="newsDS" GridLines="Horizontal" HorizontalAlign="Center" Width="90%">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="news" HeaderText="News Title" SortExpression="news" />
                <asp:BoundField DataField="article" HeaderText="News Content" SortExpression="article">
                    <ControlStyle Width="100%" />
                </asp:BoundField>
            </Columns>
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#6C51D7" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <SortedAscendingCellStyle BackColor="#F4F4FD" />
            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
            <SortedDescendingCellStyle BackColor="#D8D8F0" />
            <SortedDescendingHeaderStyle BackColor="#3E3277" />
        </asp:GridView>
        <asp:SqlDataSource ID="newsDS" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [newsArticle] WHERE [Id] = @original_Id AND (([news] = @original_news) OR ([news] IS NULL AND @original_news IS NULL)) AND (([article] = @original_article) OR ([article] IS NULL AND @original_article IS NULL))" InsertCommand="INSERT INTO [newsArticle] ([news], [article]) VALUES (@news, @article)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [newsArticle]" UpdateCommand="UPDATE [newsArticle] SET [news] = @news, [article] = @article WHERE [Id] = @original_Id AND (([news] = @original_news) OR ([news] IS NULL AND @original_news IS NULL)) AND (([article] = @original_article) OR ([article] IS NULL AND @original_article IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_news" Type="String" />
                <asp:Parameter Name="original_article" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="news" Type="String" />
                <asp:Parameter Name="article" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="news" Type="String" />
                <asp:Parameter Name="article" Type="String" />
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_news" Type="String" />
                <asp:Parameter Name="original_article" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    <p>&nbsp;</p>
    </asp:Panel>

    <ajaxToolkit:CollapsiblePanelExtender ID="manageNews" runat="Server"
        TargetControlID="Panel4"
        ExpandControlID="Panel3"
        CollapseControlID="Panel3"
        Collapsed="True"
        ImageControlID="Image2"
        ExpandedText="Hide"
        CollapsedText="Show"
        ExpandedImage="~/img/collapse.png"
        CollapsedImage="~/Img/expand.png"
        SuppressPostBack="true" />

    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    </div>
    <br />
</asp:Content>
