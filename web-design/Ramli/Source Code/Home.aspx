<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Assignment_4.Home" Theme="Tema" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="Summary" runat="server">
     <div class="container body-content">
          <div class="container">         
                </div>       
         </div>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">
    <hr />
    <div class="container body-content">
                 <div class="container">
            <div class="row">  
                <div class="col-4"><h2 style="font-weight: bolder">About Batik</h2>    
                    <img src="Images/aboutimage1_t.jpg"/><br /><br />
               <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;According to The Batik Guild, Batik is an ancient art form developed from Asia to the islands of the Malay Archipelago and west to the Middle East along the caravan trading route. There is evidence that early examples of batik have been found in the Far East, Middle East, Central Asia and India from over 2,000 years ago. Nowadays, Batik has been viewed as a cultural icon in countries like Malaysia and Indonesia. <br />
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Batik is a technique of wax-resist dyeing that is usually applied on fabric surfaces (such as cotton, silk, linen etc.). In other words, it is a repeated process of waxing dyeing and boiling where artists would utilise wax as a colour blocker in the colouring process, where it will be used to cover every part of the fabric that does not want to be stained with colours. This technique can also be used on paper, wood, leather and 
                    even a ceramic surface. <br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;This technique originated from the island of Java, Indonesia and influenced the batik craft in the Malay peninsula during the trade relations between the Melayu Kingdom in Jambi and Javanese coastal cities since the 13th century. </p>

                </div>
                <div class="col-4"><h2 style="font-weight: bolder">Costumes</h2>
                    <img src="Images/costumeimage1_t.jpg" /><br /><br />
                    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Batik can be seen mostly on Batik Kurung and Batik shirts. Peranakan makes Baju Kebaya using batik. <br />
                     Nowadays, the batik as a costume material has been revolutionised and evolved into current fashion trends that cater to the new generation. The new generation has found a new appreciation in the art of batik as it brings them closer to their culture and country. 
                        <br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;With that said, batik CheongSam, batik Saree, batik SamFu or even batik dress, batik blouse, batik culottes,etc. are among the most popular designs that can be seen at the formal or informal events, from casual gatherings to festive celebrations. From bright to dark tone, from one-piece dress to two-piece suits, and with a variety of batik prints, batik has now become a cultural icon of Malaysia, for Malaysians. 
                    </p>
                </div>
                
                <div class="col-4"><center><br /><br /><br /><br /><br /><br /><br />
                    <h2 style="font-weight: bold; font-size: 39px;">Subscribe to Our Newsletter Today!</h2></center><br /><br />
                    <p style="font-size: 15px; color: #C0C0C0">Get the latest updates, news delivered right to your Inbox</p>
                   <br />
                    <asp:TextBox ID="txtB1" runat="server" Height="38px" Width="358px" placeholder="Enter your email"></asp:TextBox>
                    <br /><br />
                   <center><asp:Button ID="Button1" runat="server" SkinID="RidgeTB" Height="40px" Width="105px"/></center></div>
            </div>
        </div>
    </div>
    </asp:Content>