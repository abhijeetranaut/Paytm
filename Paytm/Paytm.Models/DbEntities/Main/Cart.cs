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
    [Table("Carts",Schema="dbo")]
    public partial class Cart
    {
		#region CartId Annotations

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [System.ComponentModel.DataAnnotations.Key]
		#endregion CartId Annotations

        public int CartId { get; set; }

		#region FashionProductId Annotations

        [Range(1,int.MaxValue)]
        [Required]
        [RelationshipTableAttribue("FashionProducts","dbo","","FashionProductId")]
		#endregion FashionProductId Annotations

        public int FashionProductId { get; set; }

		#region ProductQuantity Annotations

        [Range(1,int.MaxValue)]
        [Required]
		#endregion ProductQuantity Annotations

        public int ProductQuantity { get; set; }

		#region UserId Annotations

        [Range(1,int.MaxValue)]
        [Required]
        [RelationshipTableAttribue("Users","dbo","","UserId")]
		#endregion UserId Annotations

        public int UserId { get; set; }

		#region Quantity Annotations

        [Range(1,int.MaxValue)]
        [Required]
		#endregion Quantity Annotations

        public int Quantity { get; set; }

		#region TotalAmount Annotations

        [Required]
		#endregion TotalAmount Annotations

        public double TotalAmount { get; set; }

		#region FashionProduct Annotations

        [ForeignKey(nameof(FashionProductId))]
        [InverseProperty(nameof(Paytm.Models.Main.FashionProduct.Carts))]
		#endregion FashionProduct Annotations

        public virtual FashionProduct FashionProduct { get; set; }

		#region User Annotations

        [ForeignKey(nameof(UserId))]
        [InverseProperty(nameof(Paytm.Models.Main.User.Carts))]
		#endregion User Annotations

        public virtual User User { get; set; }

		#region Orders Annotations

        [InverseProperty("Cart")]
		#endregion Orders Annotations

        public virtual ICollection<Order> Orders { get; set; }


        public Cart()
        {
			Orders = new HashSet<Order>();
        }
	}
}