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
    [Table("KycDetails",Schema="dbo")]
    public partial class KycDetail
    {
		#region KycDetailId Annotations

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [System.ComponentModel.DataAnnotations.Key]
		#endregion KycDetailId Annotations

        public int KycDetailId { get; set; }

		#region UserId Annotations

        [Range(1,int.MaxValue)]
        [Required]
        [RelationshipTableAttribue("Users","dbo","","UserId")]
		#endregion UserId Annotations

        public int UserId { get; set; }

		#region AadharNumber Annotations

        [Required]
		#endregion AadharNumber Annotations

        public long AadharNumber { get; set; }

		#region AadharAddress Annotations

        [Required]
        [MaxLength(50)]
		#endregion AadharAddress Annotations

        public string AadharAddress { get; set; }

		#region AadharName Annotations

        [Required]
        [MaxLength(20)]
		#endregion AadharName Annotations

        public string AadharName { get; set; }

		#region User Annotations

        [ForeignKey(nameof(UserId))]
        [InverseProperty(nameof(Paytm.Models.Main.User.KycDetails))]
		#endregion User Annotations

        public virtual User User { get; set; }


        public KycDetail()
        {
        }
	}
}