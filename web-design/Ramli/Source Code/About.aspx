<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Assignment_4.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 330px;
            height: 221px;
        }
        .auto-style2 {
            width: 330px;
            height: 221px;
            
        }
        .auto-style3 {
            width: 330px;
            height: 221px;
        }
        .auto-style4 {
            width: 330px;
            height: 221px;
        }
        .auto-style5 {
            width: 330px;
            height: 221px;
        }
        .mainimg {
            float:right;
            border: 1px dotted black;
            margin: 0px 0px 15px 20px;
        }
        .div1{
            text-align:left;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Main1" runat="server">
      <div class="container body-content">
         <div class="container">
            <div class="row">  
                <div class="col-6"><h1>Introduction of Batik</h1>
                <p>Malaysian batik is batik textile art in Malaysia, especially on the east coast of Malaysia (Kelantan, Terengganu and Pahang). The most popular motifs are leaves and flowers. Malaysian batik depicting humans or animals are rare because Islam norms forbid animal images as decoration. However, the butterfly theme is a common exception. Malaysian batik is also famous for its geometrical designs, such as spirals. The method of Malaysian batik making is also quite different from those of Indonesian Javanese batik, the pattern is larger and simpler, it seldom or never uses canting to create intricate patterns and relies heavily on brush painting method to apply colours on fabrics. The colours also tend to be lighter and more vibrant than the deep coloured Javanese batik.</p>           
              </div>
                    <div class="col-6"> 
                    <br />
                    <img class="mainimg" src="Images/aboutimage3.jpg" style="width:544px; height:400px;margin-left:-100px;"/>
                </div>
                </div>
            </div>
          </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="Main2" runat="server">
    <center><h2>Types of Batik</h2></center>
    <hr />
    <div class="container body-content">
         <div class="container">
            <div class="row">  
                
                <div class="col-2" ><a href="https://en.wikipedia.org/wiki/Malaysian_batik">Malay Batik</a><br />
                    <img class="auto-style1" src="Images/malaysianbatik.jpg" /> </div>
                
                <div class="col-2"><a href="https://www.chinahighlights.com/travelguide/culture/batik.htm">China Batik</a><br />
                    <img class="auto-style2" src="Images/chinesebatik.jpg" /></div>
                
                <div class="col-2"><a href="https://www.utsavpedia.com/motifs-embroideries/batik-a-worldwide-art/">Indian Batik</a><br />
                    <img class="auto-style3" src="Images/indianbatik.jpg" /></div>
               
                <div class="col-2"><a href="http://www.infobatik.com/en/indonesian-peranakan-batik/">Peranakan Batik</a><br />
                    <img class="auto-style4" src="Images/peranakanbatik.jpg" /></div>
               
                <div class="col-2"><a href="https://www.prestigeonline.com/my/style/fashion/malaysian-modern-batik-brands/">Modern Malaysia Batik</a><br />
                    <img class="auto-style5" src="Images/modernbatik.jpg" /></div>
                </div>
            </div>
          </div>
</asp:Content>