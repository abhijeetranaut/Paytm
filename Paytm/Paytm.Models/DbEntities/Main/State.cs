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
    [Table("States",Schema="dbo")]
    public partial class State
    {
		#region StateId Annotations

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [System.ComponentModel.DataAnnotations.Key]
		#endregion StateId Annotations

        public int StateId { get; set; }

		#region StateName Annotations

        [Required]
        [MaxLength(15)]
		#endregion StateName Annotations

        public string StateName { get; set; }

		#region Cities Annotations

        [InverseProperty("State")]
		#endregion Cities Annotations

        public virtual ICollection<City> Cities { get; set; }


        public State()
        {
			Cities = new HashSet<City>();
        }
	}
}