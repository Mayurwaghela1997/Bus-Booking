<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" MasterPageFile="~/MasterPage2.master" %>

<asp:Content ID="content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<center style="background-color:Gray">
<table id="t1" style="text-align:left; background-color:Silver" runat="server">
    <tr>
        <td class="style1">Name:</td>
        <td><asp:TextBox ID="txtname" runat="server" Width="185px"></asp:TextBox></td>
    </tr>
    <tr>
        <td>Email ID:</td>
        <td><asp:TextBox ID="txtid" runat="server" Width="185px"></asp:TextBox></td>
        <td><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ErrorMessage="Enter Valid Email ID" ControlToValidate="txtid" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td>
    </tr>
    <tr>
        <td>Password:</td>
        <td><asp:TextBox ID="txtpass" MaxLength="16" runat="server" TextMode="Password" 
                style="margin-right: 1px" Width="186px"></asp:TextBox></td>
        <td><asp:RegularExpressionValidator ID="rvpass" runat="server" ErrorMessage="please enter password between 8 and 16 characters" ControlToValidate="txtpass" ValidationExpression="^[a-zA-Z0-9'@&#.\s]{8,16}$"></asp:RegularExpressionValidator></td>
    </tr>
    <tr>
        <td>Retype Password:</td>
        <td><asp:TextBox ID="txtpass2" runat="server" TextMode="Password" Width="186px"></asp:TextBox></td>
        <td><asp:CompareValidator ID="CompareValidator1" runat="server" 
                ErrorMessage="Password Doesn't Matching" ControlToCompare="txtpass" 
                ControlToValidate="txtpass2"></asp:CompareValidator></td>
    </tr>
    <tr>
        <td>Contact no:</td>
        <td><asp:TextBox ID="txtphone" MaxLength="10" runat="server" Width="186px"></asp:TextBox></td>
        <td><asp:RangeValidator ID="rvphone" ControlToValidate="txtphone" MinimumValue="7000000000" MaximumValue="9999999999" ErrorMessage="please enter valid number" runat="server"></asp:RangeValidator></td>
    </tr>
    <tr>
        <td>Choose security question:</td>
        <td><asp:DropDownList ID="ddlsecurityquestion" runat="server">
                <asp:ListItem Text="what is your place of birth ?"></asp:ListItem>
                <asp:ListItem Text="what is your favourite movie ?"></asp:ListItem>
            </asp:DropDownList></td>
    </tr>
    <tr>
        <td>Your answer:</td>
        <td><asp:TextBox ID="txtsecurityanswer" runat="server" Width="186px"></asp:TextBox></td>
    </tr>
    <tr>
        <td colspan="3" align="center"><asp:Button ID="btnregister" Text="Register" 
            runat="server" onclick="btnregister_Click1" /></td>
    </tr>
</table>
</center>
</asp:Content>
<asp:Content ContentPlaceHolderID="head" runat="server">
<style type="text/css" runat="server">
    .style1
    {
        
    }
</style>
</asp:Content>