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
    [Table("DeliveryAddresses",Schema="dbo")]
    public partial class DeliveryAddress
    {
		#region DeliveryAddressId Annotations

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [System.ComponentModel.DataAnnotations.Key]
		#endregion DeliveryAddressId Annotations

        public int DeliveryAddressId { get; set; }

		#region UserId Annotations

        [Range(1,int.MaxValue)]
        [Required]
        [RelationshipTableAttribue("Users","dbo","","UserId")]
		#endregion UserId Annotations

        public int UserId { get; set; }

		#region FullName Annotations

        [Required]
        [MaxLength(20)]
		#endregion FullName Annotations

        public string FullName { get; set; }

		#region Address Annotations

        [Required]
        [MaxLength(50)]
		#endregion Address Annotations

        public string Address { get; set; }

		#region CityId Annotations

        [Range(1,int.MaxValue)]
        [Required]
		#endregion CityId Annotations

        public int CityId { get; set; }

		#region User Annotations

        [ForeignKey(nameof(UserId))]
        [InverseProperty(nameof(Paytm.Models.Main.User.DeliveryAddresses))]
		#endregion User Annotations

        public virtual User User { get; set; }

		#region Orders Annotations

        [InverseProperty("DeliveryAddress")]
		#endregion Orders Annotations

        public virtual ICollection<Order> Orders { get; set; }


        public DeliveryAddress()
        {
			Orders = new HashSet<Order>();
        }
	}
}