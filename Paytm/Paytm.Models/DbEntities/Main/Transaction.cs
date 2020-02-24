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
    [Table("Transactions",Schema="dbo")]
    public partial class Transaction
    {
		#region TransactionId Annotations

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [System.ComponentModel.DataAnnotations.Key]
		#endregion TransactionId Annotations

        public int TransactionId { get; set; }

		#region ApplicationObjectId Annotations

        [Range(1,int.MaxValue)]
        [Required]
		#endregion ApplicationObjectId Annotations

        public ApplicationObject ApplicationObjectId { get; set; }

		#region TransactionDate Annotations

        [Required]
		#endregion TransactionDate Annotations

        public System.DateTime TransactionDate { get; set; }

		#region UserId Annotations

        [Range(1,int.MaxValue)]
        [Required]
        [RelationshipTableAttribue("Users","dbo","","UserId")]
		#endregion UserId Annotations

        public int UserId { get; set; }

		#region ReceiverId Annotations

        [Required]
        [MaxLength(10)]
		#endregion ReceiverId Annotations

        public string ReceiverId { get; set; }

		#region User Annotations

        [ForeignKey(nameof(UserId))]
        [InverseProperty(nameof(Paytm.Models.Main.User.Transactions))]
		#endregion User Annotations

        public virtual User User { get; set; }

		#region Wallets Annotations

        [InverseProperty("Transaction")]
		#endregion Wallets Annotations

        public virtual ICollection<Wallet> Wallets { get; set; }


        public Transaction()
        {
			Wallets = new HashSet<Wallet>();
        }
	}
}