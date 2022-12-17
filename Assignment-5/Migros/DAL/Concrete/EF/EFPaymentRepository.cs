using DAL.Abstract;
using DAL.DbContexts;
using Models.Entities;
using System.Collections.Generic;
using System.Linq;

namespace DAL.Concrete.EF
{
    public class EFPaymentRepository : IPaymentRepository
    {
        private MigrosDbContext context;
        public EFPaymentRepository(MigrosDbContext context)
        {
            this.context = context;
        }

        public void Delete(Payment payment)
        {
            context.Payments.Remove(payment);
            context.SaveChanges();
        }

        public Payment Get(int id)
        {
            return context.Payments.FirstOrDefault(x => x.Id == id);
        }

        public IEnumerable<Payment> GetAll()
        {
            return context.Payments.ToList();
        }

        public void Insert(Payment payment)
        {
            context.Payments.Add(payment);
            context.SaveChanges();
        }

        public void Update(Payment payment)
        {
            context.Payments.Update(payment);
            context.SaveChanges();
        }
    }
}
