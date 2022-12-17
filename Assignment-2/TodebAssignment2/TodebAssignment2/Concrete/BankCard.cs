using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TodebAssignment2.Abstract;


namespace TodebAssignment2.Concrete
{
    public class BankCard : TodebCommissions
    {
        public BankCard(string username):base(username)
        {
        }

        public override void WritePrivateInfo() //Method Override
        {
            Console.WriteLine($"{_username} - {BankName}");
            base.WritePrivateInfo();
        }
    }
}

    
