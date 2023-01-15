<%@ Page Title="Manage News" Language="C#" MasterPageFile="~/User/Site1.Master" AutoEventWireup="true" CodeBehind="frmnews.aspx.cs" Inherits="Project_WorldCup.User.frmnews" Theme="Theme2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .auto-style1 {
            width: 210px;
            height: 25px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
  <h3>Manage News Football</h3>
   
    <p>
        <asp:Label ID="lblDate" runat="server" Text="Date"></asp:Label>
    </p>
    <p>
        <input id="Text1" type="text" /></p>
    <p>
        <asp:Label ID="lblNews" runat="server" Text="News"></asp:Label>
    </p>
    <p>
        <textarea id="TextArea1" cols="20" name="S1" rows="2"></textarea></p>
    <p>
        <asp:Button ID="btnSave" CssClass="button" runat="server" Text="Save" />
    </p>
    <p>&nbsp;</p>
  

</div>
</asp:Content>
