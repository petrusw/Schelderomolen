using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;

namespace Schelderomolen
{
    public partial class Administrator : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void buttonLogin_Click(object sender, EventArgs e)
        {
            labelFoutPaswoord.Visible = false;
            if (textBoxUser.Text == "Molenaar" && textBoxPaswoord.Text == "Schelderode_1")
            {
                Session["loginOk"] = "yes";
                //HttpCookie loginKoekje = new HttpCookie("loginOk", "yes");
                //Response.Cookies.Add(loginKoekje);
                //Server.Transfer("Onderhoud/Artikel_beheer.aspx");
                Response.Redirect("Onderhoud/Artikel_beheer.aspx",false);
                //StringBuilder url = new StringBuilder();
                //url.Append("/Onderhoud/Artikel_beheer.aspx");
                //url.Append("?loginOK=yes");// + Server.UrlEncode(textBoxNaam.Text));
                //Response.Redirect(url.ToString()); 
            }
            else
            {
                labelFoutPaswoord.Visible = true;
            }
        }
    }
}