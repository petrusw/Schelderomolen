// -----------------------------------------------------------------------------------------------------------
//
//
//                                        version2
//
//
//------------------------------------------------------------------------------------------------------------


using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using Schelderomolen.Klassen;
using System.Text;
using System.Net.Mail;
using System.Configuration;
using System.IO;

namespace Schelderomolen
{

    public partial class Default : System.Web.UI.Page
    {
        //ArrayList bestel1 = new ArrayList();
        //ArrayList bestel2 = new ArrayList();
        //ArrayList bestel3 = new ArrayList();
        //ArrayList bestel4 = new ArrayList();
        //ArrayList bestel5 = new ArrayList();
        
        static string bestelGenoteerd = "Bestelling genoteerd";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (this.IsPostBack != true) // if (!this.IsPostback)
            {
                DateTime vandaag = DateTime.Today;
                DateTime tweedeZondag = new DateTime();
                int jaar = vandaag.Year;
                int maand = vandaag.Month;
                DateTime beginMaand = new DateTime(jaar, maand, 1);
                // bereken tweede zondag van de maand
                berekenTweedeZondag(beginMaand, ref tweedeZondag);
                if (vandaag > tweedeZondag)
                {
                    if (maand != 12)
                    {
                        beginMaand = beginMaand.AddMonths(1);
                    }
                    else
                    {
                        beginMaand = new DateTime(jaar + 1, 1, 1);
                    }
                    tweedeZondag = new DateTime();
                    berekenTweedeZondag(beginMaand, ref tweedeZondag);
                    labelDatumAfhaling.Text = tweedeZondag.ToLongDateString();
                }
                else
                {
                    labelDatumAfhaling.Text = tweedeZondag.ToLongDateString();
                }

                List<Soort> soorten = new List<Soort>();
                soorten.Add(new Soort(0, "Nostalgie (echt volkoren-tarwemeel 100%)", 1.10m));
                soorten.Add(new Soort(1, "Tarwemeel (gebuild op 85%)", 1.15m));
                soorten.Add(new Soort(2, "Tarwebloem (gebuild op 65%)", 1.20m));
                soorten.Add(new Soort(3, "Speltmeel (100%)", 2.05m));
                soorten.Add(new Soort(4, "Speltmeel (raszuivere soort)", 3.45m));
                soorten.Add(new Soort(5, "Speltbloem", 2.45m));
                soorten.Add(new Soort(6, "Masteluin (rogge/tarwe mengeling)", 1.20m));
                soorten.Add(new Soort(7, "Meergranenmeel (6 granen+2zaden)", 1.60m));
                soorten.Add(new Soort(8, "Meergranenmeel donker (Zwarte woud)", 1.70m));
                soorten.Add(new Soort(9, "Khorasanmeel (KAMUT)", 2.85m));
                foreach (Soort soort in soorten)
                {
                    switch (soort.NummerSoort.ToString())
                    {
                        case "0":
                            checkBoxNummerSoort0.Text = soort.NaamSoort;
                            labelPrijs0.Text = soort.PrijsSoort.ToString();
                            break;
                        case "1":
                            checkBoxNummerSoort1.Text = soort.NaamSoort;
                            labelPrijs1.Text = soort.PrijsSoort.ToString();
                            break;
                        case "2":
                            checkBoxNummerSoort2.Text = soort.NaamSoort;
                            labelPrijs2.Text = soort.PrijsSoort.ToString();
                            break;
                        case "3":
                            checkBoxNummerSoort3.Text = soort.NaamSoort;
                            labelPrijs3.Text = soort.PrijsSoort.ToString();
                            break;
                        case "4":
                            checkBoxNummerSoort4.Text = soort.NaamSoort;
                            labelPrijs4.Text = soort.PrijsSoort.ToString();
                            break;
                        case "5":
                            checkBoxNummerSoort5.Text = soort.NaamSoort;
                            labelPrijs5.Text = soort.PrijsSoort.ToString();
                            break;
                        case "6":
                            checkBoxNummerSoort6.Text = soort.NaamSoort;
                            labelPrijs6.Text = soort.PrijsSoort.ToString();
                            break;
                        case "7":
                            checkBoxNummerSoort7.Text = soort.NaamSoort;
                            labelPrijs7.Text = soort.PrijsSoort.ToString();
                            break;
                        case "8":
                            checkBoxNummerSoort8.Text = soort.NaamSoort;
                            labelPrijs8.Text = soort.PrijsSoort.ToString();
                            break;
                        case "9":
                            checkBoxNummerSoort9.Text = soort.NaamSoort;
                            labelPrijs9.Text = soort.PrijsSoort.ToString();
                            break;
                    }
                }
            }
            else
            {

            }
        }

