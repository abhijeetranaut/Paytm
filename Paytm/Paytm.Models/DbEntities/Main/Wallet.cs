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
    [Table("Wallets",Schema="dbo")]
    public partial class Wallet
    {
		#region WalletId Annotations

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [System.ComponentModel.DataAnnotations.Key]
		#endregion WalletId Annotations

        public int WalletId { get; set; }

		#region UserId Annotations

        [Range(1,int.MaxValue)]
        [Required]
        [RelationshipTableAttribue("Users","dbo","","UserId")]
		#endregion UserId Annotations

        public int UserId { get; set; }

		#region Balance Annotations

        [Required]
		#endregion Balance Annotations

        public double Balance { get; set; }

		#region TransactionId Annotations

        [Range(1,int.MaxValue)]
        [Required]
        [RelationshipTableAttribue("Transactions","dbo","","TransactionId")]
		#endregion TransactionId Annotations

        public int TransactionId { get; set; }

		#region Transaction Annotations

        [ForeignKey(nameof(TransactionId))]
        [InverseProperty(nameof(Paytm.Models.Main.Transaction.Wallets))]
		#endregion Transaction Annotations

        public virtual Transaction Transaction { get; set; }

		#region User Annotations

        [ForeignKey(nameof(UserId))]
        [InverseProperty(nameof(Paytm.Models.Main.User.Wallets))]
		#endregion User Annotations

        public virtual User User { get; set; }


        public Wallet()
        {
        }
	}
}