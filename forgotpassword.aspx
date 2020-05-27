<%@ Page Language="C#" AutoEventWireup="true" CodeFile="forgotpassword.aspx.cs" MasterPageFile="~/MasterPage2.master" Inherits="forgotpassword" %>

<asp:Content ID="content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<center>
<table>
<tr>
<td>Enter Your User Id/Email Id:</td>
<td><asp:TextBox ID="txtuid" runat="server"></asp:TextBox></td>
</tr>
<tr>
<td class="style1">Choose security question:</td>
<td><asp:DropDownList ID="ddlsecurityquestion" runat="server">
    <asp:ListItem Text="what is your place of birth ?"></asp:ListItem>
    <asp:ListItem Text="what is your favourite movie ?"></asp:ListItem>
    </asp:DropDownList>
</td>
</tr>
<tr>
<td class="style1">Your answer:</td>
<td><asp:TextBox ID="txtsecurityanswer" runat="server" Width="186px"></asp:TextBox></td>
</tr>
<tr>
<td><asp:Button ID="btnforgotpassword" Text="Get Password" runat="server" 
        onclick="btnforgotpassword_Click" /></td>
</tr>
<tr>
<td><asp:Label ID="lblpassword" runat="server"></asp:Label></td>
</tr>
</table>
</center>
</asp:Content>
