<%@ Page Language="C#" AutoEventWireup="true" CodeFile="confirm.aspx.cs" Inherits="payment" MasterPageFile="~/MasterPage2.master" %>

<asp:Content ID="content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<center style="background-color:Gray">
<br />

    <span class="style4"><strong>Your Seats</strong></span><br />
<table cellspacing="10px">
<tr>
<td style="font-weight: 700">selected seat</td>
<td style="font-weight: 700">Name</td>
<td style="font-weight: 700">Age</td>
<td style="font-weight: 700">Gender</td>
</tr>
<tr>
<td><asp:Label ID="lblseat1" runat="server"></asp:Label></td>
<td><asp:Label ID="lblname1" runat="server"></asp:Label></td>
<td><asp:Label ID="lblage1" runat="server"></asp:Label></td>
<td><asp:Label ID="lblgender1" runat="server"></asp:Label></td>
</tr>
<tr>
<td><asp:Label ID="lblseat2" runat="server"></asp:Label></td>
<td><asp:Label ID="lblname2" runat="server"></asp:Label></td>
<td><asp:Label ID="lblage2" runat="server"></asp:Label></td>
<td><asp:Label ID="lblgender2" runat="server"></asp:Label></td>
</tr>
<tr>
<td><asp:Label ID="lblseat3" runat="server"></asp:Label></td>
<td><asp:Label ID="lblname3" runat="server"></asp:Label></td>
<td><asp:Label ID="lblage3" runat="server"></asp:Label></td>
<td><asp:Label ID="lblgender3" runat="server"></asp:Label></td>
</tr>
<tr>
<td><asp:Label ID="lblseat4" runat="server"></asp:Label></td>
<td><asp:Label ID="lblname4" runat="server"></asp:Label></td>
<td><asp:Label ID="lblage4" runat="server"></asp:Label></td>
<td><asp:Label ID="lblgender4" runat="server"></asp:Label></td>
</tr>
<tr>
<td><asp:Label ID="lblseat5" runat="server"></asp:Label></td>
<td><asp:Label ID="lblname5" runat="server"></asp:Label></td>
<td><asp:Label ID="lblage5" runat="server"></asp:Label></td>
<td><asp:Label ID="lblgender5" runat="server"></asp:Label></td>
</tr>
<tr>
<td><asp:Label ID="lblseat6" runat="server"></asp:Label></td>
<td><asp:Label ID="lblname6" runat="server"></asp:Label></td>
<td><asp:Label ID="lblage6" runat="server"></asp:Label></td>
<td><asp:Label ID="lblgender6" runat="server"></asp:Label></td>
</tr>
<tr>

<td colspan="4" align="center" style="font-weight: 700">Total Amount = <asp:Label ID="lblamount" runat="server"></asp:Label></td>
</tr>
<tr>
<td colspan="4" align="center"><asp:Button ID="btnnext" runat="server" Text="Next" 
        onclick="btnnext_Click" /></td>
</tr>
</table>
</center>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .style4
        {
            color: #FFFFFF;
            font-family: Stencil;
        }
    </style>
</asp:Content>

