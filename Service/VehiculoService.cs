using Domain.Models;
using Infraestructure.Interfaces;
using Service.Interfaces;

namespace Service
{
    public class VehiculoService : IVehiculoService
    {
        private readonly IVehiculoRepository _vehiculoRepository;

        public VehiculoService(IVehiculoRepository vehiculoRepository)
        {
            _vehiculoRepository = vehiculoRepository;
        }

        public List<Vehiculo> BuscarVehiculosDisponiblesPorLocalidadYMercado(int localidadId, int mercadoId)
        {
            return _vehiculoRepository.GetVehiculosDisponiblesPorLocalidadYMercado(localidadId, mercadoId);
        }

        public List<Vehiculo> BuscarVehiculosDisponiblesPorLocalidad(int localidadId)
        {
            return _vehiculoRepository.GetVehiculosDisponiblesPorLocalidad(localidadId);
        }

        public List<Vehiculo> BuscarVehiculosDisponiblesPorMercado(int mercadoId)
        {
            return _vehiculoRepository.GetVehiculosDisponiblesPorMercado(mercadoId);
        }

        public List<Vehiculo> BuscarVehiculosDisponibles()
        {
            return _vehiculoRepository.GetVehiculosDisponibles();
        }

        public List<Vehiculo> BuscarVehiculosNoDisponibles()
        {
            return _vehiculoRepository.GetVehiculosNoDisponibles();
        }
    }
}
