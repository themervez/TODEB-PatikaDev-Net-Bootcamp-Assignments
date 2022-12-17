using DAL.Abstract;
using Models.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Concrete.Dapper
{
    public class DapperPaymentRepository : IPaymentRepository
    {
        public void Delete(Payment payment)
        {
            throw new NotImplementedException();
        }

        public Payment Get(int id)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<Payment> GetAll()
        {
            throw new NotImplementedException();
        }

        public void Insert(Payment payment)
        {
            throw new NotImplementedException();
        }

        public void Update(Payment payment)
        {
            throw new NotImplementedException();
        }
    }
}
