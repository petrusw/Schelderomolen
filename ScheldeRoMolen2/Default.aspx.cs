using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ScheldeRoMolen2;

namespace ScheldeRoMolen2
{
    public partial class _default : System.Web.UI.Page
    {
        string content = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            Read("~/content/indexText.txt");
            indexText.InnerHtml = content /*+"<br/>"+"<br/>"+"<br/>"*/;
            content = " ";
            Read("~/content/eerherstel.txt");
            eertext.InnerHtml = content;
        }
        private void Read(string Path)
        {
            string path = Server.MapPath(Path);// server.mappath is nodig voor de juiste relative link te leggen naar de file!!!
            
            using (StreamReader textReader = new StreamReader(path))
            {
                content = textReader.ReadLine();
                string contentWithLineBreaks = "";
                for (var i = 0; i < 5; i++)
                {
                    contentWithLineBreaks += content + "<br/>";
                    content = textReader.ReadLine();
                }
                //while(content != null)
                //{
                //    contentWithLineBreaks += content + "<br/>";
                //    content = textReader.ReadLine();
                //}
                content = contentWithLineBreaks;

            }
        }
    }
}