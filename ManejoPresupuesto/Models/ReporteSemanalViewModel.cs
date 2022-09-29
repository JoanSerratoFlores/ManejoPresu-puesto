namespace ManejoPresupuesto.Models
{
    public class ReporteSemanalViewModel
    {
        public decimal Ingresos => TransacionesPorSemana.Sum(x => x.Ingresos);
        public decimal  Gastos => TransacionesPorSemana.Sum(x => x.Gastos);
        public decimal Total => Ingresos + Gastos;
        public DateTime fechaReferencia { get; set; }
        public IEnumerable<ResultadoObtenerPorSemana> TransacionesPorSemana { get; set; }
    }
}
