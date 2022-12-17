using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TodebAssignment2.Abstract
{
    public abstract  class TodebCommissions
    {
        protected string _username { get; set; } 

        public TodebCommissions(string username)//Constructor method
        {
            _username = username;//Pulled the username data with the constructor method
        }

        public string BankName { get; set; }//Bank Name
        public string Totalpersonnel { get; set; }//Total number of personnel


        public virtual void WritePrivateInfo()//Method of confidential information
        {
            Console.WriteLine(_username);
        }



    }
}
