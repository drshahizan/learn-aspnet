<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmCookie.aspx.cs" Inherits="LabSession.frmCookie" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cookie</title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Cookie</h1>
        <div>
            <asp:Button ID="btnCreate" runat="server" Text="Create Cookie" OnClick="btnCreate_Click" />&nbsp;<asp:TextBox ID="txtCreateCookie" runat="server"></asp:TextBox>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            <asp:Button ID="btnRetrieve" runat="server" Text="Retrive Cookie" OnClick="btnRetrieve_Click" />&nbsp;<asp:TextBox ID="txtRetrieve" runat="server"></asp:TextBox>
        </div>
        <p>
            *Try to retrieve it again after 2 minutes; it will give us a message in the box, as “We don’t found any Cookie”.

        </p>
    </form>
</body>
</html>
