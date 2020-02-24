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
    [Table("Movies",Schema="dbo")]
    public partial class Movie
    {
		#region MovieId Annotations

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [System.ComponentModel.DataAnnotations.Key]
		#endregion MovieId Annotations

        public int MovieId { get; set; }

		#region MovieName Annotations

        [Required]
        [MaxLength(30)]
		#endregion MovieName Annotations

        public string MovieName { get; set; }

		#region CityId Annotations

        [Range(1,int.MaxValue)]
        [Required]
        [RelationshipTableAttribue("Cities","dbo","","CityId")]
		#endregion CityId Annotations

        public int CityId { get; set; }

		#region City Annotations

        [ForeignKey(nameof(CityId))]
        [InverseProperty(nameof(Paytm.Models.Main.City.Movies))]
		#endregion City Annotations

        public virtual City City { get; set; }

		#region MovieHalls Annotations

        [InverseProperty("Movie")]
		#endregion MovieHalls Annotations

        public virtual ICollection<MovieHall> MovieHalls { get; set; }


        public Movie()
        {
			MovieHalls = new HashSet<MovieHall>();
        }
	}
}