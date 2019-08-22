using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
// 
using PrezentacionaLogika;
using System.Configuration;
using System.Data;

namespace KorisnickiInterface
{
    public partial class NabavkaPrikaz : System.Web.UI.Page
    {
        private string pStringKonekcije;
        private clsNabavkaTabelarnaForma pObjForma;
        private DataSet dsPodaci;

        
        public void PrikaziPodatkeTabelarno(DataSet dsPodaci)
        {
            gvNabavke.DataSource = dsPodaci.Tables[0];
            gvNabavke.DataBind();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            pStringKonekcije = ConfigurationManager.ConnectionStrings["NasaKonekcija"].ConnectionString;
            pObjForma = new clsNabavkaTabelarnaForma(pStringKonekcije);
        }

        protected void btnFiltriraj_Click(object sender, EventArgs e)
        {
            dsPodaci = pObjForma.DajPodatkeZaGrid(txbNazivUvoznika.Text);
            PrikaziPodatkeTabelarno(dsPodaci);
        }

        protected void btnSvi_Click(object sender, EventArgs e)
        {
            dsPodaci = pObjForma.DajPodatkeZaGrid("");
            PrikaziPodatkeTabelarno(dsPodaci);
        }

        protected void gvNabavke_SelectedIndexChanged(object sender, EventArgs e)
        {
            Response.Redirect("NabavkaBrisanjeIzmena.aspx?NazivMasine=" + gvNabavke.Rows[gvNabavke.SelectedIndex].Cells[1].Text);
        }
    }
}