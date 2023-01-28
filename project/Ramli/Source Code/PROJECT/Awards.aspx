<%@ Page Title="Awards" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Awards.aspx.vb" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <h2><%: Title %></h2>
    <style>
        .style1{
            width: 322px;
            text-align:center;
        }
        .auto-style4 {
            width: 527px;
            color: rgb(0, 0, 0);
            margin: 0.3em 0px 0px;
            padding-top: 0.5em;
            padding-bottom: 0px;
            overflow: hidden;
            font-size: 1.2em;
            line-height: 1.6;
            font-weight: bold;
            font-family: sans-serif;
            font-style: normal;
            font-variant-ligatures: normal;
            font-variant-caps: normal;
            letter-spacing: normal;
            orphans: 2;
            text-align: start;
            text-indent: 0px;
            text-transform: none;
            white-space: normal;
            widows: 2;
            word-spacing: 0px;
            -webkit-text-stroke-width: 0px;
            background-color: rgb(255, 255, 255);
            text-decoration-thickness: initial;
            text-decoration-style: initial;
            text-decoration-color: initial;
        }
        .auto-style11 {
            width: 26px;
            height: 16px;
        }
        .auto-style15 {
            width: 443px;
            color: rgb(0, 0, 0);
            margin: 0.3em 0px 0px;
            padding-top: 0.5em;
            padding-bottom: 0px;
            overflow: hidden;
            font-size: 1.2em;
            line-height: 1.6;
            font-weight: bold;
            font-family: sans-serif;
            font-style: normal;
            font-variant-ligatures: normal;
            font-variant-caps: normal;
            letter-spacing: normal;
            orphans: 2;
            text-align: start;
            text-indent: 0px;
            text-transform: none;
            white-space: normal;
            widows: 2;
            word-spacing: 0px;
            -webkit-text-stroke-width: 0px;
            background-color: rgb(255, 255, 255);
            text-decoration-thickness: initial;
            text-decoration-style: initial;
            text-decoration-color: initial;
        }
        .auto-style17 {
            width: 443px;
            color: rgb(0, 0, 0);
            margin: 0.3em 0px 0px;
            padding-top: 0.5em;
            padding-bottom: 0px;
            overflow: hidden;
            font-size: 1.2em;
            line-height: 1.6;
            font-weight: bold;
            font-family: sans-serif;
            font-style: normal;
            font-variant-ligatures: normal;
            font-variant-caps: normal;
            letter-spacing: normal;
            orphans: 2;
            text-align: start;
            text-indent: 0px;
            text-transform: none;
            white-space: normal;
            widows: 2;
            word-spacing: 0px;
            -webkit-text-stroke-width: 0px;
            background-color: rgb(255, 255, 255);
            text-decoration-thickness: initial;
            text-decoration-style: initial;
            text-decoration-color: initial;
            height: 33px;
        }
        .auto-style18 {
            width: 527px;
            color: rgb(0, 0, 0);
            margin: 0.3em 0px 0px;
            padding-top: 0.5em;
            padding-bottom: 0px;
            overflow: hidden;
            font-size: 1.2em;
            line-height: 1.6;
            font-weight: bold;
            font-family: sans-serif;
            font-style: normal;
            font-variant-ligatures: normal;
            font-variant-caps: normal;
            letter-spacing: normal;
            orphans: 2;
            text-align: start;
            text-indent: 0px;
            text-transform: none;
            white-space: normal;
            widows: 2;
            word-spacing: 0px;
            -webkit-text-stroke-width: 0px;
            background-color: rgb(255, 255, 255);
            text-decoration-thickness: initial;
            text-decoration-style: initial;
            text-decoration-color: initial;
            height: 33px;
        }
        .auto-style19 {
            width: 652px;
            height: 16px;
        }
        .auto-style20 {
            width: 443px;
            color: rgb(0, 0, 0);
            margin: 0.3em 0px 0px;
            padding-top: 0.5em;
            padding-bottom: 0px;
            overflow: hidden;
            font-size: 1.2em;
            line-height: 1.6;
            font-weight: bold;
            font-family: sans-serif;
            font-style: normal;
            font-variant-ligatures: normal;
            font-variant-caps: normal;
            letter-spacing: normal;
            orphans: 2;
            text-align: start;
            text-indent: 0px;
            text-transform: none;
            white-space: normal;
            widows: 2;
            word-spacing: 0px;
            -webkit-text-stroke-width: 0px;
            background-color: rgb(255, 255, 255);
            text-decoration-thickness: initial;
            text-decoration-style: initial;
            text-decoration-color: initial;
            height: 16px;
        }
        .auto-style21 {
            width: 527px;
            color: rgb(0, 0, 0);
            margin: 0.3em 0px 0px;
            padding-top: 0.5em;
            padding-bottom: 0px;
            overflow: hidden;
            font-size: 1.2em;
            line-height: 1.6;
            font-weight: bold;
            font-family: sans-serif;
            font-style: normal;
            font-variant-ligatures: normal;
            font-variant-caps: normal;
            letter-spacing: normal;
            orphans: 2;
            text-align: start;
            text-indent: 0px;
            text-transform: none;
            white-space: normal;
            widows: 2;
            word-spacing: 0px;
            -webkit-text-stroke-width: 0px;
            background-color: rgb(255, 255, 255);
            text-decoration-thickness: initial;
            text-decoration-style: initial;
            text-decoration-color: initial;
            height: 16px;
        }
        </style>
    <br />

    <h3>Golden Ball</h3>
    <table>
        <tr>
            <td class="auto-style19"><span style="color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 700; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(234, 236, 240); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">World Cup</span></td>
            <td class="auto-style17">
                <span style="color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 700; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 215, 0); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">Golden Ball</span></td>
            <td class="auto-style17"><span style="color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 700; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(192, 192, 192); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">Silver Ball</span></td>
            <td class="auto-style18"><span style="color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 700; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(204, 153, 102); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">Bronze Ball</span></td>
        </tr>
        <tr>
            <td class="auto-style19">1982 FIFA World Cup
                <img alt="" class="auto-style11" src="images/Flag/Flag_of_Spain.png" /> Spain</td>
            <td class="auto-style17"><a href="https://en.wikipedia.org/wiki/Paolo_Rossi" target="_blank">Paolo Rossi</a></td>
            <td class="auto-style17"><a href="https://en.wikipedia.org/wiki/Paulo_Roberto_Falc%C3%A3o" target="_blank">Falcão</a></td>
            <td class="auto-style18"><a href="https://en.wikipedia.org/wiki/Karl-Heinz_Rummenigge" target="_blank">Karl-Heinz Rummenigge</a></td>
        </tr>
        <tr>
            <td class="auto-style19">1986 FIFA World Cup
                <img alt="" class="auto-style11" src="images/Flag/Flag_of_Mexico.png" /> Mexico</td>
            <td class="auto-style15"><a href="https://en.wikipedia.org/wiki/Diego_Maradona" target="_blank">Diego Maradona</a></td>
            <td class="auto-style15"><a href="https://en.wikipedia.org/wiki/Toni_Schumacher" target="_blank">Harald Schumacher</a></td>
            <td class="auto-style4"><a href="https://en.wikipedia.org/wiki/Preben_Elkj%C3%A6r" target="_blank">Preben Elkjær</a></td>
        </tr>
                <tr>
            <td class="auto-style19">1990 FIFA World Cup <img alt="" class="auto-style11" src="images/Flag/Flag_of_Italy.png" /> Italy</td>
            <td class="auto-style15"><a href="https://en.wikipedia.org/wiki/Salvatore_Schillaci" target="_blank">Salvatore Schillaci</a></td>
            <td class="auto-style15"><a href="https://en.wikipedia.org/wiki/Lothar_Matth%C3%A4us" target="_blank">Lothar Matthäus</a></td>
            <td class="auto-style4"><a href="https://en.wikipedia.org/wiki/Diego_Maradona" target="_blank">Diego Maradona</a></td>
        </tr>
                <tr>
            <td class="auto-style19">1994 FIFA World Cup <img alt="" class="auto-style11" src="images/Flag/Flag-of-USA.png" /> United States</td>
            <td class="auto-style15"><a href="https://en.wikipedia.org/wiki/Rom%C3%A1rio" target="_blank">Romário</a></td>
            <td class="auto-style15"><a href="https://en.wikipedia.org/wiki/Roberto_Baggio" target="_blank">Roberto Baggio</a></td>
            <td class="auto-style4"><a href="https://en.wikipedia.org/wiki/Hristo_Stoichkov" target="_blank">Hristo Stoichkov</a></td>
        </tr>
                <tr>
            <td class="auto-style19">1998 FIFA World Cup <img alt="" class="auto-style11" src="images/Flag/Flag_of_France.png" /> France</td>
            <td class="auto-style15"><a href="https://en.wikipedia.org/wiki/Ronaldo_(Brazilian_footballer)" target="_blank">Ronaldo</a></td>
            <td class="auto-style15"><a href="https://en.wikipedia.org/wiki/Davor_%C5%A0uker" target="_blank">Davor Šuker</a></td>
            <td class="auto-style4"><a href="https://en.wikipedia.org/wiki/Lilian_Thuram" target="_blank">Lilian Thuram</a></td>
        </tr>
                <tr>
            <td class="auto-style19">2002 FIFA World Cup <img alt="" class="auto-style11" src="images/Flag/Flag-of-Korea.png" />/
                <img alt="" class="auto-style11" src="images/Flag/Flag_of_Japan.png" />South Korea/Japan</td>
            <td class="auto-style15"><a href="https://en.wikipedia.org/wiki/Oliver_Kahn" target="_blank">Oliver Kahn</a></td>
            <td class="auto-style15"><a href="https://en.wikipedia.org/wiki/Ronaldo_(Brazilian_footballer)" target="_blank">Ronaldo</a></td>
            <td class="auto-style4"><a href="https://en.wikipedia.org/wiki/Hong_Myung-bo" target="_blank">Hong Myung-bo</a></td>
        </tr>
                <tr>
            <td class="auto-style19">2006 FIFA World Cup <img alt="" class="auto-style11" src="images/Flag/Flag_of_Germany.png" /> Germany</td>
            <td class="auto-style15"><a href="https://en.wikipedia.org/wiki/Zinedine_Zidane" target="_blank">Zinedine Zidane</a></td>
            <td class="auto-style15"><a href="https://en.wikipedia.org/wiki/Fabio_Cannavaro" target="_blank">Fabio Cannavaro</a></td>
            <td class="auto-style4"><a href="https://en.wikipedia.org/wiki/Andrea_Pirlo" target="_blank">Andrea Pirlo</a></td>
        </tr>
                <tr>
            <td class="auto-style19">2010 FIFA World Cup <img alt="" class="auto-style11" src="images/Flag/Flag_of_South_Africa.png" /> South Africa</td>
            <td class="auto-style15"><a href="https://en.wikipedia.org/wiki/Diego_Forl%C3%A1n" target="_blank">Diego Forlán</a></td>
            <td class="auto-style15"><a href="https://en.wikipedia.org/wiki/Wesley_Sneijder" target="_blank">Wesley Sneijder</a></td>
            <td class="auto-style4"><a href="https://en.wikipedia.org/wiki/David_Villa" target="_blank">David Villa</a></td>
        </tr>
                <tr>
            <td class="auto-style19">2014 FIFA World Cup <img alt="" class="auto-style11" src="images/Flag/Flag_of_Brazil.png" /> Brazil</td>
            <td class="auto-style15"><a href="https://en.wikipedia.org/wiki/Lionel_Messi" target="_blank">Lionel Messi</a></td>
            <td class="auto-style15"><a href="https://en.wikipedia.org/wiki/Thomas_M%C3%BCller" target="_blank">Thomas Müller</a></td>
            <td class="auto-style4"><a href="https://en.wikipedia.org/wiki/Arjen_Robben" target="_blank">Arjen Robben</a></td>
        </tr>
                <tr>
            <td class="auto-style19">2018 FIFA World Cup <img alt="" class="auto-style11" src="images/Flag/Flag_of_Russia.png" /> Russia</td>
            <td class="auto-style20"><a href="https://en.wikipedia.org/wiki/Luka_Modri%C4%87" target="_blank">Luka Modrić</a></td>
            <td class="auto-style20"><a href="https://en.wikipedia.org/wiki/Eden_Hazard" target="_blank">Eden Hazard</a></td>
            <td class="auto-style21"><a href="https://en.wikipedia.org/wiki/Antoine_Griezmann" target="_blank">Antoine Griezmann</a></td>
        </tr>
                <tr>
            <td class="auto-style19">2022 FIFA World Cup <img alt="" class="auto-style11" src="images/Flag/Flag-of-Qatar.png" /> Qatar</td>
            <td class="auto-style15"><a href="https://en.wikipedia.org/wiki/Lionel_Messi" target="_blank">Lionel Messi</a></td>
            <td class="auto-style15"><a href="https://en.wikipedia.org/wiki/Kylian_Mbapp%C3%A9" target="_blank">Kylian Mbappé</a></td>
            <td class="auto-style4"><a href="https://en.wikipedia.org/wiki/Luka_Modri%C4%87" target="_blank">Luka Modrić2</a></td>
        </tr>
    </table>
</asp:Content>