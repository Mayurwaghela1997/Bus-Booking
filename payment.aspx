<%@ Page Language="C#" AutoEventWireup="true" CodeFile="payment.aspx.cs" Inherits="payment" MasterPageFile="~/MasterPage2.master"%>

<asp:Content ID="contentpayment" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<center style=" background-color:Silver">
<table>
<tr>
<td colspan="3"><h1 style="color: #0000CC">PAYMENT</h1></td>
</tr>
<tr>
<td colspan="3"><asp:Image ID="imgcard" runat="server" ImageUrl="~/images/card.png" 
        Height="53px" Width="349px" /></td>
</tr>
<tr>
<td><strong>Card Number:</strong></td>
<td align="left"><asp:TextBox ID="txtcardnumber" runat="server" Text="16 digit card number"></asp:TextBox></td>
</tr>
<tr>
<td><strong>Expiry Date:</strong></td>
<td align="left"><asp:TextBox ID="txtmonth" runat="server" MaxLength="2"></asp:TextBox>&nbsp;<asp:TextBox ID="txtyear" MaxLength="4" runat="server"></asp:TextBox></td>
</tr>
<tr>
<td><strong>CVV:</strong></td>
<td align="left"><asp:TextBox ID="txtcvv" runat="server" MaxLength="3"></asp:TextBox></td>
</tr>
<tr>
<td colspan="3"><asp:Button ID="btnpay" runat="server" Text="pay" 
        onclick="btnpay_Click1" /></td>
</tr>
</table>
</center>
</asp:Content>