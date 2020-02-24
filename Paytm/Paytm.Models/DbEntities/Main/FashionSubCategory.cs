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
    [Table("FashionSubCategories",Schema="dbo")]
    public partial class FashionSubCategory
    {
		#region FashionSubCategoryId Annotations

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [System.ComponentModel.DataAnnotations.Key]
		#endregion FashionSubCategoryId Annotations

        public int FashionSubCategoryId { get; set; }

		#region FashionCategoryName Annotations

        [Required]
        [MaxLength(20)]
		#endregion FashionCategoryName Annotations

        public string FashionCategoryName { get; set; }

		#region FashionCategoryId Annotations

        [Range(1,int.MaxValue)]
        [Required]
        [RelationshipTableAttribue("FashionCategories","dbo","","FashionCategoryId")]
		#endregion FashionCategoryId Annotations

        public int FashionCategoryId { get; set; }

		#region FashionCategory Annotations

        [ForeignKey(nameof(FashionCategoryId))]
        [InverseProperty(nameof(Paytm.Models.Main.FashionCategory.FashionSubCategories))]
		#endregion FashionCategory Annotations

        public virtual FashionCategory FashionCategory { get; set; }

		#region FashionProducts Annotations

        [InverseProperty("FashionSubCategory")]
		#endregion FashionProducts Annotations

        public virtual ICollection<FashionProduct> FashionProducts { get; set; }


        public FashionSubCategory()
        {
			FashionProducts = new HashSet<FashionProduct>();
        }
	}
}