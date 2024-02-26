using Domain.Models;

namespace Infraestructure.Interfaces
{
    public interface IVehiculoRepository
    {
        List<Vehiculo> GetVehiculosDisponibles();
        List<Vehiculo> GetVehiculosDisponiblesPorLocalidad(int localidadId);
        List<Vehiculo> GetVehiculosDisponiblesPorLocalidadYMercado(int localidadId, int mercadoId);
        List<Vehiculo> GetVehiculosDisponiblesPorMercado(int mercadoId);
        List<Vehiculo> GetVehiculosNoDisponibles();
    }
}
