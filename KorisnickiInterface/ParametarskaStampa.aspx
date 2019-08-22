<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ParametarskaStampa.aspx.cs" Inherits="KorisnickiInterface.ParametarskaStampa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 274px;
            text-align: right;
        }
        .style2
        {
            width: 274px;
            height: 21px;
        }
        .style3
        {
            height: 21px;
        }
        .style4
        {
            width: 390px;
            text-align: left;
        }
        .style5
        {
            height: 21px;
            width: 390px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table style="width:100%;">
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
            </td>
            <td class="style5">
                Parametarska Stampa</td>
            <td class="style3">
            </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                Naziv Masine</td>
            <td class="style4">
                <asp:TextBox ID="txbFilter" runat="server" 
                    style="text-align: center; margin-left: 0px" Width="253px"></asp:TextBox>
                <asp:Button ID="btnFilterStampa" runat="server" onclick="btnFilterStampa_Click" 
                    Text="Filtrirani spisak" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
