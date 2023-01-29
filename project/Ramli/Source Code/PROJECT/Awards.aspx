<%@ Page Title="Awards" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Awards.aspx.vb" %>

<script runat="server">

    Protected Sub Page_Load(sender As Object, e As EventArgs)

    End Sub
</script>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <h2><%: Title %></h2>
    <style>
        .grid1 {
            margin-left: auto;
            margin-right: auto;
        }
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
        .auto-style22 {
            width: 652px;
            height: 33px;
        }
        </style>
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
            <td class="auto-style22">1930 FIFA World Cup
                <img alt="" class="auto-style11" src="images/Flag/Flag_of_Uruguay.png" /> Uruguay</td>
            <td class="auto-style17"><a href="https://en.wikipedia.org/wiki/Jos%C3%A9_Nasazzi" target="_blank">José Nasazzi</a></td>
            <td class="auto-style17"><a href="https://en.wikipedia.org/wiki/Guillermo_St%C3%A1bile" target="_blank">Guillermo Stábile</a></td>
            <td class="auto-style18"><a href="https://en.wikipedia.org/wiki/Jos%C3%A9_Leandro_Andrade" target="_blank">José Leandro Andrade</a></td>
        </tr>
         <tr>
            <td class="auto-style22">1934 FIFA World Cup
                <img alt="" class="auto-style11" src="images/Flag/Flag_of_Italy.png" /> Italy</td>
            <td class="auto-style17"><a href="https://en.wikipedia.org/wiki/Giuseppe_Meazza" target="_blank">Giuseppe Meazza</a></td>
            <td class="auto-style17"><a href="https://en.wikipedia.org/wiki/Matthias_Sindelar" target="_blank">Matthias Sindelar</a></td>
            <td class="auto-style18"><a href="https://en.wikipedia.org/wiki/Old%C5%99ich_Nejedl%C3%BD" target="_blank">Oldřich Nejedlý</a></td>
        </tr>
         <tr>
            <td class="auto-style22">1938 FIFA World Cup
                <img alt="" class="auto-style11" src="images/Flag/Flag_of_France.png" /> France</td>
            <td class="auto-style17"><a href="https://en.wikipedia.org/wiki/Le%C3%B4nidas" target="_blank">Leônidas</a></td>
            <td class="auto-style17"><a href="https://en.wikipedia.org/wiki/Silvio_Piola" target="_blank">Silvio Piola</a></td>
            <td class="auto-style18"><a href="https://en.wikipedia.org/wiki/Gy%C3%B6rgy_S%C3%A1rosi" target="_blank">György Sárosi</a></td>
        </tr>
         <tr>
            <td class="auto-style22">1950 FIFA World Cup
                <img alt="" class="auto-style11" src="images/Flag/Flag_of_Brazil.png" /> Brazil</td>
            <td class="auto-style17"><a href="https://en.wikipedia.org/wiki/Zizinho" target="_blank">Zizinho</a></td>
            <td class="auto-style17"><a href="https://en.wikipedia.org/wiki/Juan_Alberto_Schiaffino" target="_blank">Juan Alberto Schiaffino</a></td>
            <td class="auto-style18">Did not select</td>
        </tr>
         <tr>
            <td class="auto-style22">1954 FIFA World Cup
                <img alt="" class="auto-style11" src="images/Flag/Flag_of_Switzerland.png" /> Switzerland</td>
            <td class="auto-style17"><a href="https://en.wikipedia.org/wiki/Ferenc_Pusk%C3%A1s" target="_blank">Ferenc Puskás</a></td>
            <td class="auto-style17"><a href="https://en.wikipedia.org/wiki/S%C3%A1ndor_Kocsis" target="_blank">Sándor Kocsis</a></td>
            <td class="auto-style18"><a href="https://en.wikipedia.org/wiki/Fritz_Walter" target="_blank">Fritz Walter</a></td>
        </tr>
         <tr>
            <td class="auto-style22">1958 FIFA World Cup
                <img alt="" class="auto-style11" src="images/Flag/Flag_of_Sweden.png" /> Sweden</td>
            <td class="auto-style17"><a href="https://en.wikipedia.org/wiki/Didi_(footballer,_born_1928)" target="_blank">Didi</a></td>
            <td class="auto-style17"><a href="https://en.wikipedia.org/wiki/Pel%C3%A9" target="_blank">Pelé</a></td>
            <td class="auto-style18"><a href="https://en.wikipedia.org/wiki/Just_Fontaine" target="_blank">Just Fontaine</a></td>
        </tr>
         <tr>
            <td class="auto-style22">1962 FIFA World Cup
                <img alt="" class="auto-style11" src="images/Flag/Flag_of_Chile.png" /> Chile</td>
            <td class="auto-style17"><a href="https://en.wikipedia.org/wiki/Garrincha" target="_blank">Garrincha</a></td>
            <td class="auto-style17"><a href="https://en.wikipedia.org/wiki/Josef_Masopust" target="_blank">Josef Masopust</a></td>
            <td class="auto-style18"><a href="https://en.wikipedia.org/wiki/Leonel_S%C3%A1nchez" target="_blank">Leonel Sánchez</a></td>
        </tr>
         <tr>
            <td class="auto-style22">1966 FIFA World Cup
                <img alt="" class="auto-style11" src="images/Flag/Flag_of_England.png" /> England</td>
            <td class="auto-style17"><a href="https://en.wikipedia.org/wiki/Bobby_Charlton" target="_blank">Bobby Charlton</a></td>
            <td class="auto-style17"><a href="https://en.wikipedia.org/wiki/Bobby_Moore" target="_blank">Bobby Moore</a></td>
            <td class="auto-style18">Did not select</td>
        </tr>
         <tr>
            <td class="auto-style22">1970 FIFA World Cup
                <img alt="" class="auto-style11" src="images/Flag/Flag_of_Mexico.png" /> Mexico</td>
            <td class="auto-style17"><a href="https://en.wikipedia.org/wiki/Pel%C3%A9" target="_blank">Pelé</a></td>
            <td class="auto-style17"><a href="https://en.wikipedia.org/wiki/G%C3%A9rson" target="_blank">Gérson</a></td>
            <td class="auto-style18"><a href="https://en.wikipedia.org/wiki/Gerd_M%C3%BCller" target="_blank">Gerd Müller</a></td>
        </tr>
         <tr>
            <td class="auto-style22">1974 FIFA World Cup
                <img alt="" class="auto-style11" src="images/Flag/Flag_of_Germany.png" /> West Germany</td>
            <td class="auto-style17"><a href="https://en.wikipedia.org/wiki/Johan_Cruyff" target="_blank">Johan Cruyff</a></td>
            <td class="auto-style17"><a href="https://en.wikipedia.org/wiki/Franz_Beckenbauer" target="_blank">Franz Beckenbauer</a></td>
            <td class="auto-style18"><a href="https://en.wikipedia.org/wiki/Kazimierz_Deyna" target="_blank">Kazimierz Deyna</a></td>
        </tr>
         <tr>
            <td class="auto-style22">1978 FIFA World Cup
                <img alt="" class="auto-style11" src="images/Flag/Flag_of_Argentina.png" /> Argentina</td>
            <td class="auto-style17"><a href="https://en.wikipedia.org/wiki/Mario_Kempes" target="_blank">Mario Kempes</a></td>
            <td class="auto-style17"><a href="https://en.wikipedia.org/wiki/Paolo_Rossi" target="_blank">Paolo Rossi</a></td>
            <td class="auto-style18">Did not select</td>
        </tr>
        <tr>
            <td class="auto-style22">1982 FIFA World Cup
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
            <td class="auto-style19">1994 FIFA World Cup <img alt="" class="auto-style11" src="images/Flag/Flag_of_USA.png" /> United States</td>
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
            <td class="auto-style19">2002 FIFA World Cup <img alt="" class="auto-style11" src="images/Flag/Flag_of_Korea.png" />/
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
            <td class="auto-style19">2022 FIFA World Cup <img alt="" class="auto-style11" src="images/Flag/Flag_of_Qatar.png" /> Qatar</td>
            <td class="auto-style15"><a href="https://en.wikipedia.org/wiki/Lionel_Messi" target="_blank">Lionel Messi</a></td>
            <td class="auto-style15"><a href="https://en.wikipedia.org/wiki/Kylian_Mbapp%C3%A9" target="_blank">Kylian Mbappé</a></td>
            <td class="auto-style4"><a href="https://en.wikipedia.org/wiki/Luka_Modri%C4%87" target="_blank">Luka Modrić2</a></td>
        </tr>
    </table>
    <br /> <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
        SelectCommand="SELECT TopScorers.year_id, TopScorers.name, Countries.Photo_Path, Countries.country_name,TopScorers.score
        FROM TopScorers
        INNER JOIN Countries on TopScorers.country_id = Countries.country_id ORDER BY TopScorers.year_id">
        </asp:SqlDataSource>
    <h3>Top Scorers</h3>
    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
        <AlternatingItemTemplate>
            <tr style="background-color: #FFF8DC;">
                <td style="align-content:center; text-align: center;">
                    <asp:Label ID="year_idLabel" runat="server" Text='<%# Eval("year_id") %>' />
                </td>
                <td>
                    <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                </td>
                <td style="text-align:center;">
                    <asp:Image ID="Photo_PathLabel" runat="server" Height="16px" Width="26px" ImageUrl='<%# Eval("Photo_Path") %>' />
                </td>
                <td>
                    <asp:Label ID="country_nameLabel" runat="server" Text='<%# Eval("country_name") %>' />
                </td>
                <td style="align-content:center; text-align: center;">
                    <asp:Label ID="scoreLabel" runat="server" Text='<%# Eval("score") %>' />
                </td>
            </tr>
        </AlternatingItemTemplate>
        <ItemTemplate>
            <tr style="background-color: #DCDCDC; color: #000000;">
                <td style="align-content:center; text-align: center;">
                    <asp:Label ID="year_idLabel" runat="server" Text='<%# Eval("year_id") %>' />
                </td>
                <td>
                    <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                </td>
                <td style="text-align:center;">
                    <asp:Image ID="Photo_PathLabel" runat="server" Height="16px" Width="26px" ImageUrl='<%# Eval("Photo_Path") %>' />
                </td>
                <td>
                    <asp:Label ID="country_nameLabel" runat="server" Text='<%# Eval("country_name") %>' />
                </td>
                <td style="align-content:center; text-align: center;">
                    <asp:Label ID="scoreLabel" runat="server" Text='<%# Eval("score") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="itemPlaceholderContainer" runat="server"
                            style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px; font-family: Verdana, Arial, Helvetica, sans-serif; width:700px; height:600px;">
                            <tr runat="server" style="background-color: #DCDCDC; color: #000000;">
                                <th runat="server" style="align-content:center; text-align: center;">Year</th>
                                <th runat="server" style="text-align: left;">Name</th>
                                <th runat="server" style="text-align: right;"></th>
                                <th runat="server" style="text-align: left;">Country</th>
                                <th runat="server" style="align-content:center; text-align: center;">Score</th>
                            </tr>
                            <tr id="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server"
                        style=" text-align: center; background-color: #CCCCCC; font-family: Verdana, Arial, Helvetica, sans-serif; color: #000000;">
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
    </asp:ListView>
    <br /> <br />
    <asp:SqlDataSource ID="SqlDataSource2" runat="server"
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
        SelectCommand="SELECT [year_id], [champion_country], [runner_up_country], [third_place_country], [goals] FROM [winners] ORDER BY [year_id]">
        </asp:SqlDataSource>
    <h3>Winner</h3>
    <asp:ListView ID="ListView2" runat="server" DataSourceID="SqlDataSource2">
        <AlternatingItemTemplate>
            <tr style="background-color: #FFF8DC; ">
                <td>
                    <asp:Label ID="year_idLabel" runat="server" Text='<%# Eval("year_id") %>' />
                </td>
                <td>
                    <asp:Label ID="champion_countryLabel" runat="server" Text='<%# Eval("champion_country") %>' />
                </td>
                <td>
                    <asp:Label ID="runner_up_countryLabel" runat="server" Text='<%# Eval("runner_up_country") %>' />
                </td>
                <td>
                    <asp:Label ID="third_place_countryLabel" runat="server" Text='<%# Eval("third_place_country") %>' />
                </td>
                <td>
                    <asp:Label ID="goalsLabel" runat="server" Text='<%# Eval("goals") %>' />
                </td>
            </tr>
        </AlternatingItemTemplate>
        <ItemTemplate>
            <tr style="background-color: #DCDCDC; color: #000000;">
                <td>
                    <asp:Label ID="year_idLabel" runat="server" Text='<%# Eval("year_id") %>' />
                </td>
                <td>
                    <asp:Label ID="champion_countryLabel" runat="server" Text='<%# Eval("champion_country") %>' />
                </td>
                <td>
                    <asp:Label ID="runner_up_countryLabel" runat="server" Text='<%# Eval("runner_up_country") %>' />
                </td>
                <td>
                    <asp:Label ID="third_place_countryLabel" runat="server" Text='<%# Eval("third_place_country") %>' />
                </td>
                <td>
                    <asp:Label ID="goalsLabel" runat="server" Text='<%# Eval("goals") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="itemPlaceholderContainer" runat="server"
                            style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px; font-family: Verdana, Arial, Helvetica, sans-serif; width:900px; height:600px; align-content:center; text-align:center;">
                            <tr runat="server" style="background-color: #DCDCDC; color: #000000;">
                                <th runat="server" style="align-content:center; text-align:center;">Year</th>
                                <th runat="server" style="align-content:center; text-align:center;">Champion Country</th>
                                <th runat="server" style="align-content:center; text-align:center;">Runner Up Country</th>
                                <th runat="server" style="align-content:center; text-align:center;">Third Place Country</th>
                                <th runat="server" style="align-content:center; text-align:center;">Goals</th>
                            </tr>
                            <tr id="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server"
                        style="text-align: center; background-color: #CCCCCC; font-family: Verdana, Arial, Helvetica, sans-serif; color: #000000;">
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
    </asp:ListView>
    <br />
</asp:Content>