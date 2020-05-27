<%@ Page Language="C#" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="feedback" MasterPageFile="~/MasterPage2.master" %>

<asp:Content ID="content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<center style="background-color:Gray">
<table>
<tr>
<td><asp:TextBox ID="txtfeedback" runat="server" Height="100px" Width="500px" Text="give your feedback here !"></asp:TextBox></td>
</tr>
<tr>
<td><asp:Button ID="btnsendfeedback" runat="server" Text="send feedback" 
        onclick="btnsendfeedback_Click" /></td>
</tr>
</table>
</center>
</asp:Content>

