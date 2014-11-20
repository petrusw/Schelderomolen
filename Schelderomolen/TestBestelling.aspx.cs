using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

namespace Schelderomolen
{
    public partial class TestBestelling : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (this.IsPostBack != true)
            {
                string line;
                DataTable dt = new DataTable();
                dt.Columns.Add("Nr", typeof(Int32));
                dt.Columns.Add("Soort", typeof(String));
                dt.Columns.Add("Prijs", typeof(Decimal));
                string filePath = Server.MapPath("/Gegevens/artikels.txt");
                using (StreamReader sr = new StreamReader(filePath))
                {
                    while ((line = sr.ReadLine()) != null)
                    {
                        string[] parts = line.Split(';');
                        var row = dt.NewRow();
                        for (int i = 0; i < parts.Length; i++)
                        {
                            row[i] = parts[i];
                        }
                        // important thing!
                        dt.Rows.Add(row);
                    }
                    sr.Close();
                }

                Session["ArtikelTabel"] = dt;
                int aantalArt = dt.Rows.Count;
                for (int i = 0; i < aantalArt; i++)
                {
                    LiteralControl literalBreak = new LiteralControl("<br />");
                    CheckBox myCheckBox = new CheckBox();
                    myCheckBox.ID = "checkBoxNummerSoort" + i;
                    myCheckBox.Attributes.Add("runat", "server");
                   
                    myCheckBox.AutoPostBack = false;
                    myCheckBox.Text = dt.Rows[i]["Soort"].ToString();
                    myCheckBox.Width = 300;
                    myCheckBox.Height = 19;
                    myCheckBox.Attributes.Add("OnCheckedChanged", myCheckBox.ID + "_CheckedChanged");
                    if (i == 0)
                        myCheckBox.CheckedChanged += new EventHandler(checkBoxNummerSoort0_CheckedChanged);
                    leftcolumn.Controls.Add(myCheckBox);
                    leftcolumn.Controls.Add(literalBreak);
                    //-----------
                    Label myLabel = new Label();
                    myLabel.ID = "labelPrijs" + i;
                    myLabel.Text = dt.Rows[i]["Prijs"].ToString()+" €";
                    myLabel.Height = 19;
                    middlecolumn.Controls.Add(myLabel);
                    middlecolumn.Controls.Add(literalBreak);
                    //---------
                    //TextBox myTextBox = new TextBox();
                    //myTextBox.ID = "textBoxHoev" + i;
                    //myTextBox.Attributes.Add("runat", "server");
                    //myTextBox.Text = "0";
                    //myTextBox.Height = 15;
                    //myTextBox.Width = 20;
                    //rightcolumn.Controls.Add(myTextBox);
                    //rightcolumn.Controls.Add(literalBreak);
                
                }
            }
        }

        protected void buttonOkBestel_Click(object sender, EventArgs e)
        {

        }
        protected void checkBoxNummerSoort0_CheckedChanged(object sender, EventArgs e)
        {
            
        }
    }
}