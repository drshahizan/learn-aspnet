<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="frmDate.aspx.vb" Inherits="ajax.femFinalAjax" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Date:"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <ajaxToolkit:CalendarExtender ID="TextBox1_CalendarExtender" runat="server" BehaviorID="TextBox1_CalendarExtender" TargetControlID="TextBox1" />
        </div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    </form>
</body>
</html>
