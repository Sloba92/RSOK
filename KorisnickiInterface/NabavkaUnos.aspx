<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="NabavkaUnos.aspx.cs" Inherits="KorisnickiInterface.NabavkaUnos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
    .style1
    {
        width: 309px;
        text-align: right;
    }
    .style2
    {
            width: 208px;
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
        <td class="style2">
            UNOS NABAVKE</td>
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
            <asp:TextBox ID="txbIdNabavke" runat="server" Width="206px"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style1">
            Datum Nabavke</td>
        <td class="style2">
            <asp:Calendar ID="cldDatumNabavke" runat="server"></asp:Calendar>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style1">
            Sifra Uvoznika</td>
        <td class="style2">
            <asp:DropDownList ID="ddlSifraUvoznika" runat="server" Width="200px">
            </asp:DropDownList>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style1">
            Cena</td>
        <td class="style2">
            <asp:TextBox ID="txbCena" runat="server" Width="202px"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style1">
            Kolicina</td>
        <td class="style2">
            <asp:TextBox ID="txbKolicina" runat="server" Height="23px" Width="201px"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style1">
            &nbsp;</td>
        <td class="style2">
            <asp:Button ID="btnSnimi" runat="server" onclick="btnSnimi_Click" 
                Text="Snimi" />
            <asp:Button ID="btnOdustani" runat="server" onclick="btnOdustani_Click"
                Text="Odustani" />
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
</table>
</asp:Content>
