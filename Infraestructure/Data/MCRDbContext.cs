using Domain.Models;
using Microsoft.EntityFrameworkCore;

namespace Infraestructure.Data
{
    public class MCRDbContext : DbContext
    {
        public DbSet<Localidad> Localidad { get; set; }
        public DbSet<Mercado> Mercado { get; set; }
        public DbSet<Vehiculo> Vehiculo{ get; set; }
        public DbSet<MercadoVehiculo> MercadoVehiculo { get; set; }

        public MCRDbContext(DbContextOptions<MCRDbContext> options) : base(options)
        {
        }
    }

}
