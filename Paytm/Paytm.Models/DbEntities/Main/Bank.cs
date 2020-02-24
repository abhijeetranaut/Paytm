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
    [Table("Banks",Schema="dbo")]
    public partial class Bank
    {
		#region BankId Annotations

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [System.ComponentModel.DataAnnotations.Key]
		#endregion BankId Annotations

        public int BankId { get; set; }

		#region BankName Annotations

        [Required]
        [MaxLength(20)]
		#endregion BankName Annotations

        public string BankName { get; set; }

		#region BankAddress Annotations

        [Required]
        [MaxLength(50)]
		#endregion BankAddress Annotations

        public string BankAddress { get; set; }

		#region BankMobileNumber Annotations

        [Required]
        [MaxLength(20)]
		#endregion BankMobileNumber Annotations

        public string BankMobileNumber { get; set; }

		#region BankCardDetails Annotations

        [InverseProperty("Bank")]
		#endregion BankCardDetails Annotations

        public virtual ICollection<BankCardDetail> BankCardDetails { get; set; }


        public Bank()
        {
			BankCardDetails = new HashSet<BankCardDetail>();
        }
	}
}