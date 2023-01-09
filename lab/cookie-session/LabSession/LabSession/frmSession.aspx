<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmSession.aspx.cs" Inherits="LabSession.frmSession" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Session</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            width: 105px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Session</h1>
        <p>Please enter your Email and Password</p>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Email</td>
                <td>
                    <asp:TextBox ID="email" runat="server" TextMode="Email"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Password</td>
                <td>
                    <asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2"></td>
                <td>
                    <asp:Button ID="login" runat="server" Text="Login" OnClick="login_Click" />
                </td>
            </tr>
        </table>
        <br />

        <asp:Label ID="Label1" runat="server"></asp:Label>
        <br />
        <asp:Label ID="Label2" runat="server"></asp:Label>
        <p>
            To save the value in the session, please use password=<i>mso123</i>.
        </p>
    </form>
</body>
</html>
