<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addbus.aspx.cs" Inherits="addbus" MasterPageFile="~/MasterPage2.master" %>

<asp:Content ID="content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<center style="background-color:Gray">
<table>
    <tr>
        <td><b>Name</b></td>
        <td><b>Bus No</b></td>
        <td><b>Source</b></td>
        <td><b>Destination</b></td>
        <td><b>Rate</b></td>
        <td><b>Time</b></td>
        <td><b>Ac</b></td>
    </tr>
    <tr>
        <td><asp:TextBox ID="txtbusname" runat="server"></asp:TextBox></td>
        <td><asp:TextBox ID="txtbusno" runat="server"></asp:TextBox></td>
        <td><asp:TextBox ID="txtsource" runat="server"></asp:TextBox></td>
        <td><asp:TextBox ID="txtdestination" runat="server"></asp:TextBox></td>
        <td><asp:TextBox ID="txtrate" runat="server"></asp:TextBox></td>
        <td><asp:TextBox ID="txttime" runat="server"></asp:TextBox></td>
        <td><asp:DropDownList ID="ddlac" runat="server">
            <asp:ListItem Text="yes" Value="yes"></asp:ListItem>
            <asp:ListItem Text="no" Value="no"></asp:ListItem></asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td><asp:Button ID="btninsert" Text="insert" runat="server" 
                onclick="btninsert_Click" /></td>
    </tr>
</table>
<asp:Label ID="lbl" runat="server" ></asp:Label>
</center>
</asp:Content>
