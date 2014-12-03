using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ScheldeRoMolen2
{
    public class Meel
    {
        private string naamValue;
        public string Naam
        {
            get { return naamValue; }
            set { naamValue = value; }
        }

        private decimal prijsValue;
        public decimal Prijs
        {
            get { return prijsValue; }
            set { prijsValue = value; }
        }

        public Meel(string naam, decimal prijs)
        {
            Naam = naam;
            Prijs = prijs;
        }
    }
}