<%@ Page Title="Admin Page - Update" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Awards_Admin.aspx.vb" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>

    <table class="auto-style4" align="left">  


                <tr>
                    <td> Update Winner List </td>
                </tr>  
                <tr>

                    <td class="style2" style="width: 75px">Year:</td>  
                    <td style="width: 208px"><asp:TextBox ID="txtYear" runat="server" Width="160px"></asp:TextBox></td>  
                    <td><asp:RequiredFieldValidator ID="rfvYear" runat="server"
                        ControlToValidate="txtYear" ErrorMessage="need to fill up"
                        ForeColor="Yellow"></asp:RequiredFieldValidator></td>  
                </tr>  
                <tr>
                    <td class="style2" style="width: 75px">Country:</td>  
                    <td style="width: 208px"><asp:TextBox ID="txtCountry"  runat="server" Width="160px"></asp:TextBox></td>  
                    <td><asp:RequiredFieldValidator ID="rfvCountry" runat="server"
                        ControlToValidate="txtCountry" ErrorMessage="need to fill up"
                        ForeColor="Red"></asp:RequiredFieldValidator></td>  
                </tr>  
                <tr>  
                    <td class="style2" style="width: 75px"></td>  
                    <td style="width: 208px" ><asp:Button ID="btnUpdate" runat="server" Text="UPDATE" Width="117px" BackColor="Yellow" Height="28px"/>
                    </td>  
                    <td></td>  
                </tr>  
                </table>

    <p>Use this area to provide additional information. UPDATE/DELETE/INSERT</p>
</asp:Content>
