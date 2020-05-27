<%@ Page Language="C#" AutoEventWireup="true" CodeFile="mybooking.aspx.cs" Inherits="mybooking" MasterPageFile="~/MasterPage2.master" %>
<asp:Content ID="content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<center style="background-color:Gray">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataKeyNames="booking_id" DataSourceID="SqlDataSource1" 
        ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="booking_id" HeaderText="booking_id" ReadOnly="True" 
                SortExpression="booking_id" />
            <asp:BoundField DataField="seat_number" HeaderText="seat_number" 
                SortExpression="seat_number" />
            <asp:BoundField DataField="bus_id" HeaderText="bus_id" 
                SortExpression="bus_id" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="age" HeaderText="age" SortExpression="age" />
            <asp:BoundField DataField="gender" HeaderText="gender" 
                SortExpression="gender" />
            <asp:BoundField DataField="user_id" HeaderText="user_id" 
                SortExpression="user_id" />
            <asp:BoundField DataField="doj" HeaderText="doj" SortExpression="doj" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:userdetailConnectionString %>" 
        SelectCommand="SELECT [booking_id], [seat_number], [bus_id], [name], [age], [gender], [user_id], [doj] FROM [tickets] WHERE ([user_id] = @user_id)">
        <SelectParameters>
            <asp:SessionParameter Name="user_id" SessionField="uid" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</center>
</asp:Content>