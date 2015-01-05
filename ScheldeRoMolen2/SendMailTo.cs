using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using System.Net.Mail;


namespace ScheldeRoMolen2
{
    public class SendMailTo
    {
        private string emailAdressValue;
        private string textValue;
        private string mailtoMeValue;
        private string Subject;
        public void Send()
        {
            MailMessage mail = new MailMessage();
            //mail.To.Add(MailToMe);
            mail.To.Add(EmailAdress);
            mail.CC.Add("petrus.ward@gmail.com");
            mail.From = new MailAddress("Noreply@scheldemolen.com");
            mail.Subject = Subject + DateTime.Now.Date.ToShortDateString();
            mail.Body = Text;
            mail.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.sendgrid.net";
            smtp.Port = 587;
            smtp.UseDefaultCredentials = false;
            smtp.Credentials = new System.Net.NetworkCredential("azure_8a185c09956baf2adc8f2b7a930e2cb3@azure.com", "R6kF6h8rimi7Am6");
            smtp.EnableSsl = true;
            smtp.Send(mail);
        }

        public string Text
        {
            get { return textValue; }
            set { textValue = value; }
        }
        public string MailToMe
        {
            get { return mailtoMeValue; }
            set { mailtoMeValue = "petrus.ward@gmail.com"; }
        }



        public string EmailAdress 
        {
            get { return emailAdressValue; }
            set { emailAdressValue = value; }
        }
        public SendMailTo() { }
        public SendMailTo(string emailAdress,string text,string subject)
        {
            EmailAdress = emailAdress;
            Subject = subject;
            Text = text;
        }
    }
}