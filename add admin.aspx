<%@ Page Language="C#" AutoEventWireup="true" CodeFile="add admin.aspx.cs" Inherits="add_admin" MasterPageFile="~/MasterPage2.master" %>

<asp:Content ID="content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<center style="background-color:Gray">
<br /><br />
<table>
<tr>
<td><strong>Enter User Id : </strong></td>
<td><asp:TextBox ID="txtuid" runat="server"></asp:TextBox></td>
</tr>
<tr>
<td colspan="2"><asp:Button ID="btnupdateadmin" runat="server" Text="Make Admin" 
        BackColor="#368FFC" Height="26px" onclick="btnupdateadmin_Click"/></td>
</tr>
<tr>
<td colspan="2"><asp:Label ID="lblupdate" runat="server"></asp:Label></td>
</tr>
</table>
</center>
</asp:Content>