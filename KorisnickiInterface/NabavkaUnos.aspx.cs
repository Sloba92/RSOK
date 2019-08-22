using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//
using System.Data;
using PrezentacionaLogika;
using System.Configuration;

namespace KorisnickiInterface
{
    public partial class NabavkaUnos : System.Web.UI.Page
    {
        clsNabavkaUnosForma objNabavkaUnosForma;
        
        private void NapuniCombo()
        {
            DataSet dsPodaci = new DataSet();
            dsPodaci = objNabavkaUnosForma.DajPodatkeZaCombo();

            for (int i = 0; i < dsPodaci.Tables[0].Rows.Count; i++)
            {
                ddlSifraUvoznika.Items.Add(dsPodaci.Tables[0].Rows[i].ItemArray[0].ToString());
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            string StringKonekcije = ConfigurationManager.ConnectionStrings["NasaKonekcija"].ConnectionString;
            objNabavkaUnosForma = new clsNabavkaUnosForma(StringKonekcije);
            if (!IsPostBack)
            {
                NapuniCombo();
            }

        }

        protected void btnSnimi_Click(object sender, EventArgs e)
        {
            objNabavkaUnosForma.NazivMasine = txbIdNabavke.Text;
            objNabavkaUnosForma.DatumNabavke = cldDatumNabavke.SelectedDate;
            objNabavkaUnosForma.SifraUvoznika = ddlSifraUvoznika.Text;
            objNabavkaUnosForma.Cena = txbCena.Text;
            objNabavkaUnosForma.Kolicina = txbKolicina.Text;

            bool UspehSnimanja = objNabavkaUnosForma.SnimiPodatke();
            if (UspehSnimanja)
            {
                lblStatus.Text = "USPESNO SNIMLJENI NOVI PODACI!";
            }
            else
            {
                lblStatus.Text = "NEUSPEH SNIMANJA!";
            }
        }

        protected void btnOdustani_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

    }
}

