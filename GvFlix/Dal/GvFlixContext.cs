using Dal.Models;
using Microsoft.EntityFrameworkCore;

namespace Dal
{
    public class GvFlixContext : DbContext
    {
        public GvFlixContext(DbContextOptions<GvFlixContext> options) : base(options)
        {
        }

        public DbSet<Ator> Ator { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder
                .HasDefaultSchema("dbo");

            modelBuilder
                .Entity<Ator>();
        }
    }
}
