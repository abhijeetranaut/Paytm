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
    [Table("FlightAvailableSeats",Schema="dbo")]
    public partial class FlightAvailableSeat
    {
		#region FlightAvailableSeatId Annotations

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [System.ComponentModel.DataAnnotations.Key]
		#endregion FlightAvailableSeatId Annotations

        public int FlightAvailableSeatId { get; set; }

		#region FlightId Annotations

        [Range(1,int.MaxValue)]
        [Required]
        [RelationshipTableAttribue("Flights","dbo","","FlightId")]
		#endregion FlightId Annotations

        public int FlightId { get; set; }

		#region TotalSeats Annotations

        [Range(1,int.MaxValue)]
        [Required]
		#endregion TotalSeats Annotations

        public int TotalSeats { get; set; }

		#region EconomyTotal Annotations

        [Range(1,int.MaxValue)]
        [Required]
		#endregion EconomyTotal Annotations

        public int EconomyTotal { get; set; }

		#region EconomyAvailable Annotations

        [Range(1,int.MaxValue)]
        [Required]
		#endregion EconomyAvailable Annotations

        public int EconomyAvailable { get; set; }

		#region BusinessTotal Annotations

        [Range(1,int.MaxValue)]
        [Required]
		#endregion BusinessTotal Annotations

        public int BusinessTotal { get; set; }

		#region BusinessAvailable Annotations

        [Range(1,int.MaxValue)]
        [Required]
		#endregion BusinessAvailable Annotations

        public int BusinessAvailable { get; set; }

		#region Flight Annotations

        [ForeignKey(nameof(FlightId))]
        [InverseProperty(nameof(Paytm.Models.Main.Flight.FlightAvailableSeats))]
		#endregion Flight Annotations

        public virtual Flight Flight { get; set; }


        public FlightAvailableSeat()
        {
        }
	}
}