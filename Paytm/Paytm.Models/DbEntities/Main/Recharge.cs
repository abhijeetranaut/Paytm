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
    [Table("Recharges",Schema="dbo")]
    public partial class Recharge
    {
		#region RechargeId Annotations

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [System.ComponentModel.DataAnnotations.Key]
		#endregion RechargeId Annotations

        public int RechargeId { get; set; }

		#region UserId Annotations

        [Range(1,int.MaxValue)]
        [Required]
        [RelationshipTableAttribue("Users","dbo","","UserId")]
		#endregion UserId Annotations

        public int UserId { get; set; }

		#region Operator Annotations

        [Required]
        [MaxLength(10)]
		#endregion Operator Annotations

        public string Operator { get; set; }

		#region Amount Annotations

        [Range(1,int.MaxValue)]
        [Required]
		#endregion Amount Annotations

        public int Amount { get; set; }

		#region User Annotations

        [ForeignKey(nameof(UserId))]
        [InverseProperty(nameof(Paytm.Models.Main.User.Recharges))]
		#endregion User Annotations

        public virtual User User { get; set; }


        public Recharge()
        {
        }
	}
}