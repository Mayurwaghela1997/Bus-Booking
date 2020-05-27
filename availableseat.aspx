<%@ Page Language="C#" AutoEventWireup="true" CodeFile="availableseat.aspx.cs" Inherits="availableseat" MasterPageFile="~/MasterPage2.master" %>

<asp:Content ID="content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<center style="background-color:Gray">
    <asp:Table ID="tblseat" runat="server">
    <asp:TableRow>
    <asp:TableCell><center>TOP</center></asp:TableCell>
    <asp:TableCell id="s4" CssClass="style5" runat="server"><center>4</center></asp:TableCell>
    <asp:TableCell id="s8" CssClass="style5" runat="server"><center>8</center></asp:TableCell>
    <asp:TableCell id="s12" CssClass="style5" runat="server"><center>12</center></asp:TableCell>
    <asp:TableCell id="s16" CssClass="style5" runat="server"><center>16</center></asp:TableCell>
    <asp:TableCell id="s20" CssClass="style5" runat="server"><center>20</center></asp:TableCell>
    <asp:TableCell id="s24" CssClass="style5" runat="server"><center>24</center></asp:TableCell>
    </asp:TableRow>
    <asp:TableRow>
    <asp:TableCell><center>TOP</center></asp:TableCell>
    <asp:TableCell id="s3" CssClass="style5" runat="server"><center>3</center></asp:TableCell>
    <asp:TableCell id="s7" CssClass="style5" runat="server"><center>7</center></asp:TableCell>
    <asp:TableCell id="s11" CssClass="style5" runat="server"><center>11</center></asp:TableCell>
    <asp:TableCell id="s15" CssClass="style5" runat="server"><center>15</center></asp:TableCell>
    <asp:TableCell id="s19" CssClass="style5" runat="server"><center>19</center></asp:TableCell>
    <asp:TableCell id="s23" CssClass="style5" runat="server"><center>23</center></asp:TableCell>
    </asp:TableRow>
    <asp:TableRow>
    <asp:TableCell><center>BOTTOM</center></asp:TableCell>
    <asp:TableCell id="s2" CssClass="style5" runat="server"><center>2</center></asp:TableCell>
    <asp:TableCell id="s6" CssClass="style5" runat="server"><center>6</center></asp:TableCell>
    <asp:TableCell id="s10" CssClass="style5" runat="server"><center>10</center></asp:TableCell>
    <asp:TableCell id="s14" CssClass="style5" runat="server"><center>14</center></asp:TableCell>
    <asp:TableCell id="s18" CssClass="style5" runat="server"><center>18</center></asp:TableCell>
    <asp:TableCell id="s22" CssClass="style5" runat="server"><center>22</center></asp:TableCell>
    </asp:TableRow>
    <asp:TableRow>
    <asp:TableCell><center>BOTTOM</center></asp:TableCell>
    <asp:TableCell id="s1" CssClass="style5" runat="server"><center>1</center></asp:TableCell>
    <asp:TableCell id="s5" CssClass="style5" runat="server"><center>5</center></asp:TableCell>
    <asp:TableCell id="s9" CssClass="style5" runat="server"><center>9</center></asp:TableCell>
    <asp:TableCell id="s13" CssClass="style5" runat="server"><center>13</center></asp:TableCell>
    <asp:TableCell id="s17" CssClass="style5" runat="server"><center>17</center></asp:TableCell>
    <asp:TableCell id="s21" CssClass="style5" runat="server"><center>21</center></asp:TableCell>
    </asp:TableRow>
    <asp:TableRow>
    <asp:TableCell ID="TableCell1" CssClass="style1" runat="server"></asp:TableCell>
    <asp:TableCell ID="TableCell2" CssClass="style1" runat="server"></asp:TableCell>
    <asp:TableCell ID="TableCell3" CssClass="style1" runat="server"></asp:TableCell>
    <asp:TableCell ID="TableCell4" CssClass="style1" runat="server"></asp:TableCell>
    <asp:TableCell ID="TableCell5" CssClass="style1" runat="server"></asp:TableCell>
    <asp:TableCell ID="TableCell6" CssClass="style1" runat="server"><center>TOP</center></asp:TableCell>
    <asp:TableCell ID="sn" CssClass="style5" runat="server"><center>N</center></asp:TableCell>
    </asp:TableRow>
    <asp:TableRow>
    <asp:TableCell ID="TableCell7" CssClass="style1" runat="server"></asp:TableCell>
    <asp:TableCell ID="TableCell8" CssClass="style1" runat="server"></asp:TableCell>
    <asp:TableCell ID="TableCell9" CssClass="style1" runat="server"></asp:TableCell>
    <asp:TableCell ID="TableCell10" CssClass="style1" runat="server"></asp:TableCell>
    <asp:TableCell ID="TableCell11" CssClass="style1" runat="server"></asp:TableCell>
    <asp:TableCell ID="TableCell12" CssClass="style1" runat="server"><center>BOTTOM</center></asp:TableCell>
    <asp:TableCell ID="sm" CssClass="style5" runat="server"><center>M</center></asp:TableCell>
    </asp:TableRow>
    <asp:TableRow>
    <asp:TableCell><center>TOP</center></asp:TableCell>
    <asp:TableCell id="sb" CssClass="style5" runat="server"><center>B</center></asp:TableCell>
    <asp:TableCell id="sd" CssClass="style5" runat="server"><center>D</center></asp:TableCell>
    <asp:TableCell id="sf" CssClass="style5" runat="server"><center>F</center></asp:TableCell>
    <asp:TableCell id="sh" CssClass="style5" runat="server"><center>H</center></asp:TableCell>
    <asp:TableCell id="sj" CssClass="style5" runat="server"><center>J</center></asp:TableCell>
    <asp:TableCell id="sl" CssClass="style5" runat="server"><center>L</center></asp:TableCell>
    </asp:TableRow>
    <asp:TableRow>
    <asp:TableCell><center>BOTTOM</center></asp:TableCell>
    <asp:TableCell id="sa" runat="server" CssClass="style5"><center>A</center></asp:TableCell>
    <asp:TableCell id="sc" CssClass="style5" runat="server"><center>C</center></asp:TableCell>
    <asp:TableCell id="se" runat="server" CssClass="style5"><center>E</center></asp:TableCell>
    <asp:TableCell id="sg" CssClass="style5" runat="server"><center>G</center></asp:TableCell>
    <asp:TableCell id="si" runat="server" CssClass="style5"><center>I</center></asp:TableCell>
    <asp:TableCell id="sk" CssClass="style5" runat="server"><center>K</center></asp:TableCell>
    </asp:TableRow>
    <asp:TableRow>
    <asp:TableCell></asp:TableCell>
    </asp:TableRow>
    </asp:Table>
    </center>

    <asp:ScriptManager ID="sm1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="up1" runat="server">
    <ContentTemplate>
    <center style="background-color:Gray">
    <br />
    <table id="tblbook">
    <tr>
    <td>SEAT NUMBER</td>
    <td>NAME</td>
    <td>AGE</td>
    <td>GENDER</td>
    </tr>
    <tr>
    <td class="style1"><asp:TextBox ID="txtseat1" runat="server"></asp:TextBox></td>
    <td><asp:TextBox ID="txtname1" runat="server"></asp:TextBox></td>
    <td><asp:TextBox ID="txtage1" runat="server"></asp:TextBox></td>
    <td><asp:DropDownList ID="ddlgender1" runat="server">
            <asp:ListItem Text="MALE" Value="male" Selected="False"></asp:ListItem>
            <asp:ListItem Text="FEMALE" Value="female" Selected="False"></asp:ListItem>
            </asp:DropDownList></td>
    <td><asp:ImageButton ID="imgbtnaddseat1" ImageUrl="~/images/plus.jpg" 
            runat="server" Height="30px" Width="30px" onclick="imgbtnaddseat1_Click"/></td>
    <td><asp:Button ID="Button1" Text="book" runat="server" onclick="btnbook_Click" /></td>
    </tr>
    <tr>
    <td><asp:RequiredFieldValidator ID="rvseat1" runat="server" ControlToValidate="txtseat1" ErrorMessage="please enter seat number"></asp:RequiredFieldValidator></td>
    <td><asp:RequiredFieldValidator ID="rvname1" runat="server" ControlToValidate="txtname1" ErrorMessage="please enter name"></asp:RequiredFieldValidator></td>
    <td><asp:RequiredFieldValidator ID="rvage1" runat="server" ControlToValidate="txtage1" ErrorMessage="please enter age"></asp:RequiredFieldValidator></td>
    </tr>
    <tr>
    <td class="style1"><asp:TextBox ID="txtseat2" Visible="false" runat="server"></asp:TextBox></td>
    <td><asp:TextBox ID="txtname2" Visible="false" runat="server"></asp:TextBox></td>
    <td><asp:TextBox ID="txtage2" Visible="false" runat="server"></asp:TextBox></td>
    <td><asp:DropDownList ID="ddlgender2" Visible="false" runat="server">
            <asp:ListItem Text="MALE" Value="male" Selected="False"></asp:ListItem>
            <asp:ListItem Text="FEMALE" Value="female" Selected="False"></asp:ListItem>
            </asp:DropDownList></td>
    <td><asp:ImageButton ID="imgbtnaddseat2" Visible="false" 
            ImageUrl="~/images/plus.jpg" runat="server" Height="30px" Width="30px" 
            onclick="imgbtnaddseat2_Click"/></td>
    </tr>
    <tr>
    <td class="style1"><asp:TextBox ID="txtseat3" Visible="false" runat="server"></asp:TextBox></td>
    <td><asp:TextBox ID="txtname3" Visible="false" runat="server"></asp:TextBox></td>
    <td><asp:TextBox ID="txtage3" Visible="false" runat="server"></asp:TextBox></td>
    <td><asp:DropDownList ID="ddlgender3" Visible="false" runat="server">
            <asp:ListItem Text="MALE" Value="male" Selected="False"></asp:ListItem>
            <asp:ListItem Text="FEMALE" Value="female" Selected="False"></asp:ListItem>
            </asp:DropDownList></td>
    <td><asp:ImageButton ID="imgbtnaddseat3" Visible="false" 
            ImageUrl="~/images/plus.jpg" runat="server" Height="30px" Width="30px" 
            onclick="imgbtnaddseat3_Click"/></td>
    </tr>
    <tr>
    <td class="style1"><asp:TextBox ID="txtseat4" Visible="false" runat="server"></asp:TextBox></td>
    <td><asp:TextBox ID="txtname4" Visible="false" runat="server"></asp:TextBox></td>
    <td><asp:TextBox ID="txtage4" Visible="false" runat="server"></asp:TextBox></td>
    <td><asp:DropDownList ID="ddlgender4" Visible="false" runat="server">
            <asp:ListItem Text="MALE" Value="male" Selected="False"></asp:ListItem>
            <asp:ListItem Text="FEMALE" Value="female" Selected="False"></asp:ListItem>
            </asp:DropDownList></td>
    <td><asp:ImageButton ID="imgbtnaddseat4" Visible="false" 
            ImageUrl="~/images/plus.jpg" runat="server" Height="30px" Width="30px" 
            onclick="imgbtnaddseat4_Click"/></td>
    </tr>
    <tr>
    <td class="style1"><asp:TextBox ID="txtseat5" Visible="false" runat="server"></asp:TextBox></td>
    <td><asp:TextBox ID="txtname5" Visible="false" runat="server"></asp:TextBox></td>
    <td><asp:TextBox ID="txtage5" Visible="false" runat="server"></asp:TextBox></td>
    <td><asp:DropDownList ID="ddlgender5" Visible="false" runat="server">
            <asp:ListItem Text="MALE" Value="male" Selected="False"></asp:ListItem>
            <asp:ListItem Text="FEMALE" Value="female" Selected="False"></asp:ListItem>
            </asp:DropDownList></td>
    <td><asp:ImageButton ID="imgbtnaddseat5" Visible="false" 
            ImageUrl="~/images/plus.jpg" runat="server" Height="30px" Width="30px" 
            onclick="imgbtnaddseat5_Click"/></td>
    </tr>
    <tr>
    <td class="style1"><asp:TextBox ID="txtseat6" Visible="false" runat="server"></asp:TextBox></td>
    <td><asp:TextBox ID="txtname6" Visible="false" runat="server"></asp:TextBox></td>
    <td><asp:TextBox ID="txtage6" Visible="false" runat="server"></asp:TextBox></td>
    <td><asp:DropDownList ID="ddlgender6" Visible="false" runat="server">
            <asp:ListItem Text="MALE" Value="male" Selected="False"></asp:ListItem>
            <asp:ListItem Text="FEMALE" Value="female" Selected="False"></asp:ListItem>
            </asp:DropDownList></td>
    </tr>
    <tr>
    <td class="style1"><asp:Label ID="l1" runat="server"></asp:Label></td>
    </tr>
    </table>
    </center>
    </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .style1
        {
            height: 50px;
            width: 100px;
        }
        .style5
        {
            height: 40px;
            width: 120px;
            background-color: Blue;
        }
        .style3
        {
            height: 40px;
            width: 120px;
            background-color:Red;
        }
    </style>
</asp:Content>