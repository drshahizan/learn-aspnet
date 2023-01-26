<%@ Page Title="Group - FIFA WORLD CUP QATAR" Language="C#" MasterPageFile="~/Masterpage/Site1.Master" AutoEventWireup="true" CodeBehind="Group.aspx.cs" Inherits="Project_WorldCup.Group" Theme="Theme1"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:Panel ID="Panel1" runat="server" GroupingText="Groups FIFA">
        <div class="accordion" id="accordionPanelsStayOpenExample">
  <div class="accordion-item">
    <h2 class="accordion-header" id="panelsStayOpen-headingOne">
      <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseOne" aria-expanded="true" aria-controls="panelsStayOpen-collapseOne">
        GROUP A
      </button>
    </h2>
    <div id="panelsStayOpen-collapseOne" class="accordion-collapse collapse show" aria-labelledby="panelsStayOpen-headingOne">
      <div class="accordion-body">
          <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="groupDSA" GridLines="Horizontal" HorizontalAlign="Center" Width="50%">
              <AlternatingRowStyle BackColor="#F7F7F7" />
              <Columns>
                  <asp:BoundField DataField="teamGroup" HeaderText="Team Group" SortExpression="teamGroup" >
                  </asp:BoundField>
                  <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
              </Columns>
              <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
              <HeaderStyle BackColor="#6c51d7" Font-Bold="True" ForeColor="#F7F7F7" HorizontalAlign="Center" />
              <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
              <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Center" />
              <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
              <SortedAscendingCellStyle BackColor="#F4F4FD" />
              <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
              <SortedDescendingCellStyle BackColor="#D8D8F0" />
              <SortedDescendingHeaderStyle BackColor="#3E3277" />
          </asp:GridView>
          <asp:SqlDataSource ID="groupDSA" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [teamGroup], [Country] FROM [teamGroup] WHERE ([teamGroup] = @teamGroup)">
              <SelectParameters>
                  <asp:Parameter DefaultValue="Group A" Name="teamGroup" Type="String" />
              </SelectParameters>
          </asp:SqlDataSource>
      </div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header" id="panelsStayOpen-headingTwo">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseTwo" aria-expanded="false" aria-controls="panelsStayOpen-collapseTwo">
      GROUP B
      </button>
    </h2>
    <div id="panelsStayOpen-collapseTwo" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingTwo">
      <div class="accordion-body">
          <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="groupDS" GridLines="Horizontal" HorizontalAlign="Center" Width="50%">
              <AlternatingRowStyle BackColor="#F7F7F7" />
              <Columns>
                  <asp:BoundField DataField="teamGroup" HeaderText="Team Group" SortExpression="teamGroup" HeaderStyle-HorizontalAlign="Center" >
                  </asp:BoundField>
                  <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
              </Columns>
              <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
              <HeaderStyle BackColor="#6c51d7" Font-Bold="True" ForeColor="#F7F7F7" HorizontalAlign="Center" />
              <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
              <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Center" />
              <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
              <SortedAscendingCellStyle BackColor="#F4F4FD" />
              <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
              <SortedDescendingCellStyle BackColor="#D8D8F0" />
              <SortedDescendingHeaderStyle BackColor="#3E3277" />
          </asp:GridView>
          <asp:SqlDataSource ID="groupDS" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [teamGroup], [Country] FROM [teamGroup] WHERE ([teamGroup] = @teamGroup)">
              <SelectParameters>
                  <asp:Parameter DefaultValue="Group B" Name="teamGroup" Type="String" />
              </SelectParameters>
          </asp:SqlDataSource>
      </div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header" id="panelsStayOpen-headingThree">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseThree" aria-expanded="false" aria-controls="panelsStayOpen-collapseThree">
        GROUP C
      </button>
    </h2>
    <div id="panelsStayOpen-collapseThree" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingThree">
      <div class="accordion-body">
          <asp:GridView ID="GridView3" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" AutoGenerateColumns="False" DataSourceID="groupDSC" HorizontalAlign="Center" Width="50%">
             <AlternatingRowStyle BackColor="#F7F7F7" />
              <Columns>
                  <asp:BoundField DataField="teamGroup" HeaderText="Team Group" SortExpression="teamGroup" HeaderStyle-HorizontalAlign="Center" >
                  </asp:BoundField>
                  <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
              </Columns>
              <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
              <HeaderStyle BackColor="#6c51d7" Font-Bold="True" ForeColor="#F7F7F7" HorizontalAlign="Center" />
              <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
              <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Center" />
              <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
              <SortedAscendingCellStyle BackColor="#F4F4FD" />
              <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
              <SortedDescendingCellStyle BackColor="#D8D8F0" />
              <SortedDescendingHeaderStyle BackColor="#3E3277" />
          </asp:GridView>
          <asp:SqlDataSource ID="groupDSC" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [teamGroup], [Country] FROM [teamGroup] WHERE ([teamGroup] = @teamGroup)">
              <SelectParameters>
                  <asp:Parameter DefaultValue="Group C" Name="teamGroup" Type="String" />
              </SelectParameters>
          </asp:SqlDataSource>
    </div>
  </div>
            <div class="accordion-item">
    <h2 class="accordion-header" id="panelsStayOpen-headingFour">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseFour" aria-expanded="false" aria-controls="panelsStayOpen-collapseThree">
        GROUP D
      </button>
    </h2>
    <div id="panelsStayOpen-collapseFour" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingFour">
      <div class="accordion-body">
          <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="groupDSD" GridLines="Horizontal" HorizontalAlign="Center" Width="50%">
               <AlternatingRowStyle BackColor="#F7F7F7" />
              <Columns>
                  <asp:BoundField DataField="teamGroup" HeaderText="Team Group" SortExpression="teamGroup" HeaderStyle-HorizontalAlign="Center" >
                  </asp:BoundField>
                  <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
              </Columns>
              <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
              <HeaderStyle BackColor="#6c51d7" Font-Bold="True" ForeColor="#F7F7F7" HorizontalAlign="Center" />
              <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
              <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Center" />
              <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
              <SortedAscendingCellStyle BackColor="#F4F4FD" />
              <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
              <SortedDescendingCellStyle BackColor="#D8D8F0" />
              <SortedDescendingHeaderStyle BackColor="#3E3277" />
          </asp:GridView>
          <asp:SqlDataSource ID="groupDSD" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Country], [teamGroup] FROM [teamGroup] WHERE ([teamGroup] = @teamGroup)">
              <SelectParameters>
                  <asp:Parameter DefaultValue="Group D" Name="teamGroup" Type="String" />
              </SelectParameters>
          </asp:SqlDataSource>
      </div>
    </div>
  </div>
            <div class="accordion-item">
    <h2 class="accordion-header" id="panelsStayOpen-headingFive">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseFive" aria-expanded="false" aria-controls="panelsStayOpen-collapseThree">
        GROUP E
      </button>
    </h2>
    <div id="panelsStayOpen-collapseFive" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingFive">
      <div class="accordion-body">
          <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="groupDSE" GridLines="Horizontal" HorizontalAlign="Center" Width="50%">
              <AlternatingRowStyle BackColor="#F7F7F7" />
              <Columns>
                  <asp:BoundField DataField="teamGroup" HeaderText="Team Group" SortExpression="teamGroup" HeaderStyle-HorizontalAlign="Center" >
                  </asp:BoundField>
                  <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
              </Columns>
              <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
              <HeaderStyle BackColor="#6c51d7" Font-Bold="True" ForeColor="#F7F7F7" HorizontalAlign="Center" />
              <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
              <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Center" />
              <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
              <SortedAscendingCellStyle BackColor="#F4F4FD" />
              <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
              <SortedDescendingCellStyle BackColor="#D8D8F0" />
              <SortedDescendingHeaderStyle BackColor="#3E3277" />
          </asp:GridView>
          <asp:SqlDataSource ID="groupDSE" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [teamGroup], [Country] FROM [teamGroup] WHERE ([teamGroup] = @teamGroup)">
              <SelectParameters>
                  <asp:Parameter DefaultValue="Group E" Name="teamGroup" Type="String" />
              </SelectParameters>
          </asp:SqlDataSource>
      </div>
    </div>
  </div>
             <div class="accordion-item">
    <h2 class="accordion-header" id="panelsStayOpen-headingSix">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseSix" aria-expanded="false" aria-controls="panelsStayOpen-collapseThree">
        GROUP F
      </button>
    </h2>
    <div id="panelsStayOpen-collapseSix" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingSix">
      <div class="accordion-body">
          <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="groupDSF" GridLines="Horizontal" HorizontalAlign="Center" Width="50%">
              <AlternatingRowStyle BackColor="#F7F7F7" />
              <Columns>
                  <asp:BoundField DataField="teamGroup" HeaderText="Team Group" SortExpression="teamGroup" HeaderStyle-HorizontalAlign="Center" >
                  </asp:BoundField>
                  <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
              </Columns>
              <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
              <HeaderStyle BackColor="#6c51d7" Font-Bold="True" ForeColor="#F7F7F7" HorizontalAlign="Center" />
              <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
              <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Center" />
              <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
              <SortedAscendingCellStyle BackColor="#F4F4FD" />
              <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
              <SortedDescendingCellStyle BackColor="#D8D8F0" />
              <SortedDescendingHeaderStyle BackColor="#3E3277" />
          </asp:GridView>
          <asp:SqlDataSource ID="groupDSF" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [teamGroup], [Country] FROM [teamGroup] WHERE ([teamGroup] = @teamGroup)">
              <SelectParameters>
                  <asp:Parameter DefaultValue="Group F" Name="teamGroup" Type="String" />
              </SelectParameters>
          </asp:SqlDataSource>
      </div>
    </div>
  </div>
             <div class="accordion-item">
    <h2 class="accordion-header" id="panelsStayOpen-headingSeven">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseSeven" aria-expanded="false" aria-controls="panelsStayOpen-collapseThree">
        GROUP G
      </button>
    </h2>
    <div id="panelsStayOpen-collapseSeven" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingSeven">
      <div class="accordion-body">
          <asp:GridView ID="GridView7" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="groupDSG" GridLines="Horizontal" HorizontalAlign="Center" Width="50%">
              <AlternatingRowStyle BackColor="#F7F7F7" />
              <Columns>
                  <asp:BoundField DataField="teamGroup" HeaderText="Team Group" SortExpression="teamGroup" HeaderStyle-HorizontalAlign="Center" >
                  </asp:BoundField>
                  <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
              </Columns>
              <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
              <HeaderStyle BackColor="#6c51d7" Font-Bold="True" ForeColor="#F7F7F7" HorizontalAlign="Center" />
              <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
              <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Center" />
              <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
              <SortedAscendingCellStyle BackColor="#F4F4FD" />
              <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
              <SortedDescendingCellStyle BackColor="#D8D8F0" />
              <SortedDescendingHeaderStyle BackColor="#3E3277" />
          </asp:GridView>
          <asp:SqlDataSource ID="groupDSG" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [teamGroup], [Country] FROM [teamGroup] WHERE ([teamGroup] = @teamGroup)">
              <SelectParameters>
                  <asp:Parameter DefaultValue="Group G" Name="teamGroup" Type="String" />
              </SelectParameters>
          </asp:SqlDataSource>
      </div>
    </div>
  </div>
             <div class="accordion-item">
    <h2 class="accordion-header" id="panelsStayOpen-headingEight">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseEight" aria-expanded="false" aria-controls="panelsStayOpen-collapseThree">
        GROUP H
      </button>
    </h2>
    <div id="panelsStayOpen-collapseEight" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingEight">
      <div class="accordion-body">
          <asp:GridView ID="GridView8" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="groupDSH" GridLines="Horizontal" HorizontalAlign="Center" Width="50%">
              <AlternatingRowStyle BackColor="#F7F7F7" />
              <Columns>
                  <asp:BoundField DataField="teamGroup" HeaderText="Team Group" SortExpression="teamGroup" HeaderStyle-HorizontalAlign="Center" >
                  </asp:BoundField>
                  <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
              </Columns>
              <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
              <HeaderStyle BackColor="#6c51d7" Font-Bold="True" ForeColor="#F7F7F7" HorizontalAlign="Center" />
              <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
              <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Center" />
              <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
              <SortedAscendingCellStyle BackColor="#F4F4FD" />
              <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
              <SortedDescendingCellStyle BackColor="#D8D8F0" />
              <SortedDescendingHeaderStyle BackColor="#3E3277" />
          </asp:GridView>
          <asp:SqlDataSource ID="groupDSH" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [teamGroup], [Country] FROM [teamGroup] WHERE ([teamGroup] = @teamGroup)">
              <SelectParameters>
                  <asp:Parameter DefaultValue="Group H" Name="teamGroup" Type="String" />
              </SelectParameters>
          </asp:SqlDataSource>
      </div>
    </div>
  </div>
</div>
            </div>
    </asp:Panel>
</asp:Content>
