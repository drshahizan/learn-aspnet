<%@ Page Title="Manage Group" Language="C#" MasterPageFile="~/User/Site1.Master" AutoEventWireup="true" CodeBehind="Group.aspx.cs" Inherits="Project_WorldCup.User.Group" Theme="Theme2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="container">
       <br />
       <h3>Manage Group FIFA</h3>
       <br />
       <asp:Panel ID="Panel2" runat="server" CssClass="collapsePanelHeader" Height="30px">
        <div style="padding: 5px; cursor: pointer; vertical-align: middle; background-color: #6c51d7; height: 100%;">
            <div style="float: left; color: #fff; font-weight: bold; font-size: 15px; padding-left: 20px;">Add New Team to Group</div>
            <div style="float: right; vertical-align: middle;">
                <asp:ImageButton ID="Image1" runat="server" ImageUrl="~/img/expand.png" AlternateText="Show Details" Width="20px" BackColor="#6C51D7" />
            </div>
        </div>
       </asp:Panel>
        <asp:Panel ID="Panel1" runat="server" CssClass="collapsePanel" Height="0" style="padding-left: 10px; border: 1px solid #6C51D7; width: 100%;">
            <br />
            <asp:Label ID="lblListGroup" runat="server" Text="List Group"></asp:Label>
            <br />
            &nbsp;<asp:DropDownList ID="DropDownList1" runat="server" Height="30px" Width="150px" DataSourceID="groupDS" DataTextField="teamGroup" DataValueField="teamGroup">
            </asp:DropDownList>
            <asp:SqlDataSource ID="groupDS" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [teamGroup] FROM [teamGroup]"></asp:SqlDataSource>
            <br />
            <br />
            <asp:Label ID="lblCountry" runat="server" Text="Country"></asp:Label>
            &nbsp;<br />
            &nbsp;<asp:DropDownList ID="DropDownList2" runat="server" Height="30px" Width="150px" DataSourceID="countryDS" DataTextField="countryName" DataValueField="countryName">
            </asp:DropDownList>
            <asp:SqlDataSource ID="countryDS" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [countryName] FROM [country]"></asp:SqlDataSource>

            <br />
            <br />
            <asp:Button ID="btnSave" class="button"  runat ="server" Text="Save" OnClick="btnSave_Click" />
            <br />
            <div style="margin-left: auto; margin-right: auto; text-align: center;">
                <asp:Label ID="statusLbl" runat="server" ForeColor="#CC0000"></asp:Label>
            </div>
            <br />
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
            <div style="float: left; color: #fff; font-weight: bold; font-size: 15px; padding-left: 20px;">Edit Existing Groups</div>
            <div style="float: right; vertical-align: middle;">
                <asp:ImageButton ID="Image2" runat="server" ImageUrl="~/img/expand.png" AlternateText="Show Details" Width="20px" BackColor="#6C51D7" />
            </div>
        </div>
       </asp:Panel>
        <asp:Panel ID="Panel4" runat="server" CssClass="collapsePanel" Height="0" style="padding-left: 10px; border: 1px solid #6C51D7; width: 100%;">
            <br />
           <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="groupId" DataSourceID="editGroupDS" GridLines="Horizontal" HorizontalAlign="Center" Width="80%">
               <AlternatingRowStyle BackColor="#F7F7F7" />
               <Columns>
                   <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                   <asp:BoundField DataField="groupId" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="groupId" />
                   <asp:BoundField DataField="teamGroup" HeaderText="Team Group" SortExpression="teamGroup" />
                   <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
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
            <asp:SqlDataSource ID="editGroupDS" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [teamGroup] WHERE [groupId] = @original_groupId AND [teamGroup] = @original_teamGroup AND [Country] = @original_Country" InsertCommand="INSERT INTO [teamGroup] ([teamGroup], [Country]) VALUES (@teamGroup, @Country)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [teamGroup]" UpdateCommand="UPDATE [teamGroup] SET [teamGroup] = @teamGroup, [Country] = @Country WHERE [groupId] = @original_groupId AND [teamGroup] = @original_teamGroup AND [Country] = @original_Country">
                <DeleteParameters>
                    <asp:Parameter Name="original_groupId" Type="Int32" />
                    <asp:Parameter Name="original_teamGroup" Type="String" />
                    <asp:Parameter Name="original_Country" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="teamGroup" Type="String" />
                    <asp:Parameter Name="Country" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="teamGroup" Type="String" />
                    <asp:Parameter Name="Country" Type="String" />
                    <asp:Parameter Name="original_groupId" Type="Int32" />
                    <asp:Parameter Name="original_teamGroup" Type="String" />
                    <asp:Parameter Name="original_Country" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
        </asp:Panel>

        <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender1" runat="Server"
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
         <br />

       <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    </div>
</asp:Content>
