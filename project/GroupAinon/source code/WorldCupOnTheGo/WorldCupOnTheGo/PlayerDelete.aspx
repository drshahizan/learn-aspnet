<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="PlayerDelete.aspx.cs" Inherits="WorldCupOnTheGo.PlayerDelete" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section style="background-color: #eee;">
        <div class="container py-5">
            <div class="row">
                <div class="card mb-4 mb-lg-0">
                    <div class="card-body">
                        <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
                        <div class="form-outline mb-4">
                            <label class="form-label" for="form1Example1">Name</label>
                            <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>

                        <div class="form-outline mb-4">
                            <label class="form-label" for="form1Example2">Jercy No</label>
                            <asp:TextBox ID="txtJercyNo" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                        </div>
                        <div class="d-flex mb-2">
                            <asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-danger" OnClick="btnSubmit_Click" Text="Delete Player" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

</asp:Content>
