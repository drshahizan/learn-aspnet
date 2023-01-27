<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ContentEdit.aspx.cs" Inherits="WorldCupOnTheGo.ContentEdit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="py-5 container">
        <div class="card-body">
            <h4>Edit Content</h4>
            <div class="form-outline mb-4">
                <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
            </div>
            <div class="form-group">
                <label for="exampleFormControlInput1">Title</label><span style="color:red">*</span>
                <asp:TextBox ID="txtTitle" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="reqEditTitle" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtTitle" Text="*Required field" EnableClientScript="False" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group">
                <label for="exampleFormControlTextarea1">Content</label><span style="color:red">*</span>
                <asp:TextBox ID="txtContent" CssClass="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="reqEditContent" runat="server" ErrorMessage="RequiredFieldValidator" Text="*Required field" EnableClientScript="False" ControlToValidate="txtContent" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group">
                <label for="exampleFormControlTextarea1">Uploaded Image</label>
                <asp:ImageMap CssClass="form-control" ID="imCurrentImage" runat="server"></asp:ImageMap>
            </div>
            <div class="form-group">
                <label for="exampleFormControlTextarea1">Image</label>                
                <asp:FileUpload ID="fuImage" CssClass="form-control" runat="server" accept=".png,.jpg,.jpeg,.gif" />
            </div> 
            <div class="mb-2">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-success my-2" OnClick="btnSubmit_Click" />
                <asp:Button ID="btnContentList" runat="server" CssClass="btn btn-primary my-2" Text="Go to content list" OnClick="btnContentList_Click" />
            </div>
        </div>
    </section>
</asp:Content>
