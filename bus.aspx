<%@ Page Language="C#" AutoEventWireup="true" CodeFile="bus.aspx.cs" Inherits="bus" MasterPageFile="~/MasterPage2.master" %>
<asp:Content ID="content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<center>
<table style="background-color:Silver">
<tr>
<td>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" HeaderStyle-BackColor="LightGray" 
        HeaderStyle-BorderStyle="Double" HeaderStyle-Font-Bold="true">
    <Columns>
    <asp:BoundField DataField="bus_no" HeaderText="bus_no" SortExpression="bus_no" />
        <asp:HyperLinkField DataNavigateUrlFields="bus" 
            DataNavigateUrlFormatString="availableseat.aspx?id={0}" DataTextField="bus" 
            HeaderText="bus" ControlStyle-ForeColor="White"/>
        <asp:BoundField DataField="source" HeaderText="source" 
            SortExpression="source" />
        <asp:BoundField DataField="destination" HeaderText="destination" 
            SortExpression="destination" />
        <asp:BoundField DataField="rate" HeaderText="rate" SortExpression="rate" />
        <asp:BoundField DataField="time" HeaderText="time" SortExpression="time" />
        <asp:BoundField DataField="ac" HeaderText="ac" SortExpression="ac" />
    </Columns>

<HeaderStyle BackColor="Gray" ForeColor="White" BorderStyle="Double" Font-Bold="True"></HeaderStyle>
    </asp:GridView><br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:userdetailConnectionString %>" 
        SelectCommand="SELECT * FROM [businfo] WHERE (([source] = @source) AND ([destination] = @destination))">
        <SelectParameters>
            <asp:QueryStringParameter Name="source" QueryStringField="source" 
                Type="String" />
            <asp:QueryStringParameter Name="destination" QueryStringField="destination" 
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    </td>
    </tr>
    </table>
        </center>
</asp:Content>

