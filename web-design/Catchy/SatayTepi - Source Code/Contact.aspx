<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="SatayTepi.Contact" EnableTheming="True" Theme="Skin1" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h3 class="pb-1">SatayTepi Sdn Bhd</h3>
    <address>
        5 Blok Cmegan Phileo Promenade 189 Jln Tun Razak Mala<br />
        50400  Wilayah Persekutuan  Kuala Lumpur<br />
       <br />
        <a href="tel:032166-7039">+60321667039</a>
           </address>

    <address>
        <strong>Inquiry:</strong>   <a href="mailto:Support@example.com">Inquiry@sataytepi.com</a><br />
        <strong>Marketing:</strong> <a href="mailto:Marketing@example.com">Marketing@sataytepi.com</a>
    </address>
    <div class="border py-5 px-3">
        <h2 class="mb-5">Send us a message</h2>
        <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" SkinID="tbSingleLine"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lblMessage" runat="server" Text="Message" ></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" SkinID="tbMultiLine"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Button" SkinID="Button"/>
    </div>
</asp:Content>
