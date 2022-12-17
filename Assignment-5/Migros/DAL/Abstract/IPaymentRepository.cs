using Models.Entities;
using System.Collections.Generic;

namespace DAL.Abstract
{
    public interface IPaymentRepository
    {
        public IEnumerable<Payment> GetAll();
        public void Insert(Payment payment);
        public void Update(Payment payment);
        public void Delete(Payment payment);
        public Payment Get(int id);
    }
}
