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
    [Table("FashionCategories",Schema="dbo")]
    public partial class FashionCategory
    {
		#region FashionCategoryId Annotations

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [System.ComponentModel.DataAnnotations.Key]
		#endregion FashionCategoryId Annotations

        public int FashionCategoryId { get; set; }

		#region FashionCategoryName Annotations

        [Required]
        [MaxLength(20)]
		#endregion FashionCategoryName Annotations

        public string FashionCategoryName { get; set; }

		#region FashionSubCategories Annotations

        [InverseProperty("FashionCategory")]
		#endregion FashionSubCategories Annotations

        public virtual ICollection<FashionSubCategory> FashionSubCategories { get; set; }


        public FashionCategory()
        {
			FashionSubCategories = new HashSet<FashionSubCategory>();
        }
	}
}