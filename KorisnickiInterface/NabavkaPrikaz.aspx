<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="NabavkaPrikaz.aspx.cs" Inherits="KorisnickiInterface.NabavkaPrikaz" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 336px;
        }
        .style2
        {
            width: 325px;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table style="width:100%;">
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style1" style="text-align: center">
                TABELARNI PRIKAZ</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                NAZIV UVOZNIKA</td>
            <td class="style1">
                <asp:TextBox ID="txbNazivUvoznika" runat="server" Width="205px" 
                    style="text-align: center"></asp:TextBox>
                <asp:Button ID="btnSvi" runat="server" onclick="btnSvi_Click" Text="Svi" 
                    style="text-align: center;" Width="59px" />
                <asp:Button ID="btnFiltriraj" runat="server" onclick="btnFiltriraj_Click" 
                    Text="Filtriraj" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style1">
               <asp:GridView ID="gvNabavke" runat="server" Height="158px" Width="338px" 
               AutoGenerateSelectButton="true"
               onselectedindexchanged="gvNabavke_SelectedIndexChanged" style="text-align: center"
           ></asp:GridView>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
