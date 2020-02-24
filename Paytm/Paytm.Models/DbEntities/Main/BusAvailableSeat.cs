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
    [Table("BusAvailableSeats",Schema="dbo")]
    public partial class BusAvailableSeat
    {
		#region BusAvailableSeatId Annotations

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [System.ComponentModel.DataAnnotations.Key]
		#endregion BusAvailableSeatId Annotations

        public int BusAvailableSeatId { get; set; }

		#region BusId Annotations

        [Range(1,int.MaxValue)]
        [Required]
        [RelationshipTableAttribue("Buses","dbo","","BusId")]
		#endregion BusId Annotations

        public int BusId { get; set; }

		#region TotalSeats Annotations

        [Range(1,int.MaxValue)]
        [Required]
		#endregion TotalSeats Annotations

        public int TotalSeats { get; set; }

		#region AvailableSeats Annotations

        [Range(1,int.MaxValue)]
        [Required]
		#endregion AvailableSeats Annotations

        public int AvailableSeats { get; set; }

		#region Bus Annotations

        [ForeignKey(nameof(BusId))]
        [InverseProperty(nameof(Paytm.Models.Main.Bus.BusAvailableSeats))]
		#endregion Bus Annotations

        public virtual Bus Bus { get; set; }


        public BusAvailableSeat()
        {
        }
	}
}