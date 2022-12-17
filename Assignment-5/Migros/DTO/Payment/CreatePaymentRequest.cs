using Models.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO.Payment
{
    public class CreatePaymentRequest
    {
       // public int Id { get; set; }
        public decimal Amount { get; set; }
        public string Payment_Type { get; set; }
        public string Staff_Name { get; set; }

    }
}
