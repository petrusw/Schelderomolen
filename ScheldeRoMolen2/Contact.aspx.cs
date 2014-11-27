using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ScheldeRoMolen2
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Panelcontact.Visible = true;
            PanelContactPreview.Visible = false;
        }

        protected void ButtonVerzend_Click(object sender, EventArgs e)
        {
            Panelcontact.Visible = false;
            PanelContactPreview.Visible = true;
            // zorgt ervoor dat een enter vervangen word door een linebreak
            string multiLineText = TextBoxContactForm.Text.Replace(Environment.NewLine, "<br/>"); 
            // Geeft de e-mail weer inplaats van deze te verzenden 
            LabelContactPreview.Text = "Email: " + TextBoxContactEmail.Text +"<br/>"+"Uw bericht: "+"<br/>"+ multiLineText;
        }
    }
}