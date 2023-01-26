<%@ Page Title="Admin - Add User" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="frmadduser.aspx.cs" Inherits="Project_WorldCup.Admin.frmadduser" Theme="Theme2"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     
    <style type="text/css">
        .auto-style2 {
            width: 185px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     
   <div class="container">
       <h3>Manage User</h3>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
     <div class="table-responsive">
   <table class="table mg-b-0">
        <tr>
            <td scope="row" class="auto-style2">Username</td>
            
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="** Please insert your name" ControlToValidate="txtName">**</asp:RequiredFieldValidator>
            
           
            <td>
                <asp:TextBox ID="txtName" runat="server" Height="33px" Width="170px" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td scope="row" class="auto-style2">Password</td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="** Please insert your password" ControlToValidate="txtPw">**</asp:RequiredFieldValidator>
        
            <td>
                
                <asp:TextBox ID="txtPw" runat="server" Height="33px" Width="170px" TextMode="Password"></asp:TextBox>
                
            </td>
        </tr>
        <tr>
            <td scope="row" class="auto-style2">Confirm Password</td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="** Please insert confirm password" ControlToValidate="txtConfirmPw">**</asp:RequiredFieldValidator>
           
            <td>
                
                <asp:TextBox ID="txtConfirmPw" runat="server" Height="33px" Width="170px" TextMode="Password"></asp:TextBox>
                
            </td>
        </tr>
         <tr>
            <td scope="row" class="auto-style2">Role</td>
          
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Height="33px" Width="177px">
                    <asp:ListItem>Admin</asp:ListItem>
                    <asp:ListItem>User</asp:ListItem>
                </asp:DropDownList>
             </td>
        </tr>
        <tr>
            <td class="auto-style2"></td>
            <td> <asp:Button ID="btnSave" class="button" runat="server" Text="Save" Width="87px" OnClick="btnSave_Click" /></td>
            <td>
               
                
             </td>
        </tr>
    </table>
         </div>
       </div>
       <div style="margin-left: auto; margin-right: auto; text-align: center;">
            <asp:Label ID="statusLbl" runat="server" ForeColor="#CC0000"></asp:Label>
        </div>
</asp:Content>
