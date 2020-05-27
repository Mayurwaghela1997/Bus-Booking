<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ticketbooking.aspx.cs" Inherits="ticketbooking" MasterPageFile="~/MasterPage2.master" %>

<asp:Content ID="c1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<center style="background-color:Gray">
<br /><br />
<table id="table1" runat="server" style="background-color:Gray">
<tr>
<td class="style2">Select Trip:</td>
<td class="style2"><asp:DropDownList ID="ddltrip" runat="server" 
        onselectedindexchanged="ddltrip_SelectedIndexChanged" 
        OnTextChanged="ddltrip_SelectedIndexChanged" AutoPostBack="True">
    <asp:ListItem Text="Single Trip" Value="single"></asp:ListItem>
    <asp:ListItem Text="Return Trip" Value="return"></asp:ListItem>
</asp:DropDownList></td>
</tr>
<tr>
<td class="style2">Leaving from:</td>
<td class="style2"><asp:DropDownList ID="ddlleaving" runat="server">
    <asp:ListItem Text="Ahembdabad" Value="ahemdabad"></asp:ListItem>
    <asp:ListItem Text="Banglore" Value="banglore"></asp:ListItem>
    <asp:ListItem Text="Chennai" Value="chennai"></asp:ListItem>
    <asp:ListItem Text="Goa" Value="goa"></asp:ListItem>
    <asp:ListItem Text="Hyderabad" Value="hyderabad"></asp:ListItem>
    <asp:ListItem Text="Kolkata" Value="kolkata"></asp:ListItem>
    <asp:ListItem Text="Mumbai" Value="mumbai"></asp:ListItem>
    <asp:ListItem Text="Mysore" Value="mysore"></asp:ListItem>
    <asp:ListItem Text="Pune" Value="pune"></asp:ListItem>
    <asp:ListItem Text="Surat" Value="surat"></asp:ListItem>
</asp:DropDownList></td>
</tr>
<tr>
<td class="style2">Travelling To:</td>
<td class="style2"><asp:DropDownList ID="ddltravelling" runat="server">
    <asp:ListItem Text="Ahembdabad" Value="ahemdabad"></asp:ListItem>
    <asp:ListItem Text="Banglore" Value="banglore"></asp:ListItem>
    <asp:ListItem Text="Chennai" Value="chennai"></asp:ListItem>
    <asp:ListItem Text="Goa" Value="goa"></asp:ListItem>
    <asp:ListItem Text="Hyderabad" Value="hyderabad"></asp:ListItem>
    <asp:ListItem Text="Kolkata" Value="kolkata"></asp:ListItem>
    <asp:ListItem Text="Mumbai" Value="mumbai"></asp:ListItem>
    <asp:ListItem Text="Mysore" Value="mysore"></asp:ListItem>
    <asp:ListItem Text="Pune" Value="pune"></asp:ListItem>
    <asp:ListItem Text="Surat" Value="surat"></asp:ListItem>
</asp:DropDownList></td>
</tr>
<tr>
    <td class="style2">Depature Date:</td>
    <td class="style2"><asp:TextBox ID="txtdepaturedate" runat="server"></asp:TextBox></td>
    <td class="style2"><asp:ImageButton ID="calender" ImageUrl="~/images/calender.png" runat="server" 
        Height="30px" Width="30px" onclick="calender_Click" /></td>
    <td class="style2">
        <asp:Calendar ID="caldepature" runat="server" Visible="false" OnSelectionChanged="caldepature_SelectionChanged"></asp:Calendar>
    </td>
    
</tr>
<tr>
<td><asp:Label ID="lblreturndate" Text="return date :" Visible="false" runat="server"></asp:Label></td>
<td><asp:TextBox ID="txtreturndate" runat="server" Visible="false"></asp:TextBox></td>
<td><asp:ImageButton ID="calander1" ImageUrl="~/images/calender.png" runat="server" 
        Height="30px" Width="30px" onclick="calender1_Click"  Visible="false"/></td>
<td class="style2">
        <asp:Calendar ID="calreturn" runat="server" Visible="false" OnSelectionChanged="calreturn_SelectionChanged"></asp:Calendar>    
    </td>
    
</tr>
<tr>
<td align="center"><asp:Button ID="btnfindbus" Text="Find Buses" runat="server" 
        onclick="btnfindbus_Click" /></td>
</tr>
<tr>
<td><asp:ValidationSummary ID="validationsummary1" runat="server" ShowSummary="true" /></td>
</tr>
</table>
</center>
</asp:Content>


<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .style2
        {
            height: 50px;
        }
        </style>
</asp:Content>



