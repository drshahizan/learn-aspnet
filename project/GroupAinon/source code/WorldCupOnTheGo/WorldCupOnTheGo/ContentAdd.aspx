<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ContentAdd.aspx.cs" Inherits="WorldCupOnTheGo.ContentAdd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="py-5 container">
        <div class="card-body">
            <h4>Add New Content</h4>
            <div class="form-outline mb-4">
                <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
            </div>
            <div class="form-group">
                <label for="exampleFormControlInput1">Title</label><span style="color: red">*</span>
                <asp:TextBox ID="txtTitle" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="reqTitle" runat="server" ErrorMessage="Required" ControlToValidate="txtTitle" Text="*Required Field" ForeColor="Red" EnableClientScript="False"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group">
                <label for="exampleFormControlTextarea1">Content</label><span style="color: red">*</span>
                <asp:TextBox ID="txtContent" CssClass="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="reqContent" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtContent" Text="*Required field" ForeColor="Red" EnableClientScript="False"></asp:RequiredFieldValidator>
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