        public void berekenTweedeZondag(DateTime datum, ref DateTime tweedeZondag)
        {
            // bereken tweede zondag van de maand
            int teller = 0;
            for (int i = 1; teller < 2; i++)
            {
                if (datum.DayOfWeek == 0)
                    teller++;
                if (teller != 2)
                    datum = datum.AddDays(1);
            }
            tweedeZondag = datum;
        }



        private void checkBoxOff()
        {
            checkBoxNummerSoort0.Checked = false;
            checkBoxNummerSoort1.Checked = false;
            checkBoxNummerSoort2.Checked = false;
            checkBoxNummerSoort3.Checked = false;
            checkBoxNummerSoort4.Checked = false;
            checkBoxNummerSoort5.Checked = false;
            checkBoxNummerSoort6.Checked = false;
            checkBoxNummerSoort7.Checked = false;
            checkBoxNummerSoort8.Checked = false;
            checkBoxNummerSoort9.Checked = false;
            textBoxHoev0.Text = "0";// string.Empty;
            textBoxHoev1.Text = "0";//string.Empty;
            textBoxHoev2.Text = "0";//string.Empty;
            textBoxHoev3.Text = "0";//string.Empty;
            textBoxHoev4.Text = "0";//string.Empty;
            textBoxHoev5.Text = "0";//string.Empty;
            textBoxHoev6.Text = "0";//string.Empty;
            textBoxHoev7.Text = "0";//string.Empty;
            textBoxHoev8.Text = "0";//string.Empty;
            textBoxHoev9.Text = "0";//string.Empty;
        }

        protected void buttonBestel_Click(object sender, EventArgs e)
        {

            panelBestelling.Visible = true;
            Button knop = (Button)sender;
            labelNrKnop.Text = knop.CommandArgument;
            switch (knop.CommandArgument)
            {
                case "1":
                    ArrayList bestel1 = (ArrayList)Session["bestel1"];
                    if (bestel1.Count > 0)
                    {
                        // Lees gegevens uit Array
                        leesArrayList(bestel1);
                    }
                    else
                    {
                        checkBoxOff();
                    }
                    labelBestellingVoor.Text = textBoxPersoon1.Text;

                    break;
                case "2":
                    ArrayList bestel2 = (ArrayList)Session["bestel2"];
                    if (bestel2.Count > 0)
                    {
                        // Lees gegevens uit Array
                        leesArrayList(bestel2);
                    }
                    else
                    {
                        checkBoxOff();
                    }
                    labelBestellingVoor.Text = textBoxPersoon2.Text;
                    break;
                case "3":
                    ArrayList bestel3 = (ArrayList)Session["bestel3"];
                    if (bestel3.Count > 0)
                    {
                        // Lees gegevens uit Array
                        leesArrayList(bestel3);
                    }
                    else
                    {
                        checkBoxOff();
                    }
                    labelBestellingVoor.Text = textBoxPersoon3.Text;
                    break;
                case "4":
                    ArrayList bestel4 = (ArrayList)Session["bestel4"];
                    if (bestel4.Count > 0)
                    {
                        // Lees gegevens uit Array
                        leesArrayList(bestel4);
                    }
                    else
                    {
                        checkBoxOff();
                    }
                    labelBestellingVoor.Text = textBoxPersoon4.Text;
                    break;
                case "5":
                    ArrayList bestel5 = (ArrayList)Session["bestel5"];
                    if (bestel5.Count > 0)
                    {
                        // Lees gegevens uit Array
                        leesArrayList(bestel5);
                    }
                    else
                    {
                        checkBoxOff();
                    }
                    labelBestellingVoor.Text = textBoxPersoon5.Text;
                    break;
            }
        }

