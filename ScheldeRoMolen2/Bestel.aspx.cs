using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ScheldeRoMolen2
{
    public partial class Bestel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LabelDatumAfhaling.Text = DateTime.Now.ToShortDateString();
            LabelReqFieldEmail.Text = "*";
            LabelReqFieldNaam.Text = "*";
            LabelReqFieldTel.Text = "*";
        }
    }
}