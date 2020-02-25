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
    [Table("MovieHalls",Schema="dbo")]
    public partial class MovieHall
    {
		#region MovieHallId Annotations

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [System.ComponentModel.DataAnnotations.Key]
		#endregion MovieHallId Annotations

        public int MovieHallId { get; set; }

		#region HallId Annotations

        [Range(1,int.MaxValue)]
        [Required]
        [RelationshipTableAttribue("Halls","dbo","","HallId")]
		#endregion HallId Annotations

        public int HallId { get; set; }

		#region ShowTime Annotations

        [Required]
		#endregion ShowTime Annotations

        public System.DateTime ShowTime { get; set; }

		#region Price Annotations

        [Range(1,int.MaxValue)]
        [Required]
		#endregion Price Annotations

        public int Price { get; set; }

		#region MovieId Annotations

        [Range(1,int.MaxValue)]
        [Required]
        [RelationshipTableAttribue("Movies","dbo","","MovieId")]
		#endregion MovieId Annotations

        public int MovieId { get; set; }

		#region Hall Annotations

        [ForeignKey(nameof(HallId))]
        [InverseProperty(nameof(Paytm.Models.Main.Hall.MovieHalls))]
		#endregion Hall Annotations

        public virtual Hall Hall { get; set; }

		#region Movie Annotations

        [ForeignKey(nameof(MovieId))]
        [InverseProperty(nameof(Paytm.Models.Main.Movie.MovieHalls))]
		#endregion Movie Annotations

        public virtual Movie Movie { get; set; }

		#region MovieBookings Annotations

        [InverseProperty("MovieHall")]
		#endregion MovieBookings Annotations

        public virtual ICollection<MovieBooking> MovieBookings { get; set; }


        public MovieHall()
        {
			MovieBookings = new HashSet<MovieBooking>();
        }
	}
}