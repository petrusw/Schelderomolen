using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ScheldeRoMolen2
{
    public class Bestelling
    {
        private DateTime datumValue;
        private string soortValue;
        private int kgValue;
        public DateTime Datum
        {
            get { return datumValue; }
            set { datumValue = value;}
        }
        public string Soort
        {
            get { return soortValue; }
            set { soortValue = value; }
        }
        public int KG
        {
            get { return kgValue; }
            set { kgValue = value; }
        }
        //public Bestelling(string soort,char kg)
        //{
        //    Soort = soort;
        //    KG = kg;
        //}
    }
}