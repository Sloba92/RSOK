<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="NabavkaBrisanjeIzmena.aspx.cs" Inherits="KorisnickiInterface.NabavkaBrisanjeIzmena" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 302px;
            text-align: right;
        }
        .style2
        {
            width: 312px;
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
            <td class="style1">
                &nbsp;</td>
            <td class="style2" style="text-align: center">
                EDITOVANJE</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                Naziv Masine</td>
            <td class="style2">
                <asp:TextBox ID="txbNazivMasine" runat="server" Width="312px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                Sifra Uvoznika</td>
            <td class="style2">
                <asp:TextBox ID="txbSifraUvoznika" runat="server" Width="309px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                Kolicina</td>
            <td class="style2">
                <asp:TextBox ID="txbKolicina" runat="server" Width="308px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
                <asp:Label ID="lblStatus" runat="server" Text="Status"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
                <asp:Button ID="btnIzmena" runat="server" onclick="btnIzmena_Click" 
                    Text="Izmeni" />
                <asp:Button ID="btnOmoguciIzmenu" runat="server" Text="Omoguci Izmenu" 
                    onclick="btnOmoguciIzmenu_Click" />
                <asp:Button ID="btnObrisi" runat="server" Text="Obrisi" 
                    onclick="btnObrisi_Click" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
