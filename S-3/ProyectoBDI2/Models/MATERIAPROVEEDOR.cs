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
    
    public partial class MATERIAPROVEEDOR
    {
        public decimal CODMATERIAL { get; set; }
        public decimal CODPROVEEDOR { get; set; }
        public decimal COSTOUNIDAD { get; set; }
        public decimal CANTIDADMINIMA { get; set; }
        public decimal DIASENTREGA { get; set; }
    
        public virtual MATERIAPRIMA MATERIAPRIMA { get; set; }
        public virtual PROVEEDOR PROVEEDOR { get; set; }
    }
}