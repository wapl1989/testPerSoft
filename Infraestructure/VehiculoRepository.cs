using Domain.Models;
using Infraestructure.Data;
using Infraestructure.Interfaces;
using Microsoft.EntityFrameworkCore;

namespace Infraestructure
{
    public class VehiculoRepository : IVehiculoRepository
    {
        private readonly MCRDbContext _context;

        public VehiculoRepository(MCRDbContext context)
        {
            _context = context;
        }

        public List<Vehiculo> GetVehiculosDisponibles()
        {
            return _context.Vehiculo
           .Include(v => v.Mercados)
           .Where(v => v.Disponible)
           .ToList();
        }

        public List<Vehiculo> GetVehiculosDisponiblesPorLocalidad(int localidadId)
        {
            return _context.Vehiculo
            .Include(v => v.Mercados)
            .Where(v => v.LocalidadId == localidadId &&
                        v.Disponible)
            .ToList();
        }

        public List<Vehiculo> GetVehiculosDisponiblesPorLocalidadYMercado(int localidadId, int mercadoId)
        {
            return _context.Vehiculo
            .Include(v => v.Mercados)
            .Where(v => v.LocalidadId == localidadId &&
                        v.Mercados.Any(mv => mv.MercadoId == mercadoId) &&
                        v.Disponible)
            .ToList();
        }

        public List<Vehiculo> GetVehiculosDisponiblesPorMercado(int mercadoId)
        {
            return _context.Vehiculo
            .Include(v => v.Mercados)
            .Where(v => v.Mercados.Any(mv => mv.MercadoId == mercadoId) &&
                        v.Disponible)
            .ToList();
        }

        public List<Vehiculo> GetVehiculosNoDisponibles()
        {
            return _context.Vehiculo
           .Include(v => v.Mercados)
           .Where(v => v.Disponible == false)
           .ToList();
        }
    }
}
