using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Schelderomolen.Klassen
{
    public class Soort
    {
        private int nummerSoortValue;
        public int NummerSoort
        {
            get { return nummerSoortValue; }
            set { nummerSoortValue = value; }
        }

        private string naamSoortValue;
        public string NaamSoort
        {
            get { return naamSoortValue; }
            set { naamSoortValue = value; }       
        }

        private decimal prijsSoortValue;
        public decimal PrijsSoort
        {
            get { return prijsSoortValue; }
            set { prijsSoortValue = value; }
        }

        public Soort(int nummerSoort, string naamSoort, decimal prijsSoort)
        {
            this.NummerSoort = nummerSoort;
            this.NaamSoort = naamSoort;
            this.PrijsSoort = prijsSoort;
        }
    }
}