<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="frmCombine.aspx.vb" Inherits="ajax.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <h1>AjaxControlToolkit</h1>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Calendar"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <ajaxToolkit:CalendarExtender ID="TextBox1_CalendarExtender" runat="server" TargetControlID="TextBox1" />
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Color Picker"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <ajaxToolkit:ColorPickerExtender ID="TextBox2_ColorPickerExtender" runat="server" BehaviorID="TextBox2_ColorPickerExtender" TargetControlID="TextBox2" />
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="HTML Editor"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" Height="232px" Width="566px"></asp:TextBox>
            <ajaxToolkit:HtmlEditorExtender ID="TextBox3_HtmlEditorExtender" runat="server" BehaviorID="TextBox3_HtmlEditorExtender" TargetControlID="TextBox3">
            </ajaxToolkit:HtmlEditorExtender>
            <br />
            <br />
            <ajaxToolkit:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="0" Height="16px" Width="417px">
                <ajaxToolkit:TabPanel runat="server" HeaderText="TabPanel1" ID="TabPanel1">
                    <HeaderTemplate>
                        Login
                    </HeaderTemplate>
                    <ContentTemplate>
                        <br />
                    </ContentTemplate>
                </ajaxToolkit:TabPanel>
                <ajaxToolkit:TabPanel runat="server" HeaderText="TabPanel2" ID="TabPanel2">
                    <HeaderTemplate>
                        Page2
                    </HeaderTemplate>
                </ajaxToolkit:TabPanel>
            </ajaxToolkit:TabContainer>
            <br />
            <br />


            &nbsp;<ajaxToolkit:AreaChart ID="AreaChart1" runat="server"
                ChartHeight="300" ChartWidth="450" ChartType="Basic"
                ChartTitle="United States versus European Widget Production"
                CategoriesAxis="2007,2008,2009,2010,2011,2012"
                ChartTitleColor="#0E426C" CategoryAxisLineColor="#D08AD9"
                ValueAxisLineColor="#D08AD9" BaseLineColor="#A156AB" Width="500px">
                <Series>
                    <ajaxToolkit:AreaChartSeries Name="United States"
                        AreaColor="#6C1E83" Data="110, 189, 255, 95, 107, 140" />
                    <ajaxToolkit:AreaChartSeries Name="Europe"
                        AreaColor="#D08AD9" Data="49, 77, 95, 68, 70, 79" />
                </Series>
            </ajaxToolkit:AreaChart>


            <br />


            <ajaxToolkit:BarChart ID="BarChart1" runat="server"
                ChartHeight="300" ChartWidth="450" ChartType="Column"
                ChartTitle="United States versus European Widget Production"
                CategoriesAxis="2007,2008,2009,2010,2011,2012"
                ChartTitleColor="#0E426C" CategoryAxisLineColor="#D08AD9"
                ValueAxisLineColor="#D08AD9" BaseLineColor="#A156AB" Width="500px">
                <Series>
                    <ajaxToolkit:BarChartSeries Name="United States" BarColor="#6C1E83"
                        Data="110, 189, 255, 95, 107, 140" />
                    <ajaxToolkit:BarChartSeries Name="Europe" BarColor="#D08AD9"
                        Data="49, 77, 95, 68, 70, 79" />
                </Series>
            </ajaxToolkit:BarChart>
        </div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    </form>
</body>
</html>