        protected void buttonOkBestel_Click(object sender, EventArgs e)
        {
            // bestelling opslaan in ArrayList
            stockeer_Bestelling(labelNrKnop.Text);
            decimal totBestel = decimal.Parse(labelTotaalBestelling1.Text) + decimal.Parse(labelTotaalBestelling2.Text) +
                                decimal.Parse(labelTotaalBestelling3.Text) + decimal.Parse(labelTotaalBestelling4.Text) 
                              + decimal.Parse(labelTotaalBestelling5.Text);
            labelTotaleBestelling.Text = totBestel.ToString();
            if (totBestel != 0)
            {
                buttonBestellingDoormailen.Enabled = true;
            }
            else
                buttonBestellingDoormailen.Enabled = false;
        }

        private void stockeer_Bestelling(string bestellingVoor)
        {
            switch (bestellingVoor)
            {
                case "1":
                    ArrayList bestel1 = (ArrayList)Session["bestel1"];
                    vulArrayList(bestel1,1);
                    labelBestel1.Text = bestelGenoteerd;
                    Session["bestel1"] = bestel1;
                    break;
                case "2":
                    ArrayList bestel2 = (ArrayList)Session["bestel2"];
                    vulArrayList(bestel2,2);
                    labelBestel2.Text = bestelGenoteerd;
                    Session["bestel2"] = bestel2;
                    break;
                case "3":
                    ArrayList bestel3 = (ArrayList)Session["bestel3"];
                    vulArrayList(bestel3,3);
                    labelBestel3.Text = bestelGenoteerd;
                    Session["bestel3"] = bestel3;
                    break;
                case "4":
                    ArrayList bestel4 = (ArrayList)Session["bestel4"];
                    vulArrayList(bestel4,4);
                    labelBestel4.Text = bestelGenoteerd;
                    Session["bestel4"] = bestel4;
                    break;
                case "5":
                    ArrayList bestel5 = (ArrayList)Session["bestel5"];
                    vulArrayList(bestel5,5);
                    labelBestel5.Text = bestelGenoteerd;
                    Session["bestel5"] = bestel5;
                    break;
            }
        }

        private void vulArrayList(ArrayList bestel, int nr)
        {           
            bestel.Clear();
            // vul ArrayList
            bestel.Add(checkBoxNummerSoort0.Checked.ToString() + '/' + checkBoxNummerSoort0.Text.ToString() + '/' + textBoxHoev0.Text.ToString() + '@' + labelPrijs0.Text.ToString());
            bestel.Add(checkBoxNummerSoort1.Checked.ToString() + '/' + checkBoxNummerSoort1.Text.ToString() + '/' + textBoxHoev1.Text.ToString() + '@' + labelPrijs1.Text.ToString());
            bestel.Add(checkBoxNummerSoort2.Checked.ToString() + '/' + checkBoxNummerSoort2.Text.ToString() + '/' + textBoxHoev2.Text.ToString() + '@' + labelPrijs2.Text.ToString());
            bestel.Add(checkBoxNummerSoort3.Checked.ToString() + '/' + checkBoxNummerSoort3.Text.ToString() + '/' + textBoxHoev3.Text.ToString() + '@' + labelPrijs3.Text.ToString());
            bestel.Add(checkBoxNummerSoort4.Checked.ToString() + '/' + checkBoxNummerSoort4.Text.ToString() + '/' + textBoxHoev4.Text.ToString() + '@' + labelPrijs4.Text.ToString());
            bestel.Add(checkBoxNummerSoort5.Checked.ToString() + '/' + checkBoxNummerSoort5.Text.ToString() + '/' + textBoxHoev5.Text.ToString() + '@' + labelPrijs5.Text.ToString());
            bestel.Add(checkBoxNummerSoort6.Checked.ToString() + '/' + checkBoxNummerSoort6.Text.ToString() + '/' + textBoxHoev6.Text.ToString() + '@' + labelPrijs6.Text.ToString());
            bestel.Add(checkBoxNummerSoort7.Checked.ToString() + '/' + checkBoxNummerSoort7.Text.ToString() + '/' + textBoxHoev7.Text.ToString() + '@' + labelPrijs7.Text.ToString());
            bestel.Add(checkBoxNummerSoort8.Checked.ToString() + '/' + checkBoxNummerSoort8.Text.ToString() + '/' + textBoxHoev8.Text.ToString() + '@' + labelPrijs8.Text.ToString());
            bestel.Add(checkBoxNummerSoort9.Checked.ToString() + '/' + checkBoxNummerSoort9.Text.ToString() + '/' + textBoxHoev9.Text.ToString() + '@' + labelPrijs9.Text.ToString());
            decimal totaal = (decimal.Parse(labelPrijs0.Text) * decimal.Parse(textBoxHoev0.Text));
            totaal += (decimal.Parse(labelPrijs1.Text) * decimal.Parse(textBoxHoev1.Text));
            totaal += (decimal.Parse(labelPrijs2.Text) * decimal.Parse(textBoxHoev2.Text));
            totaal += (decimal.Parse(labelPrijs3.Text) * decimal.Parse(textBoxHoev3.Text));
            totaal += (decimal.Parse(labelPrijs4.Text) * decimal.Parse(textBoxHoev4.Text));
            totaal += (decimal.Parse(labelPrijs5.Text) * decimal.Parse(textBoxHoev5.Text));
            totaal += (decimal.Parse(labelPrijs6.Text) * decimal.Parse(textBoxHoev6.Text));
            totaal += (decimal.Parse(labelPrijs7.Text) * decimal.Parse(textBoxHoev7.Text));
            totaal += (decimal.Parse(labelPrijs8.Text) * decimal.Parse(textBoxHoev8.Text));
            totaal += (decimal.Parse(labelPrijs9.Text) * decimal.Parse(textBoxHoev9.Text));
            switch (nr)
            {                                        
                case 1:
                    labelTotaalBestelling1.Text = totaal.ToString();
                break;
                case 2:
                    labelTotaalBestelling2.Text = totaal.ToString();
                break;
                case 3:
                    labelTotaalBestelling3.Text = totaal.ToString();
                break;
                case 4:
                    labelTotaalBestelling4.Text = totaal.ToString();
                break;
                case 5:
                    labelTotaalBestelling5.Text = totaal.ToString();
                break;

            }
            panelBestelling.Visible = false;
        }

