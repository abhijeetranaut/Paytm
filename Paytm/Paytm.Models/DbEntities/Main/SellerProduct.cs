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
    [Table("SellerProducts",Schema="dbo")]
    public partial class SellerProduct
    {
		#region SellerProductId Annotations

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [System.ComponentModel.DataAnnotations.Key]
		#endregion SellerProductId Annotations

        public int SellerProductId { get; set; }

		#region ProductName Annotations

        [Required]
        [MaxLength(20)]
		#endregion ProductName Annotations

        public string ProductName { get; set; }

		#region SellerId Annotations

        [Range(1,int.MaxValue)]
        [Required]
        [RelationshipTableAttribue("Sellers","dbo","","SellerId")]
		#endregion SellerId Annotations

        public int SellerId { get; set; }

		#region FashionCategoryId Annotations

        [Range(1,int.MaxValue)]
        [Required]
		#endregion FashionCategoryId Annotations

        public int FashionCategoryId { get; set; }

		#region Price Annotations

        [Required]
		#endregion Price Annotations

        public double Price { get; set; }

		#region Description Annotations

        [Required]
        [MaxLength(50)]
		#endregion Description Annotations

        public string Description { get; set; }

		#region BrandId Annotations

        [Range(1,int.MaxValue)]
        [Required]
        [RelationshipTableAttribue("Brands","dbo","","BrandId")]
		#endregion BrandId Annotations

        public int BrandId { get; set; }

		#region Brand Annotations

        [ForeignKey(nameof(BrandId))]
        [InverseProperty(nameof(Paytm.Models.Main.Brand.SellerProducts))]
		#endregion Brand Annotations

        public virtual Brand Brand { get; set; }

		#region Seller Annotations

        [ForeignKey(nameof(SellerId))]
        [InverseProperty(nameof(Paytm.Models.Main.Seller.SellerProducts))]
		#endregion Seller Annotations

        public virtual Seller Seller { get; set; }

		#region FashionProducts Annotations

        [InverseProperty("SellerProduct")]
		#endregion FashionProducts Annotations

        public virtual ICollection<FashionProduct> FashionProducts { get; set; }


        public SellerProduct()
        {
			FashionProducts = new HashSet<FashionProduct>();
        }
	}
}