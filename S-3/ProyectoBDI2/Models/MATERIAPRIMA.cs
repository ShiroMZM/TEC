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
    
    public partial class MATERIAPRIMA
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public MATERIAPRIMA()
        {
            this.LINEAORDENCOMPRA = new HashSet<LINEAORDENCOMPRA>();
            this.MATERIALPRENDA = new HashSet<MATERIALPRENDA>();
            this.MATERIAPROVEEDOR = new HashSet<MATERIAPROVEEDOR>();
            this.ORDENESPERA = new HashSet<ORDENESPERA>();
        }
    
        public decimal CODMATERIAL { get; set; }
        public decimal UNIDADMEDIDA { get; set; }
        public decimal CANTIDADMINIMA { get; set; }
        public decimal COSTOUNITARIO { get; set; }
        public decimal EXISTENCIAACTUAL { get; set; }
        public string DESCRIPCION { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<LINEAORDENCOMPRA> LINEAORDENCOMPRA { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<MATERIALPRENDA> MATERIALPRENDA { get; set; }
        public virtual UNIDADMEDIDA UNIDADMEDIDA1 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<MATERIAPROVEEDOR> MATERIAPROVEEDOR { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ORDENESPERA> ORDENESPERA { get; set; }
    }
}