using System;
using TodebAssignment2.Concrete;

namespace TodebAssignment2
{
    class Program
    {
        static void Main(string[] args)
        {
            var _BankCard1 = new BankCard("Ahmet Yılmaz");
            _BankCard1.BankName = "ZiraatBank";
            _BankCard1.Totalpersonnel = "566655568235";
            _BankCard1.WritePrivateInfo();


            var _BankCard2 = new BankCard("Selin Yılmaz");
            _BankCard2.BankName = "GarantiBank";
            _BankCard2.Totalpersonnel = "1256841399566";
            _BankCard2.WritePrivateInfo();
        }
    }
}
