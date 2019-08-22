using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KorisnickiInterface
{
    public partial class LoginForma : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            {
                string Ime = "Korisnik";
                string Pasword = "Korisnik123";
                string KorisnickoIme = txbIme.Text;
                string Sifra = txbPassword.Text;


                if (Ime.Equals(KorisnickoIme) && Pasword.Equals(Sifra))
                {
                    Response.Redirect("NabavkaUnos.aspx");
                }

            }

        }
    }
}