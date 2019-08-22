<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LoginForma.aspx.cs" Inherits="KorisnickiInterface.LoginForma" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 339px;
        }
        .style2
        {
            width: 177px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table style="width:100%;">
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1" style="text-align: right">
                Ime</td>
            <td class="style2">
                <asp:TextBox ID="txbIme" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1" style="text-align: right">
                Password</td>
            <td class="style2">
                <asp:TextBox ID="txbPassword" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1" style="text-align: right">
                &nbsp;</td>
            <td class="style2">
                <asp:Button ID="btnLogin" runat="server" onclick="btnLogin_Click" 
                    style="text-align: justify; margin-left: 134px" Text="LogIn" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
