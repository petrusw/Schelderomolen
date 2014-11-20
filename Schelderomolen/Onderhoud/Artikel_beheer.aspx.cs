using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.IO;
using System.Data;

namespace Schelderomolen
{
    public partial class Artikel_beheer : System.Web.UI.Page
    {
        string isLoggedIn;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (this.IsPostBack != true)
            {
                //if (Request.Cookies != null)
                //{
                    //if (Request.Cookies["loginOk"] != null)
                if (Session["loginOk"] == "yes")
                    {
                        //string isLoggedin = Request.Cookies["loginOk"].Value;
                        //if (isLoggedin == "yes")
                        //{
                            string line;
                            DataTable dt = new DataTable();
                            dt.Columns.Add("Nr", typeof(Int32));
                            dt.Columns.Add("Soort", typeof(String));
                            dt.Columns.Add("Prijs", typeof(Decimal));
                            string filePath = Server.MapPath("../Gegevens/artikels.txt");
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

                            BindData();
                        //} // if (isLoggedin == "yes")
                        //else
                        //{
                        //    Response.Redirect("../Login.aspx");
                        //}
                    } //if (Request.Cookies["loginOk"] != null)
                    else
                    {
                        Response.Redirect("../Login.aspx",false);
                    }
                //} //if (Request.Cookies != null)
                //else
                //{
                //    Response.Redirect("../Login.aspx");
                //}
            }

        }
        

        protected void gridViewArtikels_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Create")
            {
                textBoxNr.Text = "";
                textBoxSoort.Text = string.Empty;
                textBoxPrijs.Text = "0,00";
                labelBewerking.Text = "Nieuw";
                textBoxNr.Focus();

                Details.Visible = true;
            }
        }

        protected void gridViewArtikels_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            DataTable dt = (DataTable)Session["ArtikelTabel"];
            //dt.Rows.Find(Convert.ToInt32(textBoxNr.Text)).Delete();
            dt.Rows.RemoveAt(e.RowIndex);

            gridViewArtikels.EditIndex = -1;

            Session["ArtikelTabel"] = dt;
            BindData();

            Wegschrijven_TekstBestand();
        }

        protected void gridViewArtikels_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = gridViewArtikels.Rows[e.RowIndex];
            textBoxNr.Text = row.Cells[3].Text;
            textBoxSoort.Text = row.Cells[4].Text;
            textBoxPrijs.Text = row.Cells[5].Text;
            labelBewerking.Text = "Bewerken";
            labelRowIndex.Text = e.RowIndex.ToString();
            textBoxNr.Focus();

            Details.Visible = true;
        }

        protected void gridViewArtikels_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gridViewArtikels.EditIndex = e.NewEditIndex;
            BindData();
        }

        private void BindData()
        {
            gridViewArtikels.DataSource = Session["ArtikelTabel"];
            gridViewArtikels.DataBind();
        }

        protected void buttonOK_Click(object sender, EventArgs e)
        {
            switch (labelBewerking.Text)
            {
                case "Nieuw":
                {
                    DataTable dt = (DataTable)Session["ArtikelTabel"];
                    DataRow tableRow = dt.NewRow();
                    tableRow["Nr"] = Convert.ToInt32(textBoxNr.Text);
                    tableRow["Soort"] = textBoxSoort.Text;
                    tableRow["Prijs"] = Convert.ToDecimal(textBoxPrijs.Text);
                    dt.Rows.Add(tableRow);

                    gridViewArtikels.EditIndex = -1;

                    Session["ArtikelTabel"] = dt;
                    BindData();

                    Wegschrijven_TekstBestand();

                    Details.Visible = false;
                    break;
                }
                case "Bewerken":
                { 
                    DataTable dt = (DataTable)Session["ArtikelTabel"];

                    Int32 rowIndex = Convert.ToInt32(labelRowIndex.Text);
                    GridViewRow row = gridViewArtikels.Rows[rowIndex];
                    dt.Rows[row.DataItemIndex]["Nr"] = Convert.ToInt32(textBoxNr.Text);
                    dt.Rows[row.DataItemIndex]["Soort"] = textBoxSoort.Text;
                    dt.Rows[row.DataItemIndex]["Prijs"] = Convert.ToDecimal(textBoxPrijs.Text);

                    gridViewArtikels.EditIndex = -1;

                    Session["ArtikelTabel"] = dt;
                    BindData();

                    Wegschrijven_TekstBestand();

                    Details.Visible = false;
                    break;
                }
            }
        }

        protected void Wegschrijven_TekstBestand()
        {
            string filePath = Server.MapPath("../Gegevens/artikels.txt");
            StreamWriter sw = new StreamWriter(filePath, false);
            DataTable dt = (DataTable)Session["ArtikelTabel"];
            foreach (DataRow row in dt.Rows)
            {
                Int32 nr = Convert.ToInt32(row["Nr"].ToString());
                string soort = row["Soort"].ToString();
                decimal prijs = Convert.ToDecimal(row["Prijs"].ToString());
                sw.WriteLine(nr.ToString() + ';' + soort.ToString() + ';' + prijs.ToString());
            }
            sw.Close();
        
        }

        protected void gridViewArtikels_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gridViewArtikels.DataSource = Session["ArtikelTabel"];
            gridViewArtikels.PageIndex = e.NewPageIndex;
            gridViewArtikels.DataBind();
        }
    }
}