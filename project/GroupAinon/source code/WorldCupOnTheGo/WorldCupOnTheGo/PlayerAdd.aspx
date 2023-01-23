<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="PlayerAdd.aspx.cs" Inherits="WorldCupOnTheGo.AddPlayer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section style="background-color: #eee;">
        <div class="container py-5">
            <div class="row">
                <div class="col-lg-4">
                    <div class="card mb-4">
                        <div class="card-body text-center">
                            <p class="text-muted mb-1"><b>Team Name</b></p>
                            <p class="text-muted mb-4">
                                <asp:Label ID="lblTeamName" runat="server" Text=""></asp:Label>
                            </p>
                        </div>
                    </div>
                    <div class="card mb-4 mb-lg-0">
                        <div class="card-body">
                            <div class="form-outline mb-4">
                                <label class="form-label" for="form1Example1">Name</label>
                                <input type="text" id="form1Example1" class="form-control" />
                            </div>

                            <div class="form-outline mb-4">
                                <label class="form-label" for="form1Example2">Jercy No</label>
                                <input type="text" id="form1Example2" class="form-control" />
                            </div>
                            <div class="d-flex justify-content-center mb-2">
                                <button type="button" class="btn btn-primary">Add Player</button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-8">
                    <div class="card mb-4">
                        <div class="card-body">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th scope="col">#</th>
                                        <th scope="col">Player Name</th>
                                        <th scope="col">Jercy No</th>
                                        <th scope="col">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th scope="row">1</th>
                                        <td>Mark</td>
                                        <td>Otto</td>
                                        <td>@mdo</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">2</th>
                                        <td>Jacob</td>
                                        <td>Thornton</td>
                                        <td>@fat</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">3</th>
                                        <td colspan="2">Larry the Bird</td>
                                        <td>@twitter</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
