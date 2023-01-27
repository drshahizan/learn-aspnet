<%@ Page Title="Manage List Players" Language="C#" MasterPageFile="~/User/Site1.Master" AutoEventWireup="true" CodeBehind="frmPlayers.aspx.cs" Inherits="Project_WorldCup.User.frmPlayers" Theme="Theme2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <br />
        <h3>Manage List Players</h3>
        <br />

        <asp:Panel ID="Panel2" runat="server" CssClass="collapsePanelHeader" Height="30px">
            <div style="padding: 5px; cursor: pointer; vertical-align: middle; background-color: #6c51d7; height: 100%;">
                <div style="float: left; color: #fff; font-weight: bold; font-size: 15px; padding-left: 20px;">Add New Player</div>
                <div style="float: right; vertical-align: middle;">
                    <asp:ImageButton ID="Image1" runat="server" ImageUrl="~/img/expand.png" AlternateText="Show Details" Width="20px" BackColor="#6C51D7" />
                </div>
            </div>
        </asp:Panel>
        <asp:Panel ID="Panel1" runat="server" CssClass="collapsePanel" Height="0" style="padding-left: 10px; border: 1px solid #6C51D7; width: 100%;">
            <br />
            <asp:Label ID="lblCountry" runat="server" Text="Country"></asp:Label>
            <br />
            <asp:DropDownList ID="DropDownList1" runat="server" Height="21px" Width="20%" DataSourceID="countryDS" DataTextField="countryName" DataValueField="countryName">
            </asp:DropDownList>
            <asp:SqlDataSource ID="countryDS" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [countryName] FROM [country]"></asp:SqlDataSource>
            <br /><br />

            <asp:Label ID="lblPhoto" runat="server" Text="Photo"></asp:Label>
            <br />
            <asp:FileUpload ID="photoFile" runat="server" />
            <br /><br />

            <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label>
            <br />
            <asp:TextBox ID="nameTxt" runat="server" Width="20%"></asp:TextBox>
            <br /><br />

            <asp:Label ID="lblJersey" runat="server" Text="Jersey Number"></asp:Label>
            <br />
            <asp:TextBox ID="jerseyTxt" runat="server" Width="20%" TextMode="Number"></asp:TextBox>
            <br /><br />

            <asp:Label ID="lblClub" runat="server" Text="Club"></asp:Label>
            <br />
            <asp:TextBox ID="clubTxt" runat="server" Width="20%"></asp:TextBox>
            <br /><br />

            <asp:Label ID="lblPosition" runat="server" Text="Position" Width="20%"></asp:Label>
            <br />
            <asp:DropDownList ID="DropDownList2" runat="server" Width="20%">
                <asp:ListItem Text="Goalkeeper" Value="GK"></asp:ListItem>
                <asp:ListItem Text="Defender" Value="DF"></asp:ListItem>
                <asp:ListItem Text="Midfielder" Value="MF"></asp:ListItem>
                <asp:ListItem Text="Forward" Value="FW"></asp:ListItem>
            </asp:DropDownList>
            <br /><br />
            <asp:Button ID="btnSave" class="button"  runat="server" Text="Save" OnClick="btnSave_Click" />
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
                <div style="float: left; color: #fff; font-weight: bold; font-size: 15px; padding-left: 20px;">Edit Existing Players</div>
                <div style="float: right; vertical-align: middle;">
                    <asp:ImageButton ID="Image2" runat="server" ImageUrl="~/img/expand.png" AlternateText="Show Details" Width="20px" BackColor="#6C51D7" />
                </div>
            </div>
        </asp:Panel>
        <asp:Panel ID="Panel4" runat="server" CssClass="collapsePanel" Height="0" style="padding-left: 10px; border: 1px solid #6C51D7; width: 100%;">
            <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="playerID" DataSourceID="playersDS" GridLines="Horizontal" HorizontalAlign="Center" Width="80%" AllowPaging="True">
                    <AlternatingRowStyle BackColor="#F7F7F7" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="playerID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="playerID" />
                        <asp:BoundField DataField="fullName" HeaderText="Full Name" SortExpression="fullName" />
                        <asp:BoundField DataField="teamCountry" HeaderText="Country" SortExpression="teamCountry" />
                        <asp:BoundField DataField="jerseyNum" HeaderText="Jersey #" SortExpression="jerseyNum" />
                        <asp:BoundField DataField="position" HeaderText="Position" SortExpression="position" />
                        <asp:BoundField DataField="Club" HeaderText="Club" SortExpression="Club" />
                        <asp:BoundField DataField="photo" HeaderText="Photo" SortExpression="photo" />
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
            <asp:SqlDataSource ID="playersDS" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [teamPlayer] WHERE [playerID] = @original_playerID AND [fullName] = @original_fullName AND [teamCountry] = @original_teamCountry AND [jerseyNum] = @original_jerseyNum AND [position] = @original_position AND [Club] = @original_Club AND (([photo] = @original_photo) OR ([photo] IS NULL AND @original_photo IS NULL))" InsertCommand="INSERT INTO [teamPlayer] ([fullName], [teamCountry], [jerseyNum], [position], [Club], [photo]) VALUES (@fullName, @teamCountry, @jerseyNum, @position, @Club, @photo)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [teamPlayer]" UpdateCommand="UPDATE [teamPlayer] SET [fullName] = @fullName, [teamCountry] = @teamCountry, [jerseyNum] = @jerseyNum, [position] = @position, [Club] = @Club, [photo] = @photo WHERE [playerID] = @original_playerID AND [fullName] = @original_fullName AND [teamCountry] = @original_teamCountry AND [jerseyNum] = @original_jerseyNum AND [position] = @original_position AND [Club] = @original_Club AND (([photo] = @original_photo) OR ([photo] IS NULL AND @original_photo IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_playerID" Type="Int32" />
                    <asp:Parameter Name="original_fullName" Type="String" />
                    <asp:Parameter Name="original_teamCountry" Type="String" />
                    <asp:Parameter Name="original_jerseyNum" Type="Int32" />
                    <asp:Parameter Name="original_position" Type="String" />
                    <asp:Parameter Name="original_Club" Type="String" />
                    <asp:Parameter Name="original_photo" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="fullName" Type="String" />
                    <asp:Parameter Name="teamCountry" Type="String" />
                    <asp:Parameter Name="jerseyNum" Type="Int32" />
                    <asp:Parameter Name="position" Type="String" />
                    <asp:Parameter Name="Club" Type="String" />
                    <asp:Parameter Name="photo" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="fullName" Type="String" />
                    <asp:Parameter Name="teamCountry" Type="String" />
                    <asp:Parameter Name="jerseyNum" Type="Int32" />
                    <asp:Parameter Name="position" Type="String" />
                    <asp:Parameter Name="Club" Type="String" />
                    <asp:Parameter Name="photo" Type="String" />
                    <asp:Parameter Name="original_playerID" Type="Int32" />
                    <asp:Parameter Name="original_fullName" Type="String" />
                    <asp:Parameter Name="original_teamCountry" Type="String" />
                    <asp:Parameter Name="original_jerseyNum" Type="Int32" />
                    <asp:Parameter Name="original_position" Type="String" />
                    <asp:Parameter Name="original_Club" Type="String" />
                    <asp:Parameter Name="original_photo" Type="String" />
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