        private void leesArrayList(ArrayList bestel)
        {
            int index = 0;
            checkBoxOff();
            // vul panel
            foreach (string lijst in bestel)
            {
                int first = lijst.IndexOf('/');
                int last = lijst.LastIndexOf('/');
                int prijsStart = lijst.IndexOf('@');
                string check = lijst.Substring(0, lijst.IndexOf('/'));
                string omschrijving = lijst.Substring(lijst.IndexOf('/') + 1, last - first - 1);
                string hoev = lijst.Substring(lijst.LastIndexOf('/') + 1, prijsStart - last -1);
                string prijs = lijst.Substring(prijsStart + 1);
                switch (index)
                { 
                    case 0:
                        if (check == "True")
                        {
                            checkBoxNummerSoort0.Checked = true;
                            textBoxHoev0.Text = hoev;
                        }
                        break;
                    case 1:
                        if (check == "True")
                        {
                            checkBoxNummerSoort1.Checked = true;
                            textBoxHoev1.Text = hoev;
                        }
                        break;
                    case 2:
                        if (check == "True")
                        {
                            checkBoxNummerSoort2.Checked = true;
                            textBoxHoev2.Text = hoev;
                        }
                        break;
                    case 3:
                        if (check == "True")
                        {
                            checkBoxNummerSoort3.Checked = true;
                            textBoxHoev3.Text = hoev;
                        }
                        break;
                    case 4:
                        if (check == "True")
                        {
                            checkBoxNummerSoort4.Checked = true;
                            textBoxHoev4.Text = hoev;
                        }
                        break;
                    case 5:
                        if (check == "True")
                        {
                            checkBoxNummerSoort5.Checked = true;
                            textBoxHoev5.Text = hoev;
                        }
                        break;
                    case 6:
                        if (check == "True")
                        {
                            checkBoxNummerSoort6.Checked = true;
                            textBoxHoev6.Text = hoev;
                        }
                        break;
                    case 7:
                        if (check == "True")
                        {
                            checkBoxNummerSoort7.Checked = true;
                            textBoxHoev7.Text = hoev;
                        }
                        break;
                    case 8:
                        if (check == "True")
                        {
                            checkBoxNummerSoort8.Checked = true;
                            textBoxHoev8.Text = hoev;
                        }
                        break;
                    case 9:
                        if (check == "True")
                        {
                            checkBoxNummerSoort9.Checked = true;
                            textBoxHoev9.Text = hoev;
                        }
                        break;
                }
                index++; 
            }

            panelBestelling.Visible = true;
        }

