using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using RxWeb.Core.Annotations;
using RxWeb.Core.Data.Annotations;
using RxWeb.Core.Sanitizers;
using Paytm.Models.Enums.Main;
using Paytm.BoundedContext.SqlContext;
namespace Paytm.Models.Main
{
    [Table("Brands",Schema="dbo")]
    public partial class Brand
    {
		#region BrandId Annotations

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [System.ComponentModel.DataAnnotations.Key]
		#endregion BrandId Annotations

        public int BrandId { get; set; }

		#region BrandName Annotations

        [Required]
        [MaxLength(20)]
		#endregion BrandName Annotations

        public string BrandName { get; set; }

		#region SellerProducts Annotations

        [InverseProperty("Brand")]
		#endregion SellerProducts Annotations

        public virtual ICollection<SellerProduct> SellerProducts { get; set; }


        public Brand()
        {
			SellerProducts = new HashSet<SellerProduct>();
        }
	}
}