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
    [Table("Users",Schema="dbo")]
    public partial class User
    {
		#region UserId Annotations

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [System.ComponentModel.DataAnnotations.Key]
		#endregion UserId Annotations

        public int UserId { get; set; }

		#region ApplicationLocaleId Annotations

        [Range(1, int.MaxValue)]
        [Required]
		#endregion ApplicationLocaleId Annotations

        public int ApplicationLocaleId { get; set; }

		#region ApplicationTimeZoneId Annotations

        [Range(1, int.MaxValue)]
        [Required]
		#endregion ApplicationTimeZoneId Annotations

        public int ApplicationTimeZoneId { get; set; }

		#region LanguageCode Annotations

        [Required]
        [MaxLength(3)]
		#endregion LanguageCode Annotations

        public string LanguageCode { get; set; }

		#region UserName Annotations

        [Required]
        [MaxLength(50)]
		#endregion UserName Annotations

        public string UserName { get; set; }

		#region Password Annotations

        [Required]
        [MaxLength(132)]
		#endregion Password Annotations

        public byte[] Password { get; set; }

		#region Salt Annotations

        [Required]
        [MaxLength(140)]
		#endregion Salt Annotations

        public byte[] Salt { get; set; }

		#region LoginBlocked Annotations

        [Required]
		#endregion LoginBlocked Annotations

        public bool LoginBlocked { get; set; }

		#region StatusId Annotations

        [Range(1, int.MaxValue)]
        [Required]
		#endregion StatusId Annotations

        public int StatusId { get; set; }

		#region ApplicationUserTokens Annotations

        [InverseProperty("User")]
		#endregion ApplicationUserTokens Annotations

        public virtual ICollection<ApplicationUserToken> ApplicationUserTokens { get; set; }

		#region UserRoles Annotations

        [InverseProperty("User")]
		#endregion UserRoles Annotations

        public virtual ICollection<UserRole> UserRoles { get; set; }

		#region Carts Annotations

        [InverseProperty("User")]
		#endregion Carts Annotations

        public virtual ICollection<Cart> Carts { get; set; }

		#region MovieBookings Annotations

        [InverseProperty("User")]
		#endregion MovieBookings Annotations

        public virtual ICollection<MovieBooking> MovieBookings { get; set; }

		#region BookingMasters Annotations

        [InverseProperty("User")]
		#endregion BookingMasters Annotations

        public virtual ICollection<BookingMaster> BookingMasters { get; set; }

		#region DeliveryAddresses Annotations

        [InverseProperty("User")]
		#endregion DeliveryAddresses Annotations

        public virtual ICollection<DeliveryAddress> DeliveryAddresses { get; set; }

		#region KycDetails Annotations

        [InverseProperty("User")]
		#endregion KycDetails Annotations

        public virtual ICollection<KycDetail> KycDetails { get; set; }

		#region OTPs Annotations

        [InverseProperty("User")]
		#endregion OTPs Annotations

        public virtual ICollection<OTP> OTPs { get; set; }

		#region Recharges Annotations

        [InverseProperty("User")]
		#endregion Recharges Annotations

        public virtual ICollection<Recharge> Recharges { get; set; }

		#region Transactions Annotations

        [InverseProperty("User")]
		#endregion Transactions Annotations

        public virtual ICollection<Transaction> Transactions { get; set; }

		#region UserDetails Annotations

        [InverseProperty("User")]
		#endregion UserDetails Annotations

        public virtual ICollection<UserDetail> UserDetails { get; set; }

		#region Wallets Annotations

        [InverseProperty("User")]
		#endregion Wallets Annotations

        public virtual ICollection<Wallet> Wallets { get; set; }


        public User()
        {
			ApplicationUserTokens = new HashSet<ApplicationUserToken>();
			UserRoles = new HashSet<UserRole>();
			Carts = new HashSet<Cart>();
			MovieBookings = new HashSet<MovieBooking>();
			BookingMasters = new HashSet<BookingMaster>();
			DeliveryAddresses = new HashSet<DeliveryAddress>();
			KycDetails = new HashSet<KycDetail>();
			OTPs = new HashSet<OTP>();
			Recharges = new HashSet<Recharge>();
			Transactions = new HashSet<Transaction>();
			UserDetails = new HashSet<UserDetail>();
			Wallets = new HashSet<Wallet>();
        }
	}
}