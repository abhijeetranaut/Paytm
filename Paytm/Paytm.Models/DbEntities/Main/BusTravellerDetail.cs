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
    [Table("BusTravellerDetails",Schema="dbo")]
    public partial class BusTravellerDetail
    {
		#region BusTravellerId Annotations

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [System.ComponentModel.DataAnnotations.Key]
		#endregion BusTravellerId Annotations

        public int BusTravellerId { get; set; }

		#region BusBookingId Annotations

        [Range(1,int.MaxValue)]
        [Required]
        [RelationshipTableAttribue("BusBookings","dbo","","BusBookingId")]
		#endregion BusBookingId Annotations

        public int BusBookingId { get; set; }

		#region FullName Annotations

        [Required]
        [MaxLength(40)]
		#endregion FullName Annotations

        public string FullName { get; set; }

		#region Gender Annotations

        [Required]
		#endregion Gender Annotations

        public bool Gender { get; set; }

		#region Age Annotations

        [Range(1,int.MaxValue)]
        [Required]
		#endregion Age Annotations

        public int Age { get; set; }

		#region EmailId Annotations

        [Required]
        [MaxLength(20)]
		#endregion EmailId Annotations

        public string EmailId { get; set; }

		#region BusBooking Annotations

        [ForeignKey(nameof(BusBookingId))]
        [InverseProperty(nameof(Paytm.Models.Main.BusBooking.BusTravellerDetails))]
		#endregion BusBooking Annotations

        public virtual BusBooking BusBooking { get; set; }


        public BusTravellerDetail()
        {
        }
	}
}