using Microsoft.AspNetCore.Mvc;
using Service.Interfaces;

namespace TestMilesCarRental.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class VehiculoController : ControllerBase
    {
        private readonly IVehiculoService _vehiculoService;

        public VehiculoController(IVehiculoService vehiculoService)
        {
            _vehiculoService = vehiculoService;
        }

        [HttpGet("buscarPorLocalidadYMercado")]
        public IActionResult BuscarVehiculosDisponiblesLocalidadYMercado(int localidadId, int mercadoId)
        {
            var vehiculos = _vehiculoService.BuscarVehiculosDisponiblesPorLocalidadYMercado(localidadId, mercadoId);
            return Ok(vehiculos);
        }

        [HttpGet("buscarPorLocalidad")]
        public IActionResult BuscarVehiculosDisponiblesLocalidad(int localidadId)
        {
            var vehiculos = _vehiculoService.BuscarVehiculosDisponiblesPorLocalidad(localidadId);
            return Ok(vehiculos);
        }

        [HttpGet("buscarPorMercado")]
        public IActionResult BuscarVehiculosDisponiblesMercado(int mercadoId)
        {
            var vehiculos = _vehiculoService.BuscarVehiculosDisponiblesPorMercado(mercadoId);
            return Ok(vehiculos);
        }

        [HttpGet("buscarTodosDisponibles")]
        public IActionResult BuscarVehiculosDisponibles()
        {
            var vehiculos = _vehiculoService.BuscarVehiculosDisponibles();
            return Ok(vehiculos);
        }

        [HttpGet("buscarTodosNoDisponibles")]
        public IActionResult BuscarVehiculosNoDisponibles()
        {
            var vehiculos = _vehiculoService.BuscarVehiculosNoDisponibles();
            return Ok(vehiculos);
        }
    }
}
