<%@ Page Language="C#" AutoEventWireup="true" CodeFile="QR.aspx.cs" MasterPageFile="~/MasterPage2.master" Inherits="CS" %>
<asp:Content ID="content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<center style="background-color:Gray">
<table>
<tr>
<td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
<td><asp:Button ID="Button1" runat="server" Text="Generate" OnClick="btnGenerate_Click" /></td>
</tr>
</table>
    <asp:Label ID="lblstring" runat="server"></asp:Label>
    <hr />
    <asp:PlaceHolder ID="plBarCode" runat="server" />
    <br />
    <br />
<asp:Button ID="btnreturnticket" runat="server" Text="Book Return Ticket" 
        Visible="false" onclick="btnreturnticket_Click" />
<br />
<asp:Button ID="btnupdate" Text="update" runat="server" 
        onclick="btnupdate_Click1" />
</center>
</asp:Content>
