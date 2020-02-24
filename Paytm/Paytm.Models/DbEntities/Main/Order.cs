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
    [Table("Orders",Schema="dbo")]
    public partial class Order
    {
		#region OrderId Annotations

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [System.ComponentModel.DataAnnotations.Key]
		#endregion OrderId Annotations

        public int OrderId { get; set; }

		#region CartId Annotations

        [Range(1,int.MaxValue)]
        [Required]
        [RelationshipTableAttribue("Carts","dbo","","CartId")]
		#endregion CartId Annotations

        public int CartId { get; set; }

		#region DeliveryAddressId Annotations

        [Range(1,int.MaxValue)]
        [Required]
        [RelationshipTableAttribue("DeliveryAddresses","dbo","","DeliveryAddressId")]
		#endregion DeliveryAddressId Annotations

        public int DeliveryAddressId { get; set; }

		#region Cart Annotations

        [ForeignKey(nameof(CartId))]
        [InverseProperty(nameof(Paytm.Models.Main.Cart.Orders))]
		#endregion Cart Annotations

        public virtual Cart Cart { get; set; }

		#region DeliveryAddress Annotations

        [ForeignKey(nameof(DeliveryAddressId))]
        [InverseProperty(nameof(Paytm.Models.Main.DeliveryAddress.Orders))]
		#endregion DeliveryAddress Annotations

        public virtual DeliveryAddress DeliveryAddress { get; set; }


        public Order()
        {
        }
	}
}