<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ContentAdd.aspx.cs" Inherits="WorldCupOnTheGo.ContentAdd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="py-5 container">
        <div class="row py-lg-5">
            <div class="col-lg-6 col-md-8 mx-auto">
                <h1 class="fw-light">Create new content</h1>
                <div class="form-group">                    
                    <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
                </div>
                <div class="form-group">                    
                    <label for="exampleFormControlInput1">Title</label>
                    <asp:TextBox ID="txTitle" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlTextarea1">Content</label>
                    <asp:TextBox ID="txtContent" CssClass="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
                </div>                                
                <div class="form-group">
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                </div>
            </div>
        </div>
    </section>

</asp:Content>
