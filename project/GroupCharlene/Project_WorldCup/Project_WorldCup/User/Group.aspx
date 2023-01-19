<%@ Page Title="Manage Group" Language="C#" MasterPageFile="~/User/Site1.Master" AutoEventWireup="true" CodeBehind="Group.aspx.cs" Inherits="Project_WorldCup.User.Group" Theme="Theme2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="container">
       <h3>Manage Group FIFA</h3>

       <asp:Label ID="lblListGroup" runat="server" Text="List Group"></asp:Label>
       <br />
       <br />
       &nbsp;<asp:DropDownList ID="DropDownList1" runat="server" Height="30px" Width="150px">
           <asp:ListItem>A</asp:ListItem>
           <asp:ListItem>B</asp:ListItem>
           <asp:ListItem>C</asp:ListItem>
           <asp:ListItem>D</asp:ListItem>
           <asp:ListItem>E</asp:ListItem>
           <asp:ListItem>F</asp:ListItem>
           <asp:ListItem>G</asp:ListItem>
           <asp:ListItem>H</asp:ListItem>
       </asp:DropDownList>
       <br />
       <br />
       <asp:Label ID="lblCountry" runat="server" Text="Country"></asp:Label>
       &nbsp;<br />
&nbsp;<asp:DropDownList ID="DropDownList2" runat="server" Height="30px" Width="150px">
           <asp:ListItem>Qatar</asp:ListItem>
           <asp:ListItem>Ecuador</asp:ListItem>
                    <asp:ListItem>Senegal</asp:ListItem>
                    <asp:ListItem>Netherlands</asp:ListItem>
                    <asp:ListItem>England</asp:ListItem>
                    <asp:ListItem>Iran</asp:ListItem>
                    <asp:ListItem>US</asp:ListItem>
                    <asp:ListItem>Wales</asp:ListItem>
                    <asp:ListItem>Argentina</asp:ListItem>
                    <asp:ListItem>Saudi Arabia</asp:ListItem>
                    <asp:ListItem>Mexico</asp:ListItem>
                    <asp:ListItem>Poland</asp:ListItem>
                    <asp:ListItem>France</asp:ListItem>
                    <asp:ListItem>Australia</asp:ListItem>
                    <asp:ListItem>Denmark</asp:ListItem>
                    <asp:ListItem>Tunisia</asp:ListItem>
                    <asp:ListItem>Spain</asp:ListItem>
                    <asp:ListItem>Costa Rica</asp:ListItem>
                    <asp:ListItem>Germany</asp:ListItem>
                    <asp:ListItem>Japan</asp:ListItem>
                    <asp:ListItem>Belgium</asp:ListItem>
                    <asp:ListItem>Canada</asp:ListItem>
                    <asp:ListItem>Morocco</asp:ListItem>
                    <asp:ListItem>Croatia</asp:ListItem>
                    <asp:ListItem>Brazil</asp:ListItem>
                    <asp:ListItem>Serbia</asp:ListItem>
                    <asp:ListItem>Switzerland</asp:ListItem>
                    <asp:ListItem>Cameroon</asp:ListItem>
                    <asp:ListItem>Portugal</asp:ListItem>
                    <asp:ListItem>Ghana</asp:ListItem>
                    <asp:ListItem>Uruguay</asp:ListItem>
                    <asp:ListItem>South Korea</asp:ListItem>

       </asp:DropDownList>


       &nbsp;<br />
       <br />
       <asp:Button ID="btnSave" class="button"  runat ="server" Text="Save" />
    </div>
</asp:Content>
