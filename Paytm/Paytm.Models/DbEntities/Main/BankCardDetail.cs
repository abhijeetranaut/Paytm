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
    [Table("BankCardDetails",Schema="dbo")]
    public partial class BankCardDetail
    {
		#region BankCardDetailId Annotations

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [System.ComponentModel.DataAnnotations.Key]
		#endregion BankCardDetailId Annotations

        public int BankCardDetailId { get; set; }

		#region BankId Annotations

        [Range(1,int.MaxValue)]
        [Required]
        [RelationshipTableAttribue("Banks","dbo","","BankId")]
		#endregion BankId Annotations

        public int BankId { get; set; }

		#region CardNumber Annotations

        [Range(1,int.MaxValue)]
        [Required]
		#endregion CardNumber Annotations

        public int CardNumber { get; set; }

		#region CardName Annotations

        [Required]
        [MaxLength(20)]
		#endregion CardName Annotations

        public string CardName { get; set; }

		#region CardCVV Annotations

        [Range(1,int.MaxValue)]
        [Required]
		#endregion CardCVV Annotations

        public int CardCVV { get; set; }

		#region CardType Annotations

        [Required]
        [MaxLength(10)]
		#endregion CardType Annotations

        public string CardType { get; set; }

		#region CardExpiryDate Annotations

        [Required]
		#endregion CardExpiryDate Annotations

        public System.DateTime CardExpiryDate { get; set; }

		#region Balance Annotations

        [Range(1,int.MaxValue)]
        [Required]
		#endregion Balance Annotations

        public int Balance { get; set; }

		#region Bank Annotations

        [ForeignKey(nameof(BankId))]
        [InverseProperty(nameof(Paytm.Models.Main.Bank.BankCardDetails))]
		#endregion Bank Annotations

        public virtual Bank Bank { get; set; }


        public BankCardDetail()
        {
        }
	}
}