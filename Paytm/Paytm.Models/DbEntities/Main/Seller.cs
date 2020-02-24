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
    [Table("Sellers",Schema="dbo")]
    public partial class Seller
    {
		#region SellerId Annotations

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [System.ComponentModel.DataAnnotations.Key]
		#endregion SellerId Annotations

        public int SellerId { get; set; }

		#region SellerName Annotations

        [Required]
        [MaxLength(20)]
		#endregion SellerName Annotations

        public string SellerName { get; set; }

		#region Password Annotations

        [Required]
        [MaxLength(20)]
		#endregion Password Annotations

        public string Password { get; set; }

		#region MobileNumber Annotations

        [Required]
        [MaxLength(15)]
		#endregion MobileNumber Annotations

        public string MobileNumber { get; set; }

		#region EmailId Annotations

        [Required]
        [MaxLength(20)]
		#endregion EmailId Annotations

        public string EmailId { get; set; }

		#region Address Annotations

        [Required]
        [MaxLength(30)]
		#endregion Address Annotations

        public string Address { get; set; }

		#region SellerProducts Annotations

        [InverseProperty("Seller")]
		#endregion SellerProducts Annotations

        public virtual ICollection<SellerProduct> SellerProducts { get; set; }


        public Seller()
        {
			SellerProducts = new HashSet<SellerProduct>();
        }
	}
}