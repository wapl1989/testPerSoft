namespace Domain.Models
{
    public class Localidad
    {
        public int Id { get; set; }
        public string Nombre { get; set; } = ""; 
        public string Direccion { get; set; } = "";
        public ICollection<Vehiculo> Vehiculos_Localidad { get; set; } = new List<Vehiculo>();

    }
}
