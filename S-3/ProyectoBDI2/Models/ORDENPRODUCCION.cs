//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ProyectoBDI2.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    public partial class ORDENPRODUCCION
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public ORDENPRODUCCION()
        {
            this.LINEAPEDIDO = new HashSet<LINEAPEDIDO>();
            this.ORDENESPERA = new HashSet<ORDENESPERA>();
        }
    
        public decimal CODORDENPRODUCCION { get; set; }
        public decimal CODPRENDA { get; set; }
        public decimal CANTIDAD { get; set; }
        public string ESTADO { get; set; }
        [DataType(DataType.Date)]
        public System.DateTime FECHAPROGRAMADA { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<LINEAPEDIDO> LINEAPEDIDO { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ORDENESPERA> ORDENESPERA { get; set; }
        public virtual PRENDA PRENDA { get; set; }
    }
}