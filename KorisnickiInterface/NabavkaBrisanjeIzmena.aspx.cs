using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//
using System.Data;
using System.Configuration;
using PrezentacionaLogika;

namespace KorisnickiInterface
{
    public partial class NabavkaBrisanjeIzmena : System.Web.UI.Page
    {
        private string pSifra = "";
        clsIzmenaNabavke objIzmenaNabavke;

        private void IsprazniKontrole()
        {
            txbNazivMasine.Text = "";
            txbSifraUvoznika.Text = "";
            txbKolicina.Text = "";
        }

        private void AktivirajKontrole()
        {
            txbNazivMasine.Enabled = true ;
            txbSifraUvoznika.Enabled = true ;
            txbKolicina.Enabled = true ;
        }

        private void DeaktivirajKontrole()
        {
            txbNazivMasine.Enabled = false;
            txbSifraUvoznika.Enabled = false;
            txbKolicina.Enabled = false;
        }

        private void PrikaziPodatke(clsIzmenaNabavke objIzmenaNabavke)
        {
            txbNazivMasine.Text = objIzmenaNabavke.NazivPreuzeteMasine;
            txbSifraUvoznika.Text = objIzmenaNabavke.SifraPreuzetogUvoznika;
            txbKolicina.Text = objIzmenaNabavke.KolicinaPreuzeta;
          
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            objIzmenaNabavke = new clsIzmenaNabavke(ConfigurationManager.ConnectionStrings["NasaKonekcija"].ConnectionString);
            pSifra = Request.QueryString["NazivMasine"].ToString();
            objIzmenaNabavke.NazivPreuzeteMasine = pSifra;
           

            if (!IsPostBack)
            {
               
              
            }
        }

        protected void btnIzmena_Click(object sender, EventArgs e)
        {
            objIzmenaNabavke.NazivIzmenjeneMasine = txbNazivMasine.Text;
            objIzmenaNabavke.SifraIzmenjenogUvoznika = txbSifraUvoznika.Text;
            objIzmenaNabavke.KolicinaIzmenjena = txbKolicina.Text;
            
            bool UspehIzmene = objIzmenaNabavke.IzmeniNabavku();
            if (UspehIzmene)
            {
                lblStatus.Text = "Uspesno izmenjen zapis.";
                IsprazniKontrole();
            }
            else
            {
                lblStatus.Text = "Neuspeh izmene brisanja.";
            }
            DeaktivirajKontrole();
        }

        protected void btnOmoguciIzmenu_Click(object sender, EventArgs e)
        {
            AktivirajKontrole();
            txbNazivMasine.Focus();
        }

        protected void btnObrisi_Click(object sender, EventArgs e)
        {
            objIzmenaNabavke.NazivPreuzeteMasine = txbNazivMasine.Text;
            bool uspehBrisanja = objIzmenaNabavke.ObrisiNabavku();
            if (uspehBrisanja)
            {
                lblStatus.Text = "Uspesno obrisan zapis.";
                IsprazniKontrole();
            }
            else
            {
                lblStatus.Text = "Neuspeeh brisanja zapisa.";
            }
        }
    }
}