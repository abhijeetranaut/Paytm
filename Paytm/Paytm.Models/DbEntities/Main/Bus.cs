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
    [Table("Buses",Schema="dbo")]
    public partial class Bus
    {
		#region BusId Annotations

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [System.ComponentModel.DataAnnotations.Key]
		#endregion BusId Annotations

        public int BusId { get; set; }

		#region BusName Annotations

        [Required]
        [MaxLength(20)]
		#endregion BusName Annotations

        public string BusName { get; set; }

		#region Source Annotations

        [Required]
        [MaxLength(20)]
		#endregion Source Annotations

        public string Source { get; set; }

		#region Destination Annotations

        [Required]
        [MaxLength(20)]
		#endregion Destination Annotations

        public string Destination { get; set; }

		#region DepartureTime Annotations

        [Required]
		#endregion DepartureTime Annotations

        public System.DateTime DepartureTime { get; set; }

		#region ArrivalTime Annotations

        [Required]
		#endregion ArrivalTime Annotations

        public System.DateTime ArrivalTime { get; set; }

		#region Price Annotations

        [Required]
		#endregion Price Annotations

        public double Price { get; set; }

		#region Duration Annotations

        [Range(1,int.MaxValue)]
        [Required]
		#endregion Duration Annotations

        public int Duration { get; set; }

		#region ApplicationObjectId Annotations

        [Range(1,int.MaxValue)]
        [Required]
		#endregion ApplicationObjectId Annotations

        public ApplicationObject ApplicationObjectId { get; set; }

		#region BusAvailableSeats Annotations

        [InverseProperty("Bus")]
		#endregion BusAvailableSeats Annotations

        public virtual ICollection<BusAvailableSeat> BusAvailableSeats { get; set; }

		#region BusBookings Annotations

        [InverseProperty("Bus")]
		#endregion BusBookings Annotations

        public virtual ICollection<BusBooking> BusBookings { get; set; }


        public Bus()
        {
			BusAvailableSeats = new HashSet<BusAvailableSeat>();
			BusBookings = new HashSet<BusBooking>();
        }
	}
}