        protected void checkBoxNummerSoort0_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBoxNummerSoort0.Checked == false)
            {
                textBoxHoev0.Text = "0";
            }
            else
            {
                textBoxHoev0.Focus();
                textBoxHoev0.Attributes.Add("onfocusin", "select();");
            }
        }

        protected void checkBoxNummerSoort1_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBoxNummerSoort1.Checked == false)
            {
                textBoxHoev1.Text = "0";
            }
            else
            {
                textBoxHoev1.Focus();
                textBoxHoev1.Attributes.Add("onfocusin", "select();");
            }
        }

        protected void checkBoxNummerSoort2_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBoxNummerSoort2.Checked == false)
            {
                textBoxHoev2.Text = "0";
            }
            else
            {
                textBoxHoev2.Focus();
                textBoxHoev2.Attributes.Add("onfocusin", "select();");
            }
        }

        protected void checkBoxNummerSoort3_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBoxNummerSoort3.Checked == false)
            {
                textBoxHoev3.Text = "0";
            }
            else
            {
                textBoxHoev3.Focus();
                textBoxHoev3.Attributes.Add("onfocusin", "select();");
            }
        }

        protected void checkBoxNummerSoort4_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBoxNummerSoort4.Checked == false)
            {
                textBoxHoev4.Text = "0";
            }
            else
            {
                textBoxHoev4.Focus();
                textBoxHoev4.Attributes.Add("onfocusin", "select();");
            }
        }
        protected void checkBoxNummerSoort5_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBoxNummerSoort5.Checked == false)
            {
                textBoxHoev5.Text = "0";
            }
            else
            {
                textBoxHoev5.Focus();
                textBoxHoev5.Attributes.Add("onfocusin", "select();");
            }
        }
        protected void checkBoxNummerSoort6_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBoxNummerSoort6.Checked == false)
            {
                textBoxHoev6.Text = "0";
            }
            else
            {
                textBoxHoev6.Focus();
                textBoxHoev6.Attributes.Add("onfocusin", "select();");
            }
        }

        protected void checkBoxNummerSoort7_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBoxNummerSoort7.Checked == false)
            {
                textBoxHoev7.Text = "0";
            }
            else
            {
                textBoxHoev7.Focus();
                textBoxHoev7.Attributes.Add("onfocusin", "select();");
            }
        }

        protected void checkBoxNummerSoort8_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBoxNummerSoort8.Checked == false)
            {
                textBoxHoev8.Text = "0";
            }
            else
            {
                textBoxHoev8.Focus();
                textBoxHoev8.Attributes.Add("onfocusin", "select();");
            }
        }
        protected void checkBoxNummerSoort9_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBoxNummerSoort9.Checked == false)
            {
                textBoxHoev9.Text = "0";
            }
            else
            {
                textBoxHoev9.Focus();
                textBoxHoev9.Attributes.Add("onfocusin", "select();");
            }
        }

        protected void buttonBestellingDoormailen_Click(object sender, EventArgs e)
        {
            try
            {
                string Email = textBoxEmail.Text;
                string EmailBcc = textBoxEmail.Text;
                string Emailto = ConfigurationManager.AppSettings["Email"].ToString();
                MailMessage mail = new MailMessage(Email, Emailto);
                mail.Bcc.Add(EmailBcc);
                mail.Subject = "Bestelling meel voor :" + textBoxAfgehaald.Text + " " + labelDatumAfhaling.Text;
                //mail.Body = "Dit is een test email ivm een bestelling aan de Schelderomolen !";
                StringBuilder sb = new StringBuilder();
                sb.AppendLine("Beste Paul,");
                sb.AppendLine();
                sb.AppendLine("Graag hadden wij volgende bestelling doorgegeven voor a.s. " + labelDatumAfhaling.Text);
                sb.AppendLine();
                if (labelTotaalBestelling1.Text != "0" && labelTotaalBestelling1.Text != "0,00") 
                {
                    sb.AppendLine(textBoxPersoon1.Text);
                    sb.AppendLine(new string('-', textBoxPersoon1.Text.Length));
                    ArrayList bestel1 = (ArrayList)Session["bestel1"];
                    // Lees gegevens bestelling 1
                    leesBestellingMail(bestel1, sb);
                }
                if (labelTotaalBestelling2.Text != "0" && labelTotaalBestelling2.Text != "0,00") 
                {
                    sb.AppendLine(textBoxPersoon2.Text);
                    sb.AppendLine(new string('-', textBoxPersoon2.Text.Length));
                    ArrayList bestel2 = (ArrayList)Session["bestel2"];
                    // Lees gegevens bestelling 2
                    leesBestellingMail(bestel2, sb);
                }
                if (labelTotaalBestelling3.Text != "0" && labelTotaalBestelling3.Text != "0,00") 
                {
                    sb.AppendLine(textBoxPersoon3.Text);
                    sb.AppendLine(new string('-', textBoxPersoon3.Text.Length));
                    ArrayList bestel3 = (ArrayList)Session["bestel3"];
                    // Lees gegevens bestelling 3
                    leesBestellingMail(bestel3, sb);
                }
                if (labelTotaalBestelling4.Text != "0" && labelTotaalBestelling4.Text != "0,00") 
                {
                    sb.AppendLine(textBoxPersoon4.Text);
                    sb.AppendLine(new string('-', textBoxPersoon4.Text.Length));
                    ArrayList bestel4 = (ArrayList)Session["bestel4"];
                    // Lees gegevens bestelling 4
                    leesBestellingMail(bestel4, sb);
                }
                if (labelTotaalBestelling5.Text != "0" && labelTotaalBestelling5.Text != "0,00") 
                {
                    sb.AppendLine(textBoxPersoon5.Text);
                    sb.AppendLine(new string('-', textBoxPersoon5.Text.Length));
                    ArrayList bestel5 = (ArrayList)Session["bestel5"];
                    // Lees gegevens bestelling 5
                    leesBestellingMail(bestel5, sb);
                }
                sb.AppendLine();
                sb.AppendLine("Met vriendelijke groeten,");
                sb.AppendLine();
                sb.AppendLine(textBoxAfgehaald.Text);
                sb.AppendLine();
                sb.AppendLine("Email :" + textBoxEmail.Text);
                sb.AppendLine("Tel/Gsm :" + textBoxTel.Text);
                mail.Body = sb.ToString();
                mail.IsBodyHtml = false;//true;
                SmtpClient smtp = new SmtpClient();
                smtp.Send(mail);
                //Response.Write("Email send successfully");
                labelMailVerstuurd.Visible = true;
                Response.Redirect("/Bestelling_doorgemaild.aspx",false);
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        public void leesBestellingMail(ArrayList bestel, StringBuilder sb)
        { 
         int index = 0;
            checkBoxOff();
            // vul panel
            foreach (string lijst in bestel)
            {
                int first = lijst.IndexOf('/');
                int last = lijst.LastIndexOf('/');
                int prijsStart = lijst.IndexOf('@');
                string check = lijst.Substring(0, lijst.IndexOf('/'));
                string omschrijving = lijst.Substring(lijst.IndexOf('/') + 1, last - first - 1);
                string hoev = lijst.Substring(lijst.LastIndexOf('/') + 1, prijsStart - last - 1);
                switch (index)
                {
                    case 0:
                        if (check == "True")
                        {
                            sb.AppendLine(hoev + " Kg " + omschrijving);   
                        }
                        break;
                    case 1:
                        if (check == "True")
                        {
                            sb.AppendLine(hoev + " Kg " + omschrijving);   
                        }
                        break;
                    case 2:
                        if (check == "True")
                        {
                            sb.AppendLine(hoev + " Kg " + omschrijving);
                        }
                        break;
                    case 3:
                        if (check == "True")
                        {
                            sb.AppendLine(hoev + " Kg " + omschrijving);
                        }
                        break;
                    case 4:
                        if (check == "True")
                        {
                            sb.AppendLine(hoev + " Kg " + omschrijving);
                        }
                        break;
                    case 5:
                        if (check == "True")
                        {
                            sb.AppendLine(hoev + " Kg " + omschrijving);
                        }
                        break;
                    case 6:
                        if (check == "True")
                        {
                            sb.AppendLine(hoev + " Kg " + omschrijving);
                        }
                        break;
                    case 7:
                        if (check == "True")
                        {
                            sb.AppendLine(hoev + " Kg " + omschrijving);
                        }
                        break;
                    case 8:
                        if (check == "True")
                        {
                            sb.AppendLine(hoev + " Kg " + omschrijving);
                        }
                        break;
                    case 9:
                        if (check == "True")
                        {
                            sb.AppendLine(hoev + " Kg " + omschrijving);
                        }
                        break;
                }
                index++;
            }
            sb.AppendLine();
        }
    }
}