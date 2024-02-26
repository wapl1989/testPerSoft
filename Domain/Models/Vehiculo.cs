namespace Domain.Models
{
    public class Vehiculo
    {
        public int Id { get; set; }
        public string Placa { get; set; } = "";
        public string Marca { get; set; } = "";
        public string Modelo { get; set; } = "";
        public int Año { get; set; }       
        public bool Disponible { get; set; }
        public int LocalidadId { get; set; }

        public ICollection<MercadoVehiculo> Mercados { get; set; } = new List<MercadoVehiculo>();
    }
}
