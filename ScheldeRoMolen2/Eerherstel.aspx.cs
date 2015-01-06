using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ScheldeRoMolen2
{
    public partial class Eerherstel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string path = Server.MapPath("~/content/eerherstel.txt");// server.mappath is nodig voor de juiste relative link te leggen naar de file!!!
            string content;
            using (StreamReader textReader = new StreamReader(path))
            {
                content = textReader.ReadLine();
                string contentWithLineBreaks = "";
                while (content != null)
                {
                    contentWithLineBreaks += content + "<br/>";
                    content = textReader.ReadLine();
                }
                content = contentWithLineBreaks;
            }

            
            eerherstelText.InnerHtml = content + "<br/>" + "<br/>" + "<br/>";
        }
    }
}