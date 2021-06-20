namespace ModelEF.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Product")]
    public partial class Product
    {
        public int ID { get; set; }

        public int? Category_ID { get; set; }

        [Required]
        [StringLength(250)]
        public string Name { get; set; }

        public decimal UnitCost { get; set; }

        [Required]
        [StringLength(50)]
        public string Quantity { get; set; }

        [Required]
        [StringLength(500)]
        public string Image { get; set; }

        [StringLength(500)]
        public string Description { get; set; }

        [Required]
        [StringLength(250)]
        public string Status { get; set; }
    }
}
