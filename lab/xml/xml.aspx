<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="xml.aspx.cs" Inherits="B03_xml_xml" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" Runat="Server">
    <h3>Latihan 4.28 : XML</h3>
    <asp:Xml ID="xml1" dokumenSource="~/B04/xml/people.xml"
            TransformSource="~/B04/xml/peopletable.xsl" runat="server" />
</asp:Content>

