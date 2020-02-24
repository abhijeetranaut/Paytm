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
    [Table("Cities",Schema="dbo")]
    public partial class City
    {
		#region CityId Annotations

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [System.ComponentModel.DataAnnotations.Key]
		#endregion CityId Annotations

        public int CityId { get; set; }

		#region CityName Annotations

        [Required]
        [MaxLength(20)]
		#endregion CityName Annotations

        public string CityName { get; set; }

		#region StateId Annotations

        [Range(1,int.MaxValue)]
        [Required]
        [RelationshipTableAttribue("States","dbo","","StateId")]
		#endregion StateId Annotations

        public int StateId { get; set; }

		#region State Annotations

        [ForeignKey(nameof(StateId))]
        [InverseProperty(nameof(Paytm.Models.Main.State.Cities))]
		#endregion State Annotations

        public virtual State State { get; set; }

		#region Movies Annotations

        [InverseProperty("City")]
		#endregion Movies Annotations

        public virtual ICollection<Movie> Movies { get; set; }


        public City()
        {
			Movies = new HashSet<Movie>();
        }
	}
}