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
    [Table("BusBookings",Schema="dbo")]
    public partial class BusBooking
    {
		#region BusBookingId Annotations

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [System.ComponentModel.DataAnnotations.Key]
		#endregion BusBookingId Annotations

        public int BusBookingId { get; set; }

		#region BookingMasterId Annotations

        [Range(1,int.MaxValue)]
        [Required]
        [RelationshipTableAttribue("BookingMasters","dbo","","BookingMasterId")]
		#endregion BookingMasterId Annotations

        public int BookingMasterId { get; set; }

		#region BusId Annotations

        [Range(1,int.MaxValue)]
        [Required]
        [RelationshipTableAttribue("Buses","dbo","","BusId")]
		#endregion BusId Annotations

        public int BusId { get; set; }

		#region BookingMaster Annotations

        [ForeignKey(nameof(BookingMasterId))]
        [InverseProperty(nameof(Paytm.Models.Main.BookingMaster.BusBookings))]
		#endregion BookingMaster Annotations

        public virtual BookingMaster BookingMaster { get; set; }

		#region Bus Annotations

        [ForeignKey(nameof(BusId))]
        [InverseProperty(nameof(Paytm.Models.Main.Bus.BusBookings))]
		#endregion Bus Annotations

        public virtual Bus Bus { get; set; }

		#region BusTravellerDetails Annotations

        [InverseProperty("BusBooking")]
		#endregion BusTravellerDetails Annotations

        public virtual ICollection<BusTravellerDetail> BusTravellerDetails { get; set; }


        public BusBooking()
        {
			BusTravellerDetails = new HashSet<BusTravellerDetail>();
        }
	}
}