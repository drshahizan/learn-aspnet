<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="frmBubbleChart.aspx.vb" Inherits="ajax.frmTab" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <ajaxToolkit:BubbleChart ID="BubbleChart1" runat="server" ChartHeight="300" ChartWidth="350"
            ChartTitle="Industry Share in Market and Growth" ChartTitleColor="#0E426C" XAxisLineColor="#D08AD9"
            YAxisLineColor="#D08AD9" BaseLineColor="#A156AB" YAxisLines="6" XAxisLines="6"
            BubbleSizes="5" XAxisLabel="Market share of Industry" YAxisLabel="Revenue of Industry" BubbleLabel=" (Growth in %)" Height="350px" Width="400px">
            <BubbleChartValues>
                <ajaxToolkit:BubbleChartValue Category="Software" X="0" Y="90000" Data="7" BubbleColor="#6C1E83" />
                <ajaxToolkit:BubbleChartValue Category="Foods" X="35" Y="150000" Data="5" BubbleColor="#D08AD9" />
                <ajaxToolkit:BubbleChartValue Category="Health" X="32" Y="140000" Data="6" BubbleColor="#6586A7" />
                <ajaxToolkit:BubbleChartValue Category="Manufacturing" X="22" Y="84000" Data="4" BubbleColor="#0E426C" />
                <ajaxToolkit:BubbleChartValue Category="Travel" X="8" Y="26000" Data="7" BubbleColor="#A156AB" />
                <ajaxToolkit:BubbleChartValue Category="Entertainment" X="28" Y="97000" Data="9" BubbleColor="#990033" />
                <ajaxToolkit:BubbleChartValue Category="Construction" X="15" Y="58000" Data="5" BubbleColor="#669900" />
            </BubbleChartValues>
        </ajaxToolkit:BubbleChart>

        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    </form>
</body>
</html>
