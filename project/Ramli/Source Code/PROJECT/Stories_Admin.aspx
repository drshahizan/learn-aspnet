<%@ Page Title="Page Admin - Stories" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Awards_Admin.aspx.vb" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style> 
        card-body {
            border-collapse:separate;
            padding:10px;
            -moz-border-radius:6px;
            -webkit-border-radius:6px;
            border-radius:6px;

        }
    </style>
    <section class="py-5 container">
        <div class="card-body">
            <h4>&nbsp;</h4>
            <h4>Add New Content</h4>
            <div class="form-outline mb-4">
                <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
            </div>
            <div class="form-group">
                <label for="exampleFormControlInput1">Title</label><span style="color: red">*</span>
                <asp:TextBox ID="txtTitle" CssClass="form-control" runat="server" Width="1189px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="reqTitle" runat="server" ErrorMessage="Required" ControlToValidate="txtTitle" Text="*Required Field" ForeColor="Red" EnableClientScript="False"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group">
                <label for="exampleFormControlTextarea1">Content</label><span style="color: red">*</span>
                <asp:TextBox ID="txtContent" CssClass="form-control" runat="server" TextMode="MultiLine" Height="62px" Width="1191px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="reqContent" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtContent" Text="*Required field" ForeColor="Red" EnableClientScript="False"></asp:RequiredFieldValidator>
             </div>
            <div class="form-group">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" />
                <asp:Button ID="btnCheck" runat="server" Text="Check Content" />
            </div>
        </div>
    </section>

    <section class="py-4 container">
        <div class="card-body">
            <h4>&nbsp;</h4>
            <h4>Delete Content</h4>
            <div class="form-outline mb-4">
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            </div>
            <div class="form-group">
                <label for="exampleFormControlInput1">Title</label><span style="color: red">*</span>
                <br />
                <asp:DropDownList ID="DropDownList1" runat="server" Height="40px" Width="1067px">
                </asp:DropDownList>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required" ControlToValidate="txtTitle" Text="*Required Field" ForeColor="Red" EnableClientScript="False"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group">
                <label for="exampleFormControlTextarea1">Content details</label><span style="color: red">*</span>
                <br />
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Stories.aspx">Check Content</asp:HyperLink>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtContent" Text="*Required field" ForeColor="Red" EnableClientScript="False"></asp:RequiredFieldValidator>
             </div>
            <div class="form-group">
                <asp:Button ID="btndelete" runat="server" Text="Delete" />
            </div>
        </div>
    </section>

</asp:Content>