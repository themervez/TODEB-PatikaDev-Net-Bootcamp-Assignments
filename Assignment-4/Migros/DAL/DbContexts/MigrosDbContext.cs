using Microsoft.EntityFrameworkCore;
using Models.Entities;

namespace DAL.DbContexts
{
    public class MigrosDbContext:DbContext
    {
        public DbSet<AdressDetails> AdressDetailses { get; set; }
        public DbSet<Customer> Customers { get; set; }
        public DbSet<Order> Orders { get; set; }
        public DbSet<Payment> Payments { get; set; }
        public DbSet<Product> Products { get; set; }
       

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            //SQL Connection with ORM
            base.OnConfiguring(optionsBuilder.UseSqlServer("Server=.;Database=Migros;Trusted_Connection=True"));
        }
    }
}
