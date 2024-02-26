using Domain.Models;

namespace Service.Interfaces
{
    public interface IVehiculoService
    {
        List<Vehiculo> BuscarVehiculosDisponiblesPorLocalidadYMercado(int localidadId, int mercadoId);
        List<Vehiculo> BuscarVehiculosDisponiblesPorLocalidad(int localidadId);
        List<Vehiculo> BuscarVehiculosDisponiblesPorMercado(int mercadoId);
        List<Vehiculo> BuscarVehiculosDisponibles();
        List<Vehiculo> BuscarVehiculosNoDisponibles();
    }
}
