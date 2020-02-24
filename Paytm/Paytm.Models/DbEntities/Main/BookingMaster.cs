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
    [Table("BookingMasters",Schema="dbo")]
    public partial class BookingMaster
    {
		#region BookingMasterId Annotations

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [System.ComponentModel.DataAnnotations.Key]
		#endregion BookingMasterId Annotations

        public int BookingMasterId { get; set; }

		#region ApplicationObjectId Annotations

        [Range(1,int.MaxValue)]
        [Required]
		#endregion ApplicationObjectId Annotations

        public ApplicationObject ApplicationObjectId { get; set; }

		#region UserId Annotations

        [Range(1,int.MaxValue)]
        [Required]
        [RelationshipTableAttribue("Users","dbo","","UserId")]
		#endregion UserId Annotations

        public int UserId { get; set; }

		#region DepartureDate Annotations

        [Required]
		#endregion DepartureDate Annotations

        public System.DateTime DepartureDate { get; set; }


        public Nullable<System.DateTime> ReturnDate { get; set; }

		#region NumberOfTravellers Annotations

        [Range(1,int.MaxValue)]
        [Required]
		#endregion NumberOfTravellers Annotations

        public int NumberOfTravellers { get; set; }

		#region User Annotations

        [ForeignKey(nameof(UserId))]
        [InverseProperty(nameof(Paytm.Models.Main.User.BookingMasters))]
		#endregion User Annotations

        public virtual User User { get; set; }

		#region BusBookings Annotations

        [InverseProperty("BookingMaster")]
		#endregion BusBookings Annotations

        public virtual ICollection<BusBooking> BusBookings { get; set; }

		#region FlightBookings Annotations

        [InverseProperty("BookingMaster")]
		#endregion FlightBookings Annotations

        public virtual ICollection<FlightBooking> FlightBookings { get; set; }


        public BookingMaster()
        {
			BusBookings = new HashSet<BusBooking>();
			FlightBookings = new HashSet<FlightBooking>();
        }
	}
}