<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" MasterPageFile="~/MasterPage2.master" %>

<asp:Content ID="content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<center>
<table id="t1" runat="server" style="background-color:Silver">
<tr>
<td>Email ID:</td>
<td><asp:TextBox ID="txtid" runat="server"></asp:TextBox><br /></td>
<td><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
        ErrorMessage="Enter Valid Email ID" ControlToValidate="txtid" 
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td>
</tr>
<tr>
<td>Password:</td>
<td><asp:TextBox TextMode="Password" ID="txtpass" runat="server"></asp:TextBox></td>

</tr>
<tr align="center">
<td align="center"><asp:Button ID="btnlogin" runat="server" Text="Login" 
        onclick="btnlogin_Click1" /></td>
<td><asp:HyperLink ID="forgotpassword" NavigateUrl="forgotpassword.aspx" Text="Forgot Password" runat="server"></asp:HyperLink></td>
</tr>
<tr>
<td><asp:Label ID="l1" runat="server"></asp:Label></td>
<td><asp:ValidationSummary ID="ValidationSummary1" runat="server" /></td>
</tr>
</table>
</center>
</asp:Content>



