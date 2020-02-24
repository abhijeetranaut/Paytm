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
    [Table("Flights",Schema="dbo")]
    public partial class Flight
    {
		#region FlightId Annotations

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [System.ComponentModel.DataAnnotations.Key]
		#endregion FlightId Annotations

        public int FlightId { get; set; }

		#region Airline Annotations

        [Required]
        [MaxLength(15)]
		#endregion Airline Annotations

        public string Airline { get; set; }

		#region Source Annotations

        [Required]
        [MaxLength(15)]
		#endregion Source Annotations

        public string Source { get; set; }

		#region Destination Annotations

        [Required]
        [MaxLength(15)]
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

		#region DayOfFlight Annotations

        [Required]
        [MaxLength(20)]
		#endregion DayOfFlight Annotations

        public string DayOfFlight { get; set; }

		#region FlightAvailableSeats Annotations

        [InverseProperty("Flight")]
		#endregion FlightAvailableSeats Annotations

        public virtual ICollection<FlightAvailableSeat> FlightAvailableSeats { get; set; }

		#region FlightBookings Annotations

        [InverseProperty("Flight")]
		#endregion FlightBookings Annotations

        public virtual ICollection<FlightBooking> FlightBookings { get; set; }


        public Flight()
        {
			FlightAvailableSeats = new HashSet<FlightAvailableSeat>();
			FlightBookings = new HashSet<FlightBooking>();
        }
	}
}