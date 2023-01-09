<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="frmAccordion.aspx.vb" Inherits="ajax.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">  
<head runat="server">  
    <title>Accordion Demo</title>  
    <style>  
        .headerCssClass{  
            background-color:#c33803;  
            color:white;  
            border:1px solid black;  
            padding:4px;  
        }  
        .contentCssClass{  
            background-color:#e59a7d;  
            color:black;  
            border:1px dotted black;  
            padding:4px;  
        }  
        .headerSelectedCss{  
            background-color:#808080;  
            color:white;  
            border:1px solid black;  
            padding:4px;  
        }  
    </style>  
</head>  
<body>  
    <form id="form1" runat="server">  
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>  
        <div style="width:400px;">  
            <ajaxToolkit:Accordion ID="Accordion1" runat="server" HeaderCssClass="headerCssClass" ContentCssClass="contentCssClass" HeaderSelectedCssClass="headerSelectedCss" FadeTransitions="true" TransitionDuration="500" AutoSize="None" SelectedIndex="0" Height="425px" Width="569px">  
                <Panes>  
                    <ajaxToolkit:AccordionPane ID="AccordionPane1" runat="server">  
                        <Header>New User  
                        </Header>  
                        <Content><b><u>New User</u></b>  
                            <table>  
                                <tr><td>Name:</td><td><input type="text" /></td></tr>  
                                <tr><td>Password:</td><td><input type="text" /></td></tr>  
                                <tr><td>Re-Password:</td><td><input type="text" /></td></tr>  
                                <tr><td></td><td><input type="button" value="Submit"/></td></tr>  
                            </table>  
                        </Content>  
                    </ajaxToolkit:AccordionPane>  
                    <ajaxToolkit:AccordionPane ID="AccordionPane2" runat="server">  
                        <Header>Login</Header>  
                        <Content>  
                            <b><u>Login User</u></b>  
                            <table>  
                                <tr><td>Name:</td><td><input type="text" /></td></tr>  
                                <tr><td>Password:</td><td><input type="text" /></td></tr>  
                                <tr><td></td><td><input type="button" value="Login"/></td></tr>  
                            </table>  
                        </Content>  
                    </ajaxToolkit:AccordionPane>  
                </Panes>  
            </ajaxToolkit:Accordion>  
        </div>  
    </form>  
</body>  
</html>  
