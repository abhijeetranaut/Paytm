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
    [Table("OTPs",Schema="dbo")]
    public partial class OTP
    {
		#region OTPId Annotations

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [System.ComponentModel.DataAnnotations.Key]
		#endregion OTPId Annotations

        public int OTPId { get; set; }

		#region UserId Annotations

        [Range(1,int.MaxValue)]
        [Required]
        [RelationshipTableAttribue("Users","dbo","","UserId")]
		#endregion UserId Annotations

        public int UserId { get; set; }

		#region OtpNumber Annotations

        [Range(1,int.MaxValue)]
        [Required]
		#endregion OtpNumber Annotations

        public int OtpNumber { get; set; }

		#region ActivateTime Annotations

        [Required]
		#endregion ActivateTime Annotations

        public System.DateTime ActivateTime { get; set; }

		#region DeactivateTime Annotations

        [Required]
		#endregion DeactivateTime Annotations

        public System.DateTime DeactivateTime { get; set; }

		#region User Annotations

        [ForeignKey(nameof(UserId))]
        [InverseProperty(nameof(Paytm.Models.Main.User.OTPs))]
		#endregion User Annotations

        public virtual User User { get; set; }


        public OTP()
        {
        }
	}
}