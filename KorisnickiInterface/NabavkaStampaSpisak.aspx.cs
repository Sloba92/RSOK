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
    public partial class NabavkaStampaSpisak : System.Web.UI.Page
    {
        private string pStringKonekcije;
        private clsNabavkaTabelarnaForma pObjForma;
        private DataSet dsPodaci;

        public void PrikaziPodatkeTabelarno(DataSet dsPodaci)
        {
            gvSpisakNabavke.DataSource = dsPodaci.Tables[0];
            gvSpisakNabavke.DataBind();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            pStringKonekcije = ConfigurationManager.ConnectionStrings["NasaKonekcija"].ConnectionString;
            pObjForma = new clsNabavkaTabelarnaForma(pStringKonekcije);

            string filter = "";
            try
            {
                filter = Request.QueryString["filter"].ToString();
            }
            catch (Exception)
            {

            }

            dsPodaci = pObjForma.DajPodatkeZaGrid(filter);
            PrikaziPodatkeTabelarno(dsPodaci);
        }

        protected void gvSpisakNabavke_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}