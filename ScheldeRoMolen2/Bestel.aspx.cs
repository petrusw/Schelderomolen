using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.IO;

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
            PanelType.Visible = false;
            PanelKlant.Visible = true;
            readXml();
        }

        protected void ButtonVolgende_Click(object sender, EventArgs e)
        {
            PanelType.Visible = true;
            PanelKlant.Visible = false;
            //Zet eerste letter om in hoofdletter
            string Naam = TextBoxNaam.Text;
            string NaamUpper = char.ToUpper(Naam[0]) + Naam.Substring(1);
            // geeft de info weer op de pagina
            LabelKlantInfo.Text ="Beste, "+ NaamUpper /*+ " <br/>" + TextBoxEmail.Text + "<br/> " 
                + TextBoxTel.Text+"<br/>"+ LabelDatumAfhaling.Text*/;


        }

        private void readXml()
        {
            string st = "";
          using (XmlReader reader = XmlReader.Create(Server.MapPath("~/content/MeelSoorten.xml")))
          {
              while(reader.Read())
              {
                  if (reader.IsStartElement())
                  {
                      switch(reader.Name.ToString())
                      {
                          case "Naam":
                              st = reader.ReadElementContentAsString();
                              DropDownListSoort.Items.Add(st);
                              break;

                          case "Prijs":
                              st += " "+reader.ReadElementContentAsString();
                              break;
                      }
                  }
                
              }
              
          }
        }
    }
}