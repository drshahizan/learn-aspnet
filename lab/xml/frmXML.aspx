<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmXML.aspx.cs" Inherits="web_XML.frmXML" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>XML</h1>

        <div>
            <asp:Xml ID="Xml1" runat="server" DocumentSource="~/books.xml" TransformSource="~/style_sheet.xslt"></asp:Xml>
            </div>
    </form>
</body>
</html>
