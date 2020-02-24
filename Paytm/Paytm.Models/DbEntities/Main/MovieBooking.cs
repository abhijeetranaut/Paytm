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
    [Table("MovieBookings",Schema="dbo")]
    public partial class MovieBooking
    {
		#region MovieBookingId Annotations

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [System.ComponentModel.DataAnnotations.Key]
		#endregion MovieBookingId Annotations

        public int MovieBookingId { get; set; }

		#region ApplicationObjectId Annotations

        [Range(1,int.MaxValue)]
        [Required]
		#endregion ApplicationObjectId Annotations

        public ApplicationObject ApplicationObjectId { get; set; }

		#region MovieHallId Annotations

        [Range(1,int.MaxValue)]
        [Required]
        [RelationshipTableAttribue("MovieHalls","dbo","","MovieHallId")]
		#endregion MovieHallId Annotations

        public int MovieHallId { get; set; }

		#region UserId Annotations

        [Range(1,int.MaxValue)]
        [Required]
        [RelationshipTableAttribue("Users","dbo","","UserId")]
		#endregion UserId Annotations

        public int UserId { get; set; }

		#region BookedSeats Annotations

        [Range(1,int.MaxValue)]
        [Required]
		#endregion BookedSeats Annotations

        public int BookedSeats { get; set; }

		#region MovieHall Annotations

        [ForeignKey(nameof(MovieHallId))]
        [InverseProperty(nameof(Paytm.Models.Main.MovieHall.MovieBookings))]
		#endregion MovieHall Annotations

        public virtual MovieHall MovieHall { get; set; }

		#region User Annotations

        [ForeignKey(nameof(UserId))]
        [InverseProperty(nameof(Paytm.Models.Main.User.MovieBookings))]
		#endregion User Annotations

        public virtual User User { get; set; }


        public MovieBooking()
        {
        }
	}
}