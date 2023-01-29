<%@ Page Title="Admin Login" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.vb" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   
        <style>
          .auto-style3 {
          width: 650px;
          height: 35px;
          font-family: Verdana;
          color:rgb(255, 255, 255);

      }
      .auto-style4 {
          width: 69%;
          height: 144px;
          font-family: Verdana;
          font-size: 16px;
          color:rgb(255, 255, 255);
      }
    </style> 
    <div style="background-color: transparent; background-image: url('images/fifa-world-cup-22.jpg');background-size: 100%; width: 1145px; height: 504px; align-content:center;">
    <br /><br /><br /><br />
        <h2 class="auto-style3" align="center"><%: Title %></h2>
    <br /><br />
        <table class="auto-style4" align="center">  
                <tr>
                    <td class="style2" style="width: 75px">Username:</td>  
                    <td style="width: 208px"><asp:TextBox ID="txtUserName" runat="server" Width="160px" ForeColor="Black"></asp:TextBox></td>  
                    <td><asp:RequiredFieldValidator ID="rfvUser" runat="server"
                        ControlToValidate="txtUserName" ErrorMessage="Please Enter Your Username"
                        ForeColor="Red"></asp:RequiredFieldValidator></td>  
                </tr>  
                <tr>
                    <td class="style2" style="width: 75px">Password:</td>  
                    <td style="width: 208px"><asp:TextBox ID="txtPWD" TextMode="password" runat="server" Width="160px" ForeColor="Black"></asp:TextBox></td>  
                    <td><asp:RequiredFieldValidator ID="rfvPWD" runat="server"
                        ControlToValidate="txtPWD" ErrorMessage="Please Enter Your Password"
                        ForeColor="Red"></asp:RequiredFieldValidator></td>  
                </tr>  
                <tr>  
                    <td class="style2" style="width: 75px"></td>  
                    <td style="width: 208px" ><asp:Button ID="btnlogin" runat="server" Text="Login" Width="117px" BackColor="Black" Height="28px"/>

                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [txtUserName], [txtPWD] FROM [login]"></asp:SqlDataSource>

                    </td>  
                    <td></td>  
                </tr>  
                </table>
        
        </div>
</asp:Content>
