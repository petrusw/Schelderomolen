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
        List<Bestelling> bestelling = new List<Bestelling>();
        string bericht = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            LabelDatumAfhaling.Text = DateTime.Now.ToShortDateString();
            //LabelReqFieldEmail.Text = "*";
            //LabelReqFieldNaam.Text = "*";
            //LabelReqFieldTel.Text = "*";
            PanelType.Visible = false;
            PanelKlant.Visible = true;
            if (!Page.IsPostBack)
            {
                readXml();
                readTxt();
                //bestelling = new List<Bestelling>();
            }
            
        }

        protected void ButtonVolgende_Click(object sender, EventArgs e)
        {

            clickonvolgende();

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
        private void readTxt()
        {
            string path = Server.MapPath("~/content/Textgewicht.txt");// server.mappath is nodig voor de juiste relative link te leggen naar de file!!!
            //string content;
            List<char> kg = new List<char>();
            using (StreamReader textReader = new StreamReader(path))
            {
                //content = textReader.ReadToEnd();
                foreach (var line in textReader.ReadToEnd())
                {
                    kg.Add(line);
                }
            }
            

            //indexText.InnerText = content;
            foreach(var cha in kg)
            {
                DropDownListGewigt.Items.Add(cha.ToString());
            }
        }
        private void voegBestellingToe()
        {
            string soort = DropDownListSoort.SelectedValue;
            int v = DropDownListGewigt.SelectedIndex +1 ;
            int kg = v;
            //Bestelling b = new Bestelling(soort, kg);
            bestelling.Add(new Bestelling() { Soort=soort,KG=kg,Datum=DateTime.Now});
        }

        protected void ButtonBestelToevoegen_Click(object sender, EventArgs e)
        {
            voegBestellingToe();
            foreach(var be in bestelling)
            {
                Label1bestellingen.Text += be.Soort + " " + be.KG + "kg " + be.Datum.ToShortDateString() + "<br/>";

                bericht += TextBoxNaam.Text + "<br/><br/>";
                
            }
            clickonvolgende();
        }
        private void clickonvolgende()
        {
          
            //Zet eerste letter om in hoofdletter
            string Naam = TextBoxNaam.Text;
            if (Naam != string.Empty)
            {
                
            //    //LabelReqFieldNaam.Visible = false;
            string NaamUpper = char.ToUpper(Naam[0]) + Naam.Substring(1);
                // geeft de info weer op de pagina
                LabelKlantInfo.Text = "Beste, " + NaamUpper /*+ " <br/>" + TextBoxEmail.Text + "<br/> " 
                + TextBoxTel.Text+"<br/>"+ LabelDatumAfhaling.Text*/;
            }
            
            if (TextBoxNaam.Text != string.Empty && TextBoxEmail.Text != string.Empty && TextBoxTel.Text != string.Empty)
            {
                PanelType.Visible = true;
                PanelKlant.Visible = false;
                bericht += Label1bestellingen.Text;
            }
           

            }
    
                
           
           
           
        //de info om dit te doen heb ik van
        //http://www.c-sharpcorner.com/UploadFile/sourabh_mishra1/sending-an-e-mail-using-Asp-Net-with-C-Sharp/
        //en gebruik de azure extension SendGrid vanuit de marketplace deze is ook gratis!!!
        protected void ButtonBestel_Click(object sender, EventArgs e)
        {
          

            //foreach (var bestelItems in bestelling)
            //{
            //    bericht += " " + bestelItems.Soort + " " + bestelItems.KG + " " + bestelItems.Datum + "<br/>";
            //}
            clickonvolgende();
            PanelType.Visible = false;
            LabeleindeBestelling.Visible = true;
            LabeleindeBestelling.Text = "Bedankt voor uw bestelling! ";
          
            SendMailTo NieuweEmail = new SendMailTo(TextBoxEmail.Text, bericht);

            NieuweEmail.Send();
        }
    }
}