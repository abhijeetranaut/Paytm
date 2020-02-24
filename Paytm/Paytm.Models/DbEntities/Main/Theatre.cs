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
    [Table("Theatres",Schema="dbo")]
    public partial class Theatre
    {
		#region TheatreId Annotations

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [System.ComponentModel.DataAnnotations.Key]
		#endregion TheatreId Annotations

        public int TheatreId { get; set; }

		#region TheatreName Annotations

        [Required]
        [MaxLength(20)]
		#endregion TheatreName Annotations

        public string TheatreName { get; set; }

		#region TheatreAddress Annotations

        [Required]
        [MaxLength(50)]
		#endregion TheatreAddress Annotations

        public string TheatreAddress { get; set; }

		#region Halls Annotations

        [InverseProperty("Theatre")]
		#endregion Halls Annotations

        public virtual ICollection<Hall> Halls { get; set; }


        public Theatre()
        {
			Halls = new HashSet<Hall>();
        }
	}
}